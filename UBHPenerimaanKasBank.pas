unit UBHPenerimaanKasBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, cxCalendar, cxButtonEdit, Data.DB, MemDS, DBAccess, Uni, dxBar,
  cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon, frxClass, frxDBSet, frxDesgn,
  frxExportBaseDialog, frxExportPDF, ShellAPI, frxExportXLSX, frxExportXLS;

type
  TFBHPenerimaanKasBank = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid: TDBGridEh;
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
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    btExportExcel: TdxBarLargeButton;
    btExportPDF: TdxBarLargeButton;
    dtAwal: TcxBarEditItem;
    dtAkhir: TcxBarEditItem;
    edKaresidenan: TcxBarEditItem;
    btPreview: TdxBarLargeButton;
    btSearch: TdxBarLargeButton;
    edKabupaten: TcxBarEditItem;
    QBHPenerimaanKasBank: TUniQuery;
    DsBHPenerimaanKasBank: TDataSource;
    dsCetak: TDataSource;
    Report: TfrxReport;
    frxDBDBHPenerimaan: TfrxDBDataset;
    QCetak: TUniQuery;
    dxBarLargeButton1: TdxBarLargeButton;
    QDaftarPenerimaan: TUniQuery;
    frxDBDDaftarPenerimaan: TfrxDBDataset;
    dsDaftarPenerimaan: TDataSource;
    QDaftarPenerimaanvoucher_no: TStringField;
    QDaftarPenerimaantrans_date: TDateField;
    QDaftarPenerimaancode_cust: TStringField;
    QDaftarPenerimaanname_cust: TStringField;
    QDaftarPenerimaancode_region: TStringField;
    QDaftarPenerimaanfor_acceptance: TStringField;
    QDaftarPenerimaandescription: TMemoField;
    QDaftarPenerimaancheque: TMemoField;
    QDaftarPenerimaancode_account: TStringField;
    QDaftarPenerimaanname_account: TStringField;
    QDaftarPenerimaantotal: TFloatField;
    QDaftarPenerimaancode_karesidenan: TStringField;
    QDaftarPenerimaancode_kab: TStringField;
    QDaftarPenerimaanname_kab: TStringField;
    QDaftarPenerimaanket_faktur: TMemoField;
    cbSBU: TdxBarCombo;
    dxBarLargeButton2: TdxBarLargeButton;
    QCetakKredit: TUniQuery;
    frxDBDHKredit: TfrxDBDataset;
    QCetakvoucher_no: TStringField;
    QCetaktrans_date: TDateField;
    QCetakmodule_id: TIntegerField;
    QCetakcode_cust: TStringField;
    QCetakname_cust: TStringField;
    QCetakfor_acceptance: TStringField;
    QCetakdescription: TMemoField;
    QCetakaccount_name_bank: TStringField;
    QCetakaccount_number_bank: TStringField;
    QCetakjum_kas: TFloatField;
    QCetakjum_bank: TFloatField;
    QCetakjum_piutang: TFloatField;
    QCetakcode_karesidenan: TMemoField;
    QCetakkaresidenan: TMemoField;
    QCetakcode_kabupaten: TMemoField;
    QCetakkabupaten: TMemoField;
    QCetakKreditvoucher_no: TStringField;
    QCetakKreditcode_account: TStringField;
    QCetakKreditname_account: TStringField;
    QCetakKreditpaid_amount: TFloatField;
    DBGridEh1: TDBGridEh;
    QBHPenerimaanKasBankDetail: TUniQuery;
    DSPenerimaanKasBankDetail: TDataSource;
    QCetakDebit: TUniQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    frxDBDHDebit: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    dxBarLargeButton3: TdxBarLargeButton;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxReport1: TfrxReport;
    QCetakExport: TUniQuery;
    frxDBDBHExport: TfrxDBDataset;
    edTP: TcxBarEditItem;
    QBHPenerimaanKasBankExportTotal: TUniQuery;
    QBHPenerimaanKasBankExportKredit: TUniQuery;
    QBHPenerimaanKasBankExportDebit: TUniQuery;
    QBHPenerimaanKasBankExport: TUniQuery;
    frxDBDBHPenerimaanKasBankExport: TfrxDBDataset;
    frxDBDBHPenerimaanKasBankExportDebit: TfrxDBDataset;
    frxDBDBHPenerimaanKasBankExportKredit: TfrxDBDataset;
    frxDBDBHPenerimaanKasBankExportTotal: TfrxDBDataset;
    ExportReport: TfrxReport;
    DSBHPenerimaanKasBankExport: TDataSource;
    QBHPenerimaanKasBankExportvoucher_no: TStringField;
    QBHPenerimaanKasBankExporttrans_date: TDateField;
    QBHPenerimaanKasBankExportdescription: TMemoField;
    QBHPenerimaanKasBankExportcode_cust: TMemoField;
    QBHPenerimaanKasBankExportname_cust: TMemoField;
    QBHPenerimaanKasBankExportacoount_code_bank: TStringField;
    QBHPenerimaanKasBankExportacoount_name_bank: TMemoField;
    QBHPenerimaanKasBankExportamount_bank: TFloatField;
    QBHPenerimaanKasBankExportacoount_code_piutang: TStringField;
    QBHPenerimaanKasBankExportacoount_name_piutang: TMemoField;
    QBHPenerimaanKasBankExportamount_piutang: TFloatField;
    QBHPenerimaanKasBankExportfor_acceptance: TStringField;
    QBHPenerimaanKasBankExportcode_kecamatan: TMemoField;
    QBHPenerimaanKasBankExportcode_kabupaten: TMemoField;
    QBHPenerimaanKasBankExportcode_tp: TMemoField;
    QBHPenerimaanKasBankExportcode_karesidenan: TMemoField;
    QBHPenerimaanKasBankExportDebittrans_no: TStringField;
    QBHPenerimaanKasBankExportDebitaccount_code: TStringField;
    QBHPenerimaanKasBankExportDebitaccount_name: TMemoField;
    QBHPenerimaanKasBankExportDebitstatus_dk: TStringField;
    QBHPenerimaanKasBankExportDebitdb: TFloatField;
    QBHPenerimaanKasBankExportKredittrans_no: TStringField;
    QBHPenerimaanKasBankExportKreditaccount_code: TStringField;
    QBHPenerimaanKasBankExportKreditaccount_name: TMemoField;
    QBHPenerimaanKasBankExportKreditstatus_dk: TStringField;
    QBHPenerimaanKasBankExportKreditkd: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btSearchClick(Sender: TObject);
    procedure QBHPenerimaanKasBankdescriptionGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QBHPenerimaanKasBankak_lain_kreGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QBHPenerimaanKasBankak_nm_lain_kreGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QBHPenerimaanKasBankket_fakturGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure btPreviewClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure edTPPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_tp,vkd_kares, vkd_kab : String ;
    procedure ExportToExcel;
  end;

