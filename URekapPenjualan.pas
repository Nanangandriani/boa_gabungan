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
  DBAxisGridsEh, DBGridEh, dxRibbon, frxClass, frxDBSet;

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
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_kares, vkd_kab : String ;
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
                 ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+') '+strKaresidenan+strKabupaten +'Order by a.trans_date,a.trans_no ASC' ;
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

procedure TFRekapPenjualan.btSearchClick(Sender: TObject);
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


  DBGrid.StartLoadingStatus();
  try
   with QRekapPenjualan do
   begin
       close;
       sql.Clear;
       SQL.Text:='SELECT a.*,a.karesidenan,a.kabupaten,a.kecamatan from get_selling(False) a '+
//                 'LEFT JOIN vcustomer b on b.customer_code=a.code_cust '+
                 'WHERE (a.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
                 ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+') '+strKaresidenan+strKabupaten+' Order by a.trans_date,a.trans_no ASC' ;
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
  vkd_kares:='';
  vkd_kab:='';
  QRekapPenjualan.Close;
  QCetak.Close;
end;

procedure TFRekapPenjualan.edKabupatenPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='rekappenjualan_kab';
  FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(vkd_kares)+'');
  FMasterData.ShowModal;
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
  vkd_kares:='';
  vkd_kab:='';
  QRekapPenjualan.Close;
  QCetak.Close;

  FillSBUBarCombo(cbSBU);
end;

initialization
  RegisterClass(TFRekapPenjualan);
end.
