unit URekapPenjualan;

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
  frxExportPDF, ShellAPI, FireDAC.UI.Intf, FireDAC.VCLUI.Login, frxExportXLSX,
  FireDAC.Stan.Intf, FireDAC.Comp.UI, frxExportXLS;

type
  TFRekapPenjualan = class(TForm)
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
    QRekapPenjualan: TUniQuery;
    DsRekapPenjualan: TDataSource;
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
    dsCetakdetail: TDataSource;
    dsCetak: TDataSource;
    Report: TfrxReport;
    QRincianFaktur: TUniQuery;
    StringField16: TStringField;
    DateField2: TDateField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    FloatField6: TFloatField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    FloatField7: TFloatField;
    MemoField3: TMemoField;
    MemoField4: TMemoField;
    IntegerField2: TIntegerField;
    StringField27: TStringField;
    StringField28: TStringField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    StringField29: TStringField;
    StringField30: TStringField;
    FloatField10: TFloatField;
    frxDBDRincianFaktur: TfrxDBDataset;
    dsRincianFaktur: TDataSource;
    dxBarLargeButton1: TdxBarLargeButton;
    cbSBU: TdxBarCombo;
    dxBarLargeButton2: TdxBarLargeButton;
    frxPDFExport1: TfrxPDFExport;
    btExport: TdxBarLargeButton;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    edTP: TcxBarEditItem;
    procedure btSearchClick(Sender: TObject);
    procedure edKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btPreviewClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure btExportClick(Sender: TObject);
    procedure cxBarEditItem1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_kares, vkd_tp, vkd_kab : String ;
    procedure ExportToExcel;
  end;

function FRekapPenjualan: TFRekapPenjualan;
//var
//  FRekapPenjualan: TFBHPenjualan;

implementation

{$R *.dfm}
uses UMasterWilayah, UMasterData, UMy_Function, UHomeLogin, UDataModule;
var
  realfrekap : TFRekapPenjualan;
// implementasi function
function FRekapPenjualan: TFRekapPenjualan;
begin
  if realfrekap <> nil then
    FRekapPenjualan:= realfrekap
  else
    Application.CreateForm(TFRekapPenjualan, Result);
end;

procedure TFRekapPenjualan.btPreviewClick(Sender: TObject);
var strKaresidenan,strKabupaten: String;
begin
  strKaresidenan:='';
  strKabupaten:='';
  if edKaresidenan.EditValue<>'' then
  begin
    strKaresidenan:=' AND a.karesidenan='+QuotedStr(edKaresidenan.EditValue)+' ';
  end;
  if edKabupaten.EditValue<>'' then
  begin
    strKabupaten:=' AND a.kabupaten='+QuotedStr(edKabupaten.EditValue)+' ';
  end;

   with QCetak do
   begin
       close;
       sql.Clear;
       SQL.Text:='SELECT a.*,a.karesidenan,a.kabupaten,a.kecamatan from get_selling(False) a '+
//                 'LEFT JOIN vcustomer b on b.customer_code=a.code_cust '+
                 'WHERE (a.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
                 ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+') AND a.deleted_at IS NULL '+strKaresidenan+strKabupaten +'Order by a.trans_date,a.trans_no ASC' ;
//       sql.add(' SELECT a.trans_no, a.trans_date, a.code_cust, CASE WHEN d.customer_name_pkp '+
//               ' IS NULL THEN a.name_cust ELSE d.customer_name_pkp END AS name_cust, d.code_region, '+
//               ' d.name_region, grand_tot as tot_piutang, sub_total as tot_pejualan, ppn_value as tot_ppn '+
//               ' FROM t_selling a '+
//               ' LEFT JOIN ( SELECT t_customer.customer_code, t_customer.customer_name_pkp, '+
//               ' t_customer.code_region, t_customer.name_region FROM t_customer) d ON a.code_cust::text = d.customer_code::text  '+
//               ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
//               ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
//               ' ON "left"(code_region, 4)=b.code_kab '+
//               ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
//               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' ');
//         if edKaresidenan.EditValue<>'' then
//         begin
//          sql.add(' AND code_karesidenan='+QuotedStr(vkd_kares)+' ');
//         end;
//         if edKabupaten.EditValue<>'' then
//         begin
//          sql.add(' AND code_kab='+QuotedStr(vkd_kab)+' ');
//         end;
//       sql.add(' ORDER BY trans_date, trans_no');
       open;
   end;

 if QCetak.RecordCount=0 then
 begin
  showmessage('Tidak ada data yang bisa dicetak !');
  exit;
 end else
 begin