function FBHPenerimaanKasBank: TFBHPenerimaanKasBank;
//var
//  FBHPenerimaanKasBank: TFBHPenerimaanKasBank;

implementation

{$R *.dfm}

uses UMasterWilayah, UMasterData, UHomeLogin, UMy_Function, UHomeSreen,
  UDataModule;
var
  realfbhp : TFBHPenerimaanKasBank;
// implementasi function
function FBHPenerimaanKasBank: TFBHPenerimaanKasBank;
begin
  if realfbhp <> nil then
    FBHPenerimaanKasBank:= realfbhp
  else
    Application.CreateForm(TFBHPenerimaanKasBank, Result);
end;

procedure TFBHPenerimaanKasBank.ExportToExcel;
var
  Exporter: TfrxCustomExportFilter;
  SaveDialog: TSaveDialog;
  SavePath, FormName, FileExt: string;
begin
  SaveDialog := TSaveDialog.Create(nil);
  Exporter := nil;
  try
    // Ambil nama form
    FormName := Self.Name;
    if Pos('TF', FormName) = 1 then
      FormName := Copy(FormName, 3, Length(FormName))
    else if Pos('T', FormName) = 1 then
      FormName := Copy(FormName, 2, Length(FormName));
    FormName := StringReplace(FormName, ' ', '', [rfReplaceAll]);
    // Setup Save Dialog
    SaveDialog.Title := 'Simpan Export Excel';
    SaveDialog.Filter := 'Excel 2007+ (*.xlsx)|*.xlsx|Excel 97-2003 (*.xls)|*.xls';
    SaveDialog.FilterIndex := 1;
    SaveDialog.FileName := FormName + '_' + FormatDateTime('yyyymmdd_hhnnss', Now);
    SavePath := ExtractFilePath(Application.ExeName) + 'Export\';
    if not DirectoryExists(SavePath) then
      ForceDirectories(SavePath);
    SaveDialog.InitialDir := SavePath;
    SaveDialog.Options := [ofOverwritePrompt, ofEnableSizing, ofPathMustExist];
    if SaveDialog.Execute then
    begin
      // Ambil extension
      FileExt := LowerCase(ExtractFileExt(SaveDialog.FileName));
      // Debug: tampilkan extension yang terdeteksi
      // ShowMessage('Extension: ' + FileExt); // Uncomment untuk debug
      // Buat exporter sesuai FilterIndex (lebih reliable)
      if SaveDialog.FilterIndex = 1 then
      begin
        // Excel 2007+ (.xlsx)
        Exporter := TfrxXLSXExport.Create(nil);
        TfrxXLSXExport(Exporter).Wysiwyg := True;
        TfrxXLSXExport(Exporter).EmptyLines := True;
        TfrxXLSXExport(Exporter).SuppressPageHeadersFooters := False;
        TfrxXLSXExport(Exporter).ChunkSize := 1;
        // Pastikan extension .xlsx
        if FileExt <> '.xlsx' then
          Exporter.FileName := ChangeFileExt(SaveDialog.FileName, '.xlsx')
        else
          Exporter.FileName := SaveDialog.FileName;
      end
      else if SaveDialog.FilterIndex = 2 then
      begin
        // Excel 97-2003 (.xls)
        Exporter := TfrxXLSExport.Create(nil);
        TfrxXLSExport(Exporter).Wysiwyg := True;
        TfrxXLSExport(Exporter).EmptyLines := True;
        TfrxXLSExport(Exporter).SuppressPageHeadersFooters := False;
        // Pastikan extension .xls
        if FileExt <> '.xls' then
          Exporter.FileName := ChangeFileExt(SaveDialog.FileName, '.xls')
        else
          Exporter.FileName := SaveDialog.FileName;
      end
      else
      begin
        ShowMessage('Format file tidak didukung!');
        Exit;
      end;
      try
        // Export
        Exporter.ShowDialog := False;
        Report.Export(Exporter);
        // Konfirmasi buka file
        if MessageDlg('Export berhasil!' + #13#10 +
                      'File: ' + Exporter.FileName + #13#10#13#10 +
                      'Apakah ingin membuka file sekarang?',
                      mtInformation, [mbYes, mbNo], 0) = mrYes then
        begin
          ShellExecute(0, 'open', PChar(Exporter.FileName), nil, nil, SW_SHOW);
        end;
      except
        on E: Exception do
        begin
          ShowMessage('Error saat export: ' + E.Message);
        end;
      end;
    end;
  finally
    if Assigned(Exporter) then
      Exporter.Free;
    SaveDialog.Free;
  end;
