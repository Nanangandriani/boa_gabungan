unit UBHReturPenjualan;

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
  DBAxisGridsEh, DBGridEh, dxRibbon, frxClass, frxDBSet, frxExportBaseDialog,
  frxExportPDF, frxExportXLSX, frxExportXLS, ShellAPI;

type
  TFBHReturPenjualan = class(TForm)
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
    QBHReturPenjualan: TUniQuery;
    DsBHReturPenjualan: TDataSource;
    QCetak: TUniQuery;
    QCetakdetail: TUniQuery;
    StringField1: TStringField;
    DateField1: TDateField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField1: TFloatField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    FloatField2: TFloatField;
    MemoField1: TMemoField;
    MemoField2: TMemoField;
    IntegerField1: TIntegerField;
    StringField12: TStringField;
    StringField13: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField14: TStringField;
    StringField15: TStringField;
    FloatField5: TFloatField;
    frxDBDBHPenj_det: TfrxDBDataset;
    frxDBDBHPenjualan: TfrxDBDataset;
    Report: TfrxReport;
    dsCetak: TDataSource;
    dsCetakdetail: TDataSource;
    cbSBU: TdxBarCombo;
    dxBarLargeButton1: TdxBarLargeButton;
    frxPDFExport1: TfrxPDFExport;
    edTP: TcxBarEditItem;
    QCetaktrans_no: TStringField;
    QCetaktrans_date: TDateField;
    QCetakcode_cust: TStringField;
    QCetakname_cust: TMemoField;
    QCetakcode_region: TMemoField;
    QCetakname_region: TMemoField;
    QCetaktot_piutang: TFloatField;
    QCetaktot_pejualan: TFloatField;
    QCetaktot_ppn: TFloatField;
    QBHReturPenjualantrans_no: TStringField;
    QBHReturPenjualanno_inv: TStringField;
    QBHReturPenjualantrans_date: TDateField;
    QBHReturPenjualancode_cust: TStringField;
    QBHReturPenjualanname_cust: TStringField;
    QBHReturPenjualancode_region: TStringField;
    QBHReturPenjualanname_region: TStringField;
    QBHReturPenjualancode_item: TStringField;
    QBHReturPenjualanname_item: TStringField;
    QBHReturPenjualanamount: TFloatField;
    QBHReturPenjualancode_unit: TStringField;
    QBHReturPenjualanname_unit: TStringField;
    QBHReturPenjualanakn_debet: TStringField;
    QBHReturPenjualannm_debit_deb: TStringField;
    QBHReturPenjualanjum_ak_deb: TFloatField;
    QBHReturPenjualanakn_debet_lain: TMemoField;
    QBHReturPenjualannm_debit_lain: TMemoField;
    QBHReturPenjualanjum_ak_deb_lain: TIntegerField;
    QBHReturPenjualanakn_kredit: TStringField;
    QBHReturPenjualannm_debit_kre: TStringField;
    QBHReturPenjualanjum_ak_kre: TFloatField;
    QBHReturPenjualanppn_ak_kre: TFloatField;
    QBHReturPenjualanakn_kre_lain: TStringField;
    QBHReturPenjualannm_kre_lain: TStringField;
    QBHReturPenjualanjum_ak_kre_lain: TFloatField;
    QBHReturPenjualancode_karesidenan: TMemoField;
    QBHReturPenjualancode_kab: TMemoField;
    QBHReturPenjualanname_kab: TMemoField;
    dxBarLargeButton2: TdxBarLargeButton;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    ExportReport: TfrxReport;
    frxDBDBHReturPenjualanExport: TfrxDBDataset;
    DSBHReturPenjualanExport: TDataSource;
    QBHReturPenjualanExport: TUniQuery;
    frxDBDBHReturPenjualanExportBarang: TfrxDBDataset;
    QBHReturPenjualanExportBarang: TUniQuery;
    frxDBDBHReturPenjualanExportDebit: TfrxDBDataset;
    QBHReturPenjualanExportDebit: TUniQuery;
    QBHReturPenjualanExportDebittrans_no: TStringField;
    QBHReturPenjualanExportDebitaccount_code: TStringField;
    QBHReturPenjualanExportDebitaccount_name: TMemoField;
    QBHReturPenjualanExportDebitstatus_dk: TStringField;
    QBHReturPenjualanExportDebitdb: TFloatField;
    frxDBDBHReturPenjualanExportKredit: TfrxDBDataset;
    QBHReturPenjualanExportKredit: TUniQuery;
    QBHReturPenjualanExportKredittrans_no: TStringField;
    QBHReturPenjualanExportKreditaccount_code: TStringField;
    QBHReturPenjualanExportKreditaccount_name: TMemoField;
    QBHReturPenjualanExportKreditstatus_dk: TStringField;
    QBHReturPenjualanExportKreditkd: TFloatField;
    frxDBDBHReturPenjualanExportTotal: TfrxDBDataset;
    QBHReturPenjualanExportTotal: TUniQuery;
    QBHReturPenjualanExporttrans_no: TMemoField;
    QBHReturPenjualanExportno_inv_tax: TMemoField;
    QBHReturPenjualanExporttrans_date: TDateField;
    QBHReturPenjualanExportcode_cust: TMemoField;
    QBHReturPenjualanExportname_cust: TMemoField;
    QBHReturPenjualanExportakun_returns: TStringField;
    QBHReturPenjualanExportakun_returns_name: TMemoField;
    QBHReturPenjualanExportamount_returns: TFloatField;
    QBHReturPenjualanExportakun_piutang: TStringField;
    QBHReturPenjualanExportakun_piutang_name: TMemoField;
    QBHReturPenjualanExportamount_piutang: TFloatField;
    QBHReturPenjualanExportBarangtrans_no: TStringField;
    QBHReturPenjualanExportBarangcode_item: TStringField;
    QBHReturPenjualanExportBarangname_item: TStringField;
    QBHReturPenjualanExportBarangamount: TFloatField;
    QBHReturPenjualanExportBarangname_unit: TStringField;
    QCetakBHRetur: TUniQuery;
    frxDBDataBHRetur: TfrxDBDataset;
    procedure btSearchClick(Sender: TObject);
    procedure edKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QBHReturPenjualanakn_debet_lainGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QBHReturPenjualannm_debit_lainGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure btPreviewClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure edTPPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dxBarLargeButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_tp,vkd_kares, vkd_kab : String ;
    procedure ExportToExcel;
  end;