//   with QCetakdetail do
//   begin
//       close;
//       sql.Clear;
//       sql.add(' SELECT a.*,code_karesidenan,code_kab,name_kab from "public"."vbhpenjualan" a  '+
//               ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
//               ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
//               ' ON "left"(code_region, 4)=b.code_kab '+
//               ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
//               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' ');
//         if edKaresidenan.EditValue<>'' then
//         begin
//          sql.add(' AND code_karesidenan='+QuotedStr(vkd_kares)+' ');
//         end;
//         if edKabupaten.EditValue<>'' then
//         begin
//          sql.add(' AND code_kab='+QuotedStr(vkd_kab)+' ');
//         end;
//       sql.add(' ORDER BY trans_no, code_item');
//       open;
//   end;

   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   Report.LoadFromFile(cLocation +'report/rpt_rekap_penjualan2'+ '.fr3');
   SetMemo(Report,'nama_pt',FHomeLogin.vKodePRSH);
   SetMemo(Report,'periode','Periode '+formatdatetime('dd mmmm yyyy',dtAwal.EditValue)+' s/d '+formatdatetime('dd mmmm yyyy',dtAkhir.EditValue));
//    if edKaresidenan.EditValue='' then
//    begin
//      SetMemo(Report,'wilayah','Wilayah : Semua Wilayah');
//    end;
    if edKaresidenan.EditValue<>'' then
    begin
      SetMemo(Report,'karesidenantp',edKaresidenan.EditValue);
    end;
    if edTP.EditValue<>'' then
    begin
      SetMemo(Report,'karesidenantp',edTP.EditValue);
    end;
    if edKabupaten.EditValue<>'' then
    begin
      SetMemo(Report,'kabupaten',edKabupaten.EditValue);
    end;
//    if edKabupaten.EditValue<>'' then
//    begin
//      SetMemo(Report,'wilayah','Wilayah : '+edKaresidenan.EditValue+'-'+edKabupaten.EditValue);
//    end;
//  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')= 'dev' then
//  begin
//   Report.DesignReport();
//  end else
//  begin
    Report.ShowReport();
//  end;

 end;

end;

procedure TFRekapPenjualan.btSearchClick(Sender: TObject);
var strKaresidenan,strKabupaten,strTP: String;
begin
  strKaresidenan:='';
  strKabupaten:='';
  if edKaresidenan.EditValue<>'' then
  begin
    strKaresidenan:=' AND a.karesidenan='+QuotedStr(edKaresidenan.EditValue)+' ';
  end;
  if edTP.EditValue<>'' then
  begin
    strTP:=' AND a.tp='+QuotedStr(edTP.EditValue)+' ';
  end;
  if edKabupaten.EditValue<>'' then
  begin
    strKabupaten:=' AND a.kabupaten='+QuotedStr(edKabupaten.EditValue)+' ';
  end;


  DBGrid.StartLoadingStatus();
  try
   with QRekapPenjualan do
   begin
       close;
       sql.Clear;
       SQL.Text:='SELECT a.*,a.karesidenan,a.kabupaten,a.kecamatan,a.code_tp,a.tp from get_selling(False) a '+
//                 'LEFT JOIN vcustomer b on b.customer_code=a.code_cust '+
                 'WHERE (a.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
                 ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+') AND a.deleted_at IS NULL '+strKaresidenan+strTP+strKabupaten+' Order by a.trans_date,a.trans_no ASC' ;
