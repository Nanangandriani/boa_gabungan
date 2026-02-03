unit UDaftarPenggunaanFakturPajak;

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
  DynVarsEh, cxCalendar, frxExportXLSX, frxExportXLS, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, Data.DB, MemDS, DBAccess, Uni,
  dxBar, cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFDaftarPenggunaanFakturPajak = class(TForm)
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
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    btExportExcel: TdxBarLargeButton;
    btExportPDF: TdxBarLargeButton;
    dtAwal: TcxBarEditItem;
    dtAkhir: TcxBarEditItem;
    btPreview: TdxBarLargeButton;
    btSearch: TdxBarLargeButton;
    cbSBU: TdxBarCombo;
    dxBarLargeButton2: TdxBarLargeButton;
    btExport: TdxBarLargeButton;
    QDaftarPenggunaanFakturPajak: TUniQuery;
    QCetak: TUniQuery;
    dsDaftarPenggunaanFakturPajak: TDataSource;
    Report: TfrxReport;
    frxDBDDaftarPenggunaanFaktur: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure btPreviewClick(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
  end;

  function FDaftarPenggunaanFakturPajak: TFDaftarPenggunaanFakturPajak;

//var
//  FDaftarPenggunaanFakturPajak: TFDaftarPenggunaanFakturPajak;

implementation

{$R *.dfm}

uses UDataModule, UMy_Function, UHomeLogin;
var
  realfdaftarpenggunaanfakturpajak : TFDaftarPenggunaanFakturPajak;

function FDaftarPenggunaanFakturPajak: TFDaftarPenggunaanFakturPajak;
begin
  if realfdaftarpenggunaanfakturpajak <> nil then
    FDaftarPenggunaanFakturPajak:= realfdaftarpenggunaanfakturpajak
  else
    Application.CreateForm(TFDaftarPenggunaanFakturPajak, Result);
end;

procedure TFDaftarPenggunaanFakturPajak.btPreviewClick(Sender: TObject);
begin

  with QCetak do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT * FROM get_selling(NULL) '+
              'WHERE deleted_at is NULL and trans_date between '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
              ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+' '+
              ' ORDER BY ' +
             ' CASE ' +
             '   WHEN no_inv_tax IS NOT NULL AND no_inv_tax <> '''' THEN no_inv_tax ' +
             '   ELSE karesidenan || trans_no ' +
             ' END ASC' ;
    open;
  end;

  if QCetak.RecordCount=0 then
  begin
    showmessage('Tidak ada data yang bisa dicetak !');
    exit;
  end else
  begin
   cLocation := ExtractFilePath(Application.ExeName);
   Report.LoadFromFile(cLocation +'report/rpt_daftar_penggunaan_faktur_pajak'+ '.fr3');

   Report.ShowReport();
 end;
end;

procedure TFDaftarPenggunaanFakturPajak.btSearchClick(Sender: TObject);
begin
  with QDaftarPenggunaanFakturPajak do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT * FROM get_selling(NULL) '+
              'WHERE deleted_at is NULL and trans_date between '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
              ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+' ORDER BY trans_date ASC, trans_no ASC ' ;
    open;
  end;
end;

procedure TFDaftarPenggunaanFakturPajak.Clear;
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
end;

procedure TFDaftarPenggunaanFakturPajak.dxBarLargeButton2Click(Sender: TObject);
begin
  Clear;
end;

procedure TFDaftarPenggunaanFakturPajak.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  realfdaftarpenggunaanfakturpajak:=nil;
end;

procedure TFDaftarPenggunaanFakturPajak.FormCreate(Sender: TObject);
begin
  realfdaftarpenggunaanfakturpajak:=self;
end;

procedure TFDaftarPenggunaanFakturPajak.FormShow(Sender: TObject);
begin
  QDaftarPenggunaanFakturPajak.Close;
  QCetak.Close;
  Clear;
  FillSBUBarCombo(cbSBU);
end;

procedure TFDaftarPenggunaanFakturPajak.ReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'prsh') = 0 then
  Value := 'PT. '+FHomeLogin.vKodePRSH;

  if CompareText(VarName, 'periode') = 0 then
  Value := 'PERIODE '+formatdatetime('dd mmmm yyyy',dtAwal.EditValue)+' s/d '+formatdatetime('dd mmmm yyyy',dtAkhir.EditValue);
end;

initialization
  RegisterClass(TFDaftarPenggunaanFakturPajak);

end.
