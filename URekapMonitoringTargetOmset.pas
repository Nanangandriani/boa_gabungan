unit URekapMonitoringTargetOmset;

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
  TFRekapMonitoringTargetOmset = class(TForm)
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
    frxDBDatasetRekapMonitoringTargetOmset: TfrxDBDataset;
    QMonitoringTargetOmset: TUniQuery;
    Qreport: TUniQuery;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbKelompokPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure edJenisUsahaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure cbKaresidenanChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKaresidenanID,strKelompokID,strKodeJenisUsaha:String;
  end;

  function FRekapMonitoringTargetOmset: TFRekapMonitoringTargetOmset;

//var
//  FRekapMonitoringTargetOmset: TFRekapMonitoringTargetOmset;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UMy_Function;
var
  rekapmonitoringtargetomset : TFRekapMonitoringTargetOmset;

function FRekapMonitoringTargetOmset: TFRekapMonitoringTargetOmset;
begin
  if rekapmonitoringtargetomset <> nil then
    FRekapMonitoringTargetOmset:= rekapmonitoringtargetomset
  else
    Application.CreateForm(TFRekapMonitoringTargetOmset, Result);
end;


procedure TFRekapMonitoringTargetOmset.cbKaresidenanChange(Sender: TObject);
begin
  if cbKaresidenan.EditValue='' then
  begin
    strKaresidenanID:='';
  end;
end;

