unit UListPenerimaanBank;

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
  TFListPenerimaanBank = class(TForm)
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
    QPenerimaanBank: TUniQuery;
    QPenerimaanBankid: TGuidField;
    QPenerimaanBankcreated_at: TDateTimeField;
    QPenerimaanBankcreated_by: TStringField;
    QPenerimaanBankupdated_at: TDateTimeField;
    QPenerimaanBankupdated_by: TStringField;
    QPenerimaanBankdeleted_at: TDateTimeField;
    QPenerimaanBankdeleted_by: TStringField;
    QPenerimaanBankcode_module: TStringField;
    QPenerimaanBankname_module: TStringField;
    QPenerimaanBankcode_trans: TStringField;
    QPenerimaanBankname_trans: TStringField;
    QPenerimaanBankdescription: TMemoField;
    QPenerimaanBankaccount_number_bank: TStringField;
    QPenerimaanBankaccount_name_bank: TStringField;
    DsPenerimaanBank: TDataSource;
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
  FListPenerimaanBank: TFListPenerimaanBank;

implementation

{$R *.dfm}

uses UDataPenerimaanBank;

procedure TFListPenerimaanBank.ActBaruExecute(Sender: TObject);
begin
  FDataPenerimaanBank.Clear;
  //FDataPenerimaanBank.Autocode;
  FDataPenerimaanBank.Status:=0;
  FDataPenerimaanBank.edNoTrans.Enabled:=true;
  FDataPenerimaanBank.ShowModal;
end;

procedure TFListPenerimaanBank.ActDelExecute(Sender: TObject);
begin
ShowMessage('delete');
end;

procedure TFListPenerimaanBank.ActROExecute(Sender: TObject);
begin
ShowMessage('refresh');
end;

procedure TFListPenerimaanBank.ActUpdateExecute(Sender: TObject);
begin
ShowMessage('Ubah');
end;

Initialization
  RegisterClasses([TFListPenerimaanBank]);

end.