//       sql.add(' SELECT a.*,code_karesidenan,code_kab,name_kab from "public"."vrekap_penjualan" a  '+
//               ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
//               ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
//               ' ON "left"(code_region, 4)=b.code_kab '+
//               ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
//               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' ');
//         if edKaresidenan.EditValue<>'' then
//         begin
//          sql.add(' AND code_karesidenan='+QuotedStr(vkd_kares)+' ');
//         end;
//         if edKabupaten.EditValue<>'' then
//         begin
//          sql.add(' AND code_kab='+QuotedStr(vkd_kab)+' ');
//         end;
//       sql.add(' ORDER BY trans_date, trans_no');
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFRekapPenjualan.cxBarEditItem1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='rekappenjualan_tp';
  FMasterData.update_grid('code','name','description','t_region_tp','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFRekapPenjualan.dxBarLargeButton1Click(Sender: TObject);
begin
   with QCetak do
   begin
       close;
       sql.Clear;
       sql.add(' SELECT a.trans_no, a.trans_date, a.code_cust, CASE WHEN d.customer_name_pkp '+
               ' IS NULL THEN a.name_cust ELSE d.customer_name_pkp END AS name_cust, d.code_region, '+
               ' d.name_region, grand_tot as tot_piutang, sub_total as tot_pejualan, ppn_value as tot_ppn '+
               ' FROM t_selling a '+
               ' LEFT JOIN ( SELECT t_customer.customer_code, t_customer.customer_name_pkp, '+
               ' t_customer.code_region, t_customer.name_region FROM t_customer) d ON a.code_cust::text = d.customer_code::text  '+
               ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
               ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
               ' ON "left"(code_region, 4)=b.code_kab '+
               ' where deleted_at IS NULL AND trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' ');
         if edKaresidenan.EditValue<>'' then
         begin
          sql.add(' AND code_karesidenan='+QuotedStr(vkd_kares)+' ');
         end;
         if edKabupaten.EditValue<>'' then
         begin
          sql.add(' AND code_kab='+QuotedStr(vkd_kab)+' ');
         end;
       sql.add(' ORDER BY trans_date, trans_no');
       open;
   end;

 if QCetak.RecordCount=0 then
 begin
  showmessage('Tidak ada data yang bisa dicetak !');
  exit;
 end;

 if QCetak.RecordCount<>0 then
 begin
   with QRincianFaktur do
   begin
       close;
       sql.Clear;
       sql.add(' SELECT a.*,code_karesidenan,code_kab,name_kab from "public"."vbhpenjualan" a  '+
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
   Report.LoadFromFile(cLocation +'report/rpt_rincian_faktur_penjualan'+ '.fr3');
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
//  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')= 'dev' then
//  begin
//   Report.DesignReport();
//  end else
//  begin
    Report.ShowReport();
//  end;

 end;

end;

procedure TFRekapPenjualan.dxBarLargeButton2Click(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edKaresidenan.EditValue := '';
  edKabupaten.EditValue := '';
  edTP.EditValue:='';
  vkd_kares:='';
  vkd_kab:='';
  vkd_tp:='';
  QRekapPenjualan.Close;
  QCetak.Close;
end;

procedure TFRekapPenjualan.ExportToExcel;
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

procedure TFRekapPenjualan.btExportClick(Sender: TObject);
var strKaresidenan,strKabupaten: String;
begin
  strKaresidenan:='';
  strKabupaten:='';
  if edKaresidenan.EditValue<>'' then
  begin
    strKaresidenan:=' AND a.karesidenan='+QuotedStr(edKaresidenan.EditValue)+' ';
  end;
  if edKabupaten.EditValue<>'' then
  begin
    strKabupaten:=' AND a.kabupaten='+QuotedStr(edKabupaten.EditValue)+' ';
  end;

   with QCetak do
   begin
     close;
     sql.Clear;
     SQL.Text:='SELECT a.*,a.karesidenan,a.kabupaten,a.kecamatan from get_selling(False) a '+
               'WHERE (a.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
               ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+') '+strKaresidenan+strKabupaten +'Order by a.trans_date,a.trans_no ASC' ;
     open;
   end;

 if QCetak.RecordCount=0 then
 begin
  showmessage('Tidak ada data yang bisa dicetak !');
  exit;
 end else
 begin
   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
    Report.LoadFromFile(cLocation +'report/rpt_rekap_penjualan2'+ '.fr3');
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

procedure TFRekapPenjualan.edKabupatenPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='rekappenjualan_kab';
  if (edKaresidenan.EditValue<>'') AND (edTP.EditValue='') then
  begin
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(vkd_kares)+'');
    FMasterData.ShowModal;
  end else if (edKaresidenan.EditValue='') AND (edTP.EditValue<>'') then begin
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_tp='+QuotedStr(vkd_tp)+'');
    FMasterData.ShowModal;
  end;
end;

procedure TFRekapPenjualan.edKaresidenanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='rekappenjualan_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFRekapPenjualan.FormCreate(Sender: TObject);
begin
  realfrekap:=self;
end;

procedure TFRekapPenjualan.FormDestroy(Sender: TObject);
begin
  realfrekap:=nil;
end;

procedure TFRekapPenjualan.FormShow(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edKaresidenan.EditValue := '';
  edKabupaten.EditValue := '';
  edTP.EditValue:='';
  vkd_kares:='';
  vkd_kab:='';
  vkd_tp:='';
  QRekapPenjualan.Close;
  QCetak.Close;

  FillSBUBarCombo(cbSBU);
end;

initialization
  RegisterClass(TFRekapPenjualan);
end.
