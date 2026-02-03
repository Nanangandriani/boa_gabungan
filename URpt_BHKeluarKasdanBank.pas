unit URpt_BHKeluarKasdanBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB, MemDS,
  DBAccess, Uni, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxClasses, dxBar, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, cxCalendar, cxDropDownEdit, cxBarEditItem, dxRibbon,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, frxExportXLS, frxExportBaseDialog,
  frxExportXLSX, ShellAPI;

type
  TFRpt_BHKeluarKasdanBank = class(TForm)
    rpt: TfrxReport;
    QKasBank: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
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
    DBGridEh1: TDBGridEh;
    QPerusahaan: TUniQuery;
    frxDBDatasetPers: TfrxDBDataset;
    DSKasBank: TDataSource;
    QKasBanktanggal: TDateField;
    QKasBankno_bukti: TStringField;
    QKasBanksupplier_code: TMemoField;
    QKasBankname: TMemoField;
    QKasBankketerangan: TStringField;
    QKasBankdeb_hut_acc: TMemoField;
    QKasBankdeb_hut_nm: TMemoField;
    QKasBankdeb_hut_jum: TFloatField;
    QKasBankdeb_lain_acc: TMemoField;
    QKasBankdeb_lain_nm: TMemoField;
    QKasBankdeb_lain_jum: TFloatField;
    QKasBankkre_k_b_acc: TMemoField;
    QKasBankkre_k_b_nm: TMemoField;
    QKasBankkre_k_b_jum: TFloatField;
    QKasBankkre_lain_acc: TMemoField;
    QKasBankkre_lain_nm: TMemoField;
    QKasBankkre_lain_jum: TFloatField;
    dxBarLargeButton2: TdxBarLargeButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QKasBankket2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QKasBanksupplier_codeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QKasBanknameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QKasBankdeb_hut_accGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QKasBankdeb_hut_nmGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QKasBankdeb_lain_accGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QKasBankdeb_lain_nmGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QKasBankkre_k_b_accGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QKasBankkre_k_b_nmGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QKasBankkre_lain_accGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QKasBankkre_lain_nmGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dxBarLargeButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExportToExcel;
  end;

//var
function
  FRpt_BHKeluarKasdanBank: TFRpt_BHKeluarKasdanBank;

implementation

{$R *.dfm}

uses UMy_Function;

var
  RealFRpt_BHKeluarKasdanBank: TFRpt_BHKeluarKasdanBank;

function FRpt_BHKeluarKasdanBank: TFRpt_BHKeluarKasdanBank;
begin
  if RealFRpt_BHKeluarKasdanBank <>Nil then
     FRpt_BHKeluarKasdanBank:=FRpt_BHKeluarKasdanBank
  else
     Application.CreateForm(TFRpt_BHKeluarKasdanBank,Result);
end;


procedure TFRpt_BHKeluarKasdanBank.ExportToExcel;
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

procedure TFRpt_BHKeluarKasdanBank.dxBarLargeButton1Click(Sender: TObject);
begin
  with QKasBank do
  begin
      close;
      sql.Clear;
      sql.Text:=' SELECT * from vbh_keluar_kas_bank a '+
                ' where a.tanggal>='+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.EditValue))+' '+
                ' and a.tanggal<='+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.EditValue))+' ';
      ExecSQL;
  end;
    if QKasBank.RecordCount=0 then
    begin
      ShowMessage('tidak ada transaksi');
    end;

    if QKasBank.RecordCount<>0 then
    begin
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BH_Pengeluaran_Kas_Bank.Fr3');
      SetMemo(Rpt,'jns_hutang',' BUKU HARIAN KELUAR KAS DAN BANK ');
      SetMemo(Rpt,'MPeriode',' Tanggal  : '+FormatDateTime('dd mmmm yyyy',DtMulai.EditValue)+' '+'S/D'+' '+FormatDateTime('dd mmmm yyyy',DTSelesai.EditValue));
      Rpt.ShowReport();
    end;
end;