function FBHReturPenjualan: TFBHReturPenjualan;
//var
//  FBHReturPenjualan: TFBHReturPenjualan;

implementation

{$R *.dfm}

uses UMasterWilayah, UMasterData, UHomeLogin, UMy_Function, UDataModule;
var
  realfbhpretur : TFBHReturPenjualan;
// implementasi function
function FBHReturPenjualan: TFBHReturPenjualan;
begin
  if realfbhpretur <> nil then
    FBHReturPenjualan:= realfbhpretur
  else
    Application.CreateForm(TFBHReturPenjualan, Result);
end;

procedure TFBHReturPenjualan.btPreviewClick(Sender: TObject);
var strKab,strTP,strKaresidenan,
  tgl1,bulan1,tahun1,tgl2,bulan2,tahun2: STRING;
begin
  tgl1:=FormatDateTime('DD', dtAwal.EditValue);
  bulan1:=convbulanInd(StrToInt(FormatDateTime('M', dtAwal.EditValue)));
  tahun1:=FormatDateTime('YYYY', dtAwal.EditValue);

  tgl2:=FormatDateTime('DD', dtAkhir.EditValue);
  bulan2:=convbulanInd(StrToInt(FormatDateTime('M', dtAkhir.EditValue)));
  tahun2:=FormatDateTime('YYYY', dtAkhir.EditValue);

  strKab := 'NULL';
  strKaresidenan := 'NULL';
  strTP := 'NULL';
  if edKabupaten.EditValue<>'' then
  strKab:=QuotedStr(vkd_kab)+' ';

  if edKaresidenan.EditValue<>'' then strKaresidenan:=QuotedStr(vkd_kares);

  if edTp.EditValue<>'' then strTP:=QuotedStr(vkd_tp);

  with QCetakBHRetur do
  begin
    close;
    sql.Text:='SELECT * FROM get_bh_retur_penjualan('+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+','+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+','+strTP+','+strKaresidenan+','+strKab+')';
    Open;
  end;

  if QCetakBHRetur.RecordCount=0 then
  begin
    showmessage('Tidak ada data yang bisa dicetak !');
    exit;
  end;

  if QCetakBHRetur.RecordCount<>0 then
  begin

    cLocation := ExtractFilePath(Application.ExeName);
    Report.LoadFromFile(cLocation +'report/rpt_BukuHarianReturPenjualanNew'+ '.fr3');
    SetMemo(Report,'kodeprsh',FHomeLogin.vNamaPRSH);
    SetMemo(Report,'periode',UpperCase(formatdatetime('dd mmmm yyyy',dtAwal.EditValue)+' S/D '+formatdatetime('dd mmmm yyyy',dtAkhir.EditValue)));

    if edTP.EditValue<>'' then
    begin
      SetMemo(Report,'karesidenan',+edTP.EditValue);
    end else begin
      SetMemo(Report,'karesidenan','SEMUA TP');
    end;
    if (edKabupaten.EditValue<>'') then
    begin
      SetMemo(Report,'kabupaten',+edKabupaten.EditValue);
    end else begin
      SetMemo(Report,'kabupaten','SEMUA KABUPATEN');
    end;

    Report.ShowReport();

  end;

