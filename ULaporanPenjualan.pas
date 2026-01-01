unit ULaporanPenjualan;

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
  DynVarsEh, cxCalendar, cxButtonEdit, frxExportXLSX, frxExportXLS, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, Data.DB, MemDS, DBAccess, Uni,
  dxBar, cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon, dxBarExtItems, cxProgressBar,
  cxDropDownEdit, ShellAPI;

type
  TFLaporanPenjualan = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
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
    dxBarManager1Bar2: TdxBar;
    btExportExcel: TdxBarLargeButton;
    btExportPDF: TdxBarLargeButton;
    edKaresidenan: TcxBarEditItem;
    btPreview: TdxBarLargeButton;
    btSearch: TdxBarLargeButton;
    edKabupaten: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    cbSBU: TdxBarCombo;
    dxBarLargeButton2: TdxBarLargeButton;
    btExport: TdxBarLargeButton;
    edTP: TcxBarEditItem;
    QCetak: TUniQuery;
    Report: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    QLapPenjualan: TUniQuery;
    QLapPenjualanDetail: TUniQuery;
    DSLapPenjualan: TDataSource;
    DSLapPenjualanDetail: TDataSource;
    DBGridOrder: TDBGridEh;
    DBGridEh1: TDBGridEh;
    cxBarEditItem1: TcxBarEditItem;
    dtAwal: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    dtAkhir: TcxBarEditItem;
    frxDBLapPenjualan: TfrxDBDataset;
    edPelanggan: TcxBarEditItem;
    cbKelompokBarang: TdxBarCombo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure edTPPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btSearchClick(Sender: TObject);
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btPreviewClick(Sender: TObject);
    procedure cxBarEditItem3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKodeKaresidenan,strKodeTP,strKodePelanggan: String;
    procedure Clear;
    procedure Refresh;
    procedure RefreshKelompok;
    procedure ExportToExcel;
  end;

  function FLaporanPenjualan: TFLaporanPenjualan;
//var
//  FLaporanPenjualan: TFLaporanPenjualan;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UMy_Function, UHomeLogin, Ubrowse_pelanggan;
var
  reallappenjualan : TFLaporanPenjualan;

function FLaporanPenjualan: TFLaporanPenjualan;
begin
  if reallappenjualan <> nil then
    FLaporanPenjualan:= reallappenjualan
  else
    Application.CreateForm(TFLaporanPenjualan, Result);
end;

procedure TFLaporanPenjualan.Refresh;
var mm: Integer;
strKaresidenan,strTP,strPelanggan:String;
begin
  strKaresidenan:='';
  strTP:='';
  strPelanggan:='';
  if edKaresidenan.EditValue<>'' then
  begin
    strKaresidenan:=' AND code_karesidenan='+QuotedStr(strKodeKaresidenan)+' ';
  end;
  if edTP.EditValue<>'' then
  begin
    strTP:=' AND code_tp='+QuotedStr(strKodeTP)+' ';
  end;
  if edPelanggan.EditValue<>'' then
  begin
    strPelanggan:=' AND code_cust='+QuotedStr(strKodePelanggan)+' ';
  end;
//  mm:=cbBulan.ItemIndex+1;
  DBGridOrder.StartLoadingStatus();
  try
    with QLapPenjualan do
    begin
       close;
       sql.Clear;
       sql.Text:='select * from get_selling(False) '+
                 'WHERE (trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
                 ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+') '+strKaresidenan+strKaresidenan+strPelanggan+' AND deleted_at IS NULL '+
                 'order by trans_date Desc,trans_no Desc ';
       open;
    end;
    if QLapPenjualan.RecordCount>0 then
    begin
      QLapPenjualanDetail.Close;
      QLapPenjualanDetail.Open;
    end;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
end;

