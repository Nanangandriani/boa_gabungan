unit URekapTagihanKolektor;

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
  Data.DB, MemDS, DBAccess, Uni, dxBarExtItems, cxBarEditItem, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, Vcl.StdCtrls, RzLabel,
  cxCalendar, frxClass, frxDBSet;

type
  TFRekapTagihanKolektor = class(TForm)
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
    QRekapTagihanKolektor: TUniQuery;
    DsRekapTagihanPenjualan: TDataSource;
    cxBarEditItem8: TcxBarEditItem;
    dtTanggal1: TdxBarDateCombo;
    dtTanggal2: TdxBarDateCombo;
    Report: TfrxReport;
    frxDBDatasetRekapTagihanKolektor: TfrxDBDataset;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarManager1Bar2: TdxBar;
    procedure edWilayahPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edAreaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ActSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edWilayahChange(Sender: TObject);
    procedure edAreaChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dtTanggal1Change(Sender: TObject);
    procedure dtTanggal2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKaresidenanID,strAreaID,strWilayahID : String;
  end;

  function FRekapTagihanKolektor: TFRekapTagihanKolektor;
//var
//  FRekapTagihanKolektor: TFRekapTagihanKolektor;

implementation

{$R *.dfm}

uses UMasterData, UHomeLogin, UMy_Function;
var
  rekaptagihankolektor : TFRekapTagihanKolektor;

function FRekapTagihanKolektor: TFRekapTagihanKolektor;
begin
  if rekaptagihankolektor <> nil then
    FRekapTagihanKolektor:= rekaptagihankolektor
  else
    Application.CreateForm(TFRekapTagihanKolektor, Result);
end;

procedure TFRekapTagihanKolektor.ActSearchClick(Sender: TObject);
var strWhereKaresidenan:String;
begin
  if edKaresidenan.EditValue='' then
  begin
    strWhereKaresidenan:='';
  end else begin
    strWhereKaresidenan:=' AND code_karesidenan='+QuotedStr(strKaresidenanID) +' ';

  end;
  with QRekapTagihanKolektor do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from  vdpp where '+
              'date_dpp BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal1.Date))+' and '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date))+strWhereKaresidenan;
    open;
  end;
end;

procedure TFRekapTagihanKolektor.dtTanggal1Change(Sender: TObject);
begin
  if dtTanggal1.Date>dtTanggal2.Date then
  dtTanggal2.Date:=dtTanggal1.Date;
end;

procedure TFRekapTagihanKolektor.dtTanggal2Change(Sender: TObject);
begin
  if dtTanggal2.Date<dtTanggal1.Date then
  dtTanggal1.Date:=dtTanggal2.Date;
end;

procedure TFRekapTagihanKolektor.dxBarLargeButton1Click(Sender: TObject);
var strWhereKaresidenan:String;
begin
  if edKaresidenan.EditValue='' then
  begin
    strWhereKaresidenan:='';
  end else begin
    strWhereKaresidenan:=' AND code_karesidenan='+QuotedStr(strKaresidenanID) +' ';

  end;
  with QRekapTagihanKolektor do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from  vdpp where '+
              'date_dpp BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal1.Date))+' and '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date))+strWhereKaresidenan;
    open;
  end;

  if QRekapTagihanKolektor.RecordCount=0 then
  begin
    MessageDlg('Tidak ada data..!!',mtInformation,[mbRetry],0);
  end else
  begin
    ActSearchClick(sender);
    cLocation := ExtractFilePath(Application.ExeName);
    Report.LoadFromFile(cLocation +'report/rpt_rekaptagihankolektor'+ '.fr3');
    Report.ShowReport();
  end;
end;

procedure TFRekapTagihanKolektor.dxBarLargeButton2Click(Sender: TObject);
begin
  edWilayah.EditValue:='';
  edArea.EditValue:='';
  edKaresidenan.EditValue:='';
  strWilayahID:='';
  strAreaID:='';
  strKaresidenanID:='';
  dtTanggal1.Date:=NOW();
  dtTanggal2.Date:=NOW();
  QRekapTagihanKolektor.Close;
end;

procedure TFRekapTagihanKolektor.edAreaChange(Sender: TObject);
begin
//  strKaresidenanID:='';
//  edKaresidenan.EditValue:=''
end;

procedure TFRekapTagihanKolektor.edAreaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
//  FMasterData.Caption:='Master Data Area';
//  FMasterData.vcall:='rekaptagihankolektor_area';
//  FMasterData.update_grid('code','name','description','t_region_areas','WHERE	deleted_at IS NULL and code_region='+QuotedStr(strWilayahID)+'');
//  FMasterData.ShowModal;
end;

procedure TFRekapTagihanKolektor.edKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='rekaptagihankolektor_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFRekapTagihanKolektor.edWilayahChange(Sender: TObject);
begin
  strAreaID:='';
  edArea.EditValue:='';
  strKaresidenanID:='';
  edKaresidenan.EditValue:='';
end;

procedure TFRekapTagihanKolektor.edWilayahPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
//  FMasterData.Caption:='Master Data Wilayah';
//  FMasterData.vcall:='rekaptagihankolektor_wilayah';
//  FMasterData.update_grid('code','name','description','t_region','WHERE	deleted_at IS NULL');
//  FMasterData.ShowModal;
end;

procedure TFRekapTagihanKolektor.FormCreate(Sender: TObject);
begin
  rekaptagihankolektor:=Self;
end;

procedure TFRekapTagihanKolektor.FormDestroy(Sender: TObject);
begin
  rekaptagihankolektor:=nil;
end;

procedure TFRekapTagihanKolektor.FormShow(Sender: TObject);
begin
  QRekapTagihanKolektor.Close;
  dxBarLargeButton2Click(sender);
end;

procedure TFRekapTagihanKolektor.ReportGetValue(const VarName: string;
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

  if CompareText(VarName, 'sbu') = 0 then
  Value := UpperCase('PT. '+FHomeLogin.vKodePRSH);

  if edKaresidenan.EditValue='' then
  begin
    strKaresidenan:='SEMUA TP'
  end else begin
    strKaresidenan:=UpperCase('TP '+edKaresidenan.EditValue);
  end;

  if CompareText(VarName, 'karesidenan') = 0 then
  Value := strKaresidenan;
  if CompareText(VarName, 'periode') = 0 then
  Value := UpperCase('PERIODE '+tgl1+' '+bulan1+' '+tahun1+' s/d '+tgl2+' '+bulan2+' '+tahun2);
end;

initialization
  RegisterClass(TFRekapTagihanKolektor);

end.
