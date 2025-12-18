unit URekapPenjualanPerPelanggan;

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
  DBAxisGridsEh, DBGridEh, dxRibbon, Vcl.StdCtrls, RzLabel, frxCross,
  cxRadioGroup, cxCheckGroup, cxCurrencyEdit, DateUtils, Vcl.Grids, RzGrids,System.StrUtils,
  Vcl.ExtCtrls, Vcl.DBGrids, frxExportBaseDialog, frxExportPDF, ShellAPI,
  frxExportXLSX, frxExportXLS;

type
  TFRekapPenjualanPerPelanggan = class(TForm)
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
    DsRekapPenjualanperCustomer: TDataSource;
    Report: TfrxReport;
    frxDBDatasetRekapPenjualanPerCustomer: TfrxDBDataset;
    QRekapPenjualanperCustomer: TUniQuery;
    frxCrossObject1: TfrxCrossObject;
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
    dxBarManager1Bar1: TdxBar;
    cbVolume: TdxBarCombo;
    cbPaperSize: TdxBarCombo;
    dxBarLargeButton6: TdxBarLargeButton;
    Qreport: TUniQuery;
    cbSBU: TdxBarCombo;
    dxBarLargeButton7: TdxBarLargeButton;
    frxPDFExport1: TfrxPDFExport;
    dxBarLargeButton8: TdxBarLargeButton;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    procedure ActSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbKecamatanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbKelompokPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edJenisPelangganPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbKaresidenanChange(Sender: TObject);
    procedure cbKabupatenChange(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKaresidenanID,strKabupatenID,strKecamatanID,strKelompokID,strKodeJenisUsaha: String;
    procedure ExportToExcel;
  end;

  function FRekapPenjualanPerPelanggan: TFRekapPenjualanPerPelanggan;
//var
//  FRekapPenjualanPerPelanggan: TFRekapPenjualanPerPelanggan;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UMy_Function, UHomeLogin , URekapTagihanKolektor;
var
  rekappenjualanperpelanggan : TFRekapPenjualanPerPelanggan;

function FRekapPenjualanPerPelanggan: TFRekapPenjualanPerPelanggan;
begin
  if rekappenjualanperpelanggan <> nil then
    FRekapPenjualanPerPelanggan:= rekappenjualanperpelanggan
  else
    Application.CreateForm(TFRekapPenjualanPerPelanggan, Result);
end;


procedure TFRekapPenjualanPerPelanggan.ActSearchClick(Sender: TObject);
var IntCount,I: integer;
  strKaresidenan,strKabupaten,strKecamatan,strJenisUsaha,strKelompokBarang :String;
begin
//  if cbJenisUsaha.Text='' then
//  begin
//    MessageDlg('Jenis Usaha wajib diisi ..!!',mtInformation,[mbRetry],0);
//  end else if cbKelompok.EditValue='' then
//  begin
//    MessageDlg('Kelompok barang wajib diisi ..!!',mtInformation,[mbRetry],0);
//  end else if cbKaresidenan.EditValue='' then
//  begin
//    MessageDlg('Karesidenan barang wajib diisi ..!!',mtInformation,[mbRetry],0);
//  end else if cbVolume.Text='' then
//  begin
//    MessageDlg('Volume wajib diisi ..!!',mtInformation,[mbRetry],0);
//  end else
//  begin
//    strKaresidenan:=' nama_karesidenan='+QuotedStr(cbKaresidenan.EditValue);
//    if cbKabupaten.EditValue<>'' then
//      strKabupaten:=' AND nama_kabupaten='+QuotedStr(cbKabupaten.EditValue)
//    else strKabupaten:='';
//    if cbKecamatan.EditValue<>'' then
//      strKecamatan:=' AND nama_kecamatan='+QuotedStr(cbKecamatan.EditValue)
//    else strKecamatan:='';
//    if UpperCase(cbJenisUsaha.Text)<>'SEMUA' then
//      strJenisUsaha:=' AND kode_jenis_usaha='+QuotedStr(strKodeJenisUsaha)
//    else strJenisUsaha:='';
//    if cbKelompok.EditValue<>'' then
//      strKelompokBarang:=' AND kelompok_barang='+QuotedStr(cbKelompok.EditValue)
//    else strKelompokBarang:='';
//
//
//    with QRekapPenjualanperCustomer do
//    begin
//      Close;
//      sql.Clear;
//      sql.Text:='SELECT * FROM vrekap_penjualan_percustomer '+
//                'WHERE '+strKaresidenan+strKabupaten+strKecamatan+strJenisUsaha+strKelompokBarang;
//      Open;
//    end;
//    IntCount:=3;
//
//    for I := 3 to DBGrid.Columns.Count - 1 do
//    begin
//      DBGrid.Columns[I].Destroy;
//      DBGrid.Refresh;
//    end;
//
//    if QRekapPenjualanperCustomer.RecordCount>0 then while not(QRekapPenjualanperCustomer.Eof) do
//    begin
//      DBGrid.Columns.Add; // Tambahkan kolom baru
//      DBGrid.Columns[IntCount].Title.Caption:=IntToStr(QRekapPenjualanperCustomer.FieldValues['thn'])+'|'+QRekapPenjualanperCustomer.FieldValues['bln']+'|'+QRekapPenjualanperCustomer.FieldValues['kode']  ;
//      if Uppercase(cbVolume.Text)='QTY' then
//      DBGrid.Columns[IntCount].FieldName:='tot_qty'
//      else DBGrid.Columns[IntCount].FieldName:='tot_value';
//      DBGrid.Columns[IntCount].Footer.ValueType:=fvtSum;
//      DBGrid.Columns[IntCount].Footer.Font.Style:=[fsBold];
//      Inc(IntCount);
//      QRekapPenjualanperCustomer.Next;
//    end;
//  end;
end;

procedure TFRekapPenjualanPerPelanggan.cbKabupatenChange(Sender: TObject);
begin
  if cbKabupaten.EditValue='' then
  begin
    cbKecamatan.EditValue:='';
    strKecamatanID:='';
  end;
end;

procedure TFRekapPenjualanPerPelanggan.ExportToExcel;
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

procedure TFRekapPenjualanPerPelanggan.cbKabupatenPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
                           if cbKaresidenan.EditValue='' then
  begin
    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    FMasterData.Caption:='Master Data Kabupaten';
    FMasterData.vcall:='rekappenjualanpercustomerkab';
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(strKaresidenanID)+'');
    FMasterData.ShowModal;
  end;