end;

procedure TFBHPenerimaanKasBank.btPreviewClick(Sender: TObject);
begin
   with QCetak do
   begin
       close;
       sql.Clear;
       sql.Add('SELECT zz.*,cust.code_tp,cust.tp,cust.code_karesidenan,cust.karesidenan,cust.code_kabupaten,cust.kabupaten '+
              'FROM ( '+
              'SELECT a.voucher_no,a.trans_date,a.module_id,a.code_cust,d.customer_name_pkp name_cust, '+
              'a.for_acceptance, a.description,a.account_name_bank,a.account_number_bank, '+
              'CASE WHEN a.module_id = ''4'' THEN COALESCE(bb.paid_amount, 0) ELSE 0 END AS jum_kas, '+
              'CASE WHEN a.module_id = ''3'' THEN COALESCE(b.paid_amount, 0) ELSE 0 END AS jum_bank, '+
              'COALESCE(SUM(c.paid_amount), 0) AS jum_piutang '+
              'FROM t_cash_bank_acceptance a '+
//              'INNER JOIN (SELECT voucher_no, position, SUM(paid_amount) paid_amount FROM t_cash_bank_acceptance_det GROUP BY voucher_no, position) b '+
//              'ON b.voucher_no = a.voucher_no AND b.position = ''D'' '+
              'LEFT JOIN ( '+
              ' SELECT bcd.voucher_no, bcd.position, SUM(bcd.paid_amount) AS paid_amount '+
              ' FROM t_cash_bank_acceptance_det bcd '+
              ' LEFT JOIN t_ak_account ac ON ac.code = bcd.code_account '+
              ' WHERE ac.header_code = ''1102''  '+
              ' GROUP BY bcd.voucher_no, bcd.position '+
              ') b ON b.voucher_no = a.voucher_no AND b.position = ''D'' '+

              'LEFT JOIN ( '+
              'SELECT bcd.voucher_no, bcd.position, SUM(bcd.paid_amount) AS paid_amount '+
              ' FROM t_cash_bank_acceptance_det bcd  '+
              'LEFT JOIN t_ak_account ac ON ac.code = bcd.code_account '+
              'WHERE ac.header_code = ''1101'' '+
              'GROUP BY bcd.voucher_no, bcd.position '+
              ') bb ON bb.voucher_no = a.voucher_no AND bb.position = ''D''  '+
              'LEFT JOIN '+
              't_cash_bank_acceptance_receivable c '+
              'ON c.voucher_no = a.voucher_no '+
              'LEFT JOIN t_cash_bank_acceptance_customer d  ON d.trans_no=a.voucher_no '+
              'and a.code_cust=d.customer_code AND d.deleted_at IS NULL '+
              'WHERE a.deleted_at IS NULL '+
              'GROUP BY a.voucher_no, a.trans_date, a.module_id, a.code_cust, '+
              'd.customer_name_pkp, a.for_acceptance,a.description, '+
              'a.account_name_bank,a.account_number_bank,b.paid_amount,bb.paid_amount , a.module_id ) AS zz '+
              'LEFT JOIN '+
              'get_customer() AS cust ON cust.customer_code = zz.code_cust '+
              'WHERE zz.trans_date BETWEEN '+QuotedStr(FormatDateTime ('yyyy-mm-dd',dtAwal.EditValue))+' AND '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+' ');

