unit ULaporanHarianSisaNotaPiutangPerOutlet;

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
  cxCalendar, cxRadioGroup, cxCheckGroup, Data.DB, MemDS, DBAccess, Uni,
  frxClass, frxDBSet, dxBarExtItems, cxBarEditItem, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, Vcl.StdCtrls, RzLabel;

type
  TFLaporanHarianSisaNotaPiutangPerOutlet = class(TForm)
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
    dxBarManager1Bar3: TdxBar;
    dxBarManager1Bar2: TdxBar;
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
    dxBarCombo1: TdxBarCombo;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    ActSearch: TdxBarLargeButton;
    cxBarEditItem3: TcxBarEditItem;
    dxBarCombo2: TdxBarCombo;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    cxBarEditItem6: TcxBarEditItem;
    cxBarEditItem7: TcxBarEditItem;
    cxBarEditItem9: TcxBarEditItem;
    cxBarEditItem10: TcxBarEditItem;
    edKaresidenan: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    cxBarEditItem8: TcxBarEditItem;
    dxBarLargeButton2: TdxBarLargeButton;
    cxBarEditItem11: TcxBarEditItem;
    cbKaresidenan: TcxBarEditItem;
    cxBarEditItem16: TcxBarEditItem;
    cxBarEditItem17: TcxBarEditItem;
    cxBarEditItem18: TcxBarEditItem;
    dxBarLargeButton3: TdxBarLargeButton;
    cxBarEditItem19: TcxBarEditItem;
    cxBarEditItem20: TcxBarEditItem;
    cxBarEditItem22: TcxBarEditItem;
    cxBarEditItem23: TcxBarEditItem;
    cxBarEditItem24: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dtTanggal1: TdxBarDateCombo;
    dxBarDateCombo1: TdxBarDateCombo;
    dtTanggal2: TdxBarDateCombo;
    cbKabupaten: TcxBarEditItem;
    DsLaporanHarianSisaNotaPiutangPerOutlet: TDataSource;
    Report: TfrxReport;
    frxDBDatasetLaporanHarianSisaNotaPiutangPerOutlet: TfrxDBDataset;
    QLaporanHarianSisaNotaPiutangPerOutlet: TUniQuery;
    Qreport: TUniQuery;
    cbSBU: TdxBarCombo;
    dxBarLargeButton7: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
    procedure dxBarLargeButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function FLaporanHarianSisaNotaPiutangPerOutlet: TFLaporanHarianSisaNotaPiutangPerOutlet;

//var
//  FLaporanHarianSisaNotaPiutangPerOutlet: TFLaporanHarianSisaNotaPiutangPerOutlet;

implementation

{$R *.dfm}

uses UMasterData, UMy_Function, UDataModule, UHomeLogin;

var
  laporanhariansisanotapiutangperoutlet : TFLaporanHarianSisaNotaPiutangPerOutlet;

function FLaporanHarianSisaNotaPiutangPerOutlet: TFLaporanHarianSisaNotaPiutangPerOutlet;
begin
  if laporanhariansisanotapiutangperoutlet <> nil then
    FLaporanHarianSisaNotaPiutangPerOutlet:= laporanhariansisanotapiutangperoutlet
  else
    Application.CreateForm(TFLaporanHarianSisaNotaPiutangPerOutlet, Result);
end;


procedure TFLaporanHarianSisaNotaPiutangPerOutlet.cbKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='laporanhariansisanotapiutangperoutletkares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal
end;

procedure TFLaporanHarianSisaNotaPiutangPerOutlet.dxBarLargeButton5Click(
  Sender: TObject);
var strReportName: String;
begin
  if cbKaresidenan.EditValue='' then
  begin
    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    with Qreport do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM get_lhsn_sum('+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal1.Date))+','+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date))+','+QuotedStr(cbKaresidenan.EditValue)+',NULL,TRUE,FALSE)';
      Open;
    end;
    if Qreport.RecordCount>0 then
    begin
      strReportName:='rpt_laporanhariansisanotapiutangperoutlet';
      cLocation := ExtractFilePath(Application.ExeName);
      Report.LoadFromFile(cLocation +'report/'+strReportName+''+ '.fr3');
      Report.ShowReport();
    end else begin
      MessageDlg('Tidak ada data..!!',mtInformation,[mbRetry],0);
    end;
  end;
end;

procedure TFLaporanHarianSisaNotaPiutangPerOutlet.dxBarLargeButton6Click(
  Sender: TObject);
begin
  if cbKaresidenan.EditValue='' then
  begin
    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    with QLaporanHarianSisaNotaPiutangPerOutlet do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM get_lhsn_sum('+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal1.Date))+','+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date))+','+QuotedStr(cbKaresidenan.EditValue)+',NULL,TRUE,FALSE)';
      Open;
    end;
  end;
end;

procedure TFLaporanHarianSisaNotaPiutangPerOutlet.dxBarLargeButton7Click(
  Sender: TObject);
begin
  cbKaresidenan.EditValue:='';
  dtTanggal1.Date:=NOW;
  dtTanggal2.Date:=NOW;
//  Qreport.Close;
//  QLaporanHarianSisaNotaPiutangPerOutlet.Close;
end;

procedure TFLaporanHarianSisaNotaPiutangPerOutlet.FormCreate(Sender: TObject);
begin
  laporanhariansisanotapiutangperoutlet:= Self;
end;

procedure TFLaporanHarianSisaNotaPiutangPerOutlet.FormDestroy(Sender: TObject);
begin
  laporanhariansisanotapiutangperoutlet:= nil;
end;

procedure TFLaporanHarianSisaNotaPiutangPerOutlet.FormShow(Sender: TObject);
begin
  cbKaresidenan.EditValue:='';
  dtTanggal1.Date:=NOW;
  dtTanggal2.Date:=NOW;
  Qreport.Close;
  QLaporanHarianSisaNotaPiutangPerOutlet.Close;
  FillSBUBarCombo(cbSBU);
end;

procedure TFLaporanHarianSisaNotaPiutangPerOutlet.ReportGetValue(
  const VarName: string; var Value: Variant);
var strPeriode: String;
begin

  if dtTanggal1.Date<>dtTanggal2.Date then
  begin
    strPeriode:=FormatDateTime('dd/mm/yyyy',dtTanggal1.Date)+' S/D '+FormatDateTime('dd/mm/yyyy',dtTanggal2.Date) ;
  end else begin
    strPeriode:=FormatDateTime('dd/mm/yyyy',dtTanggal1.Date) ;
  end;

  if CompareText(VarName, 'SBU') = 0 then
  Value := 'PT. '+FHomeLogin.vKodePRSH;
  if CompareText(VarName, 'TP') = 0 then
  Value := cbKaresidenan.EditValue;
  if CompareText(VarName, 'PERIODE') = 0 then
  Value := strPeriode
end;

initialization
  RegisterClass(TFLaporanHarianSisaNotaPiutangPerOutlet);

end.