end;

procedure TFRekapPenjualanPerPelanggan.cbKaresidenanChange(Sender: TObject);
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

procedure TFRekapPenjualanPerPelanggan.cbKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='rekappenjualanpercustomerkares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFRekapPenjualanPerPelanggan.cbKecamatanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if cbKabupaten.EditValue='' then
  begin
    MessageDlg('Kabupaten wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    FMasterData.Caption:='Master Data Kecamatan';
    FMasterData.vcall:='rekappenjualanpercustomerkec';
    FMasterData.update_grid('code','name','description','t_region_subdistrict','WHERE	deleted_at IS NULL and code_regency='+QuotedStr(strKabupatenID)+' ');
    FMasterData.ShowModal;
  end;
end;

procedure TFRekapPenjualanPerPelanggan.cbKelompokPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Kelompok Barang';
  FMasterData.vcall:='rekappenjualanpercustomerkelompokbarang';
  FMasterData.update_grid('group_id','group_name',QuotedStr(''),'t_item_group','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFRekapPenjualanPerPelanggan.dxBarLargeButton5Click(Sender: TObject);
var
  strKaresidenan,strKabupaten,strKecamatan,strJenisUsaha,
  strKelompokBarang,strReportName,strVolume,strPeriode,strTglAwal,strTglAkhir :String;
  LastDay: TDate;
begin
  // Dapatkan tanggal saat ini sebagai referensi
  LastDay := EndOfAMonth(StrToInt(edTahun2.Text),cbBulan2.ItemIndex+1) ;
  strTglAwal:=edTahun1.Text+'-'+IntToStr(cbBulan1.ItemIndex+1)+'-01';
  strTglAkhir:=edTahun2.Text+'-'+IntToStr(cbBulan2.ItemIndex+1)+'-'+(FormatDateTime('dd',LastDay));

  if cbKaresidenan.EditValue='' then
  begin
    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else if cbKelompok.EditValue='' then
  begin
    MessageDlg('Kelompok barang wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else if cbVolume.Text='' then
  begin
    MessageDlg('Volume wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else if cbJenisUsaha.Text='' then
  begin
    MessageDlg('Jenis Usaha wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    strKaresidenan:=' nama_karesidenan='+QuotedStr(cbKaresidenan.EditValue);
    if cbKabupaten.EditValue<>'' then
      strKabupaten:=' AND nama_kabupaten='+QuotedStr(cbKabupaten.EditValue)
    else strKabupaten:='';
    if cbKecamatan.EditValue<>'' then
      strKecamatan:=' AND nama_kecamatan='+QuotedStr(cbKecamatan.EditValue)
    else strKecamatan:='';
    if UpperCase(cbJenisUsaha.Text)<>'SEMUA' then
      strJenisUsaha:=' AND kode_jenis_usaha='+QuotedStr(strKodeJenisUsaha)
    else strJenisUsaha:='';
    if cbKelompok.EditValue<>'' then
      strKelompokBarang:=' AND kelompok_barang='+QuotedStr(cbKelompok.EditValue)
    else strKelompokBarang:='';
    if Uppercase(cbVolume.Text)='QTY' then strVolume:='' else strVolume:='tot_value tot_qty,';

    with Qreport do
    begin
      Close;
      sql.Clear;
      sql.Text:='SELECT '+strVolume+'* FROM get_rekap_penjualan_percustomer() '+
                'WHERE '+strKaresidenan+strKabupaten+strKecamatan+strJenisUsaha+
                strKelompokBarang+' AND (trans_date BETWEEN '+QuotedStr(strTglAwal)+' AND '+QuotedStr(strTglAkhir)+')';
      Open;
    end;

    if Qreport.RecordCount=0 then
    begin
      MessageDlg('Tidak ada data..!!',mtInformation,[mbRetry],0);
    end else begin
      if cbPaperSize.Text='NORMAL' then
      strReportName:='rpt_rekappenjualanpercustomer2' else strReportName:='rpt_rekappenjualanpercustomer';

      cLocation := ExtractFilePath(Application.ExeName);
      Report.LoadFromFile(cLocation +'report/'+strReportName+''+ '.fr3');
      Report.ShowReport();
    end;
  end;
end;


procedure TFRekapPenjualanPerPelanggan.dxBarLargeButton6Click(Sender: TObject);
var IntCount,i: Integer;
  strKaresidenan,strKabupaten,strKecamatan,strJenisUsaha,
  strKelompokBarang,strReportName,strVolume,strPeriode,strTglAwal,strTglAkhir,
  strSelectTotQty,strSelectTotQty2,strWhereTahun,strWhereBulan,strTahunLast,strBulanLast,strField :String;
  LastDay: TDate;
begin
  if cbKaresidenan.EditValue='' then
  begin
    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    // Dapatkan tanggal saat ini sebagai referensi
    LastDay := EndOfAMonth(StrToInt(edTahun2.Text),cbBulan2.ItemIndex+1) ;
    strTglAwal:=edTahun1.Text+'-'+IntToStr(cbBulan1.ItemIndex+1)+'-01';
    strTglAkhir:=edTahun2.Text+'-'+IntToStr(cbBulan2.ItemIndex+1)+'-'+(FormatDateTime('dd',LastDay));
    strKaresidenan:=' nama_karesidenan='+QuotedStr(cbKaresidenan.EditValue);

    if cbKabupaten.EditValue<>'' then
      strKabupaten:=' AND nama_kabupaten='+QuotedStr(cbKabupaten.EditValue)
    else strKabupaten:='';
    if cbKecamatan.EditValue<>'' then
      strKecamatan:=' AND nama_kecamatan='+QuotedStr(cbKecamatan.EditValue)
    else strKecamatan:='';
    if UpperCase(cbJenisUsaha.Text)<>'SEMUA' then
      strJenisUsaha:=' AND kode_jenis_usaha='+QuotedStr(strKodeJenisUsaha)
    else strJenisUsaha:='';
    if cbKelompok.EditValue<>'' then
      strKelompokBarang:=' AND kelompok_barang='+QuotedStr(cbKelompok.EditValue)
    else strKelompokBarang:='';
    if Uppercase(cbVolume.Text)='QTY' then strVolume:='tot_qty' else strVolume:='tot_value';
    QRekapPenjualanperCustomer.Close;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:= 'SELECT thn,bln2,bln,kode FROM get_rekap_penjualan_percustomer() '+
                 'WHERE '+strKaresidenan+strKabupaten+strKecamatan+strJenisUsaha+
                 strKelompokBarang+' AND (trans_date BETWEEN '+QuotedStr(strTglAwal)+' AND '+
                 QuotedStr(strTglAkhir)+') group by thn,bln2,bln,kode';
      open;
    end;

    IntCount:=3;
    strSelectTotQty:='';
    strWhereTahun:='';
    strWhereBulan:='';
    strTahunLast:='';
    strBulanLast:='';

    if DBGrid.Columns.Count-1>IntCount then
    begin
      for i:=DBGrid.Columns.Count-1 downto 3 do begin
        DBGrid.Columns[i].FieldName:='';
        DBGrid.Columns[i].Destroy;
      end;
    end;

    if dm.Qtemp.RecordCount>0 then
    begin
      while not(dm.Qtemp.Eof) do
      begin
        DBGrid.Columns.Add; // Tambahkan kolom baru
        DBGrid.Columns[IntCount].Title.Caption:=IntToStr(dm.Qtemp.FieldValues['thn'])+'|'+dm.Qtemp.FieldValues['bln']+'|'+dm.Qtemp.FieldValues['kode']  ;
        DBGrid.Columns[IntCount].AutoFitColWidth:=True;
        DBGrid.Columns[IntCount].FieldName:=IntToStr(dm.Qtemp.FieldValues['thn'])+'_'+dm.Qtemp.FieldValues['bln']+'_'+dm.Qtemp.FieldValues['kode'];
        DBGrid.Columns[IntCount].DisplayFormat:='#,##0.##';
        if strTahunLast<>IntToStr(dm.Qtemp.FieldValues['thn']) then
        strWhereTahun:=strWhereTahun+IntToStr(dm.Qtemp.FieldValues['thn'])+',';
        if strBulanLast<>IntToStr(dm.Qtemp.FieldValues['bln2']) then
        strWhereBulan:=strWhereBulan+IntToStr(dm.Qtemp.FieldValues['bln2'])+',';
        strSelectTotQty:=strSelectTotQty+'SUM(CASE WHEN thn='+IntToStr(dm.Qtemp.FieldValues['thn'])+' AND '+
                        'bln = '+QuotedStr(dm.Qtemp.FieldValues['bln'])+' AND '+
                        'kode = '+QuotedStr(dm.Qtemp.FieldValues['kode'])+' '+
                        'THEN '+strVolume+' ELSE 0 END) AS "'+IntToStr(dm.Qtemp.FieldValues['thn'])+'_'+dm.Qtemp.FieldValues['bln']+'_'+dm.Qtemp.FieldValues['kode']+'",';

        strTahunLast:=IntToStr(dm.Qtemp.FieldValues['thn']);
        strBulanLast:=IntToStr(dm.Qtemp.FieldValues['bln2']);

        Inc(IntCount);
        dm.Qtemp.Next;
      end;

      DBGrid.Columns.Add;
      DBGrid.Columns[IntCount].Title.Caption:='GRAND TOTAL';
      DBGrid.Columns[IntCount].AutoFitColWidth:=True;
      DBGrid.Columns[IntCount].FieldName:='grand_total';
      DBGrid.Columns[IntCount].Footer.ValueType:=fvtSum;
      DBGrid.Columns[IntCount].Footer.Font.Style:=[fsBold];
      DBGrid.Columns[IntCount].DisplayFormat:='#,##0.##';

      strWhereTahun:= Copy(strWhereTahun,1,StrLength(strWhereTahun)-1)	;
      strWhereBulan:= Copy(strWhereBulan,1,StrLength(strWhereBulan)-1)	;

      DBGrid.Columns[0].FieldName:='nama_kabupaten' ;
      DBGrid.Columns[1].FieldName:='nama_kecamatan';
      DBGrid.Columns[2].FieldName:='outlet_name' ;


      with QRekapPenjualanperCustomer do
      begin
        EmptyParam;
        close;
        sql.Clear;
        sql.Text:='SELECT nama_kabupaten,nama_kecamatan,outlet_name, '+
                  strSelectTotQty +' '+
                  'SUM('+strVolume+') AS grand_total '+
                  'FROM get_rekap_penjualan_percustomer() '+
                  'WHERE '+strKaresidenan+strKabupaten+strKecamatan+strJenisUsaha+
                  strKelompokBarang+' '+
                  'AND thn IN ('+strWhereTahun+') '+
                  'AND bln2 IN ('+strWhereBulan+') '+
                  'GROUP BY nama_kabupaten,nama_kecamatan,outlet_name '+
                  'ORDER BY nama_kabupaten, nama_kecamatan, outlet_name;';
        open;
      end;
      for i:=DBGrid.Columns.Count-1 downto 3 do begin
        DBGrid.Columns[i].Width:= DBGrid.Columns[i].Width+30;
        DBGrid.Columns[i].Footer.ValueType:=fvtSum;
        DBGrid.Columns[i].Footer.Font.Style:=[fsBold];
        DBGrid.Columns[i].Footer.DisplayFormat:='#,##0.##';
      end;
    end;
  end;
end;

procedure TFRekapPenjualanPerPelanggan.dxBarLargeButton7Click(Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun1.Text:=(year);
  edTahun2.Text:=(year);
  cbBulan1.ItemIndex:=StrToInt(month)-1;
  cbBulan2.ItemIndex:=StrToInt(month)-1;
  cbKaresidenan.EditValue:='';
  cbKabupaten.EditValue:='';
  cbKecamatan.EditValue:='';
  cbKelompok.EditValue:='';
  cbJenisUsaha.ItemIndex:=0;
end;

procedure TFRekapPenjualanPerPelanggan.dxBarLargeButton8Click(Sender: TObject);
var
  strKaresidenan,strKabupaten,strKecamatan,strJenisUsaha,
  strKelompokBarang,strReportName,strVolume,strPeriode,strTglAwal,strTglAkhir :String;
  LastDay: TDate;
begin
  // Dapatkan tanggal saat ini sebagai referensi
  LastDay := EndOfAMonth(StrToInt(edTahun2.Text),cbBulan2.ItemIndex+1) ;
  strTglAwal:=edTahun1.Text+'-'+IntToStr(cbBulan1.ItemIndex+1)+'-01';
  strTglAkhir:=edTahun2.Text+'-'+IntToStr(cbBulan2.ItemIndex+1)+'-'+(FormatDateTime('dd',LastDay));

  if cbKaresidenan.EditValue='' then
  begin
    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else if cbKelompok.EditValue='' then
  begin
    MessageDlg('Kelompok barang wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else if cbVolume.Text='' then
  begin
    MessageDlg('Volume wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else if cbJenisUsaha.Text='' then
  begin
    MessageDlg('Jenis Usaha wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    strKaresidenan:=' nama_karesidenan='+QuotedStr(cbKaresidenan.EditValue);
    if cbKabupaten.EditValue<>'' then
      strKabupaten:=' AND nama_kabupaten='+QuotedStr(cbKabupaten.EditValue)
    else strKabupaten:='';
    if cbKecamatan.EditValue<>'' then
      strKecamatan:=' AND nama_kecamatan='+QuotedStr(cbKecamatan.EditValue)
    else strKecamatan:='';
    if UpperCase(cbJenisUsaha.Text)<>'SEMUA' then
      strJenisUsaha:=' AND kode_jenis_usaha='+QuotedStr(strKodeJenisUsaha)
    else strJenisUsaha:='';
    if cbKelompok.EditValue<>'' then
      strKelompokBarang:=' AND kelompok_barang='+QuotedStr(cbKelompok.EditValue)
    else strKelompokBarang:='';
    if Uppercase(cbVolume.Text)='QTY' then strVolume:='' else strVolume:='tot_value tot_qty,';

    with Qreport do
    begin
      Close;
      sql.Clear;
      sql.Text:='SELECT '+strVolume+'* FROM get_rekap_penjualan_percustomer() '+
                'WHERE '+strKaresidenan+strKabupaten+strKecamatan+strJenisUsaha+
                strKelompokBarang+' AND (trans_date BETWEEN '+QuotedStr(strTglAwal)+' AND '+QuotedStr(strTglAkhir)+')';
      Open;
    end;

    if Qreport.RecordCount=0 then
    begin
      MessageDlg('Tidak ada data..!!',mtInformation,[mbRetry],0);
    end else begin
      if cbPaperSize.Text='NORMAL' then
      strReportName:='rpt_rekappenjualanpercustomer2' else strReportName:='rpt_rekappenjualanpercustomer';

      cLocation := ExtractFilePath(Application.ExeName);
      Report.LoadFromFile(cLocation +'report/'+strReportName+''+ '.fr3');
      Report.PrepareReport(True);
      ExportToExcel
    end;
  end;
end;

procedure TFRekapPenjualanPerPelanggan.edJenisPelangganPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Jenis Pelanggan';
  FMasterData.vcall:='rekappenjualanpercustomerjenispelanggan';
  FMasterData.update_grid('code','nm_master','keterangan','t_customer_type_business','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFRekapPenjualanPerPelanggan.FormCreate(Sender: TObject);
begin
  rekappenjualanperpelanggan:=Self;
end;

procedure TFRekapPenjualanPerPelanggan.FormDestroy(Sender: TObject);
begin
  rekappenjualanperpelanggan:=nil;
end;

procedure TFRekapPenjualanPerPelanggan.FormShow(Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun1.Text:=(year);
  edTahun2.Text:=(year);
  cbBulan1.ItemIndex:=StrToInt(month)-1;
  cbBulan2.ItemIndex:=StrToInt(month)-1;
  cbKaresidenan.EditValue:='';
  cbKabupaten.EditValue:='';
  cbKecamatan.EditValue:='';
  cbKelompok.EditValue:='';
  cbJenisUsaha.Items.Clear;

  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT code , description,  description AS keterangan  from t_customer_type_business  WHERE	deleted_at IS NULL';
    open;
  end;
  cbJenisUsaha.Items.Add('Semua');
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbJenisUsaha.Items.Add(Dm.Qtemp['description']);
    Dm.Qtemp.Next;
  end;
  cbJenisUsaha.ItemIndex:=0;
  QRekapPenjualanperCustomer.Close;
  Qreport.Close;

  FillSBUBarCombo(cbSBU);
end;

procedure TFRekapPenjualanPerPelanggan.ReportGetValue(const VarName: string;
  var Value: Variant);
var strWilayah,strPeriode : String;
begin
  if cbKecamatan.EditValue<>'' then
  begin
    strWilayah:='TP '+cbKaresidenan.EditValue+' - KABUPATEN '+cbKabupaten.EditValue+' - KECAMATAN '+cbKecamatan.EditValue
  end else if (cbKecamatan.EditValue='') and (cbKabupaten.EditValue<>'') then
  begin
    strWilayah:='KARESIDENAN '+cbKaresidenan.EditValue+' - KABUPATEN '+cbKabupaten.EditValue
  end else if cbKabupaten.EditValue='' then
  begin
    strWilayah:='KARESIDENAN '+cbKaresidenan.EditValue;
  end;

  if CompareText(VarName, 'lap') = 0 then
    Value := 'REKAP PENJUALAN PER PELANGGAN PT. '+FHomeLogin.vKodePRSH;
  if CompareText(VarName, 'prsh') = 0 then
    Value := Uppercase(strWilayah);
  if CompareText(VarName, 'jen') = 0 then
    Value := 'PRODUK : '+cbKelompok.EditValue;

  if (edTahun1.Text=edTahun2.Text) AND (cbBulan1.Text=cbBulan2.Text) then
  begin
    strPeriode:='BULAN '+Uppercase(cbBulan1.Text)+' '+edTahun1.Text;
  end else if (edTahun1.Text=edTahun2.Text) AND (cbBulan1.Text<>cbBulan2.Text) then
  begin
    strPeriode:='BULAN '+Uppercase(cbBulan1.Text)+' S/D '+Uppercase(cbBulan2.Text)+' '+edTahun2.Text;
  end else if (edTahun1.Text<>edTahun2.Text) then
  begin
    strPeriode:='BULAN '+Uppercase(cbBulan1.Text)+' '+edTahun1.Text+' S/D '+Uppercase(cbBulan2.Text)+' '+edTahun2.Text;
  end;

  if CompareText(VarName, 'periode') = 0 then Value := strPeriode;
end;

initialization
  RegisterClass(TFRekapPenjualanPerPelanggan);


end.
