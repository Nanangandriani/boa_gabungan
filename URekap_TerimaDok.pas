unit URekap_TerimaDok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB, MemDS,
  DBAccess, Uni, RzButton, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  cxCalendar, dxBar, cxBarEditItem, cxClasses, dxRibbon, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh;

type
  TFRpt_RekapTerimaDok = class(TForm)
    Label1: TLabel;
    DtPO: TRzDateTimeEdit;
    RzPanel2: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    QRekapDok: TUniQuery;
    DbRekapDok: TfrxDBDataset;
    Rpt: TfrxReport;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    BProduksi: TdxBarButton;
    BNonProduksi: TdxBarButton;
    BClosed: TdxBarButton;
    dxPrint: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    DBGridEh1: TDBGridEh;
    DsRekapDok: TDataSource;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzPanel2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dxPrintClick(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
Function  FRpt_RekapTerimaDok: TFRpt_RekapTerimaDok;

implementation

{$R *.dfm}

uses umainmenu, UDataModule;
var
  realfrptRekapdok: TFRpt_RekapTerimaDok;
// implementasi function
function frpt_rekapterimadok: TFRpt_RekapTerimaDok;
begin
  if realfrptRekapdok<> nil then
    FRpt_RekapTerimaDok:= realfrptRekapdok
  else
    Application.CreateForm(TFRpt_RekapTerimaDok, Result);
end;
procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);
var
  memo: TfrxMemoView;
begin
  memo := aReport.FindObject(aMemoName) as TfrxMemoView;
  if memo <> nil then
    memo.Text := aText;
end;

procedure TFRpt_RekapTerimaDok.dxPrintClick(Sender: TObject);
begin
  DM.QPerusahaan.Close;
  DM.QPerusahaan.Open;
  QRekapDok.Close;
  if DtMulai.EditValue= null then
    begin
      MessageDlg('Tanggal Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtMulai.SetFocus;
      Exit;
    end;
  with QRekapDok do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from "V_RekapTerimaDok" where faktur_date='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.EditValue));
    ExecSQL;
  end;
  if QRekapDok.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_RekapTerimaDok.Fr3');
  SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',Dtmulai.EditValue));
 // SetMemo(Rpt,'msbu',' '+dm.QPerusahaan['kode_perusahaan']);
  Rpt.ShowReport();
end;

procedure TFRpt_RekapTerimaDok.DxRefreshClick(Sender: TObject);
begin
  if DtMulai.EditValue= null then
    begin
      MessageDlg('Tanggal Mulai Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtMulai.SetFocus;
      Exit;
    end;
  DM.QPerusahaan.Close;
  DM.QPerusahaan.Open;
  QRekapDok.Close;
  with QRekapDok do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from "V_RekapTerimaDok" where faktur_date='+QuotedStr(FormatDateTime('yyy-mm-dd',Dtmulai.EditValue));
    ExecSQL;
  end;
  if QRekapDok.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else;
  QRekapDok.Open;
end;

procedure TFRpt_RekapTerimaDok.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFRpt_RekapTerimaDok.FormCreate(Sender: TObject);
begin
  realfrptRekapdok:=self;
end;

procedure TFRpt_RekapTerimaDok.FormDestroy(Sender: TObject);
begin
  realfrptRekapdok:=nil;
end;

procedure TFRpt_RekapTerimaDok.RzBitBtn1Click(Sender: TObject);
begin
  DM.QPerusahaan.Close;
  DM.QPerusahaan.Open;
  with QRekapDok do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from "V_RekapTerimaDok" where faktur_date='+QuotedStr(FormatDateTime('yyy-mm-dd',DtPO.Date));
    ExecSQL;
  end;
  if QRekapDok.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_RekapTerimaDok.Fr3');
  SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtPO.Date));
  SetMemo(Rpt,'msbu',' '+dm.QPerusahaan['kode_perusahaan']);
  Rpt.ShowReport();
  close;
end;

procedure TFRpt_RekapTerimaDok.RzPanel2DblClick(Sender: TObject);
begin
  with QRekapDok do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from "V_RekapTerimaDok" where tgl_faktur='+QuotedStr(FormatDateTime('yyy-mm-dd',DtPO.Date));
    ExecSQL;
  end;
  if QRekapDok.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_RekapTerimaDok.Fr3');
    SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtPO.Date));
    SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
    Rpt.DesignReport();
    close;
end;

initialization
RegisterClass(TFRpt_RekapTerimaDok);

end.
