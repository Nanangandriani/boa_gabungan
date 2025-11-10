unit UPenyesuaianFaktur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, cxCalendar, cxButtonEdit, cxCheckBox, MemDS,
  DBAccess, Uni, dxBar, cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxRibbon, MemTableEh,
  Vcl.ComCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, ComObj,
  RzButton, RzRadChk, RzPanel;

type
  TFPenyesuaianFaktur = class(TForm)
    DBGridEh1: TDBGridEh;
    dsMemDetail: TDataSource;
    MemDetail: TMemTableEh;
    MemDetailkode_outlet: TStringField;
    MemDetailnama_outlet: TStringField;
    MemDetailkaresidenan: TStringField;
    MemDetailnpwp_nik: TStringField;
    MemDetailno_invoice_internal: TStringField;
    MemDetailno_faktur_internal: TStringField;
    MemDetaildpp_internal: TCurrencyField;
    MemDetailnppn_internal: TCurrencyField;
    MemDetailtotal_internal: TCurrencyField;
    MemDetailno_faktur_coretax: TStringField;
    MemDetaildpp_coretax: TCurrencyField;
    MemDetailnppn_coretax: TCurrencyField;
    MemDetailtotal_coretax: TCurrencyField;
    MemDetaildpp_nilai_lain_coretax: TCurrencyField;
    MemDetailpilih: TBooleanField;
    MemDetailtanggal: TDateField;
    MemDetailselisih_dpp: TCurrencyField;
    MemDetailselisih_ppn: TCurrencyField;
    MemDetailselisih_total: TCurrencyField;
    SaveDialog1: TSaveDialog;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar2: TdxBar;
    btExportExcel: TdxBarLargeButton;
    btExportPDF: TdxBarLargeButton;
    dtAwal: TcxBarEditItem;
    dtAkhir: TcxBarEditItem;
    edKaresidenan: TcxBarEditItem;
    btExport: TdxBarLargeButton;
    btCariFile: TdxBarLargeButton;
    edKabupaten: TcxBarEditItem;
    btSave: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    QPenyesuaianFaktur: TUniQuery;
    RzPanel1: TRzPanel;
    cbTandai: TRzCheckBox;
    pnprogress: TPanel;
    ProgressBar1: TProgressBar;
    procedure btCariFileClick(Sender: TObject);
    procedure cbTandaiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btExportClick(Sender: TObject);
  private
    { Private declarations }
    procedure MigrasiExcelToTemp;
    procedure ProsesUpdate;
  public
    { Public declarations }
  end;

var
  FPenyesuaianFaktur: TFPenyesuaianFaktur;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin;

