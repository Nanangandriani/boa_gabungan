unit URpt_Arus_Kas;

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
  DynVarsEh, cxCalendar, cxDropDownEdit, Data.DB, frxClass, frxDBSet, MemDS,
  DBAccess, Uni, dxBar, cxBarEditItem, cxClasses, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFRpt_arus_kas = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridKontrak: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    BPrint: TdxBarSubItem;
    BProduksi: TdxBarButton;
    BNonProduksi: TdxBarButton;
    BClosed: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    QArus_kas: TUniQuery;
    DbArus_kas: TfrxDBDataset;
    Rpt: TfrxReport;
    DsArus_kas: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRpt_arus_kas: TFRpt_arus_kas;

implementation

{$R *.dfm}

uses UMy_Function;

procedure TFRpt_arus_kas.dxBarLargeButton1Click(Sender: TObject);
begin
  with QArus_kas do
  begin
    close;
    sql.Clear;
    sql.Text:='select *,db-kd total from "VTrans_JournalReal" where trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue));
    Execute;
  end;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Arus_Kas.Fr3');
    SetMemo(Rpt,'MPeriode','Dari '+FormatDateTime('dd MMM yyyy',DtMulai.EditValue)+' s/d '+FormatDateTime('dd MMM yyyy',DtSelesai.EditValue));
    Rpt.ShowReport();
end;

procedure TFRpt_arus_kas.DxRefreshClick(Sender: TObject);
begin
  with QArus_kas do
  begin
    close;
    sql.Clear;
    sql.Text:='select *,db-kd total from "VTrans_JournalReal" where trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue));
    open;
  end;
end;

procedure TFRpt_arus_kas.FormShow(Sender: TObject);
begin
  DtMulai.EditValue:=date;
  DtSelesai.EditValue:=date;
end;

initialization
RegisterClass(TFRpt_arus_kas);

end.
