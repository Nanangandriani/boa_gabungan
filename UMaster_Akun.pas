unit UMaster_Akun;

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
  dxRibbonCustomizationForm, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxRibbon, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFMaster_Akun = class(TForm)
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
    dxBarManager1Bar2: TdxBar;
    dxBarUpdate: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    DBGridEh1: TDBGridEh;
    QMaster_akun: TUniQuery;
    Ds_Master_Akun: TDataSource;
    procedure ActBaruExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FMaster_Akun: TFMaster_Akun;

implementation

{$R *.dfm}

uses UDataModule, UNew_Master_Akun, UMainMenu;

var RealFMaster_Akun: TFMaster_Akun;

function FMaster_Akun: TFMaster_Akun;
begin
  if RealFMaster_Akun <> nil then FMaster_Akun:= RealFMaster_Akun
  else  Application.CreateForm(TFMaster_Akun, Result);
end;

procedure TFMaster_Akun.ActBaruExecute(Sender: TObject);
begin
  with FNew_Master_Akun do
  begin
    Show;
    statustr:=0;
  end;
end;

procedure TFMaster_Akun.ActRoExecute(Sender: TObject);
begin
  DBGridEh1.StartLoadingStatus();
  QMaster_akun.Close;
  QMaster_akun.Open;
  DBGridEh1.FinishLoadingStatus();
end;

procedure TFMaster_Akun.ActUpdateExecute(Sender: TObject);
begin
  with FNew_Master_Akun do
  begin
    Show;
    statustr:=1;
    EdDesk.Text:=QMaster_akun['description'];
    Edkd.Text:=QMaster_akun['master_id'];
    Ednm_akun.Text:=QMaster_akun['account_name'];
    Edkd_akun.Text:=QMaster_akun['account_code'];
  end;
end;

procedure TFMaster_Akun.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFMaster_Akun.FormCreate(Sender: TObject);
begin
  RealFMaster_Akun:=self;
end;

procedure TFMaster_Akun.FormDestroy(Sender: TObject);
begin
  RealFMaster_Akun:=nil;
end;

initialization
RegisterClass(TFMaster_Akun);

end.
