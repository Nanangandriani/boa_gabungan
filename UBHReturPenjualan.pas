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
  DBAxisGridsEh, DBGridEh, dxRibbon, frxClass, frxDBSet;

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
    QBHReturPenjualantrans_no: TStringField;
    QBHReturPenjualantrans_date: TDateField;
    QBHReturPenjualancode_cust: TStringField;
    QBHReturPenjualanname_cust: TStringField;
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
    DsBHReturPenjualan: TDataSource;
    QCetak: TUniQuery;
    QCetaktrans_no: TStringField;
    QCetaktrans_date: TDateField;
    QCetakcode_cust: TStringField;
    QCetakname_cust: TStringField;
    QCetakcode_region: TStringField;
    QCetakname_region: TStringField;
    QCetaktot_piutang: TFloatField;
    QCetaktot_pejualan: TFloatField;
    QCetaktot_ppn: TFloatField;
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
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_kares, vkd_kab : String ;
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
begin
   with QCetak do
   begin
       close;
       sql.Clear;
       sql.add(' SELECT a.trans_no, a.trans_date, a.code_cust, CASE WHEN d.customer_name_pkp '+
               ' IS NULL THEN a.name_cust ELSE d.customer_name_pkp END AS name_cust, d.code_region, '+
               ' d.name_region, grand_tot as tot_piutang, sub_total as tot_pejualan, ppn_value as tot_ppn '+
               ' FROM t_sales_returns a '+
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
 end;

end;

procedure TFBHReturPenjualan.btSearchClick(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QBHReturPenjualan do
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
       sql.add(' ORDER BY trans_date, trans_no');
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFBHReturPenjualan.edKabupatenPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='bhreturpenjualan_kab';
  FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(vkd_kares)+'');
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
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edKaresidenan.EditValue := '';
  edKabupaten.EditValue := '';
  vkd_kares:='';
  vkd_kab:='';

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
