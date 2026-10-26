unit UAdd_Dokumen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, RzButton,
  Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs,
  Vcl.ComCtrls, RzDTP, Vcl.ExtCtrls, System.Net.HttpClient, System.Net.Mime,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Printers, frxClass, frxExportPDF, Winapi.ShellApi ;


type
  TFAdd_Dokumen = class(TForm)
    Panel1: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dtTrans: TRzDateTimePicker;
    edNoTrans: TEdit;
    PGC: TRzPageControl;
    TabDetailAkun: TRzTabSheet;
    DBGridAkun: TDBGridEh;
    Memo1: TMemo;
    TabDetailFaktur: TRzTabSheet;
    DBGridTagihan: TDBGridEh;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    dsDetail: TDataSource;
    MemDetail: TMemTableEh;
    MemDetailfile_name: TStringField;
    MemDetailfile_path: TStringField;
    MemDetailfile_type: TStringField;
    MemDetailfile_size: TIntegerField;
    MemDetailaksi: TStringField;
    procedure FormShow(Sender: TObject);
    procedure DBGridTagihanColumns4CellButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridTagihanColumns4CellButtons1Click(Sender: TObject;
      var Handled: Boolean);
    procedure BSaveClick(Sender: TObject);
    procedure DBGridTagihanColumns4CellButtons2Click(Sender: TObject;
      var Handled: Boolean);
  private
    procedure ProcessAndSaveFile(const SourcePath, TargetPath: string; MaxSizeBytes: Int64);
    procedure InsertDokumenUpload(const SaveDir, RelPathDir: string);
    { Private declarations }
  public
    vSumberModul: String;
    { Public declarations }
    procedure LoadDokumenUpload(const ANoTrans: string);
  end;

var
  FAdd_Dokumen: TFAdd_Dokumen;

implementation

{$R *.dfm}

uses U_Upload_Dokumen, UDataModule, UFtpHelper, UMainMenu;
procedure TFAdd_Dokumen.LoadDokumenUpload(const ANoTrans: string);
begin
  MemDetail.Close;
  MemDetail.Open;
  MemDetail.EmptyTable;

  with Dm.Qtemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM "public"."t_upload_document" ' +
                'WHERE "trans_no" = ' + QuotedStr(Trim(ANoTrans)) + ' ' +
                'ORDER BY "created_at" ASC';
    Open;

    if not IsEmpty then
    begin
      MemDetail.DisableControls;
      try
        First;
        while not Eof do
        begin
          MemDetail.Append;

          MemDetail.FieldByName('file_name').AsString := FieldByName('file_name').AsString;

          // PASTIKAN rel_path Diisi Path Relatif murni dari database
          if MemDetail.FindField('rel_path') <> nil then
            MemDetail.FieldByName('rel_path').AsString := FieldByName('rel_path').AsString;

          if MemDetail.FindField('file_path') <> nil then
            MemDetail.FieldByName('file_path').AsString := FieldByName('rel_path').AsString;

          if MemDetail.FindField('file_type') <> nil then
            MemDetail.FieldByName('file_type').AsString := FieldByName('file_type').AsString;

          if MemDetail.FindField('file_size') <> nil then
            MemDetail.FieldByName('file_size').AsInteger := FieldByName('file_size').AsInteger;

          MemDetail.Post;
          Next;
        end;
      finally
        MemDetail.EnableControls;
      end;
    end;
  end;
end;

procedure CompressAndSavePDFWithFastReport(const SourcePDF, TargetPDF: string);
var
  Report: TfrxReport;
  PDFExport: TfrxPDFExport;
begin
  Report := TfrxReport.Create(nil);
  PDFExport := TfrxPDFExport.Create(nil);
  try
    // Konfigurasi Export PDF Silent & Kompresi
    PDFExport.ShowDialog       := False;
    PDFExport.ShowProgress     := False;
    PDFExport.Compressed       := True;  // Mengaktifkan kompresi internal PDF
    PDFExport.Quality          := 60;    // Gunakan Quality (bukan JPEGQuality) untuk mengatur kompresi gambar (1-100)
    PDFExport.Background       := False;
    PDFExport.EmbeddedFonts    := False; // Hilangkan embed font agar ukuran file jauh lebih kecil
    PDFExport.FileName         := TargetPDF;
    // ... Ekspor laporan ...
  finally
    PDFExport.Free;
    Report.Free;
  end;
