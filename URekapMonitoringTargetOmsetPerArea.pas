unit URekapMonitoringTargetOmsetPerArea;

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
  cxCalendar, cxRadioGroup, cxCheckGroup, frxExportXLSX, frxExportXLS, frxClass,
  frxExportBaseDialog, frxExportPDF, Data.DB, MemDS, DBAccess, Uni, frxDBSet,
  dxBarExtItems, cxBarEditItem, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon, Vcl.StdCtrls, RzLabel;

type
  TFRekapMonitoringTargetOmsetPerArea = class(TForm)
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
    cxBarEditItem11: TcxBarEditItem;
    cbKaresidenan: TcxBarEditItem;
    cbKelompok: TcxBarEditItem;
    cbBulan1: TdxBarCombo;
    edTahun1: TdxBarSpinEdit;
    cbBulan2: TdxBarCombo;
    edTahun2: TdxBarSpinEdit;
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
    cbJenisUsaha: TdxBarCombo;
    dxBarLargeButton5: TdxBarLargeButton;
    cbPaperSize: TdxBarCombo;
    dxBarLargeButton6: TdxBarLargeButton;
    cbVolume: TdxBarCombo;
    cbSBU: TdxBarCombo;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    edJenisUsaha: TcxBarEditItem;
    DsMonitoringTargetOmset: TDataSource;
    Report: TfrxReport;
    frxDBDatasetRekapMonitoringTargetOmsetPerArea: TfrxDBDataset;
    QMonitoringTargetOmset: TUniQuery;
    Qreport: TUniQuery;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbKelompokPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKelompokID:String;
  end;

  function FRekapMonitoringTargetOmsetPerArea: TFRekapMonitoringTargetOmsetPerArea;

//var
//  RekapMonitoringTargetOmsetPerArea: TRekapMonitoringTargetOmsetPerArea;

implementation

{$R *.dfm}

uses UDataModule, UMy_Function, UMasterData;
var
  rekapmonitoringtargetomsetperarea : TFRekapMonitoringTargetOmsetPerArea;

function FRekapMonitoringTargetOmsetPerArea: TFRekapMonitoringTargetOmsetPerArea;
begin
  if rekapmonitoringtargetomsetperarea <> nil then
    FRekapMonitoringTargetOmsetPerArea:= rekapmonitoringtargetomsetperarea
  else
    Application.CreateForm(TFRekapMonitoringTargetOmsetPerArea, Result);
end;

procedure TFRekapMonitoringTargetOmsetPerArea.cbKelompokPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Kelompok Barang';
  FMasterData.vcall:='rekapmonitoringtargetperareakelompokbarang';
  FMasterData.update_grid('a.group_id','a.group_name',QuotedStr(''),'t_item_group a left join t_item_category b on b.category_id=a.category_id','WHERE	a.deleted_at IS NULL AND b.type_id=1 ');
  FMasterData.ShowModal;
end;

procedure TFRekapMonitoringTargetOmsetPerArea.dxBarLargeButton5Click(
  Sender: TObject);
var strVolume: String;
begin


  if Uppercase(cbVolume.Text)='QTY' then
  begin
    strVolume:=''
  end else begin
    strVolume:='target_value_gt target_qty_gt, realisasi_value_gt realisasi_qty_gt,target_value_mt target_qty_mt,'+
               'realisasi_value_mt realisasi_qty_mt,selisih_value_gt selisih_qty_gt,'+
               'selisih_value_mt selisih_qty_mt,persen_value_gt persen_qty_gt,persen_value_mt persen_qty_mt, ';
  end;
  with Qreport do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT '+strVolume+' * FROM rekap_monitoring_target_omset_perarea('+edTahun1.Text+','+IntToStr(cbBulan1.ItemIndex+1)+',null)';
    try
      Open;
    except
      Connection.Close;
      Connection.Open;
      Open;
    end;
  end;
  if Qreport.RecordCount=0 then
  begin
    MessageDlg('Tidak ada data ..!!',mtInformation,[mbRetry],0);
  end;
//    else begin
    cLocation := ExtractFilePath(Application.ExeName);
    Report.LoadFromFile(cLocation +'report/rpt_rekap_monitoring_target_omset_perarea'+ '.fr3');
    if cbKaresidenan.EditValue='' then
    SetMemo(Report,'judul','REKAP TARGET & PENJUALAN PER AREA');
    SetMemo(Report,'bulan',UpperCase('BULAN '+cbBulan1.Text+' TAHUN '+edTahun1.Text));
//      SetMemo(Report,'kelompok','KELOMPOK BARANG : '+cbKelompok.EditValue);
    Report.ShowReport();
//    end;

end;

procedure TFRekapMonitoringTargetOmsetPerArea.dxBarLargeButton6Click(
  Sender: TObject);
var strVolume: String;
begin
  if Uppercase(cbVolume.Text)='QTY' then
  begin
    strVolume:=''
  end else begin
    strVolume:='target_value_gt target_qty_gt, realisasi_value_gt realisasi_qty_gt,target_value_mt target_qty_mt,'+
               'realisasi_value_mt realisasi_qty_mt,selisih_value_gt selisih_qty_gt,'+
               'selisih_value_mt selisih_qty_mt,persen_value_gt persen_qty_gt,persen_value_mt persen_qty_mt, ';
  end;
  with QMonitoringTargetOmset do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT '+strVolume+' * FROM rekap_monitoring_target_omset_perarea('+edTahun1.Text+','+IntToStr(cbBulan1.ItemIndex+1)+',null)';
    try
      Open;
    except
      Connection.Close;
      Connection.Open;
      Open;
    end;
  end;
end;

procedure TFRekapMonitoringTargetOmsetPerArea.dxBarLargeButton7Click(
  Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun1.Text:=(year);
  cbBulan1.ItemIndex:=StrToInt(month)-1;
  cbKelompok.EditValue:='';
  cbVolume.ItemIndex:=0;
end;

procedure TFRekapMonitoringTargetOmsetPerArea.FormCreate(Sender: TObject);
begin
  rekapmonitoringtargetomsetperarea:=Self;
end;

procedure TFRekapMonitoringTargetOmsetPerArea.FormDestroy(Sender: TObject);
begin
  rekapmonitoringtargetomsetperarea:=nil;
end;

procedure TFRekapMonitoringTargetOmsetPerArea.FormShow(Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun1.Text:=(year);
  cbBulan1.ItemIndex:=StrToInt(month)-1;
  cbKelompok.EditValue:='';
  cbVolume.ItemIndex:=0;

  QMonitoringTargetOmset.Close;
  Qreport.Close;

  FillSBUBarCombo(cbSBU);
end;

initialization
  RegisterClass(TFRekapMonitoringTargetOmsetPerArea);

end.
