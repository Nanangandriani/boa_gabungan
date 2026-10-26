unit Ugroup_biayalr;

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
  DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, dxBar, cxClasses, dxRibbon;

type
  TFGroup_biayalr = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    DxBarUpdate: TdxBarButton;
    DxBarRefresh: TdxBarButton;
    dxBDelete: TdxBarButton;
    DxBedit: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DbGroup_lr: TDBGridEh;
    DsGroup_bylr: TDataSource;
    QGroup_bylr: TUniQuery;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGroup_biayalr: TFGroup_biayalr;

implementation

{$R *.dfm}

uses UNew_Group_Biaya;

procedure TFGroup_biayalr.ActBaruExecute(Sender: TObject);
begin
  with FNew_Group_biaya do
  begin
    Show;
    clear;
    modul:='bylr';
  end;
end;

procedure TFGroup_biayalr.ActRoExecute(Sender: TObject);
begin
  DbGroup_lr.StartLoadingStatus() ;
  QGroup_bylr.Close;
  QGroup_bylr.Open;
  DBGroup_lr.FinishLoadingStatus();
end;

procedure TFGroup_biayalr.ActUpdateExecute(Sender: TObject);
begin
  with FNew_Group_biaya do
  begin
    modul:='bylr';
    Show;
    clear;
    Edkd_persd.text:=QGroup_bylr['code'];
    Ednm_persd.text:=QGroup_bylr['account_name'];
    Edkd_by.text:=QGroup_bylr['by_st_id'];
    Ednm_by.text:=QGroup_bylr['type_by'];
  end;
end;

initialization
RegisterClass(TFGroup_biayalr);

end.
