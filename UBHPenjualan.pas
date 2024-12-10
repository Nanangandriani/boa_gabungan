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
  RzEdit, RzBtnEdt;

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

uses UMasterWilayah, UMasterData;
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
