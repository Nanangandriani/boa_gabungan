unit UPot_Pembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBasic, dxSkinBlack,
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
  dxRibbon, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MemTableDataEh, Data.DB, MemTableEh, DataDriverEh, frxClass, MemDS, DBAccess,
  Uni, frxDBSet;

type
  TFPot_Pembelian = class(TForm)
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
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridReturnPemb: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DBPerusahaan: TfrxDBDataset;
    QPerusahaan: TUniQuery;
    frxReport1: TfrxReport;
    frxDBPotPemb: TfrxDBDataset;
    DsRptPot_Pemb: TDataSource;
    QRptPot_Pemb: TUniQuery;
    QRptDet: TUniQuery;
    DbrptDet: TfrxDBDataset;
    QDetail: TUniQuery;
    DsDetail: TDataSource;
    DsdReturn: TDataSetDriverEh;
    MemReturn: TMemTableEh;
    DsReturnPembelian: TDataSource;
    QReturnPembelian: TUniQuery;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FPot_Pembelian: TFPot_Pembelian;

implementation

{$R *.dfm}

uses UNew_Pot_Pembelian;


procedure TFPot_Pembelian.ActBaruExecute(Sender: TObject);
begin
    with FNew_Pot_Pembelian do
    begin
      Show;
      Clear;

      Refresh;
      Caption:='New Potongan Pembelian';
      status:=0;
    end;

end;

procedure TFPot_Pembelian.ActRoExecute(Sender: TObject);
begin
  DBGridReturnPemb.StartLoadingStatus();
  DBGridReturnPemb.FinishLoadingStatus();
  QReturnPembelian.Close;
  MemReturn.Close;
  QDetail.Close;
  if QReturnPembelian.Active=false then QReturnPembelian.Active:=True;
  if MemReturn.Active=False then MemReturn.Active:=True;
  if QDetail.Active=False then QDetail.Active:=True;
  if QRptPot_Pemb.Active=False then QRptPot_Pemb.Active:=True;
  if QRptDet.Active=False then QRptDet.Active:=True;
end;

end.
