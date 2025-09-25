unit Ulog;

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
  DynVarsEh, Data.DB, MemDS, DBAccess, Uni, dxBarExtItems, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, cxButtonEdit,
  cxBarEditItem, cxCalendar;

type
  TFLog = class(TForm)
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
    dxBarManager1Bar3: TdxBar;
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
    cbAksi: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    QLog: TUniQuery;
    DsLog: TDataSource;
    cxBarEditItem1: TcxBarEditItem;
    dxBarSpinEdit1: TdxBarSpinEdit;
    edUser: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    dtTanggal1: TdxBarDateCombo;
    dtTanggal2: TdxBarDateCombo;
    procedure cxBarEditItem2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
  end;
  function FLog: TFLog;
//var
//  FLog: TFLog;

implementation

{$R *.dfm}

uses UDataModule, UMasterData;

var
  log : TFLog;

function FLog: TFLog;
begin
  if log <> nil then
    FLog:= log
  else
    Application.CreateForm(TFLog, Result);
end;

procedure TFLog.cxBarEditItem2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master User';
  FMasterData.vcall:='loguser';
  FMasterData.update_grid('user_name','full_name',QuotedStr(''),'t_user','');
  FMasterData.ShowModal;
end;

procedure TFLog.dxBarLargeButton6Click(Sender: TObject);
begin
  Refresh;
end;

procedure TFLog.FormCreate(Sender: TObject);
begin
  log:=Self;
end;

procedure TFLog.FormDestroy(Sender: TObject);
begin
  log:= nil;
end;

procedure TFLog.FormShow(Sender: TObject);
begin
  cbAksi.ItemIndex:=0;
  edUser.EditValue:='';
  dtTanggal1.Date:=NOW;
  dtTanggal2.Date:=NOW;
end;

procedure TFLog.Refresh;
var strAksi, strUser: String;
begin
  if cbAksi.Text='SEMUA' then
  begin
    strAksi := '';
  end else begin
    strAksi:= ' AND Action='+QuotedStr(cbAksi.Text);
  end;

  if edUser.EditValue='' then
  begin
    strUser := '';
  end else begin
    strUser:= ' AND full_name='+QuotedStr(edUser.EditValue);
  end;

  with QLog do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT * FROM vlog WHERE date::date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal1.Date))+' AND '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date))+' AND '+
              'Action IS NOT NULL'+strAksi+strUser+' Order By full_name, date ASC';
    open;
  end;

end;

initialization
  RegisterClass(TFLog);

end.