//////////////////////SCRIPT LAMA////////////////////////////
   {with QCetak do
   begin
       close;
       sql.Clear;
       sql.add(' SELECT a.trans_no, a.trans_date, a.code_cust, CASE WHEN b.customer_name_pkp '+
               ' IS NULL THEN b.name_cust ELSE b.customer_name_pkp END AS name_cust, b.code_kecamatan code_region, '+
               ' UPPER(concat(b.tp,'', '',b.kabupaten,'', '',b.kecamatan))  name_region, a.grand_tot as tot_piutang, a.sub_total as tot_pejualan, a.ppn_value as tot_ppn '+
               ' FROM t_sales_returns a '+
               'LEFT JOIN get_selling(False) b on b.trans_no=a.no_inv '+
//               ' LEFT JOIN ( SELECT t_customer.customer_code, t_customer.customer_name_pkp, '+
//               ' t_customer.code_region, t_customer.name_region FROM t_customer) d ON a.code_cust::text = d.customer_code::text  '+
//               ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
//               ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
//               ' ON "left"(code_region, 4)=b.code_kab '+
               ' where a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' AND a.deleted_at is NULL ');

         if edKaresidenan.EditValue<>'' then
         begin
          sql.add(' AND b.code_karesidenan='+QuotedStr(vkd_kares)+' ');
         end;
         if edTP.EditValue<>'' then
         begin
          sql.add(' AND b.code_tp='+QuotedStr(vkd_tp)+' ');
         end;
         if edKabupaten.EditValue<>'' then
         begin
          sql.add(' AND b.code_kabupaten='+QuotedStr(vkd_kab)+' ');
         end;
       sql.add(' ORDER BY a.trans_date, a.trans_no');
       open;
   end;

 if QCetak.RecordCount=0 then
 begin
  showmessage('Tidak ada data yang bisa dicetak !');
  exit;
 end;

 if QCetak.RecordCount<>0 then
 begin
   with QCetakdetail do
   begin
       close;
       sql.Clear;
       sql.add(' SELECT a.*,code_karesidenan,code_kab,name_kab from "public"."vbhreturppenjualan" a  '+
               ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
               ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
               ' ON "left"(code_region, 4)=b.code_kab '+
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
       sql.add(' ORDER BY trans_no, code_item');
       open;
   end;

   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   Report.LoadFromFile(cLocation +'report/rpt_bh_ret_penjualan'+ '.fr3');
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
   //Report.DesignReport();
   Report.ShowReport();
 end; }

end;

procedure TFBHReturPenjualan.btSearchClick(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QBHReturPenjualan do
   begin
       close;
       sql.Clear;
       sql.add('SELECT a.*,b.code_karesidenan,b.code_kabupaten code_kab,b.kabupaten name_kab from "public"."vbhreturppenjualan" a '+
               'LEFT JOIN get_selling(False) b on b.trans_no=a.no_inv '+
//               ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
//               ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
//               ' ON "left"(code_region, 4)=b.code_kab '+
               ' where a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' ');

         if edKaresidenan.EditValue<>'' then
         begin
          sql.add(' AND b.code_karesidenan='+QuotedStr(vkd_kares)+' ');
         end;
         if edTP.EditValue<>'' then
         begin
          sql.add(' AND b.code_tp='+QuotedStr(vkd_tp)+' ');
         end;
         if edKabupaten.EditValue<>'' then
         begin
          sql.add(' AND b.code_kabupaten='+QuotedStr(vkd_kab)+' ');
         end;
       sql.add(' ORDER BY a.trans_date, a.trans_no');
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFBHReturPenjualan.dxBarLargeButton1Click(Sender: TObject);
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

procedure TFBHReturPenjualan.ExportToExcel;
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

procedure TFBHReturPenjualan.dxBarLargeButton2Click(Sender: TObject);
var strKab,strTP,strKaresidenan,
  tgl1,bulan1,tahun1,tgl2,bulan2,tahun2: STRING;
begin
  tgl1:=FormatDateTime('DD', dtAwal.EditValue);
  bulan1:=convbulanInd(StrToInt(FormatDateTime('M', dtAwal.EditValue)));
  tahun1:=FormatDateTime('YYYY', dtAwal.EditValue);

  tgl2:=FormatDateTime('DD', dtAkhir.EditValue);
  bulan2:=convbulanInd(StrToInt(FormatDateTime('M', dtAkhir.EditValue)));
  tahun2:=FormatDateTime('YYYY', dtAkhir.EditValue);
//  if edKaresidenan.EditValue='' then
//  begin
//    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
//  end else begin
    strKaresidenan:='';
    strKab:='';
    strTP:='';
    if edKabupaten.EditValue<>'' then
    strKab:=' AND a.code_kabupaten='+QuotedStr(vkd_kab)+' ';

    if edKaresidenan.EditValue<>'' then strKaresidenan:='AND a.code_karesidenan='+QuotedStr(vkd_kares);

    if edTp.EditValue<>'' then strTP:='AND a.code_tp='+QuotedStr(vkd_tp);

    with QBHReturPenjualanExport do
    begin
      close;
      sql.Text:='SELECT a.trans_no,a.no_inv_tax,a.trans_date,a.code_cust,a.customer_name_pkp name_cust '+
                ',b.account_code akun_returns, '+
                'b.account_name akun_returns_name,b.db amount_returns '+
                ',c.account_code akun_piutang, '+
                'c.account_name akun_piutang_name,c.kd amount_piutang '+
                'from get_sales_returns() a '+
                'left join public."VTrans_Journal" b ON b.trans_no=a.trans_no AND b.account_code=''4202.01'' '+
                'left join public."VTrans_Journal" c on c.trans_no=a.trans_no AND c.account_code=''1104.01'' '+
                'WHERE a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
                ''+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' AND a.deleted_at IS NULL '+strTP+strKaresidenan+strKab+' '+
                'order by a.trans_date asc,trans_no asc';
      Open;
    end;

//    with QBHPenjualanExport do
//    begin
//      close;
//      sql.Clear;
//      Sql.Text:= 'SELECT trans_no,no_inv_tax,trans_date,code_cust,a.customer_name_pkp name_cust from get_selling(FALSE) a '+
//            'WHERE a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
//            ''+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' AND a.karesidenan='+QuotedStr(edKaresidenan.EditValue)+' '+
//            ''+strKab+'order by a.trans_date,trans_no asc';

//      Open;
//    end;


    if QBHReturPenjualanExport.RecordCount=0 then
    begin
      showmessage('Tidak ada data yang bisa dicetak !');
      exit;
    end;

    if QBHReturPenjualanExport.RecordCount<>0 then
    begin
      with QBHReturPenjualanExportTotal do
      begin
        close;
        sql.Clear;
        sql.Text:='WITH detail_trans AS ( '+
                  'SELECT '+
                  'a.trans_no, '+
                  'SUM(CASE WHEN j.account_code = ''4202.01'' THEN j.db ELSE 0 END) AS retur_penjualan, '+
                  'SUM(CASE WHEN j.status_dk = ''D'' AND j.db > 0 AND j.account_code <> ''4202.01'' '+
                  'THEN j.db ELSE 0 END) AS d_lain, '+
                  'SUM(CASE WHEN j.account_code = ''1104.01'' THEN j.kd ELSE 0 END) AS piutang, '+
                  'SUM(CASE WHEN j.status_dk = ''K'' AND j.kd > 0 AND j.account_code <> ''1104.01'' THEN j.kd ELSE 0 END) AS k_lain '+
                  'FROM get_sales_returns() a '+
                  'LEFT JOIN public."VTrans_Journal" j ON a.trans_no = j.trans_no '+
                   'WHERE a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
                  ''+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' '+
                  'AND a.deleted_at IS NULL '+strTP+strKaresidenan+' '+
                  'GROUP BY a.trans_no, a.trans_date '+
                  'ORDER BY a.trans_date ASC, a.trans_no ASC '+
                  'LIMIT 3 '+
                  ') '+
                  'SELECT '+
                  'SUM(retur_penjualan) AS total_retur_penjualan, '+
                  'SUM(d_lain) AS total_debit_lain, '+
                  'SUM(piutang) AS total_piutang, '+
                  'SUM(k_lain) AS total_kredit_lain '+
                  'FROM detail_trans;';
        open;
      end;

      QBHReturPenjualanExportBarang.Close;
      QBHReturPenjualanExportBarang.Open;

      QBHReturPenjualanExportDebit.Close;
      QBHReturPenjualanExportDebit.Open;

      QBHReturPenjualanExportKredit.Close;
      QBHReturPenjualanExportKredit.Open;


      cLocation := ExtractFilePath(Application.ExeName);


      Report.LoadFromFile(cLocation +'report/rpt_BukuHarianReturPenjualanExport'+ '.fr3');
      SetMemo(Report,'kodeprsh',FHomeLogin.vKodePRSH);
      SetMemo(Report,'periode',FHomeLogin.vKodePRSH);
      SetMemo(Report,'kabupaten',FHomeLogin.vKodePRSH);

      if (edKaresidenan.EditValue<>'') AND (edTP.editValue='') then
      begin
    //    if CompareText(VarName, 'KARESIDENAN') = 0 then
    //    Value := 'Karesidenan: '+edKaresidenan.EditValue;
        SetMemo(Report,'karesidenan','Karesidenan: '+edKaresidenan.EditValue);
      end else if (edKaresidenan.EditValue='') AND (edTP.editValue<>'') then
      begin
    //    if CompareText(VarName, 'KARESIDENAN') = 0 then
    //    Value := 'TP: '+edTp.EditValue;
        SetMemo(Report,'karesidenan','TP: '+edTp.EditValue);
      end else if (edKaresidenan.EditValue='') AND (edTP.editValue='') then
      begin
    //    if CompareText(VarName, 'KARESIDENAN') = 0 then
    //    Value := 'TP/Karesidenan: Semua Wilayah';
        SetMemo(Report,'karesidenan','TP/Karesidenan: Semua Wilayah');
      end;

      if edKabupaten.EditValue<>'' then
      begin
    //    if CompareText(VarName, 'KOTA_KAB') = 0 then
    //    Value := 'Kota/Kodya : '+edKabupaten.EditValue;
        SetMemo(Report,'kabupaten','Kota/Kodya : '+edKabupaten.EditValue);
      end else begin
    //    if CompareText(VarName, 'KOTA_KAB') = 0 then
    //    Value := 'Kota/Kodya : ';
        SetMemo(Report,'kabupaten','Kota/Kodya :');
      end;

      if dtAwal.EditValue<>dtAkhir.EditValue then
      begin
    //    if CompareText(VarName, 'PERIODE') = 0 then
    //    Value := UpperCase('Periode : '+tgl1+' '+bulan1+' '+tahun1+' S/D '+tgl2+' '+bulan2+' '+tahun2);
        SetMemo(Report,'periode',UpperCase('Periode : '+tgl1+' '+bulan1+' '+tahun1+' S/D '+tgl2+' '+bulan2+' '+tahun2));
      end else begin
    //    if CompareText(VarName, 'PERIODE') = 0 then
    //    Value := UpperCase('Periode : '+tgl1+' '+bulan1+' '+tahun1);
         SetMemo(Report,'periode',UpperCase('Periode : '+tgl1+' '+bulan1+' '+tahun1));
      end;
      Report.PrepareReport(True);
      // Baru export
      ExportToExcel;
    end;
 
//  end;
end;

procedure TFBHReturPenjualan.edKabupatenPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='bhreturpenjualan_kab';
  FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_tp='+QuotedStr(vkd_tp)+'');
  FMasterData.ShowModal;
end;

procedure TFBHReturPenjualan.edKaresidenanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='bhreturpenjualan_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFBHReturPenjualan.edTPPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='bhreturpenjualan_tp';
  FMasterData.update_grid('code','name','description','t_region_tp','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFBHReturPenjualan.FormCreate(Sender: TObject);
begin
  realfbhpretur:=self;
end;

procedure TFBHReturPenjualan.FormDestroy(Sender: TObject);
begin
  realfbhpretur:=nil;
end;

procedure TFBHReturPenjualan.FormShow(Sender: TObject);
begin
  QBHReturPenjualanExport.Close;
  QBHReturPenjualanExportBarang.Close;
  QBHReturPenjualanExportDebit.Close;
  QBHReturPenjualanExportKredit.Close;
  QBHReturPenjualanExportTotal.Close;
  QCetak.Close;
  QCetakdetail.Close;
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

procedure TFBHReturPenjualan.QBHReturPenjualanakn_debet_lainGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text:=copy(QBHReturPenjualanakn_debet_lain.asstring,100);
end;

procedure TFBHReturPenjualan.QBHReturPenjualannm_debit_lainGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text:=copy(QBHReturPenjualannm_debit_lain.asstring,100);
end;

initialization
  RegisterClass(TFBHReturPenjualan);

end.
