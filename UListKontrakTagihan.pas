unit UListKontrakTagihan;

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
  DynVarsEh, frxClass, frxDBSet, Data.DB, MemDS, DBAccess, Uni, dxBar,
  cxClasses, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFListKontrakTagihan = class(TForm)
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
    dxBarManager1Bar2: TdxBar;
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
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    QKontrakTagihan: TUniQuery;
    QKontrakTagihancode_cust: TStringField;
    QKontrakTagihanname_cust: TStringField;
    QKontrakTagihanpayment_term: TSmallintField;
    QKontrakTagihanno_purchase: TStringField;
    QKontrakTagihancode_source: TStringField;
    QKontrakTagihanname_source: TStringField;
    QKontrakTagihandate_trans: TDateField;
    QKontrakTagihantrans_no: TStringField;
    DsKontrakTagihan: TDataSource;
    QCetak: TUniQuery;
    QCetakno_inv_tax: TStringField;
    QCetakcode_cust: TStringField;
    QCetakname_cust: TStringField;
    QCetakaddress: TMemoField;
    QCetakcode_item: TStringField;
    QCetakname_item: TStringField;
    QCetakamount: TFloatField;
    QCetakcode_unit: TStringField;
    QCetakname_unit: TStringField;
    QCetakno_reference: TStringField;
    QCetakunit_price: TFloatField;
    QCetaksub_total: TFloatField;
    QCetakppn_account: TStringField;
    QCetakppn_percent: TFloatField;
    QCetakppn_value: TFloatField;
    QCetakpph_account: TStringField;
    QCetakpph_name: TStringField;
    QCetakpph_percent: TFloatField;
    QCetakpph_value: TFloatField;
    QCetaktot_piece_value: TFloatField;
    QCetaktot_piece_percent: TFloatField;
    QCetakgrand_tot: TFloatField;
    QCetakpiece_first: TFloatField;
    QCetakpiece_second: TFloatField;
    QCetakpiece_third: TFloatField;
    QCetakpiece_fourth: TFloatField;
    QCetaktrans_no: TStringField;
    QCetaktrans_date: TDateField;
    frxDBDPenjualan: TfrxDBDataset;
    Report: TfrxReport;
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
  FListKontrakTagihan: TFListKontrakTagihan;
  status: integer;

implementation

{$R *.dfm}

uses UNewKontrakTagihan;

procedure TFListKontrakTagihan.ActBaruExecute(Sender: TObject);
begin
  FNewKontrakTagihan.Clear;
  //FNew_Penjualan.Autonumber;
  FNewKontrakTagihan.MemDataBiaya.EmptyTable;
  Status:=0;
  FNewKontrakTagihan.edNoKontrak.Enabled:=true;
  FNewKontrakTagihan.ShowModal;
end;

procedure TFListKontrakTagihan.ActDelExecute(Sender: TObject);
begin
  Showmessage('Delete');
end;

procedure TFListKontrakTagihan.ActROExecute(Sender: TObject);
begin
  Showmessage('Refersh');
end;

procedure TFListKontrakTagihan.ActUpdateExecute(Sender: TObject);
begin
  Showmessage('Update');
end;

initialization
  RegisterClass(TFListKontrakTagihan);


end.