procedure TFRekapMonitoringTargetOmset.cbKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='rekapmonitoringtargetkares';
  FMasterData.update_grid('code','name','description','t_region_tp','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFRekapMonitoringTargetOmset.cbKelompokPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Kelompok Barang';
  FMasterData.vcall:='rekapmonitoringtargetkelompokbarang';
  FMasterData.update_grid('a.group_id','a.group_name',QuotedStr(''),'t_item_group a left join t_item_category b on b.category_id=a.category_id','WHERE	a.deleted_at IS NULL AND b.type_id=1 ');
  FMasterData.ShowModal;
end;

procedure TFRekapMonitoringTargetOmset.dxBarLargeButton5Click(Sender: TObject);
var strVolume,strKaresidenan,strKabupaten,strKecamatan,strJenisUsaha: String;
begin
  if cbKelompok.EditValue='' then
  begin
    MessageDlg('Kelompok barang wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    QMonitoringTargetOmset.Close;

    if cbKaresidenan.EditValue<>'' then
    strKaresidenan:=' AND code_tp='+QuotedStr(strKaresidenanID)
    else strKaresidenan:='';

    if edJenisUsaha.EditValue<>'' then
    strJenisUsaha:='WHERE code_type_business='+QuotedStr(strKodeJenisUsaha)+' '
    else strJenisUsaha:='';

    if Uppercase(cbVolume.Text)='QTY' then
    begin
      strVolume:=''
    end else begin
      strVolume:='SUM(target_value) target_qty, SUM(realisasi_value) realisasi_qty,CASE WHEN SUM(target_value) <> 0::numeric THEN (SUM(realisasi_value) / SUM(target_value)) * 100::numeric '+
                'ELSE 0::numeric END AS persen_qty, (SUM(target_value) - SUM(realisasi_value)) selisih_qty, ';
    end;
    with Qreport do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT '+strVolume+'code_tp,tp,code_kabupaten,kabupaten,year,month,group_id,'+
                'group_name,SUM(target_qty) target_qty,SUM(target_value) target_value,'+
                'SUM(realisasi_qty) realisasi_qty,SUM(realisasi_value) realisasi_value, '+
                '(SUM(target_qty) - SUM(realisasi_qty)) AS selisih_qty, '+
                '(SUM(target_value) - SUM(realisasi_value)) AS selisih_value,'+
                'CASE WHEN SUM(target_value) <> 0::numeric THEN (SUM(realisasi_value) / SUM(target_value)) * 100::numeric '+
                'ELSE 0::numeric END AS persen_value,  '+
                'CASE WHEN SUM(target_qty) <> 0::numeric THEN (SUM(realisasi_qty) / SUM(target_qty ))* 100::numeric '+
                'ELSE 0::numeric END AS persen_qty '+
                'FROM get_monitoring_target_omset'+
              '('+edTahun1.Text+','+IntToStr(cbBulan1.ItemIndex+1)+','+
              ''+QuotedStr(cbKelompok.EditValue)+','+QuotedStr(strKaresidenanID)
              +','''','''') '+strJenisUsaha +' '+
              'GROUP BY code_tp,tp,code_kabupaten,kabupaten,year,month,group_id,group_name ORDER BY tp ASC,kabupaten ASC;';
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
      Report.LoadFromFile(cLocation +'report/rpt_rekap_monitoring_target_omset'+ '.fr3');
      if cbKaresidenan.EditValue='' then
      SetMemo(Report,'judul','REKAP TARGET & PENJUALAN SEMUA TP')
      else SetMemo(Report,'judul','REKAP TARGET & PENJUALAN TP '+cbKaresidenan.EditValue);
      SetMemo(Report,'bulan',UpperCase('BULAN '+cbBulan1.Text+' TAHUN '+edTahun1.Text));
      SetMemo(Report,'kelompok','KELOMPOK BARANG : '+cbKelompok.EditValue);
      Report.ShowReport();
//    end;
  end;
end;

procedure TFRekapMonitoringTargetOmset.dxBarLargeButton6Click(Sender: TObject);
var strVolume,strKaresidenan,strKabupaten,strKecamatan,strJenisUsaha: String;
begin
  if cbKelompok.EditValue='' then
  begin
    MessageDlg('Kelompok barang wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    QMonitoringTargetOmset.Close;

    if cbKaresidenan.EditValue<>'' then
    strKaresidenan:=' AND code_karesidenan='+QuotedStr(strKaresidenanID)
    else strKaresidenan:='';

    if edJenisUsaha.EditValue<>'' then
    strJenisUsaha:='WHERE code_type_business='+QuotedStr(strKodeJenisUsaha)+' '
    else strJenisUsaha:='';



    if Uppercase(cbVolume.Text)='QTY' then
    begin
      DBGrid.Columns[2].FieldName:='target_qty';
      DBGrid.Columns[3].FieldName:='realisasi_qty';
      DBGrid.Columns[4].FieldName:='persen_qty';
      DBGrid.Columns[5].FieldName:='selisih_qty';
    end else begin
      DBGrid.Columns[2].FieldName:='target_value';
      DBGrid.Columns[3].FieldName:='realisasi_value';
      DBGrid.Columns[4].FieldName:='persen_value';
      DBGrid.Columns[5].FieldName:='selisih_value';
    end;
    with QMonitoringTargetOmset do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT code_tp,tp,code_kabupaten,kabupaten,year,month,group_id,'+
                'group_name,SUM(target_qty) target_qty,SUM(target_value) target_value,'+
                'SUM(realisasi_qty) realisasi_qty,SUM(realisasi_value) realisasi_value, '+
                '(SUM(target_qty) - SUM(realisasi_qty)) AS selisih_qty, '+
                '(SUM(target_value) - SUM(realisasi_value)) AS selisih_value,'+
                'CASE WHEN SUM(target_value) <> 0::numeric THEN (SUM(realisasi_value) / SUM(target_value)) * 100::numeric '+
                'ELSE 0::numeric END AS persen_value,  '+
                'CASE WHEN SUM(target_qty) <> 0::numeric THEN (SUM(realisasi_qty) / SUM(target_qty ))* 100::numeric '+
                'ELSE 0::numeric END AS persen_qty '+
                'FROM get_monitoring_target_omset'+
              '('+edTahun1.Text+','+IntToStr(cbBulan1.ItemIndex+1)+','+
              ''+QuotedStr(cbKelompok.EditValue)+','+QuotedStr(strKaresidenanID)
              +','''','''') '+strJenisUsaha +' '+
              'GROUP BY code_tp,tp,code_kabupaten,kabupaten,year,month,group_id,group_name ORDER BY tp ASC,kabupaten ASC;';
      try
        Open;
      except
        Connection.Close;
        Connection.Open;
        Open;
      end;
    end;
  end;
end;

procedure TFRekapMonitoringTargetOmset.dxBarLargeButton7Click(Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun1.Text:=(year);
  cbBulan1.ItemIndex:=StrToInt(month)-1;
  cbKaresidenan.EditValue:='';
  cbKelompok.EditValue:='';
  cbVolume.ItemIndex:=0;
  strKodeJenisUsaha:='';
  edJenisUsaha.EditValue:='';
end;

procedure TFRekapMonitoringTargetOmset.edJenisUsahaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Kecamatan';
  FMasterData.vcall:='rekapmonitoringtargetjenisusaha';
  FMasterData.update_grid('code','name','description','t_customer_type_business','WHERE	deleted_at IS NULL ORDER BY code ASC ');
  FMasterData.ShowModal;
end;

procedure TFRekapMonitoringTargetOmset.FormCreate(Sender: TObject);
begin
  rekapmonitoringtargetomset:=Self;
end;

procedure TFRekapMonitoringTargetOmset.FormDestroy(Sender: TObject);
begin
  rekapmonitoringtargetomset:=nil;
end;

procedure TFRekapMonitoringTargetOmset.FormShow(Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun1.Text:=(year);
  cbBulan1.ItemIndex:=StrToInt(month)-1;
  cbKaresidenan.EditValue:='';
  cbKelompok.EditValue:='';
  cbVolume.ItemIndex:=0;
  edJenisUsaha.EditValue:='';
  strKodeJenisUsaha:='';
  QMonitoringTargetOmset.Close;

  FillSBUBarCombo(cbSBU);
end;

initialization
  RegisterClass(TFRekapMonitoringTargetOmset);

end.
