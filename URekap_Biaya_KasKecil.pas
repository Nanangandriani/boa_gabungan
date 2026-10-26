unit URekap_Biaya_KasKecil;

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
  DynVarsEh, cxCalendar, cxDropDownEdit, dxBar, cxBarEditItem, cxClasses,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, Data.DB, MemDS,
  DBAccess, Uni;

type
  TFRekap_Biaya_KasKecil = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridKontrak: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    BPrint: TdxBarSubItem;
    BProduksi: TdxBarButton;
    BNonProduksi: TdxBarButton;
    BClosed: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    CbKategori: TcxBarEditItem;
    dxBarLargeButton2: TdxBarLargeButton;
    dsRekapBiaya: TDataSource;
    QRekapBiaya: TUniQuery;
    QRekapBiayaactor_code: TMemoField;
    QRekapBiayanik_employee: TMemoField;
    QRekapBiayanik_ktp: TMemoField;
    QRekapBiayastat_ptkp: TMemoField;
    QRekapBiayatype_gender: TMemoField;
    QRekapBiayano_rekening: TMemoField;
    QRekapBiayaactor_name: TMemoField;
    QRekapBiayakaresidenan_code: TMemoField;
    QRekapBiayaname: TMemoField;
    QRekapBiayanm_cost: TMemoField;
    QRekapBiayajum_gaji_upah: TFloatField;
    QRekapBiayajum_perdin: TFloatField;
    QRekapBiayajum_adm_umum: TFloatField;
    procedure DxRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRekap_Biaya_KasKecil: TFRekap_Biaya_KasKecil;

implementation

{$R *.dfm}

uses UDataModule;

procedure TFRekap_Biaya_KasKecil.DxRefreshClick(Sender: TObject);
begin
    if dtmulai.EditValue= null then
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

  DBGridKontrak.StartLoadingStatus() ;
    with QRekapBiaya do
    begin
      close;
      sql.Clear;
      sql.Text:=' SELECT * FROM public.get_rekap_cost_actor( '+
                ' '+QuotedStr(FormatDateTime('yyy-mm-dd',Dtmulai.EditValue))+', '+
                ' '+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai.EditValue))+');';
      ExecSQL;
    end;
  QRekapBiaya.open;
  DBGridKontrak.FinishLoadingStatus();
end;

procedure TFRekap_Biaya_KasKecil.FormShow(Sender: TObject);
begin
  Dtmulai.EditValue := Date;
  DtSelesai.EditValue := Date;
end;

initialization
RegisterClass(TFRekap_Biaya_KasKecil);
end.
