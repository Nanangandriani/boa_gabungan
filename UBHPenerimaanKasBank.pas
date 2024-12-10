unit UBHPenerimaanKasBank;

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
  DynVarsEh, cxCalendar, cxButtonEdit, Data.DB, MemDS, DBAccess, Uni, dxBar,
  cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFBHPenerimaanKasBank = class(TForm)
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
    edKaresidenan: TcxBarEditItem;
    btPreview: TdxBarLargeButton;
    btSearch: TdxBarLargeButton;
    edKabupaten: TcxBarEditItem;
    QBHPenerimaanKasBank: TUniQuery;
    DsBHPenerimaanKasBank: TDataSource;
    QBHPenerimaanKasBankvoucher_no: TStringField;
    QBHPenerimaanKasBanktrans_date: TDateField;
    QBHPenerimaanKasBankmodule_id: TIntegerField;
    QBHPenerimaanKasBankcode_cust: TStringField;
    QBHPenerimaanKasBankname_cust: TStringField;
    QBHPenerimaanKasBankcode_region: TStringField;
    QBHPenerimaanKasBankfor_acceptance: TStringField;
    QBHPenerimaanKasBankdescription: TMemoField;
    QBHPenerimaanKasBankjum_kas: TFloatField;
    QBHPenerimaanKasBankaccount_name_bank: TStringField;
    QBHPenerimaanKasBankaccount_number_bank: TStringField;
    QBHPenerimaanKasBankjum_bank: TFloatField;
    QBHPenerimaanKasBankjum_piutang: TFloatField;
    QBHPenerimaanKasBankak_lain_kre: TMemoField;
    QBHPenerimaanKasBankak_nm_lain_kre: TMemoField;
    QBHPenerimaanKasBankjum_lain_kre: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btSearchClick(Sender: TObject);
    procedure QBHPenerimaanKasBankdescriptionGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QBHPenerimaanKasBankak_lain_kreGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QBHPenerimaanKasBankak_nm_lain_kreGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_kares, vkd_kab : String ;
  end;

function FBHPenerimaanKasBank: TFBHPenerimaanKasBank;
//var
//  FBHPenerimaanKasBank: TFBHPenerimaanKasBank;

implementation

{$R *.dfm}

uses UMasterWilayah, UMasterData;
var
  realfbhp : TFBHPenerimaanKasBank;
// implementasi function
function FBHPenerimaanKasBank: TFBHPenerimaanKasBank;
begin
  if realfbhp <> nil then
    FBHPenerimaanKasBank:= realfbhp
  else
    Application.CreateForm(TFBHPenerimaanKasBank, Result);
end;

procedure TFBHPenerimaanKasBank.btSearchClick(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QBHPenerimaanKasBank do
   begin
       close;
       sql.Clear;
       sql.add(' SELECT a.*,code_karesidenan,code_kab,name_kab from "public"."vbhpenerimaan_kas_bank" a  '+
               ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
               ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
               ' ON "left"(code_region, 4)=b.code_kab '+
               ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' ');
         if edKaresidenan.EditValue<>'' then
         begin
          sql.add(' AND code_karesidenan='+QuotedStr(vkd_kares)+' ');
         end;
         if edKabupaten.EditValue<>'' then
         begin
          sql.add(' AND code_kab='+QuotedStr(vkd_kab)+' ');
         end;
       sql.add(' ORDER BY trans_date, voucher_no');
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFBHPenerimaanKasBank.edKabupatenPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='bhpenerimaankas_bank_kab';
  FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(vkd_kares)+'');
  FMasterData.ShowModal;
end;

procedure TFBHPenerimaanKasBank.edKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='bhpenerimaankas_bank_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFBHPenerimaanKasBank.FormCreate(Sender: TObject);
begin
  realfbhp:=self;
end;

procedure TFBHPenerimaanKasBank.FormDestroy(Sender: TObject);
begin
  realfbhp:=nil;
end;

procedure TFBHPenerimaanKasBank.FormShow(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edKaresidenan.EditValue := '';
  edKabupaten.EditValue := '';
  vkd_kares:='';
  vkd_kab:='';
end;

procedure TFBHPenerimaanKasBank.QBHPenerimaanKasBankak_lain_kreGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text:=copy(QBHPenerimaanKasBankak_lain_kre.asstring,255);
end;

procedure TFBHPenerimaanKasBank.QBHPenerimaanKasBankak_nm_lain_kreGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text:=copy(QBHPenerimaanKasBankak_nm_lain_kre.asstring,255);
end;

procedure TFBHPenerimaanKasBank.QBHPenerimaanKasBankdescriptionGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text:=copy(QBHPenerimaanKasBankdescription.asstring,255);
end;

initialization
  RegisterClass(TFBHPenerimaanKasBank);

end.
