unit UListMasterAkunTrans;

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
  TFListMasterAkunTrans = class(TForm)
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
    QAkunTransaksi: TUniQuery;
    QAkunTransaksinotrans: TStringField;
    QAkunTransaksiorder_date: TDateField;
    QAkunTransaksisent_date: TDateField;
    QAkunTransaksicode_cust: TStringField;
    QAkunTransaksiname_cust: TStringField;
    QAkunTransaksicode_sales: TStringField;
    QAkunTransaksiname_sales: TStringField;
    QAkunTransaksipayment_term: TSmallintField;
    QAkunTransaksino_reference: TStringField;
    QAkunTransaksicode_source: TStringField;
    QAkunTransaksiname_source: TStringField;
    DsAkunTransaksi: TDataSource;
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
  FListMasterAkunTrans: TFListMasterAkunTrans;

implementation

{$R *.dfm}

uses UDataMasterAkunTrans;

procedure TFListMasterAkunTrans.ActBaruExecute(Sender: TObject);
begin
  FDataMasterAkunTrans.Clear;
  //FNew_SalesOrder.Autonumber;
  FDataMasterAkunTrans.MemDetail.EmptyTable;
  Status:=0;
  FDataMasterAkunTrans.edKodeTrans.Enabled:=true;
  FDataMasterAkunTrans.MemDetail.active:=false;
  FDataMasterAkunTrans.MemDetail.active:=true;
  FDataMasterAkunTrans.ShowModal;
end;

procedure TFListMasterAkunTrans.ActDelExecute(Sender: TObject);
begin
  ShowMessage('Hapus');
end;

procedure TFListMasterAkunTrans.ActROExecute(Sender: TObject);
begin
  ShowMessage('Refresh');
end;

procedure TFListMasterAkunTrans.ActUpdateExecute(Sender: TObject);
begin
  ShowMessage('Ubah');
end;

initialization
RegisterClass(TFListMasterAkunTrans);
end.
