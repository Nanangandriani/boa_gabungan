unit UListPenagihanPiutang;

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
  DynVarsEh, Data.DB, MemDS, DBAccess, Uni, dxBar, cxClasses, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFListPenagihanPiutang = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridOrder: TDBGridEh;
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
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeNew: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    QListPenagihanPiutang: TUniQuery;
    QListPenagihanPiutangid: TGuidField;
    QListPenagihanPiutangcreated_at: TDateTimeField;
    QListPenagihanPiutangcreated_by: TStringField;
    QListPenagihanPiutangupdated_at: TDateTimeField;
    QListPenagihanPiutangupdated_by: TStringField;
    QListPenagihanPiutangdeleted_at: TDateTimeField;
    QListPenagihanPiutangdeleted_by: TStringField;
    QListPenagihanPiutangcode_module: TStringField;
    QListPenagihanPiutangname_module: TStringField;
    QListPenagihanPiutangcode_trans: TStringField;
    QListPenagihanPiutangname_trans: TStringField;
    QListPenagihanPiutangdescription: TMemoField;
    QListPenagihanPiutangaccount_number_bank: TStringField;
    QListPenagihanPiutangaccount_name_bank: TStringField;
    DsListPenagihanPiutang: TDataSource;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListPenagihanPiutang: TFListPenagihanPiutang;

implementation

{$R *.dfm}

uses UDataModule, UDataPenagihanPiutang;

procedure TFListPenagihanPiutang.ActBaruExecute(Sender: TObject);
begin
  FDataPenagihanPiutang.Clear;
  FDataPenagihanPiutang.Status:=0;
  FDataPenagihanPiutang.ShowModal;
end;

procedure TFListPenagihanPiutang.ActDelExecute(Sender: TObject);
begin
  ShowMessage('Delete');
end;

procedure TFListPenagihanPiutang.ActROExecute(Sender: TObject);
begin
  ShowMessage('Refresh');
end;

procedure TFListPenagihanPiutang.ActUpdateExecute(Sender: TObject);
begin
  ShowMessage('Update');
end;

Initialization
  RegisterClasses([TFListPenagihanPiutang]);

end.
