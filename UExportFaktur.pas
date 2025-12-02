unit UExportFaktur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzBtnEdt, Vcl.ComCtrls, RzDTP, RzCmboBx, RzLabel, Vcl.ExtCtrls,
  RzPanel, Vcl.Samples.Gauges, XMLIntf, XmlDoc, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni, RzRadChk, frxClass, frxDBSet;

type
  TFExportFaktur = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    cbBarangJasa: TRzComboBox;
    cbExport: TRzComboBox;
    dtTglDari: TRzDateTimePicker;
    RzLabel8: TRzLabel;
    dtTglSampai: TRzDateTimePicker;
    edKaresidenan: TRzButtonEdit;
    edJenisTransaksi: TRzButtonEdit;
    edKetTambahan: TRzButtonEdit;
    edCapFasilitas: TRzButtonEdit;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    SaveDialog1: TSaveDialog;
    pnfp: TPanel;
    gauge1: TGauge;
    RzBitBtn1: TRzBitBtn;
    DSDetail: TDataSource;
    Qdetail: TUniQuery;
    DBGridOrder: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Qdetailtrans_no: TMemoField;
    Qdetailtrans_date: TDateField;
    Qdetailcode_cust: TMemoField;
    Qdetailname_cust: TMemoField;
    Qdetailcustomer_name_pkp: TMemoField;
    Qdetailgrand_tot: TFloatField;
    Qdetailpilih: TBooleanField;
    RzPanel3: TRzPanel;
    cbTandai: TRzCheckBox;
    Report: TfrxReport;
    frxDBDatasetValidasiFaktur: TfrxDBDataset;
    QReport: TUniQuery;
    QReportDetail: TUniQuery;
    DSReport: TDataSource;
    frxDBDatasetValidasiFakturDet: TfrxDBDataset;
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edJenisTransaksiButtonClick(Sender: TObject);
    procedure edCapFasilitasButtonClick(Sender: TObject);
    procedure edKetTambahanButtonClick(Sender: TObject);
    procedure edKaresidenanButtonClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure cbTandaiClick(Sender: TObject);
    procedure dtTglDariChange(Sender: TObject);
    procedure dtTglSampaiChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    kode_jenis_transaksi,strKodeKaresidenan,strKodeCapFasilitas,strKdBarangJasa,strKodeKetTambahan:String;
    procedure Clear;
    procedure ExportTaxInvoiceExcel;
    procedure ExportTaxInvoiceXML1;
    procedure CetakValidasiFaktur;
  end;

var
  FExportFaktur: TFExportFaktur;


implementation

{$R *.dfm}

uses UMasterData, UDataModule, UMy_Function, UPajakCapFasilitas_KetTambahan, System.Math,
  UHomeLogin;

procedure TFExportFaktur.ExportTaxInvoiceExcel;
var
  npwp_penjual, noinv, noinv2 : string;
  ExcelApp, Workbook, Worksheet, NewSheet: OleVariant;
  TempFileName: string;
  SaveDialog: TSaveDialog;
  RowIndex,RowIndex_det,urut_det, j: Integer;