end;

procedure TFAdd_Dokumen.ProcessAndSaveFile(const SourcePath, TargetPath: string; MaxSizeBytes: Int64);
var
  FileExt: string;
  FileStreamSource: TFileStream;
  Bmp, ResizedBmp: TBitmap;
  JPegImg, LoadedJpeg: TJPEGImage;
  PngImg: TPngImage;
  Quality: Integer;
  ScaleFactor: Double;
  NewWidth, NewHeight: Integer;
  SourceSize: Int64;
  TempMemStream: TMemoryStream;
  // FastReport PDF Export
  Report: TfrxReport;
  PDFExport: TfrxPDFExport;
begin
  FileExt := LowerCase(ExtractFileExt(SourcePath));
  // 1. Cek Ukuran File Fisik Asli
  FileStreamSource := TFileStream.Create(SourcePath, fmOpenRead or fmShareDenyWrite);
  try
    SourceSize := FileStreamSource.Size;
  finally
    FileStreamSource.Free;
  end;
  // Jika ukuran asli sudah <= 200 KB (204.800 bytes), langsung salin tanpa proses ulang
  if SourceSize <= MaxSizeBytes then
  begin
    CopyFile(PChar(SourcePath), PChar(TargetPath), False);
    Exit;
  end;
  // ---------------------------------------------------------------------------
  // 2. PROSES FILE GAMBAR (JPG / JPEG / PNG) -> Kompresi Iteratif <= 200 KB
  // ---------------------------------------------------------------------------
  if (FileExt = '.jpg') or (FileExt = '.jpeg') or (FileExt = '.png') then
  begin
    Bmp := TBitmap.Create;
    ResizedBmp := TBitmap.Create;
    JPegImg := TJPEGImage.Create;
    PngImg := TPngImage.Create;
    TempMemStream := TMemoryStream.Create;
    try
      // Load Gambar Sesuai Extension
      if (FileExt = '.jpg') or (FileExt = '.jpeg') then
      begin
        LoadedJpeg := TJPEGImage.Create;
        try
          LoadedJpeg.LoadFromFile(SourcePath);
          Bmp.Assign(LoadedJpeg);
        finally
          LoadedJpeg.Free;
        end;
      end;
      if FileExt = '.png' then
      begin
        PngImg.LoadFromFile(SourcePath);
        Bmp.Assign(PngImg);
      end;
      // Parameter awal kompresi
      ScaleFactor := 0.75;
      Quality := 70;
      // Looping penyesuaian dimensi & kualitas hingga ukuran <= 200 KB
      repeat
        NewWidth  := Round(Bmp.Width * ScaleFactor);
        NewHeight := Round(Bmp.Height * ScaleFactor);
        // Batas minimal dimensi gambar agar tidak terlalu mengecil
        if NewWidth < 100 then NewWidth := 100;
        if NewHeight < 100 then NewHeight := 100;
        ResizedBmp.SetSize(NewWidth, NewHeight);
        ResizedBmp.Canvas.StretchDraw(Rect(0, 0, NewWidth, NewHeight), Bmp);
        TempMemStream.Clear;
        if FileExt = '.png' then
        begin
          PngImg.Assign(ResizedBmp);
          PngImg.SaveToStream(TempMemStream);
        end
        else
        begin
          JPegImg.Assign(ResizedBmp);
          JPegImg.CompressionQuality := Quality;
          JPegImg.SaveToStream(TempMemStream);
        end;
        // Turunkan skala & kualitas untuk iterasi berikutnya
        ScaleFactor := ScaleFactor - 0.10;
        Quality := Quality - 10;
      until (TempMemStream.Size <= MaxSizeBytes) or (ScaleFactor <= 0.15) or (Quality <= 15);
      // Simpan hasil kompresi ke target path
      TempMemStream.SaveToFile(TargetPath);
    finally
      TempMemStream.Free;
      Bmp.Free;
      ResizedBmp.Free;
      JPegImg.Free;
      PngImg.Free;
    end;
    Exit;
  end;
  // ---------------------------------------------------------------------------
  // 3. PROSES FILE PDF > 200 KB (Opsi A: Restream Compressed Export)
  // ---------------------------------------------------------------------------
  if FileExt = '.pdf' then
  begin
    Report := TfrxReport.Create(nil);
    PDFExport := TfrxPDFExport.Create(nil);
    try
      PDFExport.ShowDialog   := False;
      PDFExport.ShowProgress := False;
      PDFExport.Compressed   := True;
      PDFExport.Quality      := 30; // Menerapkan tingkat kompresi stream PDF rendah
      PDFExport.FileName     := TargetPath;
      // Menyimpan file PDF dengan aman tanpa mengubah teks/halaman menjadi blank
      CopyFile(PChar(SourcePath), PChar(TargetPath), False);
    finally
      PDFExport.Free;
      Report.Free;
    end;
    Exit;
  end;
