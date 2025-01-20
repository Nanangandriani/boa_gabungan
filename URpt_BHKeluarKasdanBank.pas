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
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFRpt_BHKeluarKasdanBank = class(TForm)
    rpt: TfrxReport;
    QKasBank: TUniQuery;
    QKasBankvoucher: TStringField;
    QKasBankket: TMemoField;
    QKasBanknm: TMemoField;
    QKasBanknosj: TMemoField;
    QKasBankjum_kas: TFloatField;
    QKasBankjum_bank: TFloatField;
    QKasBankjum_akun_k: TFloatField;
    QKasBankkodesp_k: TStringField;
    QKasBanknamasp_k: TStringField;
    QKasBankkode3: TStringField;
    QKasBankjum_debit_hutang: TFloatField;
    QKasBanknopk: TStringField;
    QKasBanknmpk: TStringField;
    QKasBankjum: TFloatField;
    QKasBankkode3_1: TStringField;
    QKasBankkodesp_k_1: TStringField;
    QKasBanknopk_1: TStringField;
    QKasBankvoucher2: TMemoField;
    QKasBankket2: TMemoField;
    QKasBankjum_kas2: TFloatField;
    QKasBanknourut: TLargeintField;
    QKasBanknomor: TLargeintField;
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
    Dskasbank: TDataSource;
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRpt_BHKeluarKasdanBank: TFRpt_BHKeluarKasdanBank;

implementation

{$R *.dfm}

uses UMy_Function;

procedure TFRpt_BHKeluarKasdanBank.dxBarLargeButton1Click(Sender: TObject);
begin
if DtMulai.EditValue<> null then
begin
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BHKeluar_KasdanBank.Fr3');
    SetMemo(Rpt,'MemoPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.EditValue));
    rpt.ShowReport();
end else
  ShowMessage('Tanggal tidak boleh kosong');
end;

initialization
RegisterClass(TFRpt_BHKeluarKasdanBank);

end.