//       sql.Add('SELECT zz.*,cust.code_karesidenan,cust.karesidenan ,cust.code_kabupaten,cust.kabupaten '+
//              'FROM '+
//              '( '+
//              'SELECT '+
//              'a.voucher_no,a.trans_date,a.module_id,a.code_cust, '+
//              'a.name_cust,a.for_acceptance,a.description,a.account_name_bank,a.account_number_bank, '+
//              'CASE WHEN a.module_id = ''4'' THEN COALESCE(b.paid_amount, 0) ELSE 0 END AS jum_kas, '+
//              'CASE WHEN a.module_id = ''3'' THEN COALESCE(b.paid_amount, 0) ELSE 0 END AS jum_bank, '+
//              'COALESCE(SUM(c.paid_amount), 0) AS jum_piutang '+
//              'FROM '+
//              't_cash_bank_acceptance a '+
//              'INNER JOIN '+
//              '(SELECT voucher_no,position, SUM(paid_amount) paid_amount FROM t_cash_bank_acceptance_det group by voucher_no,position) b ON b.voucher_no = a.voucher_no AND b.position = ''D'' '+
//              'INNER JOIN '+
//              't_cash_bank_acceptance_receivable c ON c.voucher_no = a.voucher_no '+
//              ') AS zz '+
//              'LEFT JOIN get_customer() AS cust ON cust.customer_code = zz.code_cust '+
//              'WHERE zz.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+' ');
//       sql.add(' SELECT a.*,code_karesidenan,code_kab,name_kab,description ket_faktur from "public"."vbhpenerimaan_kas_bank" a  '+
//               ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
//               ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
//               ' ON "left"(code_region, 4)=b.code_kab '+
////               ' LEFT JOIN (SELECT voucher_no, '+
////               ' STRING_AGG( '+QuotedStr(' No. Faktur ')+' || no_invoice_tax || '+QuotedStr(' Tgl. ')+' || date_invoice_tax, E'+QuotedStr(',\n')+') AS ket_faktur '+
////               ' from t_cash_bank_acceptance_receivable GROUP BY voucher_no)cc ON a.voucher_no=cc.voucher_no '+
//               ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
//               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' ');
         if edKaresidenan.EditValue<>'' then
         begin
          sql.add(' AND cust.code_karesidenan='+QuotedStr(vkd_kares)+' ');
         end;
         if edTp.EditValue<>'' then
         begin
          sql.add(' AND cust.code_tp='+QuotedStr(vkd_tp)+' ');
         end;
         if edKabupaten.EditValue<>'' then
         begin
          sql.add(' AND cust.code_kabupaten='+QuotedStr(vkd_kab)+' ');
         end;
       sql.add(' ORDER BY zz.trans_date, zz.voucher_no');
       open;
   end;

 if QCetak.RecordCount=0 then
 begin
  showmessage('Tidak ada data yang bisa dicetak !');
  exit;
 end;

 if QCetak.RecordCount<>0 then
 begin
   QCetakKredit.Close;
   QCetakKredit.Open;

   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   Report.LoadFromFile(cLocation +'report/rpt_bh_penerimaankasbank2'+ '.fr3');
   SetMemo(Report,'nama_pt',FHomeLogin.vKodePRSH);
   SetMemo(Report,'periode','Periode '+formatdatetime('dd mmmm yyyy',dtAwal.EditValue)+' s/d '+formatdatetime('dd mmmm yyyy',dtAkhir.EditValue));
    if (edKabupaten.EditValue='') then
    begin
      SetMemo(Report,'wilayah','Wilayah : Semua Wilayah');
    end;
    if edKaresidenan.EditValue<>'' then
    begin
      SetMemo(Report,'wilayah','Wilayah :'+edKaresidenan.EditValue);
    end;
    if edTP.EditValue<>'' then
    begin
      SetMemo(Report,'wilayah','Wilayah :'+edTP.EditValue);
    end;
    if (edKabupaten.EditValue<>'') AND (edKaresidenan.EditValue<>'') then
    begin
      SetMemo(Report,'wilayah','Wilayah : '+edKaresidenan.EditValue+'-'+edKabupaten.EditValue);
    end;
    if (edKabupaten.EditValue<>'') AND (edTP.EditValue<>'') then
    begin
      SetMemo(Report,'wilayah','Wilayah : '+edTP.EditValue+'-'+edKabupaten.EditValue);
    end;