begin
// with FMainMenu.qexec do
//  begin
//    Close;
//    SQL.Clear;
//    SQL.Add('CALL sp_pajak_master('+
//            ''+QuotedStr(edkd_jnis_trans.Text)+','+
//            ''+QuotedStr(edkd_kares.Text)+','+
//            ''+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.Date))+','+
//            ''+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.Date))+');');
//    Open;
//  end;
//
//  if FMainMenu.qexec.RecordCount = 0 then
//  begin
//    ShowMessage('Tidak Ada Data Yang Dapat Diproses...');
//    Exit;
//  end;
//
//  if FMainMenu.qexec.RecordCount<>0 then
//  begin
//  pnfp.Visible:=true;
//  gauge1.Progress:=0;
//  gauge1.MinValue:=0;
//  gauge1.MaxValue:=FMainMenu.qexec.RecordCount;
//
//  // Buat SaveDialog
//  SaveDialog := TSaveDialog.Create(nil);
//  try
//    SaveDialog.Filter := 'Excel Files (*.xlsx)|*.xlsx';
//    SaveDialog.DefaultExt := 'xlsx';
//    SaveDialog.FileName := 'faktur_'
//                            +LowerCase(edkd_kares.Text)+
//                            '_'
//                            +formatdatetime('yyyy-mm-dd',dtAwal.Date)+'.xlsx';
//
//    // Tampilkan dialog SaveDialog
//    if not SaveDialog.Execute then
//    begin
//      ShowMessage('Proses dibatalkan.');
//      Exit;
//    end;
//
//    // Dapatkan nama file
//    TempFileName := SaveDialog.FileName;
//
//    // Membuat instance Excel dan workbook baru
//    ExcelApp := CreateOleObject('Excel.Application');
//    ExcelApp.Visible := False; // Jangan tampilkan Excel terlebih dahulu
//    Workbook := ExcelApp.Workbooks.Add; // Membuat workbook baru
//
//    Worksheet := Workbook.Worksheets[1]; //Set Sheet 1(Faktur)
//    Worksheet.Name := 'Faktur';
//
//    npwp_penjual:=SelectRow('SELECT LPAD(REPLACE(REPLACE(REPLACE(NITKU, ''.'', ''''), ''-'', ''''), '' '', ''''), 16, ''0'') AS npwp FROM talmpsys');
//
//    //posisi header
//    Worksheet.Range['A1:B1'].Merge;  // Menggabungkan kolom A dan B di baris pertama
//    Worksheet.Cells[1, 1].Value := 'NPWP Penjual';  // Menampilkan teks 'NPWP Penjual' di sel yang digabung
//    Worksheet.Cells[1, 1].Font.Bold := True;  // Membuat teks menjadi bold
//    Worksheet.Cells[1, 3].Value :=  '''' + npwp_penjual;
//
//    //posisi detail
//    Worksheet.Cells[3, 1].Value := 'Baris';
//		Worksheet.Cells[3, 2].Value := 'Tanggal Faktur';
//		Worksheet.Cells[3, 3].Value := 'Jenis Faktur';
//		Worksheet.Cells[3, 4].Value := 'Kode Transaksi';
//		Worksheet.Cells[3, 5].Value := 'Keterangan Tambahan';
//		Worksheet.Cells[3, 6].Value := 'Dokumen Pendukung';
//		Worksheet.Cells[3, 7].Value := 'Referensi';
//		Worksheet.Cells[3, 8].Value := 'Cap Fasilitas';
//		Worksheet.Cells[3, 9].Value := 'ID TKU Penjual';
//		Worksheet.Cells[3, 10].Value := 'NPWP/NIK Pembeli';
//		Worksheet.Cells[3, 11].Value := 'Jenis ID Pembeli';
//		Worksheet.Cells[3, 12].Value := 'Negara Pembeli';
//		Worksheet.Cells[3, 13].Value := 'Nomor Dokumen Pembeli';
//		Worksheet.Cells[3, 14].Value := 'Nama Pembeli';
//		Worksheet.Cells[3, 15].Value := 'Alamat Pembeli';
//		Worksheet.Cells[3, 16].Value := 'Email Pembeli';
//		Worksheet.Cells[3, 17].Value := 'ID TKU Pembeli';
//    Worksheet.Range['A3:Q3'].Font.Bold := True;
//
//    j := 0;
//    RowIndex := 4;
//    while not FMainMenu.qexec.Eof do
//    begin
//      j:=j+1;
//      Worksheet.Cells[RowIndex, 1].Value := '''' + FMainMenu.qexec.FieldByName('baris').AsString;
//      Worksheet.Cells[RowIndex, 2].Value := '''' + FMainMenu.qexec.FieldByName('tgl_faktur').value;
//      Worksheet.Cells[RowIndex, 3].Value := FMainMenu.qexec.FieldByName('jenis_faktur').AsString;
//      Worksheet.Cells[RowIndex, 4].Value := '''' + edkd_jnis_trans.Text;
//      Worksheet.Cells[RowIndex, 5].Value := '''' + edkd_ket_tambah.Text;
//      Worksheet.Cells[RowIndex, 6].Value := '';
//      Worksheet.Cells[RowIndex, 7].Value := '''' + FMainMenu.qexec.FieldByName('referensi').AsString;
//      Worksheet.Cells[RowIndex, 8].Value := '''' + edkd_cap_fasilitas.Text;
//      Worksheet.Cells[RowIndex, 9].Value := '''' + FMainMenu.qexec.FieldByName('id_tku_penjual').AsString;
//      Worksheet.Cells[RowIndex, 10].Value := '''' + FMainMenu.qexec.FieldByName('npwp_nik_pembeli').AsString;
//      Worksheet.Cells[RowIndex, 11].Value := '''' + FMainMenu.qexec.FieldByName('jnis_id_pembeli').AsString;
//      Worksheet.Cells[RowIndex, 12].Value := '''' + FMainMenu.qexec.FieldByName('negara_pembeli').AsString;
//      Worksheet.Cells[RowIndex, 13].Value := '''' + FMainMenu.qexec.FieldByName('nomor_dok_pembeli').AsString;
//      Worksheet.Cells[RowIndex, 14].Value := FMainMenu.qexec.FieldByName('nama_pembeli').AsString;
//      Worksheet.Cells[RowIndex, 15].Value := FMainMenu.qexec.FieldByName('alamat_pembeli').AsString;
//      Worksheet.Cells[RowIndex, 16].Value := FMainMenu.qexec.FieldByName('email').AsString;
//      Worksheet.Cells[RowIndex, 17].Value := '''' + FMainMenu.qexec.FieldByName('id_tku_pembeli').AsString;
//    gauge1.Progress:=j;
//    Inc(RowIndex);
//    FMainMenu.qexec.Next;
//    end;
//    Worksheet.Cells[RowIndex, 1].Value := '''END';
//    Worksheet.Cells[RowIndex, 1].Font.Bold := True;
//    //end sheet 1
//
//      with FMainMenu.qexec2 do //Baca detail
//      begin
//        close;
//        sql.clear;
//        sql.add('CALL sp_pajak_detail('+
//            ''+QuotedStr(edkd_jnis_trans.Text)+','+
//            ''+QuotedStr(edkd_kares.Text)+','+
//            ''+QuotedStr('')+','+
//            ''+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.Date))+','+
//            ''+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.Date))+');');
//        open;
//      end;
//      // Menambahkan sheet baru
//      //Set Sheet 1(DetailFaktur)
//      Workbook.Sheets.Add(After := Worksheet);
//      NewSheet := Workbook.Worksheets[2];
//      NewSheet.Name := 'DetailFaktur';
//      // Menulis data di sheet baru
//			NewSheet.Cells[1, 1].Value := 'Baris';
//			NewSheet.Cells[1, 2].Value := 'Barang/Jasa';
//			NewSheet.Cells[1, 3].Value := 'Kode Barang Jasa';
//			NewSheet.Cells[1, 4].Value := 'Nama Barang/Jasa';
//			NewSheet.Cells[1, 5].Value := 'Nama Satuan Ukur';
//			NewSheet.Cells[1, 6].Value := 'Harga Satuan';
//			NewSheet.Cells[1, 7].Value := 'Jumlah Barang Jasa';
//			NewSheet.Cells[1, 8].Value := 'Total Diskon';
//			NewSheet.Cells[1, 9].Value := 'DPP';
//			NewSheet.Cells[1, 10].Value := 'DPP Nilai Lain';
//			NewSheet.Cells[1, 11].Value := 'Tarif PPN';
//			NewSheet.Cells[1, 12].Value := 'PPN';
//			NewSheet.Cells[1, 13].Value := 'Tarif PPnBM';
//			NewSheet.Cells[1, 14].Value := 'PPnBM';
//
//      RowIndex_det := 2;
//      urut_det :=0;
//      noinv:='';
//      noinv2:='';
//      gauge1.Progress:=0;
//      gauge1.MinValue:=0;
//      gauge1.MaxValue:=FMainMenu.qexec2.RecordCount;
//      j:=0;
//      while not FMainMenu.qexec2.Eof do
//      begin
//        j:=j+1;
//        noinv2:=FMainMenu.qexec2.FieldByName('no_inv').AsString;
//        if noinv=noinv2 then
//        begin
//          //showmessage('AA'+noinv+'!!'+noinv);
//          urut_det:=urut_det+0;
//        end;
//        if noinv<>noinv2 then
//        begin
//          //showmessage('BB'+noinv+'!!'+noinv);
//          urut_det:=urut_det+1;
//          noinv:=noinv2;
//        end;
//
//        NewSheet.Cells[RowIndex_det, 1].Value := urut_det;
//        NewSheet.Cells[RowIndex_det, 2].Value := '''' + edkd_barang_jasa.Text;
//        NewSheet.Cells[RowIndex_det, 3].Value := '''' + FMainMenu.qexec2.FieldByName('kode_brg').AsString;
//        NewSheet.Cells[RowIndex_det, 4].Value := FMainMenu.qexec2.FieldByName('nama_brg').AsString;
//        NewSheet.Cells[RowIndex_det, 5].Value := FMainMenu.qexec2.FieldByName('kd_satuan_pajak').AsString;
//        NewSheet.Cells[RowIndex_det, 6].Value := FMainMenu.qexec2.FieldByName('harga_satuan_coretax').AsFloat;
//        NewSheet.Cells[RowIndex_det, 6].NumberFormat := '0.00';
//        NewSheet.Cells[RowIndex_det, 7].Value := FMainMenu.qexec2.FieldByName('jml_brg').AsFloat;
//        NewSheet.Cells[RowIndex_det, 8].Value := FMainMenu.qexec2.FieldByName('tot_pot').AsFloat;
//        NewSheet.Cells[RowIndex_det, 9].Value := FMainMenu.qexec2.FieldByName('dpp_coretax').AsFloat;
//        NewSheet.Cells[RowIndex_det, 9].NumberFormat := '0.00';
//        NewSheet.Cells[RowIndex_det, 10].Value := FMainMenu.qexec2.FieldByName('dpp_lain_coretax').AsFloat;
//        NewSheet.Cells[RowIndex_det, 10].NumberFormat := '0.00';
//        NewSheet.Cells[RowIndex_det, 11].Value := FMainMenu.qexec2.FieldByName('tarif_ppn').AsFloat;
//        NewSheet.Cells[RowIndex_det, 12].Value := FMainMenu.qexec2.FieldByName('ppn_coretax').AsFloat;
//        NewSheet.Cells[RowIndex_det, 12].NumberFormat := '0.00';
//        NewSheet.Cells[RowIndex_det, 13].Value := FMainMenu.qexec2.FieldByName('tarif_PPnBM').AsFloat;
//        NewSheet.Cells[RowIndex_det, 14].Value := FMainMenu.qexec2.FieldByName('PPnBM').AsFloat;
//
//      gauge1.Progress:=j;
//      Inc(RowIndex_det);
//      FMainMenu.qexec2.Next;
//      end;
//      NewSheet.Cells[RowIndex_det, 1].Value := 'END';
//      NewSheet.Cells[RowIndex_det, 1].Font.Bold := True;
//      //end sheet 2
//
//      // Simpan file ke lokasi yang dipilih pengguna
//      Workbook.SaveAs(TempFileName);
//
//      // Tampilkan Excel kepada pengguna
//      ExcelApp.Visible := True;
//
//      // Informasi ke pengguna bahwa file sudah disimpan
//      //ShowMessage('File berhasil disimpan ke: ' + TempFileName);
//      pnfp.Visible:=false;
//      ShowMessage('File berhasil disimpan');
//  except
//    on E: Exception do
//      ShowMessage('Terjadi kesalahan: ' + E.Message);
//  end;
//
//  // Hapus SaveDialog
//  //finally
//    SaveDialog.Free;
//  end;
end;

