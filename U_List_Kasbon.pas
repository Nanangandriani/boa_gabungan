unit U_List_Kasbon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, dxSkinsCore, dxSkinBasic, dxSkinBlack,
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
  dxRibbon, dxBar, cxClasses, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Data.DB, MemDS, DBAccess, Uni;

type
  TFKasbon = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DBGridKasbon: TDBGridEh;
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
    QKasBon: TUniQuery;
    DS_KasBon: TDataSource;
    QKasBonid: TLargeintField;
    QKasBonbon_no: TStringField;
    QKasBongiven_to: TStringField;
    QKasBonremark: TMemoField;
    QKasBonamount: TFloatField;
    QKasBonbig_cash: TFloatField;
    QKasBonpetty_cash: TFloatField;
    QKasBonorder_no: TIntegerField;
    QKasBontrans_day: TSmallintField;
    QKasBontrans_month: TSmallintField;
    QKasBontrans_year: TSmallintField;
    QKasBoncreated_at: TDateTimeField;
    QKasBoncreated_by: TStringField;
    QKasBonupdated_at: TDateTimeField;
    QKasBonupdated_by: TStringField;
    QKasBondeleted_at: TDateTimeField;
    QKasBondeleted_by: TStringField;
    QKasBontrans_date: TDateField;
    procedure ActBaruExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure refresh;
  end;

var
  FKasbon: TFKasbon;

implementation

{$R *.dfm}

uses UNew_Kasbon, UDataModule;

procedure TFKasbon.ActROExecute(Sender: TObject);
begin
   self.refresh;
   DBGridKasbon.StartLoadingStatus();
   DBGridKasbon.FinishLoadingStatus();
end;

procedure TFKasbon.FormShow(Sender: TObject);
begin
   if QKasBon.Active=false then
      QKasBon.Active:=true;
end;

procedure TFKasbon.refresh;
begin
  with QKasBon do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_kasbon';
    open;
  end;
  QKasBon.Close;
  QKasBon.Open;
end;
procedure TFKasbon.ActBaruExecute(Sender: TObject);
begin
   FNew_Kasbon.Clear;
   FNew_Kasbon.show;
   Status_input_kasbon:=0;
end;

// Contoh RegisterClass
Initialization
  RegisterClass(TFKasbon);

end.