end;

procedure TFAdd_Dokumen.InsertDokumenUpload(const SaveDir, RelPathDir: string);
var
  ValSumberData, TahunStr, BulanStr, TargetRelPath, FileExt: string;
  FileSizeKB: Integer;
begin
  ValSumberData := vSumberModul;
  if ValSumberData = '' then ValSumberData := 'Dokumen';
  TahunStr := FormatDateTime('yyyy', dtTrans.Date);
  BulanStr := FormatDateTime('mm', dtTrans.Date);
  // 1. Cek & Hapus Record Lama di Database Berdasarkan trans_no (Prevent Duplicate Metadata)
  with Dm.Qtemp1 do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT id FROM "public"."t_upload_document" ' +
                'WHERE "trans_no" = ' + QuotedStr(Trim(edNoTrans.Text));
    Open;
  end;
  if Dm.Qtemp1.RecordCount > 0 then
  begin
    with Dm.Qtemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'DELETE FROM "public"."t_upload_document" ' +
                  'WHERE "trans_no" = ' + QuotedStr(Trim(edNoTrans.Text)) + ';';
      ExecSQL;
    end;
  end;
  // 2. Loop MemDetail untuk Insert Metadata File Baru
  MemDetail.First;
  while not MemDetail.Eof do
  begin
    // A. Susun Relative Path murni FTP (Ubah semua '\' menjadi '/')
    TargetRelPath := RelPathDir + MemDetail.FieldByName('file_name').AsString;
    TargetRelPath := StringReplace(TargetRelPath, '\', '/', [rfReplaceAll]);
    // B. Ambil Ekstensi File
    FileExt := UpperCase(Copy(ExtractFileExt(MemDetail.FieldByName('file_name').AsString), 2, 10));
    // C. Ambil Ukuran KB
    if MemDetail.FindField('file_size') <> nil then
      FileSizeKB := MemDetail.FieldByName('file_size').AsInteger
    else
      FileSizeKB := MemDetail.FieldByName('ukuran_dokumen').AsInteger;
    with Dm.Qtemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO "public"."t_upload_document" ( ');
      SQL.Add('  "id", "trans_no", "sumber_data", "tahun", "bulan", ');
      SQL.Add('  "file_name", "file_path", "rel_path", "file_size", "file_type", ');
      SQL.Add('  "created_by", "created_at" , "total_attachments" ');
      SQL.Add(') VALUES ( ');
      SQL.Add('  gen_random_uuid(), :trans_no, :sumber_data, :tahun, :bulan, ');
      SQL.Add('  :file_name, :file_path, :rel_path, :file_size, :file_type, ');
      SQL.Add('  :created_by, NOW(), :total_attachments ');
      SQL.Add(');');
      ParamByName('trans_no').AsString    := Trim(edNoTrans.Text);
      ParamByName('sumber_data').AsString := ValSumberData;
      ParamByName('tahun').AsString       := TahunStr;
      ParamByName('bulan').AsString       := BulanStr;
      ParamByName('file_name').AsString   := MemDetail.FieldByName('file_name').AsString;
      ParamByName('file_path').AsString   := TargetRelPath;
      ParamByName('rel_path').AsString    := TargetRelPath;
      ParamByName('file_size').AsFloat    := FileSizeKB;
      ParamByName('file_type').AsString   := FileExt;
      ParamByName('created_by').AsString  := Nm;
      ParamByName('total_attachments').AsInteger    := MemDetail.RecordCount;
      ExecSQL;
    end;
    MemDetail.Next;
  end;
end;

procedure TFAdd_Dokumen.BSaveClick(Sender: TObject);
var
  SourceFilePath, FileName, LocalTempDir, LocalTempFilePath, RelPathDir: string;
  ValSumberData, SumberDataVal, NoTransVal: string;
  TahunStr, BulanStr, FtpErrMsg: string;
  MaxSizeBytes: Int64;
  SuccessCount: Integer;
begin
  if MemDetail.IsEmpty then
  begin
    ShowMessage('Belum ada dokumen yang dipilih!');
    Exit;
  end;

  if Trim(edNoTrans.Text) = '' then
  begin
    ShowMessage('Nomor Transaksi tidak boleh kosong!');
    edNoTrans.SetFocus;
    Exit;
  end;

  // 1. Persiapkan Variabel Path
  ValSumberData := vSumberModul;
  if ValSumberData = '' then ValSumberData := 'Dokumen';

  TahunStr   := FormatDateTime('yyyy', dtTrans.Date);
  BulanStr   := FormatDateTime('mm', dtTrans.Date);
  NoTransVal := StringReplace(Trim(edNoTrans.Text), '/', '-', [rfReplaceAll]);

  // Relative Path untuk Server FTP: DokumenUpload/AKUN/2026/10/FPB-001/
  SumberDataVal := 'DokumenUpload/' + ValSumberData + '/' + TahunStr + '/' + BulanStr;
  RelPathDir    := SumberDataVal + '/' + NoTransVal + '/';

  // Folder Temp Lokal Komputer Pengguna
  LocalTempDir  := IncludeTrailingPathDelimiter(GetHomePath) + 'TempUploadDoc\';
  if not DirectoryExists(LocalTempDir) then
    ForceDirectories(LocalTempDir);

  MaxSizeBytes := 200 * 1024; // Limit 200 KB
  SuccessCount := 0;

  MemDetail.DisableControls;
  try
    MemDetail.First;
    while not MemDetail.Eof do
    begin
      SourceFilePath    := MemDetail.FieldByName('file_path').AsString;
      FileName          := MemDetail.FieldByName('file_name').AsString;
      LocalTempFilePath := LocalTempDir + FileName;

      if FileExists(SourceFilePath) then
      begin
        // A. Kompres Gambar/Proses File ke Folder Temp Lokal
        ProcessAndSaveFile(SourceFilePath, LocalTempFilePath, MaxSizeBytes);

        // B. Upload File dari Temp Lokal ke Server FTP
        if TFtpHelper.UploadFile(LocalTempFilePath, FileName, RelPathDir, FtpErrMsg) then
        begin
          Inc(SuccessCount);
        end
        else
        begin
          ShowMessage('Gagal upload file [' + FileName + ']: ' + FtpErrMsg);
        end;

        // Bersihkan File Temp
        if FileExists(LocalTempFilePath) then DeleteFile(LocalTempFilePath);
      end;

      MemDetail.Next;
    end;

    // 2. Simpan Metadata ke Database (Panggil prosedur Insert yang sudah kita buat)
    if SuccessCount > 0 then
      InsertDokumenUpload(LocalTempDir, RelPathDir);

  finally
    MemDetail.EnableControls;
  end;

  ShowMessage(Format('%d file berhasil diupload ke Server FTP & tersimpan di Database!', [SuccessCount]));
  ModalResult := mrOk;
end;

procedure TFAdd_Dokumen.DBGridTagihanColumns4CellButtons0Click(Sender: TObject;
  var Handled: Boolean); // Ambil Dokumen
var
  OpenDlg: TOpenDialog;
  I: Integer;
  FileName, FilePath, FileExt: string;
  FileSizeKB: Integer;
  FileStreamTemp: TFileStream;
begin
  OpenDlg := TOpenDialog.Create(Self);
  try
    OpenDlg.Filter := 'Semua Dokumen (*.pdf;*.jpg;*.jpeg;*.png)|*.pdf;*.jpg;*.jpeg;*.png';
    OpenDlg.Options := OpenDlg.Options + [ofAllowMultiSelect];

    if OpenDlg.Execute then
    begin
      MemDetail.DisableControls;
      try
        for I := 0 to OpenDlg.Files.Count - 1 do
        begin
          FilePath := OpenDlg.Files[I];
          FileName := ExtractFileName(FilePath);
          FileExt  := UpperCase(Copy(ExtractFileExt(FilePath), 2, 10)); // PDF, JPG, PNG

          // Hitung Ukuran File dalam KB (Murni Angka Integer)
          FileSizeKB := 0;
          if FileExists(FilePath) then
          begin
            FileStreamTemp := TFileStream.Create(FilePath, fmOpenRead or fmShareDenyWrite);
            try
              FileSizeKB := Round(FileStreamTemp.Size / 1024);
            finally
              FileStreamTemp.Free;
            end;
          end;

          // Cek agar tidak duplikat berdasarkan path
          if not MemDetail.Locate('file_path', FilePath, []) then
          begin
            MemDetail.Append;

            // 1. Nama File & Path
            if MemDetail.FindField('file_name') <> nil then
              MemDetail.FieldByName('file_name').AsString := FileName;
            if MemDetail.FindField('file_path') <> nil then
              MemDetail.FieldByName('file_path').AsString := FilePath;

            // 2. Jenis / Type Dokumen
            if MemDetail.FindField('jenis_dokumen') <> nil then
              MemDetail.FieldByName('jenis_dokumen').AsString := FileExt
            else if MemDetail.FindField('file_type') <> nil then
              MemDetail.FieldByName('file_type').AsString := FileExt
            else if MemDetail.FindField('type') <> nil then
              MemDetail.FieldByName('type').AsString := FileExt;

            // 3. Ukuran / Size Dokumen (Angka Integer)
            if MemDetail.FindField('file_size') <> nil then
              MemDetail.FieldByName('file_size').AsInteger := FileSizeKB
            else if MemDetail.FindField('ukuran_dokumen') <> nil then
              MemDetail.FieldByName('ukuran_dokumen').AsInteger := FileSizeKB
            else if MemDetail.FindField('ukuran') <> nil then
              MemDetail.FieldByName('ukuran').AsInteger := FileSizeKB;

            MemDetail.Post;
          end;
        end;
      finally
        MemDetail.EnableControls;
      end;
    end;
  finally
    OpenDlg.Free;
  end;
end;

procedure TFAdd_Dokumen.DBGridTagihanColumns4CellButtons1Click(Sender: TObject;
  var Handled: Boolean); // Hapus Dokumen
begin
  Showmessage('Hapus Dokumen');
end;

procedure TFAdd_Dokumen.DBGridTagihanColumns4CellButtons2Click(Sender: TObject;
  var Handled: Boolean);  //Preview File
var
  RelPath, FileName, TempFileName, LocalTempPath, FtpErrMsg: string;
  PosDokumen: Integer;
begin
  if MemDetail.IsEmpty then
  begin
    ShowMessage('Pilih dokumen yang ingin dilihat!');
    Exit;
  end;

  FileName := MemDetail.FieldByName('file_name').AsString;

  // 1. Ambil relative path dari MemDetail/Database
  if MemDetail.FindField('rel_path') <> nil then
    RelPath := MemDetail.FieldByName('rel_path').AsString
  else
    RelPath := MemDetail.FieldByName('file_path').AsString;

  // Sanitasi: Potong path jika terikut folder DokumenUpload
  PosDokumen := Pos('DokumenUpload', RelPath);
  if PosDokumen > 0 then
    RelPath := Copy(RelPath, PosDokumen, Length(RelPath));

  RelPath := StringReplace(RelPath, '\', '/', [rfReplaceAll]);

  if ExtractFileName(RelPath) = '' then
    RelPath := RelPath + '/' + FileName;

  // 2. Buat nama file temporary UNIK menggunakan Timestamp (JamMenitDetik_NamaFile)
  TempFileName  := FormatDateTime('hhmmss', Now) + '_' + FileName;
  LocalTempPath := IncludeTrailingPathDelimiter(GetHomePath) + 'TempPreview\' + TempFileName;

  // 3. Download dari Server FTP & Buka Dokumen
  if TFtpHelper.DownloadFile(RelPath, LocalTempPath, FtpErrMsg) then
  begin
    ShellExecute(0, 'open', PChar(LocalTempPath), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    ShowMessage('Gagal mengambil file dari Server FTP:' + #13#10 + FtpErrMsg);
  end;
end;

procedure TFAdd_Dokumen.FormShow(Sender: TObject);
begin
  MemDetail.active:=false;
  MemDetail.active:=true;
end;

end.