//  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')= 'dev' then
//  begin
//   Report.DesignReport();
//  end else
//  begin
    Report.ShowReport();
//  end;

 end;

end;

procedure TFBHPenerimaanKasBank.btSearchClick(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QBHPenerimaanKasBank do
   begin
       close;
       sql.Clear;
      sql.Add('SELECT zz.*,cust.code_tp,cust.tp,cust.code_karesidenan,cust.karesidenan ,cust.code_kabupaten,cust.kabupaten '+
              'FROM '+
              '( '+
              'SELECT '+
              'a.voucher_no,a.trans_date,a.module_id,a.code_cust, '+
              'd.customer_name_pkp name_cust,a.for_acceptance,a.description,a.account_name_bank,a.account_number_bank, '+
              'CASE WHEN a.module_id = ''4'' THEN COALESCE(b.paid_amount, 0) ELSE 0 END AS jum_kas, '+
              'CASE WHEN a.module_id = ''3'' THEN COALESCE(b.paid_amount, 0) ELSE 0 END AS jum_bank, '+
              'COALESCE(c.paid_amount, 0) AS jum_piutang '+
              'FROM '+
              't_cash_bank_acceptance a '+
              'INNER JOIN '+
              't_cash_bank_acceptance_det b ON b.voucher_no = a.voucher_no AND b.position = ''D'' '+
              'LEFT JOIN '+
              't_cash_bank_acceptance_receivable c ON c.voucher_no = a.voucher_no '+
              'LEFT JOIN t_cash_bank_acceptance_customer d  ON d.trans_no=a.voucher_no '+
              'and a.code_cust=d.customer_code AND d.deleted_at IS NULL '+
              'WHERE a.deleted_at is NULL '+

              ') AS zz '+
              'LEFT JOIN get_customer() AS cust ON cust.customer_code = zz.code_cust '+
              'WHERE zz.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+' ');
//       sql.add(' SELECT a.*,code_karesidenan,code_kab,name_kab,description ket_faktur from "public"."vbhpenerimaan_kas_bank" a  '+
//               ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
//               ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
//               ' ON "left"(code_region, 4)=b.code_kab '+
////               ' LEFT JOIN (SELECT voucher_no, '+
////               ' STRING_AGG( '+QuotedStr(' No. Faktur ')+' || no_invoice_tax || '+QuotedStr(' Tgl. ')+' || date_invoice_tax, E'+QuotedStr(',\n')+') AS ket_faktur '+
////               ' from t_cash_bank_acceptance_receivable GROUP BY voucher_no)cc ON a.voucher_no=cc.voucher_no '+
//               ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
//               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' ');
         if edKaresidenan.EditValue<>'' then
         begin
          sql.add(' AND cust.code_karesidenan='+QuotedStr(vkd_kares)+' ');
         end;
         if edTp.EditValue<>'' then
         begin
          sql.add(' AND cust.code_tp='+QuotedStr(vkd_tp)+' ');
         end;
         if edKabupaten.EditValue<>'' then
         begin
          sql.add(' AND cust.code_kabupaten='+QuotedStr(vkd_kab)+' ');
         end;
          sql.add(' ORDER BY zz.trans_date, zz.voucher_no');
       open;
   end;

   if QBHPenerimaanKasBank.RecordCount>0 then
   begin
     QBHPenerimaanKasBankDetail.Close;
     QBHPenerimaanKasBankDetail.Open;
   end else begin
      showmessage('Tidak ada data !');
   end;

  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFBHPenerimaanKasBank.dxBarLargeButton1Click(Sender: TObject);
begin
   with QDaftarPenerimaan do
   begin
       close;
       sql.Clear;
       sql.add(' SELECT a.*,code_karesidenan,code_kab,name_kab,ket_faktur from "public"."vdaftar_penerimaan_kasbank_accurate" a  '+
               ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
               ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
               ' ON "left"(code_region, 4)=b.code_kab '+
               ' LEFT JOIN (SELECT voucher_no, '+
               ' STRING_AGG( '+QuotedStr(' No. Faktur ')+' || no_invoice_tax || '+QuotedStr(' Tgl. ')+' || date_invoice_tax, E'+QuotedStr(',\n')+') AS ket_faktur '+
               ' from t_cash_bank_acceptance_receivable GROUP BY voucher_no)cc ON a.voucher_no=cc.voucher_no '+
               ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' ');
         if edKaresidenan.EditValue<>'' then
         begin
          sql.add(' AND code_karesidenan='+QuotedStr(vkd_kares)+' ');
         end;
         if edKabupaten.EditValue<>'' then
         begin
          sql.add(' AND code_kab='+QuotedStr(vkd_kab)+' ');
         end;
       sql.add(' ORDER BY trans_date, voucher_no');
       open;
   end;

 if QDaftarPenerimaan.RecordCount=0 then
 begin
  showmessage('Tidak ada data yang bisa dicetak !');
  exit;
 end;

 if QDaftarPenerimaan.RecordCount<>0 then
 begin
   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   Report.LoadFromFile(cLocation +'report/rpt_daf_penerimaan_kasbank'+ '.fr3');
   SetMemo(Report,'nama_pt',FHomeLogin.vNamaPRSH);
   SetMemo(Report,'periode','Dari '+formatdatetime('dd mmm yyyy',dtAwal.EditValue)+' s/d '+formatdatetime('dd mmm yyyy',dtAkhir.EditValue));
    if edKaresidenan.EditValue='' then
    begin
      SetMemo(Report,'wilayah','Wilayah : Semua Wilayah');
    end;
    if edKaresidenan.EditValue<>'' then
    begin
      SetMemo(Report,'wilayah','Wilayah :'+edKaresidenan.EditValue);
    end;
    if edKabupaten.EditValue<>'' then
    begin
      SetMemo(Report,'wilayah','Wilayah : '+edKaresidenan.EditValue+'-'+edKabupaten.EditValue);
    end;
  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')= 'dev' then
  begin
   Report.DesignReport();
  end else
  begin
    Report.ShowReport();
  end;

 end;

end;

procedure TFBHPenerimaanKasBank.dxBarLargeButton2Click(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edKaresidenan.EditValue := '';
  edKabupaten.EditValue := '';
  edTP.EditValue:='';
  vkd_kares:='';
  vkd_kab:='';
  vkd_tp:='';
end;

procedure TFBHPenerimaanKasBank.dxBarLargeButton3Click(Sender: TObject);
begin
   with QBHPenerimaanKasBankExport do
   begin
       close;
       sql.Clear;
       sql.Add('SELECT a.voucher_no,a.trans_date,a.description,COALESCE(c.code_cust,d.customer_code) code_cust,COALESCE(c.customer_name_pkp,d.customer_name_pkp) name_cust, '+
                'e.account_code acoount_code_bank,e.account_name acoount_name_bank,e.db amount_bank,f.account_code acoount_code_piutang,'+
                'f.account_name acoount_name_piutang,f.kd amount_piutang,a.for_acceptance,COALESCE(c.code_kecamatan,d.code_kecamatan)  code_kecamatan,'+
                ' COALESCE(c.code_kabupaten,d.code_kabupaten)  code_kabupaten,COALESCE(c.code_tp,d.code_tp)  code_tp,'+
                'COALESCE(c.code_karesidenan,d.code_karesidenan)  code_karesidenan '+
                'FROM '+
                't_cash_bank_acceptance a '+
                'LEFT JOIN t_cash_bank_acceptance_receivable b on b.voucher_no=a.voucher_no '+
                'LEFT JOIN get_selling(False) c on c.trans_no=b.no_invoice and c.deleted_at is NULL '+
                'LEFT JOIN  (SELECT a.*,a.code_region code_kecamatan,c.code code_kabupaten,c.code_karesidenan,c.code_tp from t_cash_bank_acceptance_customer a '+
                'LEFT JOIN t_region_subdistrict b on b.code=a.code_region '+
                'LEFT JOIN t_region_regency c on c.code=b.code_regency WHERE a.deleted_at is NULL) d on d.trans_no=a.voucher_no '+
                'left join (SELECT b.header_code,a.* from public."VTrans_Journal" a left join t_ak_account b on b.code=a.account_code) e ON e.trans_no=a.voucher_no AND (e.header_code=''1102''  OR e.header_code=''1101'' )  '+
                'left join (SELECT b.header_code,a.* from public."VTrans_Journal" a left join t_ak_account b on b.code=a.account_code) f ON f.trans_no=a.voucher_no AND f.account_code=''1104.01''  '+
                'where a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+'  and a.deleted_at is NULL');
//                'where a.voucher_no in(''BM/002/02/I/2026/NPA/SBY/MDI'',''BM/014/02/I/2026/NPA/BSK/MDI'',''BM/017/02/I/2026/NPA/SBY/MDI'')  and a.deleted_at is NULL');

         if edKaresidenan.EditValue<>'' then
         begin
          sql.add(' AND COALESCE(c.code_karesidenan,d.code_karesidenan)='+QuotedStr(vkd_kares)+' ');
         end;
         if edTp.EditValue<>'' then
         begin
          sql.add(' AND COALESCE(c.code_tp,d.code_tp)='+QuotedStr(vkd_tp)+' ');
         end;
         if edKabupaten.EditValue<>'' then
         begin
          sql.add(' AND  COALESCE(c.code_kabupaten,d.code_kabupaten)='+QuotedStr(vkd_kab)+' ');
         end;
       sql.add(' ORDER BY a.trans_date, a.voucher_no');
       open;
  end;

  if QBHPenerimaanKasBankExport.RecordCount=0 then
  begin
    showmessage('Tidak ada data yang bisa dicetak !');
    exit;
  end;

 if QBHPenerimaanKasBankExport.RecordCount<>0 then
 begin
// QBHPenerimaanKasBankExportTotal.close;
// QBHPenerimaanKasBankExportTotal.Open;
  with QBHPenerimaanKasBankExportTotal do
  begin
    close;
    sql.Clear;
    sql.Add('WITH detail_trans AS ( '+
            'SELECT '+
            'a.voucher_no, '+
            'SUM(CASE WHEN b.header_code = ''1102'' THEN b.db WHEN b.header_code = ''1101'' THEN b.db ELSE 0 END) AS tot_bank, '+
            'SUM(CASE WHEN b.status_dk = ''D'' AND b.db > 0 AND b.header_code <> ''1102''  AND b.header_code <> ''1101'' '+
            'THEN b.db ELSE 0 END) AS tot_d_lain, '+
            'SUM(CASE WHEN b.account_code = ''1104.01'' THEN b.kd ELSE 0 END) AS tot_piutang, '+
            'SUM(CASE WHEN b.status_dk = ''K'' AND b.kd > 0 AND b.account_code <> ''1104.01'' THEN b.kd ELSE 0 END) AS tot_k_lain  '+
            'FROM t_cash_bank_acceptance a '+
            ' LEFT JOIN t_cash_bank_acceptance_receivable bb on bb.voucher_no=a.voucher_no '+
            'LEFT JOIN get_selling(False) c on c.trans_no=bb.no_invoice and c.deleted_at is NULL '+
             'LEFT JOIN  (SELECT a.*,a.code_region code_kecamatan,c.code code_kabupaten,c.code_karesidenan,c.code_tp from t_cash_bank_acceptance_customer a '+
             'LEFT JOIN t_region_subdistrict b on b.code=a.code_region '+
             'LEFT JOIN t_region_regency c on c.code=b.code_regency WHERE a.deleted_at is NULL) d on d.trans_no=a.voucher_no '+

            'LEFT JOIN (SELECT bb.header_code,aa.* from public."VTrans_Journal" aa left join t_ak_account bb on bb.code=aa.account_code) b ON b.trans_no=a.voucher_no '+
            'WHERE a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
            'and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' '+
            'AND a.deleted_at IS NULL ');
     if edKaresidenan.EditValue<>'' then
     begin
      sql.add(' AND COALESCE(c.code_karesidenan,d.code_karesidenan)='+QuotedStr(vkd_kares)+' ');
     end;
     if edTp.EditValue<>'' then
     begin
      sql.add(' AND COALESCE(c.code_tp,d.code_tp)='+QuotedStr(vkd_tp)+' ');
     end;
     if edKabupaten.EditValue<>'' then
     begin
      sql.add(' AND  COALESCE(c.code_kabupaten,d.code_kabupaten)='+QuotedStr(vkd_kab)+' ');
     end;

     sql.Add('GROUP BY a.voucher_no, a.trans_date  '+
            'ORDER BY a.trans_date ASC, a.voucher_no ASC '+
            ') '+
            'SELECT '+
            'SUM(tot_bank) AS total_bank, '+
            'SUM(tot_d_lain) AS total_debit_lain,'+
            'SUM(tot_piutang) AS total_piutang, '+
            'SUM(tot_k_lain) AS total_kredit_lain '+
            'FROM detail_trans');
     Open;
  end;


  QBHPenerimaanKasBankExportDebit.Close;
  QBHPenerimaanKasBankExportDebit.Open;

  QBHPenerimaanKasBankExportKredit.Close;
  QBHPenerimaanKasBankExportKredit.Open;

  cLocation := ExtractFilePath(Application.ExeName);

  //ShowMessage(cLocation);
  Report.LoadFromFile(cLocation +'report/rpt_BukuHarianPenerimaanBankKasExport'+ '.fr3');
  SetMemo(Report,'nama_pt',FHomeLogin.vKodePRSH);
  SetMemo(Report,'periode','Periode '+formatdatetime('dd mmmm yyyy',dtAwal.EditValue)+' s/d '+formatdatetime('dd mmmm yyyy',dtAkhir.EditValue));
  if edKaresidenan.EditValue='' then
  begin
    SetMemo(Report,'wilayah','Wilayah : Semua Wilayah');
  end;
  if edKaresidenan.EditValue<>'' then
  begin
    SetMemo(Report,'wilayah','Wilayah :'+edKaresidenan.EditValue);
  end;
  if edKabupaten.EditValue<>'' then
  begin
    SetMemo(Report,'wilayah','Wilayah : '+edKaresidenan.EditValue+'-'+edKabupaten.EditValue);
  end;

  Report.PrepareReport(True);
  ExportToExcel;

 end;

end;

procedure TFBHPenerimaanKasBank.edKabupatenPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='bhpenerimaankas_bank_kab';
  if (edKaresidenan.EditValue<>'') AND (edTP.EditValue='') then
  begin
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(vkd_kares)+'');
    FMasterData.ShowModal;
  end else if (edKaresidenan.EditValue='') AND (edTP.EditValue<>'') then begin
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_tp='+QuotedStr(vkd_tp)+'');
    FMasterData.ShowModal;
  end;
end;

procedure TFBHPenerimaanKasBank.edKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='bhpenerimaankas_bank_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFBHPenerimaanKasBank.edTPPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='bhpenerimaankas_bank_tp';
  FMasterData.update_grid('code','name','description','t_region_tp','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFBHPenerimaanKasBank.FormCreate(Sender: TObject);
begin
  realfbhp:=self;
end;

procedure TFBHPenerimaanKasBank.FormDestroy(Sender: TObject);
begin
  realfbhp:=nil;
end;

procedure TFBHPenerimaanKasBank.FormShow(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edKaresidenan.EditValue := '';
  edKabupaten.EditValue := '';
  edTP.EditValue:='';
  vkd_kares:='';
  vkd_kab:='';
  vkd_tp:='';
  FillSBUBarCombo(cbSBU);
end;

procedure TFBHPenerimaanKasBank.QBHPenerimaanKasBankak_lain_kreGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
//  Text:=copy(QBHPenerimaanKasBankak_lain_kre.asstring,1,255);
end;

procedure TFBHPenerimaanKasBank.QBHPenerimaanKasBankak_nm_lain_kreGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
//  Text:=copy(QBHPenerimaanKasBankak_nm_lain_kre.asstring,1,255);
end;

procedure TFBHPenerimaanKasBank.QBHPenerimaanKasBankdescriptionGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
//  Text:=copy(QBHPenerimaanKasBankdescription.asstring,1,255);
end;

procedure TFBHPenerimaanKasBank.QBHPenerimaanKasBankket_fakturGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
//  Text:=copy(QBHPenerimaanKasBankket_faktur.asstring,1,255);
end;

initialization
  RegisterClass(TFBHPenerimaanKasBank);

end.