procedure TFLaporanPenjualan.btExportClick(Sender: TObject);
var strKaresidenan,strTP,strPelanggan,strKelompokBarang:String;
begin
  strKaresidenan:='';
  strTP:='';
  strPelanggan:='';
  strKelompokBarang:='';
  if edKaresidenan.EditValue<>'' then
  begin
    strKaresidenan:=' AND code_karesidenan='+QuotedStr(strKodeKaresidenan)+' ';
  end;
  if edTP.EditValue<>'' then
  begin
    strTP:=' AND code_tp='+QuotedStr(strKodeTP)+' ';
  end;
  if edPelanggan.EditValue<>'' then
  begin
    strPelanggan:=' AND code_cust='+QuotedStr(strKodePelanggan)+' ';
  end;
  if cbKelompokBarang.Text<>'' then
  begin
    strKelompokBarang:=' AND group_name='+QuotedStr(cbKelompokBarang.Text)+' ';
  end;
  if cbSBU.Text<>'' then
  begin

    with QCetak do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from get_laporan_penjualan() WHERE trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
                ''+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+strKaresidenan+strTP+strPelanggan+strKelompokBarang;
      open;
    end;
    if QCetak.RecordCount=0 then
    begin
      showmessage('Tidak ada data yang bisa dicetak !');
      exit;
    end;

    if QCetak.RecordCount<>0 then
    begin

      cLocation := ExtractFilePath(Application.ExeName);

      //ShowMessage(cLocation);
      Report.LoadFromFile(cLocation +'report/rpt_laporanpenjualan'+ '.fr3');
      if cbKelompokBarang.Text<>'' then
      SetMemo(Report,'MemNameLap','LAPORAN PENJUALAN '+UpperCase(cbKelompokBarang.Text))
      else SetMemo(Report,'MemNameLap','LAPORAN PENJUALAN');
      SetMemo(Report,'MemNamePersh','PT. '+cbSBU.Text);
      SetMemo(Report,'MemPeriode','PERIODE '+formatdatetime('dd mmm yyyy',dtAwal.EditValue)+' s/d '+formatdatetime('dd mmm yyyy',dtAkhir.EditValue));

      Report.PrepareReport(True);
      ExportToExcel;

      end;
    end else begin
    MessageDlg('SBU Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFLaporanPenjualan.btPreviewClick(Sender: TObject);
var strKaresidenan,strTP,strPelanggan,strKelompokBarang:String;
begin
  strKaresidenan:='';
  strTP:='';
  strPelanggan:='';
  strKelompokBarang:='';
  if edKaresidenan.EditValue<>'' then
  begin
    strKaresidenan:=' AND code_karesidenan='+QuotedStr(strKodeKaresidenan)+' ';
  end;
  if edTP.EditValue<>'' then
  begin
    strTP:=' AND code_tp='+QuotedStr(strKodeTP)+' ';
  end;
  if edPelanggan.EditValue<>'' then
  begin
    strPelanggan:=' AND code_cust='+QuotedStr(strKodePelanggan)+' ';
  end;
  if cbKelompokBarang.Text<>'' then
  begin
    strKelompokBarang:=' AND group_name='+QuotedStr(cbKelompokBarang.Text)+' ';
  end;
  if cbSBU.Text<>'' then
  begin

    with QCetak do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from get_laporan_penjualan() WHERE trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
                ''+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+strKaresidenan+strTP+strPelanggan+strKelompokBarang;
      open;
    end;
    if QCetak.RecordCount=0 then
    begin
      showmessage('Tidak ada data yang bisa dicetak !');
      exit;
    end;

    if QCetak.RecordCount<>0 then
    begin

      cLocation := ExtractFilePath(Application.ExeName);

      //ShowMessage(cLocation);
      Report.LoadFromFile(cLocation +'report/rpt_laporanpenjualan'+ '.fr3');
      if cbKelompokBarang.Text<>'' then
      SetMemo(Report,'MemNameLap','LAPORAN PENJUALAN '+UpperCase(cbKelompokBarang.Text))
      else SetMemo(Report,'MemNameLap','LAPORAN PENJUALAN');
      SetMemo(Report,'MemNamePersh','PT. '+cbSBU.Text);
      SetMemo(Report,'MemPeriode','PERIODE '+formatdatetime('dd mmm yyyy',dtAwal.EditValue)+' s/d '+formatdatetime('dd mmm yyyy',dtAkhir.EditValue));

      Report.ShowReport();

      end;
    end else begin
    MessageDlg('SBU Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end;
end;

procedure TFLaporanPenjualan.btSearchClick(Sender: TObject);
begin
  if cbSBU.Text<>'' then
  Refresh else MessageDlg('SBU Wajib Diisi..!!',mtInformation,[mbRetry],0);
end;

procedure TFLaporanPenjualan.RefreshKelompok;
begin
  cbKelompokBarang.Items.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.group_id,a.group_name from t_item_group a '+
              'order by a.group_name asc';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbKelompokBarang.Items.Add(Dm.Qtemp['group_name']);
    Dm.Qtemp.Next;
  end;
end;

procedure TFLaporanPenjualan.ExportToExcel;
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

procedure TFLaporanPenjualan.Clear;
begin
  dtAwal.EditValue:=NOW;
  dtAkhir.EditValue:=NOW;
  edKaresidenan.EditValue:='';
  edTP.EditValue:='';
  edPelanggan.EditValue:='';
  cbKelompokBarang.Items.Clear;
  strKodeKaresidenan:='';
  strKodeTP:='';
  strKodePelanggan:='';
  QLapPenjualanDetail.Close;
  QLapPenjualan.Close;
  QCetak.Close;
  RefreshKelompok;
end;

procedure TFLaporanPenjualan.cxBarEditItem3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if (edKaresidenan.EditValue='') AND (edTP.EditValue='')  then
  begin
     MessageDlg('TP atau Karesidenan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else begin
    Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
    Fbrowse_data_pelanggan.vcall:='laporanpenjualan';
    Fbrowse_data_pelanggan.ShowModal;
  end;
end;

procedure TFLaporanPenjualan.dxBarLargeButton2Click(Sender: TObject);
begin
  Clear;
end;

procedure TFLaporanPenjualan.edKaresidenanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='lappenjualan_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFLaporanPenjualan.edTPPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='lappenjualan_tp';
  FMasterData.update_grid('code','name','description','t_region_tp','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFLaporanPenjualan.FormCreate(Sender: TObject);
begin
  reallappenjualan:=self;
end;

procedure TFLaporanPenjualan.FormDestroy(Sender: TObject);
begin
  reallappenjualan:=nil;
end;

procedure TFLaporanPenjualan.FormShow(Sender: TObject);
begin
  Clear;
  FillSBUBarCombo(cbSBU);
end;

initialization
  RegisterClass(TFLaporanPenjualan);

end.
