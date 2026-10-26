unit URpt_BukuHarianReturPembelian;

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
  DynVarsEh, MemTableDataEh, Data.DB, cxCalendar, cxButtonEdit, cxTextEdit,
  cxDropDownEdit, dxBar, cxBarEditItem, cxClasses, MemTableEh, MemDS, DBAccess,
  Uni, frxClass, frxDBSet, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon,
  Vcl.StdCtrls, RzBtnEdt, RzEdit, Vcl.Mask, RzButton, Vcl.ExtCtrls,
  frxExportBaseDialog, frxExportXLSX, frxExportXLS,
  Winapi.ShellAPI;

type
  TFBuku_HarianReturPembelian = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Bprint: TRzBitBtn;
    BBatal: TRzBitBtn;
    BPrint2: TRzBitBtn;
    BPrint11: TRzBitBtn;
    DtMulai1: TRzDateTimeEdit;
    DtSelesai1: TRzDateTimeEdit;
    edkd_akun1: TRzEdit;
    Ednm_akun1: TRzButtonEdit;
    CKUm: TCheckBox;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridEh1: TDBGridEh;
    Rpt: TfrxReport;
    DbRptSP: TfrxDBDataset;
    QRptBHP: TUniQuery;
    MemBHP: TMemTableEh;
    dsbph: TDataSource;
    QCategory: TUniQuery;
    QRptBHPNon: TUniQuery;
    DbRptBHPNon: TfrxDBDataset;
    QRptBHPDet: TUniQuery;
    DbRptSPdet: TfrxDBDataset;
    Rpt_BHP: TfrxDBDataset;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    dtMulai: TcxBarEditItem;
    dtSelesai: TcxBarEditItem;
    EdAkun: TcxBarEditItem;
    Ednm_akun: TcxBarEditItem;
    dxBarLargeButton2: TdxBarLargeButton;
    CB_SBU: TdxBarCombo;
    CbKategori: TcxBarEditItem;
    Btn_Print_Excel: TdxBarLargeButton;
    procedure DxRefreshClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure Btn_Print_ExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure queryreport;
    procedure ExportToExcel;
  end;

var
  FBuku_HarianReturPembelian: TFBuku_HarianReturPembelian;

implementation

{$R *.dfm}

uses UDatamodule, UMy_Function;

procedure TFBuku_HarianReturPembelian.ExportToExcel;
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

procedure TFBuku_HarianReturPembelian.Btn_Print_ExcelClick(Sender: TObject);
begin
    dm.QPerusahaan.Close;
    dm.QPerusahaan.open;
    queryreport;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Buku_Harian_Retur_PembelianXL.Fr3');
    SetMemo(Rpt,'jns_hutang',' BUKU HARIAN RETUR PEMBELIAN ');//+CbKategori.EditValue);
    SetMemo(Rpt,'MPeriode',' Tanggal  : '+FormatDateTime('dd mmmm yyyy',DtMulai.EditValue)+' '+'S/D'+' '+FormatDateTime('dd mmmm yyyy',DTSelesai.EditValue));
    rpt.PrepareReport(True);
      // Baru export
    ExportToExcel;
end;

procedure TFBuku_HarianReturPembelian.dxBarLargeButton1Click(Sender: TObject);
begin
  dm.QPerusahaan.Close;
  dm.QPerusahaan.open;
    queryreport;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Buku_Harian_Retur_Pembelian.Fr3');
    SetMemo(Rpt,'jns_hutang',' BUKU HARIAN RETUR PEMBELIAN ');//+CbKategori.EditValue);
    SetMemo(Rpt,'MPeriode',' Tanggal  : '+FormatDateTime('dd mmmm yyyy',DtMulai.EditValue)+' '+'S/D'+' '+FormatDateTime('dd mmmm yyyy',DTSelesai.EditValue));
    Rpt.ShowReport();
end;

procedure TFBuku_HarianReturPembelian.DxRefreshClick(Sender: TObject);
begin
   queryreport;
end;

procedure TFBuku_HarianReturPembelian.queryreport;
var
dt_awal:TDate;
begin
   //batas data
    dt_awal:=dtmulai.EditValue;
    if VarToDateTime(dtmulai.EditValue) < EncodeDate(2025, 1, 1) then
    begin
      dt_awal := EncodeDate(2025, 1, 1);
    end;
  with QRptBHP do
  begin
    close;
    sql.Clear;
   sql.Text:='select return_no trans_no,return_date trans_date,faktur_no,po_no,'''' ak_ppn,'''' ak_ppn_name,0 ppn,0 grandtotal,'+
    ' ''''ak_htng,'''' ak_ht_name,item_code,qty,unit,item_stock_code,item_name,'''' account_ppn,subtotal,'+
    ' ak_pemb,ak_pemb_name,group_name,supplier_name,supplier_code from '+
    ' (select * from "VBHPReturn_Pembelian" ) x where '+
    ' return_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',dt_awal))+' '+
    ' and return_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtSelesai.EditValue))+' '+
    ' union '+
    ' select return_no,return_date,faktur_no,'''' po_no,ak_ppn,ak_ppn_name,avg(ppn) ppn,sum(grandtotal)+avg(ppn) grandtotal,'+
    ' ak_htng,ak_ht_name,'''' item_code,0 qty,''''unit,''''item_stock_code,'''' item_name,account_ppn,  '+
    ' 0 subtotal,'''' ak_pemb,'''' ak_pemb_name,'''' group_name,supplier_name,supplier_code from '+
    ' (select * from "VBHPReturn_Pembelian"  where'+
    ' return_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',dt_awal))+' '+
    ' and return_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtSelesai.EditValue))+' )X '+
    ' GROUP BY return_no,return_date,faktur_no,ak_ppn,ak_ppn_name,ak_htng,ak_ht_name,account_ppn,supplier_name,'+
    'supplier_code ORDER BY trans_date,trans_no,grandtotal  ASC';
  {  sql.Text:= 'SELECT * FROM get_bh_return_pembelian(' +
                QuotedStr(FormatDateTime('yyyy-mm-dd', dt_awal)) + ',' +
                QuotedStr(FormatDateTime('yyyy-mm-dd', dtSelesai.EditValue)) +
                ')';        }
    Open;
  end;
end;


// Contoh RegisterClass
Initialization
  RegisterClass(TFBuku_HarianReturPembelian);
end.
