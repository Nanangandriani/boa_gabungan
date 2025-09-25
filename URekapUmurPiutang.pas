unit URekapUmurPiutang;

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
  TFRekapUmurPiutang = class(TForm)
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
    edTahun: TdxBarSpinEdit;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    cxBarEditItem6: TcxBarEditItem;
    edWilayah: TcxBarEditItem;
    cxBarEditItem7: TcxBarEditItem;
    edArea: TcxBarEditItem;
    cxBarEditItem9: TcxBarEditItem;
    cxBarEditItem10: TcxBarEditItem;
    edKaresidenan: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    cxBarEditItem8: TcxBarEditItem;
    dtTanggal1: TdxBarDateCombo;
    dtTanggal2: TdxBarDateCombo;
    dxBarLargeButton2: TdxBarLargeButton;
    QRekapUmurPiutang: TUniQuery;
    DsRekapUmurPiutang: TDataSource;
    Report: TfrxReport;
    frxDBDatasetRekapUmurPiutang: TfrxDBDataset;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
    procedure ActSearchClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Refresh;
  public
    { Public declarations }
  end;

  function FRekapUmurPiutang: TFRekapUmurPiutang;

//var
//  FRekapUmurPiutang: TFRekapUmurPiutang;

implementation

{$R *.dfm}

uses UHomeLogin, UMy_Function;

var
  rekapumurpiutang : TFRekapUmurPiutang;

function FRekapUmurPiutang: TFRekapUmurPiutang;
begin
  if rekapumurpiutang <> nil then
    FRekapUmurPiutang:= rekapumurpiutang
  else
    Application.CreateForm(TFRekapUmurPiutang, Result);
end;

procedure TFRekapUmurPiutang.Refresh;
begin
  with QRekapUmurPiutang do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT * FROM rekap_umur_piutang('+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date))+')';
    open;
  end;
end;

procedure TFRekapUmurPiutang.ActSearchClick(Sender: TObject);
begin
  Refresh;
end;

procedure TFRekapUmurPiutang.dxBarLargeButton1Click(Sender: TObject);
begin
  Refresh;
  cLocation := ExtractFilePath(Application.ExeName);
  Report.LoadFromFile(cLocation +'report/rpt_umurpiutang'+ '.fr3');
  Report.ShowReport();
end;

procedure TFRekapUmurPiutang.FormCreate(Sender: TObject);
begin
  rekapumurpiutang:=Self;
end;

procedure TFRekapUmurPiutang.FormDestroy(Sender: TObject);
begin
  rekapumurpiutang:=nil;
end;

procedure TFRekapUmurPiutang.FormShow(Sender: TObject);
var computername: String;
begin
  dtTanggal1.Date:=NOW;
  dtTanggal2.Date:=NOW;
  QRekapUmurPiutang.Close;
end;

procedure TFRekapUmurPiutang.ReportGetValue(const VarName: string;
  var Value: Variant);
var
  tgl1,bulan1,tahun1,tgl2,bulan2,tahun2,strKaresidenan: STRING;
begin
  tgl1:=FormatDateTime('DD', dtTanggal1.Date);
  bulan1:=convbulanInd(StrToInt(FormatDateTime('M', dtTanggal1.Date)));
  tahun1:=FormatDateTime('YYYY', dtTanggal1.Date);

  tgl2:=FormatDateTime('DD', dtTanggal2.Date);
  bulan2:=convbulanInd(StrToInt(FormatDateTime('M', dtTanggal2.Date)));
  tahun2:=FormatDateTime('YYYY', dtTanggal2.Date);

  if CompareText(VarName, 'prsh') = 0 then
  Value := UpperCase('PT. '+FHomeLogin.vNamaPRSH);

  if CompareText(VarName, 'periode') = 0 then
  Value := UpperCase('PERIODE '+tgl1+' '+bulan1+' '+tahun1+' s/d '+tgl2+' '+bulan2+' '+tahun2);
end;

initialization
  RegisterClass(TFRekapUmurPiutang);


end.
