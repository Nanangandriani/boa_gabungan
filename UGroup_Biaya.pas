unit UGroup_Biaya;

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
  dxRibbonCustomizationForm, dxBar, cxClasses, dxRibbon, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Data.DB, MemDS, DBAccess, Uni;

type
  TFGroup_biaya = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    DxBarUpdate: TdxBarButton;
    DxBarRefresh: TdxBarButton;
    dxBDelete: TdxBarButton;
    DxBedit: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    DbGroup_by: TDBGridEh;
    QGroup_by: TUniQuery;
    DataSource1: TDataSource;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGroup_biaya: TFGroup_biaya;

implementation

{$R *.dfm}

uses UNew_Group_Biaya, UDataModule;

procedure TFGroup_biaya.ActBaruExecute(Sender: TObject);
begin
  with FNew_Group_biaya do
  begin
    Show;
    clear;
  end;
end;

procedure TFGroup_biaya.ActDelExecute(Sender: TObject);
begin
  close;
end;

procedure TFGroup_biaya.ActRoExecute(Sender: TObject);
begin
  DbGroup_by.StartLoadingStatus();
  QGroup_by.Close;
  QGroup_by.Open;
  DbGroup_by.FinishLoadingStatus();
end;

procedure TFGroup_biaya.ActUpdateExecute(Sender: TObject);
begin
  with FNew_Group_biaya do
  begin
    Show;
    clear;
    Edkd_persd.text:=QGroup_by['code'];
    Ednm_persd.text:=QGroup_by['account_name'];
    Edkd_by.text:=QGroup_by['cost_st_id'];
    Ednm_by.text:=QGroup_by['cost_type'];
  end;
end;

initialization
RegisterClass(TFGroup_biaya);

end.
