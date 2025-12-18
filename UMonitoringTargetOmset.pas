unit UMonitoringTargetOmset;

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
  cxCalendar, cxRadioGroup, cxCheckGroup, frxCross, Data.DB, MemDS, DBAccess,
  Uni, frxClass, frxDBSet, dxBarExtItems, cxBarEditItem, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, Vcl.StdCtrls, RzLabel,
  frxExportBaseDialog, frxExportPDF, frxExportXLSX, frxExportXLS, ShellAPI;

type
  TFMonitoringTargetOmset = class(TForm)
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
    cbKabupaten: TcxBarEditItem;
    cbKecamatan: TcxBarEditItem;
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
    DsMonitoringTargetOmset: TDataSource;
    Report: TfrxReport;
    frxDBDatasetRekapMonitoringTargetOmset: TfrxDBDataset;
    QMonitoringTargetOmset: TUniQuery;
    Qreport: TUniQuery;
    cbVolume: TdxBarCombo;
    cbSBU: TdxBarCombo;
    dxBarLargeButton7: TdxBarLargeButton;
    frxPDFExport1: TfrxPDFExport;
    dxBarLargeButton8: TdxBarLargeButton;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbKaresidenanChange(Sender: TObject);
    procedure cbKabupatenChange(Sender: TObject);
    procedure cbKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbKecamatanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbKelompokPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKaresidenanID,strKabupatenID,strKecamatanID,strKelompokID: String;
    procedure ExportToExcel;
  end;

  function FMonitoringTargetOmset: TFMonitoringTargetOmset;
//var
//  FRekapMonitoringTargetOmset: TFRekapMonitoringTargetOmset;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UMy_Function, UHomeLogin;
var
  monitoringtargetomset : TFMonitoringTargetOmset;

function FMonitoringTargetOmset: TFMonitoringTargetOmset;
begin
  if monitoringtargetomset <> nil then
    FMonitoringTargetOmset:= monitoringtargetomset
  else
    Application.CreateForm(TFMonitoringTargetOmset, Result);
end;

procedure TFMonitoringTargetOmset.cbKabupatenChange(Sender: TObject);
begin
  if cbKabupaten.EditValue='' then
  begin
    cbKecamatan.EditValue:='';
    strKecamatanID:='';
  end;
end;

procedure TFMonitoringTargetOmset.cbKabupatenPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if cbKaresidenan.EditValue='' then
  begin
    MessageDlg('Karesidenan wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    FMasterData.Caption:='Master Data Kabupaten';
    FMasterData.vcall:='rekapmonitoringtargetkab';
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(strKaresidenanID)+'');
    FMasterData.ShowModal;
  end;
end;

procedure TFMonitoringTargetOmset.cbKaresidenanChange(Sender: TObject);
begin
  if cbKaresidenan.EditValue='' then
  begin
    cbKabupaten.EditValue:='';
    strKabupatenID:='';
    cbKecamatan.EditValue:='';
    strKecamatanID:='';
    strKaresidenanID:='';
  end;
end;

