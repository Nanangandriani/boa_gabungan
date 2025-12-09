unit ULaporanHarianSisaNotaPerKabupaten;

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
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, Vcl.StdCtrls, RzLabel,
  frxExportBaseDialog, frxExportPDF;

type
  TFLaporanHarianSisaNotaPerKabupaten = class(TForm)
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
    DsLaporanHarianSisaNotaPerKabupaten: TDataSource;
    Report: TfrxReport;
    frxDBDatasetLapHarianSisaNotaPerKabupaten: TfrxDBDataset;
    QLaporanHarianSisaNotaPerKabupaten: TUniQuery;
    Qreport: TUniQuery;
    cbKabupaten: TcxBarEditItem;
    cbSBU: TdxBarCombo;
    dxBarLargeButton7: TdxBarLargeButton;
    frxPDFExport1: TfrxPDFExport;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbKaresidenanChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKaresidenanID: String;
  end;

  function FLaporanHarianSisaNotaPerKabupaten: TFLaporanHarianSisaNotaPerKabupaten;

//var
//  FLaporanHarianSisaNotaPerKabupaten: TFLaporanHarianSisaNotaPerKabupaten;

implementation

{$R *.dfm}

uses UHomeLogin, UMasterData, UMy_Function;

var
  laporanhariansisanotaperkabupaten : TFLaporanHarianSisaNotaPerKabupaten;

function FLaporanHarianSisaNotaPerKabupaten: TFLaporanHarianSisaNotaPerKabupaten;
begin
  if laporanhariansisanotaperkabupaten <> nil then
    FLaporanHarianSisaNotaPerKabupaten:= laporanhariansisanotaperkabupaten
  else
    Application.CreateForm(TFLaporanHarianSisaNotaPerKabupaten, Result);
end;

procedure TFLaporanHarianSisaNotaPerKabupaten.cbKabupatenPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if cbKaresidenan.EditValue='' then
  begin
    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    FMasterData.Caption:='Master Data Kabupaten';
    FMasterData.vcall:='laporanhariansisanotaperkabkab';
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(strKaresidenanID)+'');
    FMasterData.ShowModal;
  end;
end;

procedure TFLaporanHarianSisaNotaPerKabupaten.cbKaresidenanChange(
  Sender: TObject);
begin
  if cbKaresidenan.EditValue='' then cbKabupaten.EditValue:='';
end;

procedure TFLaporanHarianSisaNotaPerKabupaten.cbKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='laporanhariansisanotaperkabkares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal
end;

procedure TFLaporanHarianSisaNotaPerKabupaten.dxBarLargeButton5Click(
  Sender: TObject);
var strReportName: String;
begin
  if cbKaresidenan.EditValue='' then
  begin
    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else if cbKabupaten.EditValue='' then
  begin
    MessageDlg('Kabupaten wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    with Qreport do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM get_lhsn_sum('+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal1.Date))+','+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date))+','+
                QuotedStr(cbKaresidenan.EditValue)+','+QuotedStr(cbKabupaten.EditValue)+')';
      Open;
    end;
    if Qreport.RecordCount>0 then
    begin
      strReportName:='rpt_laporanhariansisanotaperkabupaten';
      cLocation := ExtractFilePath(Application.ExeName);
      Report.LoadFromFile(cLocation +'report/'+strReportName+''+ '.fr3');
      Report.ShowReport();
    end else begin
      MessageDlg('Tidak ada data..!!',mtInformation,[mbRetry],0);
    end;
  end;
end;

procedure TFLaporanHarianSisaNotaPerKabupaten.dxBarLargeButton6Click(
  Sender: TObject);
begin
  if cbKaresidenan.EditValue='' then
  begin
    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else if cbKabupaten.EditValue='' then
  begin
    MessageDlg('Kabupaten wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    with QLaporanHarianSisaNotaPerKabupaten do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM get_lhsn_sum('+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal1.Date))+','+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date))+','+
                QuotedStr(cbKaresidenan.EditValue)+','+QuotedStr(cbKabupaten.EditValue)+')';
      Open;
    end;
  end;
end;

procedure TFLaporanHarianSisaNotaPerKabupaten.dxBarLargeButton7Click(
  Sender: TObject);
begin
  cbKaresidenan.EditValue:='';
  cbKabupaten.EditValue:='';
  strKaresidenanID:='';
  dtTanggal1.Date:=NOW;
  dtTanggal2.Date:=NOW;
end;

procedure TFLaporanHarianSisaNotaPerKabupaten.FormCreate(Sender: TObject);
begin
  laporanhariansisanotaperkabupaten:= Self;
end;

procedure TFLaporanHarianSisaNotaPerKabupaten.FormDestroy(Sender: TObject);
begin
  laporanhariansisanotaperkabupaten:= nil;
end;

procedure TFLaporanHarianSisaNotaPerKabupaten.FormShow(Sender: TObject);
begin
  cbKaresidenan.EditValue:='';
  cbKabupaten.EditValue:='';
  strKaresidenanID:='';
  dtTanggal1.Date:=NOW;
  dtTanggal2.Date:=NOW;
  FillSBUBarCombo(cbSBU);
end;

procedure TFLaporanHarianSisaNotaPerKabupaten.ReportGetValue(
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
  if CompareText(VarName, 'KABUPATEN') = 0 then
  Value := cbKabupaten.EditValue;
  if CompareText(VarName, 'PERIODE') = 0 then
  Value := strPeriode ;
end;

initialization
  RegisterClass(TFLaporanHarianSisaNotaPerKabupaten);

end.