procedure TFPenyesuaianFaktur.ProsesUpdate;
var strKaresidenan: String;
begin
  if MemDetail['karesidenan']<>NULL then
  strKaresidenan:=MemDetail['karesidenan']
  else strKaresidenan:='';

  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:='Update t_selling set '+
              'no_inv_tax_coretax='+QuotedStr(MemDetail['no_faktur_coretax'])+', '+
              'updated_at=NOW(), updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
              'Where trans_no='+QuotedStr(MemDetail['no_invoice_internal']);
    ExecSQL;
  end;

  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO t_selling_history_activity_coretax (customer_code, customer_name, '+
              ' karesidenan, npwp_nik, tanggal, no_invoice_internal, no_faktur_internal, '+
              ' dpp_internal, nppn_internal, total_internal, no_faktur_coretax, dpp_coretax, '+
              ' nppn_coretax, total_coretax, dpp_nilai_lain_coretax, created_by) '+
              ' VALUES ('+
              ' '+QuotedStr(MemDetail['kode_outlet'])+' ,'+
              ' '+QuotedStr(MemDetail['nama_outlet'])+' ,'+
              ' '+QuotedStr(strKaresidenan)+' ,'+
              ' '+QuotedStr(MemDetail['npwp_nik'])+' ,'+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tanggal']))+' ,'+
              ' '+QuotedStr(MemDetail['no_invoice_internal'])+' ,'+
              ' '+QuotedStr(MemDetail['no_faktur_internal'])+' ,'+
              ' '+QuotedStr(stringreplace(MemDetail['dpp_internal'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(stringreplace(MemDetail['nppn_internal'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(stringreplace(MemDetail['total_internal'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(MemDetail['no_faktur_coretax'])+' ,'+
              ' '+QuotedStr(stringreplace(MemDetail['dpp_coretax'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(stringreplace(MemDetail['nppn_coretax'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(stringreplace(MemDetail['total_coretax'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(stringreplace(MemDetail['dpp_nilai_lain_coretax'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(FHomeLogin.Eduser.Text)+' '+
              ' )';
    ExecSQL;
  end;
end;

procedure TFPenyesuaianFaktur.btCariFileClick(Sender: TObject);
begin
  MigrasiExcelToTemp;
  with QPenyesuaianFaktur do
  begin
    close;
    sql.clear;
    sql.Text:='SELECT a.trans_no no_inv,a.no_inv_tax nofakturpajak ,a.code_cust,a.trans_date, '+
              'a.dpp,  a.ppn_value nppn,a.grand_tot total,  b.customer_name,b.customer_name_pkp,b.no_npwp, '+
              'b.karesidenan, cortex.created_by, cortex.npwp_nik as npwp_nik_coretax, '+
              'cortex.no_referensi, cortex.no_faktur_coretax,  cortex.dpp_coretax, '+
              'cortex.nppn_coretax, cortex.total_coretax, cortex.dpp_nilai_lain_coretax '+
              'FROM t_selling_compare_coretax cortex   '+
              'LEFT JOIN get_selling(NULL) a on cortex.no_referensi=a.trans_no  '+
              'LEFT JOIN vcustomer b on a.code_cust=b.customer_code '+
              'WHERE cortex.created_by='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
              'ORDER BY b.karesidenan,a.trans_no,a.trans_date asc';
    open;
    first;
  end;

  if QPenyesuaianFaktur.RecordCount<>0 then
  begin
    QPenyesuaianFaktur.first;
    DBGridEh1.StartLoadingStatus();
    try
    begin
    while not QPenyesuaianFaktur.Eof do
    begin
      MemDetail.insert;
      MemDetail['kode_outlet']:=QPenyesuaianFaktur.fieldbyname('code_cust').Value;
      MemDetail['nama_outlet']:=QPenyesuaianFaktur.fieldbyname('customer_name_pkp').Value;
      MemDetail['karesidenan']:=QPenyesuaianFaktur.fieldbyname('karesidenan').Value;
      MemDetail['npwp_nik']:=QPenyesuaianFaktur.fieldbyname('npwp_nik_coretax').Value;
      MemDetail['tanggal']:=QPenyesuaianFaktur.fieldbyname('trans_date').Value;
      MemDetail['no_invoice_internal']:=QPenyesuaianFaktur.fieldbyname('no_inv').Value;
      MemDetail['no_faktur_internal']:=QPenyesuaianFaktur.fieldbyname('nofakturpajak').Value;
      MemDetail['dpp_internal']:=QPenyesuaianFaktur.fieldbyname('dpp').Value;
      MemDetail['nppn_internal']:=QPenyesuaianFaktur.fieldbyname('nppn').Value;
      MemDetail['total_internal']:=QPenyesuaianFaktur.fieldbyname('total').Value;
      MemDetail['no_faktur_coretax']:=QPenyesuaianFaktur.fieldbyname('no_faktur_coretax').Value;
      MemDetail['dpp_coretax']:=QPenyesuaianFaktur.fieldbyname('dpp_coretax').Value;
      MemDetail['nppn_coretax']:=QPenyesuaianFaktur.fieldbyname('nppn_coretax').Value;
      MemDetail['total_coretax']:=QPenyesuaianFaktur.fieldbyname('total_coretax').Value;
      MemDetail['dpp_nilai_lain_coretax']:=QPenyesuaianFaktur.fieldbyname('dpp_nilai_lain_coretax').Value;
      MemDetail['selisih_dpp']:=QPenyesuaianFaktur.fieldbyname('dpp').Value-QPenyesuaianFaktur.fieldbyname('dpp_coretax').Value;
      MemDetail['selisih_ppn']:=QPenyesuaianFaktur.fieldbyname('nppn').Value-QPenyesuaianFaktur.fieldbyname('nppn_coretax').Value;
      MemDetail['selisih_total']:=QPenyesuaianFaktur.fieldbyname('total').Value-QPenyesuaianFaktur.fieldbyname('total_coretax').Value;
      MemDetail['pilih']:=cbTandai.Checked;
      MemDetail.Post;
     QPenyesuaianFaktur.next;
    end;
    end;
  finally
  DBGridEh1.FrozenCols := 4;
  DBGridEh1.FinishLoadingStatus();
  end;
  end;
end;

procedure TFPenyesuaianFaktur.btExportClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet: Variant;
  i, j: Integer;
begin
  if SaveDialog1.Execute then
  begin
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.Visible := False; // Sembunyikan Excel saat ekspor
    Workbook := ExcelApp.Workbooks.Add;
    Worksheet := Workbook.Worksheets[1];

    // Header
    for i := 0 to DBGridEh1.FieldCount - 1 do
      Worksheet.Cells[1, i + 1] := DBGridEh1.Fields[i].FieldName;

    // Data
    DBGridEh1.DataSource.DataSet.First;
    j := 2;
    while not DBGridEh1.DataSource.DataSet.Eof do
    begin
      for i := 0 to DBGridEh1.FieldCount - 1 do
        Worksheet.Cells[j, i + 1] := DBGridEh1.Fields[i].AsString;
      Inc(j);
      DBGridEh1.DataSource.DataSet.Next;
    end;

    // Simpan File ke lokasi yang dipilih
    Workbook.SaveAs(SaveDialog1.FileName);
    ExcelApp.Quit;
  end;
end;

procedure TFPenyesuaianFaktur.btSaveClick(Sender: TObject);
var
norec : real;
i:integer;
stat_progres:Boolean;
begin

 if application.MessageBox('Data akan diproses?','confirm',mb_yesno or mb_iconquestion)=id_yes then
 begin
  try
    norec:=0;
    stat_progres:=true;
    MemDetail.Refresh;
    if MemDetail.RecordCount<>0 then
    begin
      while not MemDetail.Eof do
      begin
        if MemDetail['pilih']= true then
        begin
          norec:=norec+1 ;
        end;
        MemDetail.Next;
      end;

      if norec=0 then
      begin
        showmessage('Tidak Ada Data Yang Ditandai...');
        exit;
      end;

      if norec<>0 then
      begin
      stat_progres:=true;
        if stat_progres=true then
        begin
          MemDetail.First;
          pnprogress.Visible:=true;
          ProgressBar1.Position:=0;
          i:=0;
          ProgressBar1.Max:=MemDetail.RecordCount;
            while not MemDetail.Eof do
            begin
                i:=i+1;
               ProgressBar1.Position:=i;
            if MemDetail['pilih']= true then
            begin
              ProsesUpdate;
//              UpdateKpiUser('PENJUALAN' ,'`update`' , '1' , True, 'UBAH FAKTUR PENJUALAN '+MemDetail['no_invoice_internal']+' FAKTUR DARI '+MemDetail['no_faktur_internal']+' KE '+MemDetail['no_faktur_coretax']+' ');
            end;
            MemDetail.Next;
            end;
          pnprogress.Visible:=false;
          ProgressBar1.Position:=0;
          MessageDlg('Proses Berhasil..!!',mtInformation,[MBOK],0);

        end;
      end;

    end;

  Except on E :Exception do
    begin
      begin
        MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
        MemDetail.Close;
        pnprogress.Visible:=false;
      //  FMainMenu.UniConnection1.Rollback ;
     //   DBGridEh1.FinishLoadingStatus();
      end;
    end;
  end;
  end;
end;

procedure TFPenyesuaianFaktur.cbTandaiClick(Sender: TObject);
begin
  if MemDetail.RecordCount<>0 then
  begin
  MemDetail.First;
  DBGridEh1.StartLoadingStatus();
  while not MemDetail.Eof do
    begin
      MemDetail.Edit;
        MemDetail['pilih']:=cbTandai.Checked;
      MemDetail.Next;
    end;
  MemDetail.Active:=false;
  MemDetail.Active:=true;
  DBGridEh1.FinishLoadingStatus();
  end;
end;

procedure TFPenyesuaianFaktur.FormShow(Sender: TObject);
begin
  MemDetail.Active:=false;
  MemDetail.Active:=true;
  MemDetail.EmptyTable;
end;

procedure TFPenyesuaianFaktur.MigrasiExcelToTemp;
var
  OpenDialog: TOpenDialog;
  ExcelApp, WorkBook, WorkSheet: OLEVariant;
  Row, Col, LastRow, LastCol: Integer;
  CellValue: Variant;
  FileName: string;
begin
  // 1. Membuat dialog untuk memilih file Excel
  OpenDialog := TOpenDialog.Create(nil);
  try
    OpenDialog.Filter := 'Excel Files|*.xls;*.xlsx';
    OpenDialog.Title := 'Pilih File Excel untuk Diimpor';

    if OpenDialog.Execute then
    begin
      FileName := OpenDialog.FileName; // Dapatkan lokasi file yang dipilih

      // 2. Membuka aplikasi Excel
      ExcelApp := CreateOleObject('Excel.Application');
      try
        // 3. Membuka file Excel
        WorkBook := ExcelApp.Workbooks.Open(FileName);
        WorkSheet := WorkBook.Worksheets[1]; // Gunakan worksheet pertama

        // 4. Menentukan batas baris dan kolom (LastRow dan LastCol)
        LastRow := WorkSheet.UsedRange.Rows.Count;
        LastCol := WorkSheet.UsedRange.Columns.Count;

        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.add(' SELECT * from '+
                  ' t_selling_compare_coretax a '+
                  ' where created_by='+QuotedStr(FHomeLogin.Eduser.Text)+' ');
          open;
        end;

        if dm.Qtemp.RecordCount<>0 then
        begin
          if application.MessageBox('Apakah Anda Ingin MengKosongkan Data...?','confirm',mb_yesno or mb_iconquestion)=id_yes then
          begin
            with dm.Qtemp1 do
            begin
              close;
              sql.clear;
              sql.add(' delete from t_selling_compare_coretax '+
                      ' Where created_by='+QuotedStr(FHomeLogin.Eduser.Text)+' ');
              ExecSQL;
            end;
          end;
            MemDetail.Active:=false;
            MemDetail.Active:=true;
            MemDetail.EmptyTable;
        end;

        if dm.Qtemp.RecordCount=0 then
        begin
            MemDetail.Active:=false;
            MemDetail.Active:=true;
            MemDetail.EmptyTable;

            with dm.Qtemp1 do
            begin
              close;
              sql.clear;
              sql.add(' delete from t_selling_compare_coretax '+
                      ' Where created_by='+QuotedStr(FHomeLogin.Eduser.Text)+' ');
              ExecSQL;
            end;

        end;

        // 6. Memasukkan data ke MemTable
        //MemDetail.DisableControls;
        DBGridEh1.StartLoadingStatus();
        try
          for Row := 2 to LastRow do // Mulai dari baris kedua untuk data
          begin
					if (WorkSheet.Cells[Row, 8].Value='APPROVED') and (WorkSheet.Cells[Row, 15].Value<>'') and (WorkSheet.Cells[Row, 15].Value<>'0') then
					begin
						with dm.Qtemp1 do
						begin
						close;
						sql.clear;
						sql.add(' INSERT INTO t_selling_compare_coretax (created_by, created_at, '+
								    ' npwp_nik, no_referensi, no_faktur_coretax, dpp_coretax, nppn_coretax, '+
								    ' total_coretax, dpp_nilai_lain_coretax) '+
								    ' VALUES ('+
								    ' '+QuotedStr(FHomeLogin.Eduser.Text)+' ,'+
								    ' NOW(), '+
								    ' '+QuotedStr(WorkSheet.Cells[Row, 1].Value)+' ,'+
								    ' '+QuotedStr(WorkSheet.Cells[Row, 15].Value)+' ,'+
								    ' '+QuotedStr(WorkSheet.Cells[Row, 4].Value)+' ,'+
								    ' '+QuotedStr(stringreplace(WorkSheet.Cells[Row, 10].Value, ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
								    ' '+QuotedStr(stringreplace(WorkSheet.Cells[Row, 12].Value, ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
                    ' '+QuotedStr(stringreplace(FloatToStr(Round(WorkSheet.Cells[Row, 10].Value+WorkSheet.Cells[Row, 12].Value)), ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
								    ' '+QuotedStr(stringreplace(WorkSheet.Cells[Row, 11].Value, ',', '.',[rfReplaceAll, rfIgnoreCase]))+' '+
								    ' )');
						ExecSQL;
						end;
					end;
		   end;
        finally
          //DBGridEh1.FrozenCols := 4;
          DBGridEh1.FinishLoadingStatus();
          //MemDetail.EnableControls;
        end;

        // 7. Menutup workbook dan Excel
        WorkBook.Close(False);
      finally
        ExcelApp.Quit;
      end;

      //ShowMessage('Data berhasil diimpor dari: ' + FileName);
    end
		else
		begin
		  ShowMessage('Proses impor Gagal.');
		end;
	finally
    OpenDialog.Free;
  end;
end;

initialization
  RegisterClass(TFPenyesuaianFaktur);

end.