procedure TFMonitoringTargetOmset.cbKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='rekapmonitoringtargetkares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFMonitoringTargetOmset.cbKecamatanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if cbKabupaten.EditValue='' then
  begin
    MessageDlg('Kabupaten wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    FMasterData.Caption:='Master Data Kecamatan';
    FMasterData.vcall:='rekapmonitoringtargetkec';
    FMasterData.update_grid('code','name','description','t_region_subdistrict','WHERE	deleted_at IS NULL and code_regency='+QuotedStr(strKabupatenID)+' ');
    FMasterData.ShowModal;
  end;
end;

procedure TFMonitoringTargetOmset.cbKelompokPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Kelompok Barang';
  FMasterData.vcall:='rekapmonitoringtargetkelompokbarang';
  FMasterData.update_grid('group_id','group_name',QuotedStr(''),'t_item_group','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFMonitoringTargetOmset.dxBarLargeButton5Click(Sender: TObject);
var strVolume,strKaresidenan,strKabupaten,strKecamatan: String;
begin
  if cbKelompok.EditValue='' then
  begin
    MessageDlg('Kelompok barang wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    QMonitoringTargetOmset.Close;

    if cbKaresidenan.EditValue<>'' then
    strKaresidenan:=' AND karesidenan='+QuotedStr(cbKaresidenan.EditValue)
    else strKaresidenan:='';
    if cbKabupaten.EditValue<>'' then
    strKabupaten:=' AND kabupaten='+QuotedStr(cbKabupaten.EditValue)
    else strKabupaten:='';
    if cbKecamatan.EditValue<>'' then
    strKecamatan:=' AND kecamatan='+QuotedStr(cbKecamatan.EditValue)
    else strKecamatan:='';

    if Uppercase(cbVolume.Text)='QTY' then
    begin
      strVolume:=''
    end else begin
      strVolume:='target_value target_qty, realisasi_value realisasi_qty,persen_value persen_qty, selisih_value selisih_qty, ';
    end;
    with Qreport do
    begin
      close;
      sql.Clear;
//      sql.Text:='SELECT '+strVolume+' * FROM vmonitoring_target_omset '+
//                'WHERE year='+edTahun1.Text+' AND month='+IntToStr(cbBulan1.ItemIndex+1)+' AND '+
//                'group_name='+QuotedStr(cbKelompok.EditValue)+strKaresidenan
//                +strKabupaten+strKecamatan;
      sql.Text:='SELECT '+strVolume+'* FROM get_monitoring_target_omset'+
                '('+edTahun1.Text+','+IntToStr(cbBulan1.ItemIndex+1)+','+
                ''+QuotedStr(cbKelompok.EditValue)+','+QuotedStr(cbKaresidenan.EditValue)
                +','+QuotedStr(cbKabupaten.EditValue)+','+QuotedStr(cbKecamatan.EditValue)+')';
      open;
    end;
    if Qreport.RecordCount=0 then
    begin
      MessageDlg('Tidak ada data ..!!',mtInformation,[mbRetry],0);
    end else begin
      cLocation := ExtractFilePath(Application.ExeName);
      Report.LoadFromFile(cLocation +'report/rpt_monitoring_target_omset'+ '.fr3');
      Report.ShowReport();
    end;
  end;
end;

procedure TFMonitoringTargetOmset.dxBarLargeButton6Click(Sender: TObject);
var strVolume,strKaresidenan,strKabupaten,strKecamatan: String;
begin
  if cbKelompok.EditValue='' then
  begin
    MessageDlg('Kelompok barang wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    QMonitoringTargetOmset.Close;

    if cbKaresidenan.EditValue<>'' then
    strKaresidenan:=' AND karesidenan='+QuotedStr(cbKaresidenan.EditValue)
    else strKaresidenan:='';
    if cbKabupaten.EditValue<>'' then
    strKabupaten:=' AND kabupaten='+QuotedStr(cbKabupaten.EditValue)
    else strKabupaten:='';
    if cbKecamatan.EditValue<>'' then
    strKecamatan:=' AND kecamatan='+QuotedStr(cbKecamatan.EditValue)
    else strKecamatan:='';

    if Uppercase(cbVolume.Text)='QTY' then
    begin
      DBGrid.Columns[4].FieldName:='target_qty';
      DBGrid.Columns[5].FieldName:='realisasi_qty';
      DBGrid.Columns[6].FieldName:='persen_qty';
      DBGrid.Columns[7].FieldName:='selisih_qty';
    end else begin
      DBGrid.Columns[4].FieldName:='target_value';
      DBGrid.Columns[5].FieldName:='realisasi_value';
      DBGrid.Columns[6].FieldName:='persen_value';
      DBGrid.Columns[7].FieldName:='selisih_value';
    end;
    with QMonitoringTargetOmset do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM get_monitoring_target_omset'+
              '('+edTahun1.Text+','+IntToStr(cbBulan1.ItemIndex+1)+','+
              ''+QuotedStr(cbKelompok.EditValue)+','+QuotedStr(cbKaresidenan.EditValue)
              +','+QuotedStr(cbKabupaten.EditValue)+','+QuotedStr(cbKecamatan.EditValue)+')';
      open;
    end;
  end;

end;

procedure TFMonitoringTargetOmset.dxBarLargeButton7Click(Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun1.Text:=(year);
  cbBulan1.ItemIndex:=StrToInt(month)-1;
  cbKaresidenan.EditValue:='';
  cbKabupaten.EditValue:='';
  cbKecamatan.EditValue:='';
  cbKelompok.EditValue:='';
  cbVolume.ItemIndex:=0;
//  QMonitoringTargetOmset.Close;
end;

procedure TFMonitoringTargetOmset.dxBarLargeButton8Click(Sender: TObject);
var strVolume,strKaresidenan,strKabupaten,strKecamatan: String;
begin
  if cbKelompok.EditValue='' then
  begin
    MessageDlg('Kelompok barang wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    QMonitoringTargetOmset.Close;

    if cbKaresidenan.EditValue<>'' then
    strKaresidenan:=' AND karesidenan='+QuotedStr(cbKaresidenan.EditValue)
    else strKaresidenan:='';
    if cbKabupaten.EditValue<>'' then
    strKabupaten:=' AND kabupaten='+QuotedStr(cbKabupaten.EditValue)
    else strKabupaten:='';
    if cbKecamatan.EditValue<>'' then
    strKecamatan:=' AND kecamatan='+QuotedStr(cbKecamatan.EditValue)
    else strKecamatan:='';

    if Uppercase(cbVolume.Text)='QTY' then
    begin
      strVolume:=''
    end else begin
      strVolume:='target_value target_qty, realisasi_value realisasi_qty,persen_value persen_qty, selisih_value selisih_qty, ';
    end;
    with Qreport do
    begin
      close;
      sql.Clear;
//      sql.Text:='SELECT '+strVolume+' * FROM vmonitoring_target_omset '+
//                'WHERE year='+edTahun1.Text+' AND month='+IntToStr(cbBulan1.ItemIndex+1)+' AND '+
//                'group_name='+QuotedStr(cbKelompok.EditValue)+strKaresidenan
//                +strKabupaten+strKecamatan;
      sql.Text:='SELECT '+strVolume+'* FROM get_monitoring_target_omset'+
                '('+edTahun1.Text+','+IntToStr(cbBulan1.ItemIndex+1)+','+
                ''+QuotedStr(cbKelompok.EditValue)+','+QuotedStr(cbKaresidenan.EditValue)
                +','+QuotedStr(cbKabupaten.EditValue)+','+QuotedStr(cbKecamatan.EditValue)+')';
      open;
    end;
    if Qreport.RecordCount=0 then
    begin
      MessageDlg('Tidak ada data ..!!',mtInformation,[mbRetry],0);
    end else begin
      cLocation := ExtractFilePath(Application.ExeName);
      Report.LoadFromFile(cLocation +'report/rpt_monitoring_target_omset'+ '.fr3');

      Report.PrepareReport(True);
      ExportToExcel;
    end;
  end;
end;

procedure TFMonitoringTargetOmset.ExportToExcel;
var
  Exporter: TfrxCustomExportFilter;
  SaveDialog: TSaveDialog;
  SavePath, FormName, FileExt: string;
begin
  SaveDialog := TSaveDialog.Create(nil);
  Exporter := nil;
  try
    // Ambil nama form
    FormName := Self.Name;
    if Pos('TF', FormName) = 1 then
      FormName := Copy(FormName, 3, Length(FormName))
    else if Pos('T', FormName) = 1 then
      FormName := Copy(FormName, 2, Length(FormName));
    FormName := StringReplace(FormName, ' ', '', [rfReplaceAll]);
    // Setup Save Dialog
    SaveDialog.Title := 'Simpan Export Excel';
    SaveDialog.Filter := 'Excel 2007+ (*.xlsx)|*.xlsx|Excel 97-2003 (*.xls)|*.xls';
    SaveDialog.FilterIndex := 1;
    SaveDialog.FileName := FormName + '_' + FormatDateTime('yyyymmdd_hhnnss', Now);
    SavePath := ExtractFilePath(Application.ExeName) + 'Export\';
    if not DirectoryExists(SavePath) then
      ForceDirectories(SavePath);
    SaveDialog.InitialDir := SavePath;
    SaveDialog.Options := [ofOverwritePrompt, ofEnableSizing, ofPathMustExist];
    if SaveDialog.Execute then
    begin
      // Ambil extension
      FileExt := LowerCase(ExtractFileExt(SaveDialog.FileName));
      // Debug: tampilkan extension yang terdeteksi
      // ShowMessage('Extension: ' + FileExt); // Uncomment untuk debug
      // Buat exporter sesuai FilterIndex (lebih reliable)
      if SaveDialog.FilterIndex = 1 then
      begin
        // Excel 2007+ (.xlsx)
        Exporter := TfrxXLSXExport.Create(nil);
        TfrxXLSXExport(Exporter).Wysiwyg := True;
        TfrxXLSXExport(Exporter).EmptyLines := True;
        TfrxXLSXExport(Exporter).SuppressPageHeadersFooters := False;
        TfrxXLSXExport(Exporter).ChunkSize := 1;
        // Pastikan extension .xlsx
        if FileExt <> '.xlsx' then
          Exporter.FileName := ChangeFileExt(SaveDialog.FileName, '.xlsx')
        else
          Exporter.FileName := SaveDialog.FileName;
      end
      else if SaveDialog.FilterIndex = 2 then
      begin
        // Excel 97-2003 (.xls)
        Exporter := TfrxXLSExport.Create(nil);
        TfrxXLSExport(Exporter).Wysiwyg := True;
        TfrxXLSExport(Exporter).EmptyLines := True;
        TfrxXLSExport(Exporter).SuppressPageHeadersFooters := False;
        // Pastikan extension .xls
        if FileExt <> '.xls' then
          Exporter.FileName := ChangeFileExt(SaveDialog.FileName, '.xls')
        else
          Exporter.FileName := SaveDialog.FileName;
      end
      else
      begin
        ShowMessage('Format file tidak didukung!');
        Exit;
      end;
      try
        // Export
        Exporter.ShowDialog := False;
        Report.Export(Exporter);
        // Konfirmasi buka file
        if MessageDlg('Export berhasil!' + #13#10 +
                      'File: ' + Exporter.FileName + #13#10#13#10 +
                      'Apakah ingin membuka file sekarang?',
                      mtInformation, [mbYes, mbNo], 0) = mrYes then
        begin
          ShellExecute(0, 'open', PChar(Exporter.FileName), nil, nil, SW_SHOW);
        end;
      except
        on E: Exception do
        begin
          ShowMessage('Error saat export: ' + E.Message);
        end;
      end;
    end;
  finally
    if Assigned(Exporter) then
      Exporter.Free;
    SaveDialog.Free;
  end;
end;


procedure TFMonitoringTargetOmset.FormCreate(Sender: TObject);
begin
  monitoringtargetomset:=Self;
end;

procedure TFMonitoringTargetOmset.FormDestroy(Sender: TObject);
begin
  monitoringtargetomset:=nil;
end;

procedure TFMonitoringTargetOmset.FormShow(Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun1.Text:=(year);
  cbBulan1.ItemIndex:=StrToInt(month)-1;
  cbKaresidenan.EditValue:='';
  cbKabupaten.EditValue:='';
  cbKecamatan.EditValue:='';
  cbKelompok.EditValue:='';
  cbVolume.ItemIndex:=0;
  QMonitoringTargetOmset.Close;

  FillSBUBarCombo(cbSBU);
end;

procedure TFMonitoringTargetOmset.ReportGetValue(const VarName: string;
  var Value: Variant);
var strPeriode: String;
begin
  if CompareText(VarName, 'nama_kategori') = 0 then
  Value := 'KELOMPOK '+UpperCase(cbKelompok.EditValue);

  strPeriode:='BULAN '+Uppercase(cbBulan1.Text)+' '+edTahun1.Text;
  if CompareText(VarName, 'periode') = 0 then Value := strPeriode;
end;

initialization
  RegisterClass(TFMonitoringTargetOmset);

end.
