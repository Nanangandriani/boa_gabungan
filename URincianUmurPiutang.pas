unit URincianUmurPiutang;

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
  DynVarsEh, cxSpinEdit, cxLabel, cxDropDownEdit, cxProgressBar, cxButtonEdit,
  cxCalendar, frxClass, frxDBSet, Data.DB, MemDS, DBAccess, Uni, dxBarExtItems,
  cxBarEditItem, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon, Vcl.StdCtrls, RzLabel;

type
  TFRincianUmurPiutang = class(TForm)
    RzLabel1: TRzLabel;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid: TDBGridEh;
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
    dxBarCombo1: TdxBarCombo;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    ActSearch: TdxBarLargeButton;
    cxBarEditItem3: TcxBarEditItem;
    dxBarCombo2: TdxBarCombo;
    cbBulan: TdxBarCombo;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    cxBarEditItem6: TcxBarEditItem;
    cxBarEditItem7: TcxBarEditItem;
    cxBarEditItem9: TcxBarEditItem;
    cxBarEditItem10: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    cxBarEditItem8: TcxBarEditItem;
    dtTanggal1: TdxBarDateCombo;
    dtTanggal2: TdxBarDateCombo;
    dxBarLargeButton2: TdxBarLargeButton;
    cbSBU: TdxBarCombo;
    dxBarLargeButton3: TdxBarLargeButton;
    DsRincianUmurPiutang: TDataSource;
    Report: TfrxReport;
    frxDBDatasetRincianUmurPiutang: TfrxDBDataset;
    edKaresidenan: TcxBarEditItem;
    cbUmurPiutang: TdxBarCombo;
    QRincianUmurPiutang: TUniQuery;
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKodeKaresidenan:String;
  end;

  function FRincianUmurPiutang: TFRincianUmurPiutang;
//
//var
//  FRincianUmurPiutang: TFRincianUmurPiutang;

implementation

{$R *.dfm}

uses UMasterData, UDataModule, UMy_Function, UHomeLogin;

var
  rincianumurpiutang : TFRincianUmurPiutang;

function FRincianUmurPiutang: TFRincianUmurPiutang;
begin
  if rincianumurpiutang <> nil then
    FRincianUmurPiutang:= rincianumurpiutang
  else
    Application.CreateForm(TFRincianUmurPiutang, Result);
end;

procedure TFRincianUmurPiutang.dxBarLargeButton1Click(Sender: TObject);
var strReportName,strKaresidenan:String;
begin
  if cbUmurPiutang.Text='' then
  begin
    MessageDlg('Umur Piutang Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else begin

    if edKaresidenan.EditValue<>'' then
    strKaresidenan:='WHERE karesidenan='+QuotedStr(edKaresidenan.EditValue)+' ' else strKaresidenan:='';

    with QRincianUmurPiutang do
    begin
      close;
      sql.Clear;
      sql.Text:='select saldo_baru saldo_piutang,* from rincian_umur_piutang('+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date))+')'+strKaresidenan+' order by kabupaten,kecamatan ASC';
      open;
    end;
    if QRincianUmurPiutang.RecordCount=0 then
    begin
      MessageDlg('Tidak ada data..!!',mtInformation,[mbRetry],0);
    end else begin

      strReportName:='rpt_rincianumurpiutang';

      cLocation := ExtractFilePath(Application.ExeName);
      Report.LoadFromFile(cLocation +'report/'+strReportName+''+ '.fr3');
      SetMemo(Report,'sbu',FHomeLogin.vNamaPRSH);
      SetMemo(Report,'umur_piutang',cbUmurPiutang.Text);
      if edKaresidenan.EditValue<>'' then
      SetMemo(Report,'karesidenan',cbUmurPiutang.Text) else  SetMemo(Report,'karesidenan','');
      SetMemo(Report,'periode','PERIODE '+FormatDateTime('dd',dtTanggal1.Date)+' s/d '+FormatDateTime('dd-mm-yyyy',dtTanggal2.Date));
      Report.ShowReport();
    end;
  end;
end;

procedure TFRincianUmurPiutang.dxBarLargeButton3Click(Sender: TObject);
begin
  dtTanggal1.Date:=NOW();
  dtTanggal2.Date:=NOW();
  edKaresidenan.EditValue:='';
  strKodeKaresidenan:='';
  cbUmurPiutang.ItemIndex:=-1;
end;

procedure TFRincianUmurPiutang.edKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='rincianumurpiutangkares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal
end;

procedure TFRincianUmurPiutang.FormCreate(Sender: TObject);
begin
  rincianumurpiutang:= Self;
end;

procedure TFRincianUmurPiutang.FormDestroy(Sender: TObject);
begin
  rincianumurpiutang:=nil;
end;

procedure TFRincianUmurPiutang.FormShow(Sender: TObject);
begin
  dtTanggal1.Date:=NOW();
  dtTanggal2.Date:=NOW();
  edKaresidenan.EditValue:='';
  strKodeKaresidenan:='';
  cbUmurPiutang.ItemIndex:=-1;
end;

initialization
  RegisterClass(TFRincianUmurPiutang);
end.
