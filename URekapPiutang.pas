unit URekapPiutang;

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
  cxCalendar, cxRadioGroup, cxCheckGroup, MemTableDataEh, Data.DB, frxClass,
  frxExportBaseDialog, frxExportPDF, MemTableEh, MemDS, DBAccess, Uni, frxDBSet,
  dxBarExtItems, cxBarEditItem, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon, Vcl.StdCtrls, RzLabel, System.DateUtils,
  frxExportXLS;

type
  TFRekapPiutang = class(TForm)
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
    cbVolume: TdxBarCombo;
    cbPaperSize: TdxBarCombo;
    dxBarLargeButton6: TdxBarLargeButton;
    dtTanggal: TdxBarDateCombo;
    cbSBU: TdxBarCombo;
    dxBarLargeButton7: TdxBarLargeButton;
    cbTP: TcxBarEditItem;
    DsRekapPiutang: TDataSource;
    Report: TfrxReport;
    frxDBDatasetRekapPiutang: TfrxDBDataset;
    QRekapPiutang: TUniQuery;
    Qreport: TUniQuery;
    frxPDFExport1: TfrxPDFExport;
    cxBarEditItem12: TcxBarEditItem;
    cbBulan: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    frxXLSExport1: TfrxXLSExport;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure cbTPPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    strCodeTP: String;
    procedure Clear;
  end;

  function FRekapPiutang: TFRekapPiutang;

//var
//  FRekapPiutang: TFRekapPiutang;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UMy_Function, UHomeLogin, UMainMenu;

var
  rekappiutang : TFRekapPiutang;

function FRekapPiutang: TFRekapPiutang;
begin
  if rekappiutang <> nil then
    FRekapPiutang:= rekappiutang
  else
    Application.CreateForm(TFRekapPiutang, Result);
end;

procedure TFRekapPiutang.Clear;
begin
  cbTP.EditValue:='';
  strCodeTP:='';
  cbBulan.ItemIndex:=0;
  edTahun.Text:='2026';
end;

procedure TFRekapPiutang.cbTPPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='rekappiutangtp';
  FMasterData.update_grid('code','name','description','t_region_tp','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFRekapPiutang.dxBarLargeButton5Click(Sender: TObject);
var strReportName: String;
    TglMulai, TglAkhir: TDateTime;
    Tahun, Bulan: Integer;
begin
  Tahun := StrToInt(edTahun.Text);
  Bulan := (cbBulan.ItemIndex + 1);

  TglMulai := EncodeDate(Tahun, Bulan, 1);
  TglAkhir := EndOfAMonth(Tahun, Bulan);

  if cbTP.EditValue='' then
  begin
    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    with Qreport do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT customer_code,customer_name, customer_name_pkp, '+
                'SUM(COALESCE(saldo_awal,0)) AS saldo_awal, SUM(COALESCE(debet,0)) debet, '+
                'SUM(COALESCE(kredit,0))kredit,(SUM(COALESCE(saldo_awal,0))+SUM(COALESCE(debet,0))- SUM(COALESCE(kredit,0))) sisa_piutang,'+
                'code_tp,tp,code_kabupaten,kabupaten,code_kecamatan,UPPER(kecamatan) kecamatan '+
                'FROM "public"."get_piutang_trx2" ('+QuotedStr(FormatDateTime('yyyy-mm-dd',TglMulai))+','+QuotedStr(FormatDateTime('yyyy-mm-dd',TglAkhir))+') '+
                'WHERE (no_inv_tax <> '''' AND no_inv_tax IS NOT NULL) OR LOWER(keterangan2) = ''saldo awal'' '+
                'GROUP BY customer_code,customer_name, customer_name_pkp, code_tp,tp,code_kabupaten,kabupaten,code_kecamatan,kecamatan '+
                'HAVING '+
                '(SUM(COALESCE(saldo_awal,0)) <> 0 OR '+
                'SUM(COALESCE(debet,0)) <> 0 OR  '+
                'SUM(COALESCE(kredit,0)) <> 0) AND code_tp='+QuotedStr(strCodeTP)+'  '+
                'ORDER BY kabupaten asc,kecamatan asc, customer_name ASC';
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
      MessageDlg('Tidak ada data..!!',mtInformation,[mbRetry],0);
    end;

    strReportName:='RptRekapPiutang';

    cLocation := ExtractFilePath(Application.ExeName);
    Report.LoadFromFile(cLocation +'report/'+strReportName+''+ '.fr3');
    Report.ShowReport();
  end;
end;

procedure TFRekapPiutang.dxBarLargeButton6Click(Sender: TObject);
var
  TglMulai, TglAkhir: TDateTime;
  Tahun, Bulan: Integer;
begin
  Tahun := StrToInt(edTahun.Text);
  Bulan := (cbBulan.ItemIndex + 1);

  TglMulai := EncodeDate(Tahun, Bulan, 1);
  TglAkhir := EndOfAMonth(Tahun, Bulan);

  if cbTP.EditValue='' then
  begin
    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    with QRekapPiutang do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT customer_code,customer_name,customer_name_pkp, '+
                'SUM(COALESCE(saldo_awal,0)) AS saldo_awal, SUM(COALESCE(debet,0)) debet, '+
                'SUM(COALESCE(kredit,0))kredit,(SUM(COALESCE(saldo_awal,0))+SUM(COALESCE(debet,0))- SUM(COALESCE(kredit,0))) sisa_piutang,'+
                'code_tp,tp,code_kabupaten,kabupaten,code_kecamatan,UPPER(kecamatan) kecamatan '+
                'FROM "public"."get_piutang_trx2" ('+QuotedStr(FormatDateTime('yyyy-mm-dd',TglMulai))+','+QuotedStr(FormatDateTime('yyyy-mm-dd',TglAkhir))+') '+
                'GROUP BY customer_code,customer_name, customer_name_pkp, code_tp,tp,code_kabupaten,kabupaten,code_kecamatan,kecamatan '+
                'HAVING '+
                '(SUM(COALESCE(saldo_awal,0)) <> 0 OR '+
                'SUM(COALESCE(debet,0)) <> 0 OR  '+
                'SUM(COALESCE(kredit,0)) <> 0) AND code_tp='+QuotedStr(strCodeTP)+' '+
                'ORDER BY kabupaten asc,kecamatan asc, customer_name ASC';
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

procedure TFRekapPiutang.dxBarLargeButton7Click(Sender: TObject);
begin
  Clear;
end;

procedure TFRekapPiutang.FormCreate(Sender: TObject);
begin
  rekappiutang:=Self;
end;

procedure TFRekapPiutang.FormDestroy(Sender: TObject);
begin
  rekappiutang:=nil
end;

procedure TFRekapPiutang.FormShow(Sender: TObject);
begin
  Clear;
end;

procedure TFRekapPiutang.ReportGetValue(const VarName: string;
  var Value: Variant);
var
  tgl1,bulan1,tahun1: STRING;
begin
//  tgl1:=FormatDateTime('DD', dtTanggal.Date);
//  bulan1:=convbulanInd(StrToInt(FormatDateTime('M', dtTanggal.Date)));
//  tahun1:=FormatDateTime('YYYY', dtTanggal.Date);

  if CompareText(VarName, 'TP') = 0 then
  Value := UpperCase(cbTP.EditValue);

  if CompareText(VarName, 'SBU') = 0 then
  Value := FHomeLogin.vNamaPRSH;

  if CompareText(VarName, 'TANGGAL') = 0 then
  Value := cbBulan.Text+' '+edTahun.Text;
end;

initialization
  RegisterClass(TFRekapPiutang);

end.
