unit UBHPenjualan;

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
  DynVarsEh, cxCalendar, cxButtonEdit, cxTextEdit, dxBar, cxBarEditItem,
  Data.DB, MemDS, DBAccess, Uni, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon, dxBarExtItems, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzBtnEdt, frxClass, frxDBSet;

type
  TFBHPenjualan = class(TForm)
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
    QBHPenjualan: TUniQuery;
    DsBHPenjualan: TDataSource;
    dtAwal: TcxBarEditItem;
    dtAkhir: TcxBarEditItem;
    edKaresidenan: TcxBarEditItem;
    btPreview: TdxBarLargeButton;
    btSearch: TdxBarLargeButton;
    QBHPenjualantrans_no: TStringField;
    QBHPenjualantrans_date: TDateField;
    QBHPenjualancode_cust: TStringField;
    QBHPenjualanname_cust: TStringField;
    QBHPenjualanname_region: TStringField;
    QBHPenjualancode_item: TStringField;
    QBHPenjualanname_item: TStringField;
    QBHPenjualanamount: TFloatField;
    QBHPenjualancode_unit: TStringField;
    QBHPenjualanname_unit: TStringField;
    QBHPenjualanakn_debet: TStringField;
    QBHPenjualannm_debit_deb: TStringField;
    QBHPenjualanjum_ak_deb: TFloatField;
    QBHPenjualanakn_debet_lain: TMemoField;
    QBHPenjualannm_debit_lain: TMemoField;
    QBHPenjualanjum_ak_deb_lain: TIntegerField;
    QBHPenjualanakn_kredit: TStringField;
    QBHPenjualannm_debit_kre: TStringField;
    QBHPenjualanjum_ak_kre: TFloatField;
    QBHPenjualanppn_ak_kre: TFloatField;
    QBHPenjualanakn_kre_lain: TStringField;
    QBHPenjualannm_kre_lain: TStringField;
    QBHPenjualanjum_ak_kre_lain: TFloatField;
    edKabupaten: TcxBarEditItem;
    QCetak: TUniQuery;
    frxDBDBHPenjualan: TfrxDBDataset;
    Report: TfrxReport;
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
    dsCetak: TDataSource;
    dsCetakdetail: TDataSource;
    QCetaktrans_no: TStringField;
    QCetaktrans_date: TDateField;
    QCetakcode_cust: TStringField;
    QCetakname_cust: TStringField;
    QCetakcode_region: TStringField;
    QCetakname_region: TStringField;
    QCetaktot_piutang: TFloatField;
    QCetaktot_pejualan: TFloatField;
    QCetaktot_ppn: TFloatField;
    dxBarLargeButton1: TdxBarLargeButton;
    QCetakRincianBarang: TUniQuery;
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
    frxDBDRincianBarang: TfrxDBDataset;
    dsCetakRincianBarang: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure QBHPenjualanakn_debet_lainGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QBHPenjualannm_debit_lainGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btPreviewClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_kares, vkd_kab : String ;
  end;

function FBHPenjualan: TFBHPenjualan;
//var
//  FBHPenjualan: TFBHPenjualan;

implementation

{$R *.dfm}

uses UMasterWilayah, UMasterData, UMy_Function, UHomeLogin;
var
  realfbhp : TFBHPenjualan;
// implementasi function
function FBHPenjualan: TFBHPenjualan;
begin
  if realfbhp <> nil then
    FBHPenjualan:= realfbhp
  else
    Application.CreateForm(TFBHPenjualan, Result);
end;

procedure TFBHPenjualan.btPreviewClick(Sender: TObject);
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
   with QCetakdetail do
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
   Report.LoadFromFile(cLocation +'report/rpt_bh_penjualan'+ '.fr3');
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

procedure TFBHPenjualan.btSearchClick(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QBHPenjualan do
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
       sql.add(' ORDER BY trans_date, trans_no');
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFBHPenjualan.dxBarLargeButton1Click(Sender: TObject);
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
   with QCetakRincianBarang do
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
   Report.LoadFromFile(cLocation +'report/rpt_rincian_penjualan_perbarang'+ '.fr3');
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

procedure TFBHPenjualan.edKabupatenPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='bhpenjualan_kab';
  FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(vkd_kares)+'');
  FMasterData.ShowModal;
end;

procedure TFBHPenjualan.edKaresidenanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='bhpenjualan_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFBHPenjualan.FormCreate(Sender: TObject);
begin
  realfbhp:=self;
end;

procedure TFBHPenjualan.FormDestroy(Sender: TObject);
begin
  realfbhp:=nil;
end;

procedure TFBHPenjualan.FormShow(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edKaresidenan.EditValue := '';
  edKabupaten.EditValue := '';
  vkd_kares:='';
  vkd_kab:='';
end;

procedure TFBHPenjualan.QBHPenjualanakn_debet_lainGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=copy(QBHPenjualanakn_debet_lain.asstring,100);
end;

procedure TFBHPenjualan.QBHPenjualannm_debit_lainGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=copy(QBHPenjualannm_debit_lain.asstring,100);
end;

initialization
  RegisterClass(TFBHPenjualan);

end.
