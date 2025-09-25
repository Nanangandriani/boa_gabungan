unit UDaftarPiutangBermasalah;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
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
  dxRibbonCustomizationForm, cxSpinEdit, cxLabel, cxDropDownEdit,
  MemTableDataEh, Data.DB, DataDriverEh, MemTableEh, MemDS, DBAccess, Uni,
  dxBarExtItems, cxBarEditItem, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, RzButton, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzSpnEdt, RzCmboBx, dxRibbon, RzLabel, cxProgressBar,
  cxButtonEdit;

type
  TFDaftarPiutangBermasalah = class(TForm)
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
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar3: TdxBar;
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
    cbBulan: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    QDaftarPiutangBermasalah: TUniQuery;
    QDaftarPiutangBermasalahcustomer_code: TStringField;
    QDaftarPiutangBermasalahmonth: TSmallintField;
    QDaftarPiutangBermasalahyear: TSmallintField;
    QDaftarPiutangBermasalahcreated_at: TDateTimeField;
    QDaftarPiutangBermasalahcreated_by: TStringField;
    QDaftarPiutangBermasalahupdated_at: TDateTimeField;
    QDaftarPiutangBermasalahupdated_by: TStringField;
    QDaftarPiutangBermasalahid_customer_sales_target: TLargeintField;
    QDaftarPiutangBermasalahstatus: TBooleanField;
    QDaftarPiutangBermasalahdeleted_at: TDateTimeField;
    QDaftarPiutangBermasalahdeleted_by: TStringField;
    QDaftarPiutangBermasalahcustomer_name: TStringField;
    DsTargetPenjualan: TDataSource;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    cxBarEditItem6: TcxBarEditItem;
    edKaresidenan: TcxBarEditItem;
    cxBarEditItem7: TcxBarEditItem;
    edKabupaten: TcxBarEditItem;
    cxBarEditItem9: TcxBarEditItem;
    cxBarEditItem10: TcxBarEditItem;
    edKecamatan: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edKecamatanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure edKaresidenanChange(Sender: TObject);
    procedure edKabupatenChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StrKaresidananID,StrKabupatenID,StrKecamatanID: String;
  end;

  function FDaftarPiutangBermasalah: TFDaftarPiutangBermasalah;
//var
//  FDaftarPiutangBermasalah: TFDaftarPiutangBermasalah;

implementation

{$R *.dfm}

uses UMasterWilayah, UMasterData, UMy_Function, UHomeLogin;
var
  realdaftarpiutangbermasalah : TFDaftarPiutangBermasalah;

function FDaftarPiutangBermasalah: TFDaftarPiutangBermasalah;
begin
  if realdaftarpiutangbermasalah <> nil then
    FDaftarPiutangBermasalah:= realdaftarpiutangbermasalah
  else
    Application.CreateForm(TFDaftarPiutangBermasalah, Result);
end;

procedure TFDaftarPiutangBermasalah.edKabupatenChange(Sender: TObject);
begin
  StrKecamatanID:='';
  edKecamatan.EditValue:='';
end;

procedure TFDaftarPiutangBermasalah.edKabupatenPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if edKaresidenan.EditValue<>'' then
  begin
    FMasterData.Caption:='Master Data Kabupaten';
    FMasterData.vcall:='daftarpiutangbermasalah_kab';
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(StrKaresidananID)+'');
    StrKabupatenID:='';
    StrKecamatanID:='';
    edKabupaten.EditValue:='';
    edKecamatan.EditValue:='';
  end else
  begin
    MessageDlg('Karesidenan wajib di isi..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFDaftarPiutangBermasalah.edKaresidenanChange(Sender: TObject);
begin
  StrKabupatenID:='';
  StrKecamatanID:='';
  edKabupaten.EditValue:='';
  edKecamatan.EditValue:='';
end;

procedure TFDaftarPiutangBermasalah.edKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='daftarpiutangbermasalah';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFDaftarPiutangBermasalah.edKecamatanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if edKabupaten.EditValue<>'' then
  begin
    FMasterData.Caption:='Master Data Kecamatan';
    FMasterData.vcall:='daftarpiutangbermasalah_kec';
    FMasterData.update_grid('code','name','description','t_region_subdistrict','WHERE	deleted_at IS NULL and code_regency='+QuotedStr(StrKabupatenID)+'');
    FMasterData.ShowModal;
  end else
  begin
    MessageDlg('Kabupaten wajib di isi..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFDaftarPiutangBermasalah.FormCreate(Sender: TObject);
begin
  realdaftarpiutangbermasalah:=self;
end;

procedure TFDaftarPiutangBermasalah.FormDestroy(Sender: TObject);
begin
  realdaftarpiutangbermasalah:=nil;
end;

procedure TFDaftarPiutangBermasalah.FormShow(Sender: TObject);
begin
  StrKaresidananID:='';
  StrKabupatenID:='';
  StrKecamatanID:='';
  edKaresidenan.EditValue:='';
  edKabupaten.EditValue:='';
  edKecamatan.EditValue:='';
end;

initialization
  RegisterClass(TFDaftarPiutangBermasalah);

end.