procedure TFRpt_BHKeluarKasdanBank.dxBarLargeButton2Click(Sender: TObject);
begin
  with QKasBank do
  begin
      close;
      sql.Clear;
      sql.Text:=' SELECT * from vbh_keluar_kas_bank a '+
                ' where a.tanggal>='+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.EditValue))+' '+
                ' and a.tanggal<='+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.EditValue))+' ';
      ExecSQL;
  end;
    if QKasBank.RecordCount=0 then
    begin
      ShowMessage('tidak ada transaksi');
    end;

    if QKasBank.RecordCount<>0 then
    begin
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BH_Pengeluaran_Kas_Bank.Fr3');
      SetMemo(Rpt,'jns_hutang',' BUKU HARIAN KELUAR KAS DAN BANK ');
      SetMemo(Rpt,'MPeriode',' Tanggal  : '+FormatDateTime('dd mmmm yyyy',DtMulai.EditValue)+' '+'S/D'+' '+FormatDateTime('dd mmmm yyyy',DTSelesai.EditValue));
      //Rpt.ShowReport();
      Rpt.PrepareReport(True);

      ExportToExcel;
    end;
end;

procedure TFRpt_BHKeluarKasdanBank.DxRefreshClick(Sender: TObject);
begin
  with QKasBank do
  begin
      close;
      sql.Clear;
      sql.Text:=' SELECT * from vbh_keluar_kas_bank a '+
                ' where a.tanggal>='+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.EditValue))+' '+
                ' and a.tanggal<='+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.EditValue))+' ';
      ExecSQL;
  end;
    if QKasBank.RecordCount=0 then
    begin
      ShowMessage('tidak ada transaksi');
    end;
end;

procedure TFRpt_BHKeluarKasdanBank.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=CaFree;
end;

procedure TFRpt_BHKeluarKasdanBank.FormCreate(Sender: TObject);
begin
   RealFRpt_BHKeluarKasdanBank:=Self;
end;

procedure TFRpt_BHKeluarKasdanBank.FormDestroy(Sender: TObject);
begin
  RealFRpt_BHKeluarKasdanBank:=Nil;
end;

procedure TFRpt_BHKeluarKasdanBank.FormShow(Sender: TObject);
begin
    DTMulai.EditValue:=date();
    DTSelesai.EditValue:=date();
    DBGridEh1.FrozenCols := 5;
    DBGridEh1.Columns[4].WordWrap := True;
end;

procedure TFRpt_BHKeluarKasdanBank.QKasBankdeb_hut_accGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 Text := Copy(QKasBankdeb_hut_acc.AsString, 1, 500);
end;

procedure TFRpt_BHKeluarKasdanBank.QKasBankdeb_hut_nmGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
Text := Copy(QKasBankdeb_hut_nm.AsString, 1, 500);
end;

procedure TFRpt_BHKeluarKasdanBank.QKasBankdeb_lain_accGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
Text := Copy(QKasBankdeb_lain_acc.AsString, 1, 500);
end;

procedure TFRpt_BHKeluarKasdanBank.QKasBankdeb_lain_nmGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
Text := Copy(QKasBankdeb_lain_nm.AsString, 1, 500);
end;

procedure TFRpt_BHKeluarKasdanBank.QKasBankket2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
Text := Copy(QKasBankketerangan.AsString, 1, 500);
end;

procedure TFRpt_BHKeluarKasdanBank.QKasBankkre_k_b_accGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
Text := Copy(QKasBankkre_k_b_acc.AsString, 1, 500);
end;

procedure TFRpt_BHKeluarKasdanBank.QKasBankkre_k_b_nmGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
Text := Copy(QKasBankkre_k_b_nm.AsString, 1, 500);
end;

procedure TFRpt_BHKeluarKasdanBank.QKasBankkre_lain_accGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
Text := Copy(QKasBankkre_lain_acc.AsString, 1, 500);
end;

procedure TFRpt_BHKeluarKasdanBank.QKasBankkre_lain_nmGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
Text := Copy(QKasBankkre_lain_nm.AsString, 1, 500);
end;

procedure TFRpt_BHKeluarKasdanBank.QKasBanknameGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 Text := Copy(QKasBankname.AsString, 1, 500);
end;

procedure TFRpt_BHKeluarKasdanBank.QKasBanksupplier_codeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 Text := Copy(QKasBanksupplier_code.AsString, 1, 500);
end;

initialization
RegisterClass(TFRpt_BHKeluarKasdanBank);

end.
