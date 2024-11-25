unit URekapReturPenjualan;

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
  DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFRekapReturPenjualan = class(TForm)
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
    QRekapReturPenjualan: TUniQuery;
    QRekapReturPenjualantrans_no: TStringField;
    QRekapReturPenjualantrans_date: TDateField;
    QRekapReturPenjualancode_cust: TStringField;
    QRekapReturPenjualanname_cust: TStringField;
    QRekapReturPenjualancode_region: TStringField;
    QRekapReturPenjualanname_region: TStringField;
    QRekapReturPenjualancode_item: TStringField;
    QRekapReturPenjualanname_item: TStringField;
    QRekapReturPenjualanamount: TFloatField;
    QRekapReturPenjualancode_unit: TStringField;
    QRekapReturPenjualanname_unit: TStringField;
    QRekapReturPenjualannilaidpp: TFloatField;
    QRekapReturPenjualannilaippn: TFloatField;
    QRekapReturPenjualangrandtotal: TFloatField;
    DsRekapReturPenjualan: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_kares, vkd_kab : String ;
  end;

function FRekapReturPenjualan: TFRekapReturPenjualan;
//var
//  FRekapReturPenjualan: TFRekapReturPenjualan;

implementation

{$R *.dfm}
uses UMasterWilayah, UMasterData;
var
  realfrekapretur : TFRekapReturPenjualan;
// implementasi function
function FRekapReturPenjualan: TFRekapReturPenjualan;
begin
  if realfrekapretur <> nil then
    FRekapReturPenjualan:= realfrekapretur
  else
    Application.CreateForm(TFRekapReturPenjualan, Result);
end;

procedure TFRekapReturPenjualan.btSearchClick(Sender: TObject);
begin

  DBGrid.StartLoadingStatus();
  try
   with QRekapReturPenjualan do
   begin
       close;
       sql.Clear;
       sql.add(' SELECT a.*,code_karesidenan,code_kab,name_kab from "sale"."vrekap_returpenjualan" a  '+
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

procedure TFRekapReturPenjualan.edKabupatenPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='rekap_ret_penjualan_kab';
  FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(vkd_kares)+'');
  FMasterData.ShowModal;
end;

procedure TFRekapReturPenjualan.edKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='rekap_ret_penjualan_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFRekapReturPenjualan.FormCreate(Sender: TObject);
begin
  realfrekapretur:=self;
end;

procedure TFRekapReturPenjualan.FormDestroy(Sender: TObject);
begin
  realfrekapretur:=nil;
end;

procedure TFRekapReturPenjualan.FormShow(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edKaresidenan.EditValue := '';
  edKabupaten.EditValue := '';
  vkd_kares:='';
  vkd_kab:='';
end;

initialization
  RegisterClass(TFRekapReturPenjualan);
end.