procedure TFExportFaktur.ExportTaxInvoiceXML1;
var
  XMLDoc: IXMLDocument;
  RootNode, InvoiceNode, GoodsNode, GoodServiceNode, GoodNode: IXMLNode;
  TempFileName,SQLText: string;
  SaveDialog: TSaveDialog;
  j: Integer;
  SelectedTransNo: TStringList;
begin
  // Query Master Data
  if UpperCase(cbBarangJasa.Text)='BARANG' then
  strKdBarangJasa:='A'
  else strKdBarangJasa:='B';
  SelectedTransNo := TStringList.Create;
  try
    Qdetail.First;
    while not Qdetail.Eof do
    begin
      if Qdetail.FieldByName('pilih').AsBoolean then
      begin
        SelectedTransNo.Add(QuotedStr(Qdetail.FieldByName('trans_no').AsString));
      end;
      Qdetail.Next;
    end;

    if SelectedTransNo.Count > 0 then
      begin
        SQLText := SelectedTransNo.CommaText;
      end else
      begin
        SQLText := '''-1''';
      end;

    with dm.Qtemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='select DISTINCT a.trans_date tgl_faktur_xml,''Normal'' jenis_faktur'+
                  ',a.code_trans kode_trans_pajak,a.trans_no referensi,(select nitku from t_company) id_tku_penjual '+
                 //', case when b.npwp is NULL then 0 else b.npwp end npwp_nik_pembeli '+
                 ', case when b.npwp=''0'' then '''' else b.npwp end npwp_nik_pembeli '+
                 ', ''TIN'' jnis_id_pembeli,''IDN'' negara_pembeli'+
                 ', ''0'' nomor_dok_pembeli, b.customer_name_pkp nama_pembeli,c.address alamat_pembeli '+
  //               ',case when b.email=''-'' then ''0'' when b.email'''' then ''0'' when b.email is NULL then ''0'' else b.email end email,'+
                 ',case when b.email=''-'' then '''' else b.email end email,'+
                 'case when b.no_nitku=''0'' then '''' else b.no_nitku end id_tku_pembeli from t_selling a '+
                 'left join t_selling_customer b on b.customer_code=a.code_cust AND b.deleted_at IS NULL '+
                 'LEFT JOIN t_customer_address c on c.customer_code=a.code_cust and c.code_details=''002'' '+
                 'where a.trans_no in ('+SQLText+')  ';
      Open;
    end;

    if dm.Qtemp.RecordCount = 0 then
    begin
      MessageDlg('Tidak Ada Data Yang Dapat Diproses ..!!',mtInformation,[mbRetry],0);
    end else
    begin
      gauge1.Visible:=True;
      pnfp.Visible:=true;
      gauge1.Progress:=0;
      gauge1.MinValue:=0;
      gauge1.MaxValue:=dm.Qtemp.RecordCount;

      // Buat SaveDialog
      SaveDialog := TSaveDialog.Create(nil);
      try
      SaveDialog.Title := 'Save XML File';
      SaveDialog.Filter := 'XML Files (*.xml)|*.xml';
      SaveDialog.DefaultExt := 'xml';
      SaveDialog.FileName := 'faktur_' +
                             LowerCase(strKodeKaresidenan) + '_' +
                             FormatDateTime('yyyy-mm-dd', dtTglDari.Date) + '.xml';

      // Tampilkan dialog SaveDialog
      if not SaveDialog.Execute then
      begin
        ShowMessage('Proses dibatalkan.');
        Exit;
      end;

      // Dapatkan nama file
      TempFileName := SaveDialog.FileName;

      // Buat dokumen XML
      XMLDoc := NewXMLDocument;
      XMLDoc.Options := [doNodeAutoIndent];
      XMLDoc.Encoding := 'utf-8';
      XMLDoc.Version := '1.0';

      // Tambahkan elemen root
      RootNode := XMLDoc.AddChild('TaxInvoiceBulk');
      RootNode.Attributes['xmlns:xsd'] := 'http://www.w3.org/2001/XMLSchema';
      RootNode.Attributes['xmlns:xsi'] := 'http://www.w3.org/2001/XMLSchema-instance';
      //RootNode.Attributes['xsi:noNamespaceSchemaLocation'] := 'TaxInvoice.xsd';

      j := 0;
      // Tambahkan elemen TIN
      RootNode.AddChild('TIN').Text := SelectRow('SELECT LPAD(REPLACE(REPLACE(REPLACE(nitku, ''.'', ''''), ''-'', ''''), '' '', ''''), 16, ''0'') AS npwp FROM t_company');
      // Tambahkan elemen ListOfTaxInvoice
      InvoiceNode := RootNode.AddChild('ListOfTaxInvoice');
        while not dm.Qtemp.Eof do
        begin
          Inc(j);
          // Tambahkan elemen TaxInvoice
          GoodsNode := InvoiceNode.AddChild('TaxInvoice');
          GoodsNode.AddChild('TaxInvoiceDate').Text := FormatDateTime('yyyy-mm-dd', dm.Qtemp.FieldByName('tgl_faktur_xml').AsDateTime);
          GoodsNode.AddChild('TaxInvoiceOpt').Text := dm.Qtemp.FieldByName('jenis_faktur').Value;

          if Length(dm.Qtemp.FieldByName('kode_trans_pajak').Value) = 0 then
            GoodsNode.AddChild('TrxCode') // Biarkan kosong untuk menghasilkan <AddInfo />
          else
            GoodsNode.AddChild('TrxCode').Text := dm.Qtemp.FieldByName('kode_trans_pajak').Value;

          if Length(edKetTambahan.Text) = 0 then
            GoodsNode.AddChild('AddInfo') // Biarkan kosong untuk menghasilkan <AddInfo />
          else
            GoodsNode.AddChild('AddInfo').Text := edKetTambahan.Text;

          GoodsNode.AddChild('CustomDoc');
          //GoodsNode.AddChild('CustomDoc').Text := '';
          GoodsNode.AddChild('CustomDocMonthYear');

          if Length(dm.Qtemp.FieldByName('referensi').Value) = 0 then
            GoodsNode.AddChild('RefDesc') // Biarkan kosong untuk menghasilkan <RefDesc />
          else
            GoodsNode.AddChild('RefDesc').Text := dm.Qtemp.FieldByName('referensi').Value;

          if Length(strKodeCapFasilitas) = 0 then
            GoodsNode.AddChild('FacilityStamp') // Biarkan kosong untuk menghasilkan <FacilityStamp />
          else
            GoodsNode.AddChild('FacilityStamp').Text := strKodeCapFasilitas;

          if Length(dm.Qtemp.FieldByName('id_tku_penjual').Value) = 0 then
            GoodsNode.AddChild('SellerIDTKU') // Biarkan kosong untuk menghasilkan <SellerIDTKU />
          else
            GoodsNode.AddChild('SellerIDTKU').Text := dm.Qtemp.FieldByName('id_tku_penjual').Value;

          if Length(dm.Qtemp.FieldByName('npwp_nik_pembeli').Value) = 0 then
            GoodsNode.AddChild('BuyerTin') // Biarkan kosong untuk menghasilkan <BuyerTin />
          else
            GoodsNode.AddChild('BuyerTin').Text := dm.Qtemp.FieldByName('npwp_nik_pembeli').Value;

          if Length(dm.Qtemp.FieldByName('jnis_id_pembeli').Value) = 0 then
            GoodsNode.AddChild('BuyerDocument') // Biarkan kosong untuk menghasilkan <BuyerDocument />
          else
            GoodsNode.AddChild('BuyerDocument').Text := dm.Qtemp.FieldByName('jnis_id_pembeli').Value;

          if Length(dm.Qtemp.FieldByName('negara_pembeli').Value) = 0 then
            GoodsNode.AddChild('BuyerCountry') // Biarkan kosong untuk menghasilkan <BuyerCountry />
          else
            GoodsNode.AddChild('BuyerCountry').Text := dm.Qtemp.FieldByName('negara_pembeli').Value;

          if Length(dm.Qtemp.FieldByName('nomor_dok_pembeli').Value) = 0 then
            GoodsNode.AddChild('BuyerDocumentNumber') // Biarkan kosong untuk menghasilkan <BuyerDocumentNumber />
          else
            GoodsNode.AddChild('BuyerDocumentNumber').Text := dm.Qtemp.FieldByName('nomor_dok_pembeli').Value;

          if Length(dm.Qtemp.FieldByName('nama_pembeli').Value) = 0 then
            GoodsNode.AddChild('BuyerName') // Biarkan kosong untuk menghasilkan <BuyerName />
          else
            GoodsNode.AddChild('BuyerName').Text := dm.Qtemp.FieldByName('nama_pembeli').Value;

          if Length(dm.Qtemp.FieldByName('alamat_pembeli').Value) = 0 then
            GoodsNode.AddChild('BuyerAdress') // Biarkan kosong untuk menghasilkan <BuyerAdress />
          else
            GoodsNode.AddChild('BuyerAdress').Text := dm.Qtemp.FieldByName('alamat_pembeli').Value;

          if Length(dm.Qtemp.FieldByName('email').Value) = 0 then
            GoodsNode.AddChild('BuyerEmail') // Biarkan kosong untuk menghasilkan <BuyerEmail />
          else
            GoodsNode.AddChild('BuyerEmail').Text := dm.Qtemp.FieldByName('email').Value;

          if Length(dm.Qtemp.FieldByName('id_tku_pembeli').Value) = 0 then
            GoodsNode.AddChild('BuyerIDTKU') // Biarkan kosong untuk menghasilkan <BuyerIDTKU />
          else
            GoodsNode.AddChild('BuyerIDTKU').Text := dm.Qtemp.FieldByName('id_tku_pembeli').Value;
          // Tambahkan elemen ListOfGoodService / Detail
          GoodServiceNode := GoodsNode.AddChild('ListOfGoodService');

          with dm.Qtemp1 do //Baca detail
          begin
            close;
            sql.clear;
  //          sql.Text:='select ''000000'' kode_brg, a.name_item nama_brg,b.kode_satuan_pajak kd_satuan_pajak,'+
  //                    ' a.sub_total/a.amount harga_satuan_coretax,a.amount jml_brg,a.tot_piece_value tot_pot,'+
  //                    ' a.sub_total dpp_coretax,a.dpp_lain_lain dpp_lain_coretax,a.ppn_percent_cortex tarif_ppn,'+
  //                    ' a.ppn_value_cortex ppn_coretax,''0'' tarif_PPnBM,''0'' PPnBM FROM t_selling_det a '+
  //                    'LEFT JOIN t_pajak_satuan_link b on b.kode_satuan=a.code_unit '+
  //                    'WHERE a.trans_no='+QuotedStr(dm.Qtemp.FieldValues['referensi']);
            Sql.Text:='select * from get_selling_coretax_det('+QuotedStr(dm.Qtemp.FieldValues['referensi'])+')';
            open;
          end;
          gauge1.Progress:=0;
          gauge1.MinValue:=0;
          gauge1.MaxValue:=dm.Qtemp1.RecordCount;
          j:=0;
          while not dm.Qtemp1.Eof do
          begin
            j:=j+1;
            // Tambahkan elemen GoodService
            GoodNode := GoodServiceNode.AddChild('GoodService');
            GoodNode.AddChild('Opt').Text := strKdBarangJasa;
            GoodNode.AddChild('Code').Text := dm.Qtemp1.FieldByName('kode_brg').AsString;
            GoodNode.AddChild('Name').Text := dm.Qtemp1.FieldByName('nama_brg').AsString;
            GoodNode.AddChild('Unit').Text := dm.Qtemp1.FieldByName('kd_satuan_pajak').AsString;
            GoodNode.AddChild('Price').Text := stringreplace(dm.Qtemp1.FieldByName('harga_satuan_coretax').Value, ',', '.',[rfReplaceAll, rfIgnoreCase]);
            //FormatFloat('0.00', FMainMenu.qexec2.FieldByName('harga_satuan').Value);
            GoodNode.AddChild('Qty').Text := dm.Qtemp1.FieldByName('jml_brg').Value;
            GoodNode.AddChild('TotalDiscount').Text := dm.Qtemp1.FieldByName('tot_pot').Value;
            GoodNode.AddChild('TaxBase').Text := stringreplace(dm.Qtemp1.FieldByName('dpp_coretax').Value, ',', '.',[rfReplaceAll, rfIgnoreCase]);
            //GoodNode.AddChild('TaxBase').Text := FMainMenu.qexec2.FieldByName('dpp').Value;
            GoodNode.AddChild('OtherTaxBase').Text := stringreplace(FloatToStr(RoundTo(dm.Qtemp1.FieldByName('dpp_lain_coretax').Value,-2)), ',', '.',[rfReplaceAll, rfIgnoreCase]);
            //GoodNode.AddChild('OtherTaxBase').Text := FormatFloat('0.00', FMainMenu.qexec2.FieldByName('dpp_lain').Value);
            GoodNode.AddChild('VATRate').Text := dm.Qtemp1.FieldByName('tarif_ppn').Value;
            GoodNode.AddChild('VAT').Text := stringreplace(FloatToStr(RoundTo(dm.Qtemp1.FieldByName('ppn_coretax').Value,-2)), ',', '.',[rfReplaceAll, rfIgnoreCase]);
            //GoodNode.AddChild('VAT').Text := FormatFloat('0.00', FMainMenu.qexec2.FieldByName('ppn').Value);
            GoodNode.AddChild('STLGRate').Text := dm.Qtemp1.FieldByName('tarif_PPnBM').Value;
            GoodNode.AddChild('STLG').Text := dm.Qtemp1.FieldByName('PPnBM').Value;
            gauge1.Progress:=j;
            dm.Qtemp1.Next;
          end;


          gauge1.Progress:=j;
          dm.Qtemp.Next;
        end;

        // Simpan dokumen ke file
        XMLDoc.SaveToFile(TempFileName);

        // Tampilkan pesan sukses
        //ShowMessage('File XML berhasil dibuat: ' + TempFileName);
        pnfp.Visible:=false;
        gauge1.Visible:=False;
        ShowMessage('Proses Berhasil...');

        except
        on E: Exception do
          begin
            ShowMessage('Terjadi kesalahan: ' + E.Message);
            gauge1.Visible:=False;
          end;
      end;

    // Hapus SaveDialog
    //finally
      SaveDialog.Free;
    end;
  finally
    SelectedTransNo.Free; // Ini yang menjamin objek dihapus dari memori
    gauge1.Visible:=False;
  end;
end;

procedure TFExportFaktur.FormShow(Sender: TObject);
begin
  Clear;
end;

procedure TFExportFaktur.RzBitBtn1Click(Sender: TObject);
var strKares: String;
begin
  if cbExport.ItemIndex=0 then
  begin
    if edKaresidenan.Text='' then
    begin
      strKares:='';
    end else begin
      strKares:=' AND b.karesidenan='+QuotedStr(edKaresidenan.Text)
    end;                                                             ;
    with Qdetail do
    begin
      close;
      sql.Clear;
      sql.Text:='select false as pilih,a.trans_no,a.trans_date,a.code_cust,a.name_cust,'+
                'a.customer_name_pkp,a.grand_tot,b.karesidenan,b.code_karesidenan from get_selling(NULL) a '+
                'LEFT JOIN get_customer() b ON b.customer_code=a.code_cust '+
                'WHERE a.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyy-mm-dd',dtTglDari.Date))+' AND '+
                ' '+QuotedStr(FormatDateTime('yyy-mm-dd',dtTglSampai.Date))+ strKares+' AND (a.no_inv_tax_coretax IS NULL OR a.no_inv_tax_coretax='''') ';
      open;
    end;
    cbTandai.Checked:=False;
  end else if cbExport.ItemIndex=1 then begin
    if edKaresidenan.Text='' then
    begin
      strKares:='';
    end else begin
      strKares:=' AND karesidenan='+QuotedStr(edKaresidenan.Text)
    end;
    with QReport do
    begin
      close;
      sql.clear;
      sql.Text:='select trans_no,no_inv_tax,customer_name_pkp,trans_date,coalesce(no_npwp,no_nik)no_npwp from get_selling(NULL) '+
                'WHERE trans_date BETWEEN '+QuotedStr(FormatDateTime('yyy-mm-dd',dtTglDari.Date))+' AND '+
                ' '+QuotedStr(FormatDateTime('yyy-mm-dd',dtTglSampai.Date))+ strKares+' ';
      Open;
    end;

//    with QReportDetail do
//    begin
//      close;
//      sql.Clear;
//      sql.Text:='select a.code_item,a.name_item,a.amount,a.name_unit,a.unit_price,a.sub_total,a.ppn_percent,a.ppn_value from t_selling_det a '+
//                'LEFT JOIN get_selling(NULL) b on b.trans_no=a.trans_no '+
//                'WHERE b.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyy-mm-dd',dtTglDari.Date))+' AND '+
//                ' '+QuotedStr(FormatDateTime('yyy-mm-dd',dtTglSampai.Date))+ strKares;
//      Open;
//    end;

    if QReport.RecordCount<>0 then
    begin
      QReportDetail.Close;
      QReportDetail.Open;

      cLocation := ExtractFilePath(Application.ExeName);
      Report.LoadFromFile(cLocation +'report/rpt_validasifaktur'+ '.fr3');
      if edKaresidenan.Text<>'' then
      begin
        SetMemo(Report,'karesidenan',edKaresidenan.Text);
      end else begin
        SetMemo(Report,'karesidenan','');
      end;
      SetMemo(Report,'periode',formatdatetime('dd mmmm yyyy',dtTglDari.Date)+' s/d '+formatdatetime('dd mmmm yyyy',dtTglSampai.Date));
      Report.ShowReport();
    end else begin
      ShowMessage('TIdak Ada Data..!');
    end;
  end;
end;

procedure TFExportFaktur.CetakValidasiFaktur;
begin

end;

procedure TFExportFaktur.BSaveClick(Sender: TObject);
var rec: Integer;
begin
  Qdetail.First;
  while not Qdetail.Eof do
  begin
    if Qdetailpilih.value=true then
    begin
      rec:=rec+1;
    end;
    Qdetail.next;
  end;

  if cbBarangJasa.Text='' then
  begin
    MessageDlg('Barang/Jasa Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else if edJenisTransaksi.Text='' then
  begin
    MessageDlg('Jenis Transaksi Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else if cbExport.Text='' then
  begin
    MessageDlg('Export Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else if rec=0 then
  begin
    MessageDlg('Tidak Ada Data Yang Di Tandai..!!',mtInformation,[mbRetry],0);
    Exit;
  end else begin

    if cbExport.ItemIndex=0 then
    begin
    //ExportTaxInvoiceXML;
      ExportTaxInvoiceXML1;
    end;
    if cbExport.ItemIndex=1 then
    begin
      CetakValidasiFaktur;
    end;
    if cbExport.ItemIndex=2 then
    begin
      ExportTaxInvoiceExcel;
    end;
  end;
end;

procedure TFExportFaktur.cbTandaiClick(Sender: TObject);
begin
  if (Qdetail.RecordCount=0) AND (cbTandai.Checked=True) then
  begin
    cbTandai.Checked:=False;
    MessageDlg('Tidak Ada Data Yang Mau Diceklis..!!',mtInformation,[mbRetry],0);
  end else
  if  Qdetail.RecordCount>0 then
  begin
    Qdetail.DisableControls;
    try
      Qdetail.First;
      while not Qdetail.Eof do
      begin
        Qdetail.Edit;
        Qdetailpilih.Value := cbTandai.Checked;
        Qdetail.Post;
        Qdetail.Next;
      end;
    finally
      Qdetail.EnableControls;
    end;
  end;
end;

procedure TFExportFaktur.Clear;
begin
  cbBarangJasa.ItemIndex:=0;
  edKaresidenan.Text:='';
  edJenisTransaksi.Text:='';
  edKetTambahan.Text:='';
  edCapFasilitas.Text:='';
  dtTglDari.Date:=NOW();
  dtTglSampai.Date:=NOW();
  cbExport.ItemIndex:=0;
  kode_jenis_transaksi:='';
  cbTandai.Checked:=False;
  Qdetail.Close;
  gauge1.Visible:=False;

  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select code,name from t_sales_transaction_source where code=''04''';
    open;
  end;
  kode_jenis_transaksi:=dm.Qtemp.FieldValues['code'];
  edJenisTransaksi.Text:=dm.Qtemp.FieldValues['name'];
  cbExport.ItemIndex:=0;
//  cbExport.Enabled:=False;
end;

procedure TFExportFaktur.dtTglDariChange(Sender: TObject);
begin
  if dtTglDari.Date>dtTglSampai.Date then dtTglSampai.Date:=dtTglDari.Date;
end;

procedure TFExportFaktur.dtTglSampaiChange(Sender: TObject);
begin
  if dtTglSampai.Date<dtTglDari.Date then dtTglDari.Date:=dtTglSampai.Date;
end;

procedure TFExportFaktur.edCapFasilitasButtonClick(Sender: TObject);
begin
  if edJenisTransaksi.Text='' then
  begin
    MessageDlg('Jenis transaksi wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    FPajakCapFasilitas_KetTambahan.strWhereKodeTransaksi:=' WHERE kode_transaksi='+QuotedStr(kode_jenis_transaksi);
    FPajakCapFasilitas_KetTambahan.vcall:='capfasilitas';
    FPajakCapFasilitas_KetTambahan.ShowModal;
  end;
end;

procedure TFExportFaktur.edJenisTransaksiButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Sumber Kode Transaksi';
  FMasterData.vcall:='kode_trans_export_faktur';
  FMasterData.update_grid('code','name','description','t_sales_transaction_source','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
end;

procedure TFExportFaktur.edKaresidenanButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='exportfaktur';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFExportFaktur.edKetTambahanButtonClick(Sender: TObject);
begin
  if edJenisTransaksi.Text='' then
  begin
    MessageDlg('Jenis transaksi wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    FPajakCapFasilitas_KetTambahan.strWhereKodeTransaksi:=' WHERE kode_transaksi='+QuotedStr(kode_jenis_transaksi);
    FPajakCapFasilitas_KetTambahan.vcall:='kettambahan';
    FPajakCapFasilitas_KetTambahan.ShowModal;
  end;
end;

procedure TFExportFaktur.BBatalClick(Sender: TObject);
begin
  Close;
end;

end.
