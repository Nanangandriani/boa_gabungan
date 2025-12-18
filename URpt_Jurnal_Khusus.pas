unit URpt_Jurnal_Khusus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni, frxClass,
  RzButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RzEdit, frxDBSet, RzCmboBx,
  Vcl.Samples.Gauges, cxGraphics, cxControls, cxLookAndFeels,
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
  dxRibbonCustomizationForm, cxCalendar, cxDropDownEdit, dxBar, cxBarEditItem,
  cxClasses, dxRibbon, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, frxExportBaseDialog,
  frxExportXLSX, frxExportPDF, frxExportXLS, ShellAPI;

type
  TFRpt_Jurnal_Khusus = class(TForm)
    DBJurnal_Khusus: TfrxDBDataset;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    DtMulai1: TRzDateTimeEdit;
    DtSelesai1: TRzDateTimeEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    Rpt: TfrxReport;
    QRpt_Jurnal_Khusus: TUniQuery;
    Label1: TLabel;
    Label4: TLabel;
    CbModul1: TRzComboBox;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    Cbmodul: TcxBarEditItem;
    DBGridEh1: TDBGridEh;
    DsJurnal_Khusus: TDataSource;
    dxBarLargeButton2: TdxBarLargeButton;
    frxXLSXExport1: TfrxXLSXExport;
    frxXLSExport1: TfrxXLSExport;
    procedure BPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Load;
    procedure ExportToExcel;
  end;

//var
Function  FRpt_Jurnal_Khusus: TFRpt_Jurnal_Khusus;

implementation

{$R *.dfm}

uses UDatamodule, umainmenu;
var
  realfRptjk : TFRpt_Jurnal_Khusus;
// implementasi function
function fRpt_Jurnal_khusus: TFRpt_Jurnal_Khusus;
begin
  if realfRptjk<> nil then
    FRpt_Jurnal_Khusus:= realfRptjk
  else
    Application.CreateForm(TFRpt_Jurnal_Khusus, Result);
end;

procedure TFRpt_Jurnal_Khusus.ExportToExcel;
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
        Rpt.Export(Exporter);
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

procedure TFRpt_Jurnal_Khusus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFRpt_Jurnal_Khusus.FormCreate(Sender: TObject);
begin
  realfRptjk:=self;
end;

procedure TFRpt_Jurnal_Khusus.FormDestroy(Sender: TObject);
begin
  realfRptjk:=nil;
end;

procedure TFRpt_Jurnal_Khusus.FormShow(Sender: TObject);
begin
   Load;
end;

procedure TFRpt_Jurnal_Khusus.Load;
var
  comboProps: TcxComboBoxProperties;
begin
  if not (Cbmodul.Properties is TcxComboBoxProperties) then
    raise Exception.Create('Properties harus bertipe TcxComboBoxProperties!');
  comboProps := TcxComboBoxProperties(Cbmodul.Properties);
  comboProps.Items.Clear;
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:=' select * from t_ak_module';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    Comboprops.Items.Add(Dm.Qtemp['module_name']);
    Dm.Qtemp.Next;
  end;
  DtMulai.EditValue:=Now();
  DtSelesai.EditValue:=Now();
end;

procedure TFRpt_Jurnal_Khusus.BBatalClick(Sender: TObject);
begin
Close;
end;

procedure TFRpt_Jurnal_Khusus.BPrintClick(Sender: TObject);
begin
    if DtMulai.EditValue= null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtMulai.SetFocus;
      Exit;
    end;
    if DtSelesai.EditValue= null then
    begin
      MessageDlg('Tanggal Selesai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtSelesai.SetFocus;
      Exit;
    end;
   with QRpt_Jurnal_Khusus do
   begin
      close;
      sql.Clear;
      sql.Text:='select * from "VTrans_JournalReal"  where module_name='+QuotedStr(CbModul.EditValue)+' and trans_date >= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.EditValue))+''+
      ' and trans_date<= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai.EditValue))+''+
      ' order by trans_no,status_dk ASC';
      Execute;
   end;
   QRpt_Jurnal_Khusus.Open;
    if QRpt_Jurnal_Khusus.FieldByName('trans_no').AsString=''  then
    begin
      ShowMessage('Maaf data kosong');
    end else
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_jurnal_khusus.Fr3');
      Tfrxmemoview(Rpt.FindObject('MPeriode')).Memo.Text:='Periode  : '+FormatDateTime('dd MMMM yyy',DtMulai.EditValue)+' - '+FormatDateTime('dd MMMM yyy',DtSelesai.EditValue);
    //  Tfrxmemoview(Rpt.FindObject('Memo2')).Memo.Text:=''+SBU;
     // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
    //  SetMemo(Rpt,'MPT',' '+SBU+' ');
      //SetMemo(Rpt,'MPeriode',' '++' Rupiah ');
    Rpt.ShowReport();
end;


procedure TFRpt_Jurnal_Khusus.dxBarLargeButton2Click(Sender: TObject);
begin
  if DtMulai.EditValue = null then
  begin
    MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong', mtWarning, [mbOk], 0);
    DtMulai.SetFocus;
    Exit;
  end;
  if DtSelesai.EditValue = null then
  begin
    MessageDlg('Tanggal Selesai Perkiraan Tidak boleh Kosong', mtWarning, [mbOk], 0);
    DtSelesai.SetFocus;
    Exit;
  end;
  with QRpt_Jurnal_Khusus do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM "VTrans_JournalReal" ' +
                'WHERE module_name = ' + QuotedStr(CbModul.EditValue) +
                ' AND trans_date >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DtMulai.EditValue)) +
                ' AND trans_date <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DtSelesai.EditValue)) +
                ' ORDER BY trans_no, status_dk ASC';
    Open;
  end;
  if QRpt_Jurnal_Khusus.IsEmpty then
  begin
    ShowMessage('Maaf data kosong');
    Exit;
  end;
  // Load report
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Report\Rpt_jurnal_khusus.Fr3');
  // Set memo SEBELUM PrepareReport
  if Rpt.FindObject('MPeriode') <> nil then
    TfrxMemoView(Rpt.FindObject('MPeriode')).Memo.Text :=
      'Periode  : ' + FormatDateTime('dd MMMM yyyy', DtMulai.EditValue) +
      ' - ' + FormatDateTime('dd MMMM yyyy', DtSelesai.EditValue);
  Rpt.PrepareReport(True);
  ExportToExcel;
end;

procedure TFRpt_Jurnal_Khusus.DxRefreshClick(Sender: TObject);
begin
    if DtMulai.EditValue= null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtMulai.SetFocus;
      Exit;
    end;
    if DtSelesai.EditValue= null then
    begin
      MessageDlg('Tanggal Selesai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtSelesai.SetFocus;
      Exit;
    end;
   with QRpt_Jurnal_Khusus do
   begin
      close;
      sql.Clear;
      sql.Text:='select * from "VTrans_JournalReal"  where module_name='+QuotedStr(CbModul.EditValue)+' and trans_date >= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.EditValue))+''+
      ' and trans_date<= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai.EditValue))+''+
      ' order by trans_no,status_dk ASC';
      Open;
   end;
   if QRpt_Jurnal_Khusus.RecordCount=0 then
   begin
     ShowMessage('Maaf Data Tidka ditemukan');
   end;
end;

initialization
RegisterClass(TFRpt_Jurnal_Khusus);

end.
