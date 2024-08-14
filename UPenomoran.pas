unit UPenomoran;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, RzCmboBx, Vcl.Mask, RzEdit, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  cxClasses, dxRibbon, dxBar, MemDS, DBAccess, Uni, MemTableDataEh, DataDriverEh,
  MemTableEh, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan;

type
  TFPenomoran = class(TForm)
    dxBarManager1: TdxBarManager;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    QDetNo: TUniQuery;
    DsDetNo: TDataSource;
    DBGridNo: TDBGridEh;
    DBGridNodet: TDBGridEh;
    QNo: TUniQuery;
    DSDNo: TDataSetDriverEh;
    MemNo: TMemTableEh;
    DSNo: TDataSource;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FPenomoran: TFPenomoran;

implementation

{$R *.dfm}

uses Unew_Penomoran, UDataModule;

var
  realFPenomoran: TFPenomoran;

function FPenomoran: TFPenomoran;
begin
  if realFPenomoran <> nil then
    FPenomoran:= realFPenomoran
  else
    Application.CreateForm(TFPenomoran, Result);
end;

procedure TFPenomoran.ActRoExecute(Sender: TObject);
begin
    DBGridNo.StartLoadingStatus();
      QNo.Close;
      MemNo.Close;
      QdetNo.Close;
      if QNo.Active=False then QNo.Active:=True;
      if MemNo.Active=False then MemNo.Active:=True;
      if QdetNo.Active=False then QdetNo.Active:=True;
    DBGridNo.FinishLoadingStatus();
end;

procedure TFPenomoran.dxBarButton1Click(Sender: TObject);
begin
  FNew_Penomoran.ShowModal;
end;

procedure TFPenomoran.dxBarLargeButton1Click(Sender: TObject);
begin
   FNew_Penomoran.Show;
   with  FNew_Penomoran.qnumb_det_tmp do
   begin
     close;
     sql.clear;
     sql.add('delete from t_numb_det_tmp');
     execute;
   end;
end;

procedure TFPenomoran.FormShow(Sender: TObject);
begin
{   if QNo.Active=False then QNo.Active:=True;
   if MemNo.Active=False then MemNo.Active:=True;
   if QdetNo.Active=False then QdetNo.Active:=True;     }
end;

Initialization
  RegisterClasses([TFPenomoran]);

end.
