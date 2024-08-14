unit UListKlasifikasi;

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
  DynVarsEh, Data.DB, MemDS, DBAccess, Uni, dxBar, cxClasses, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFListKlasifikasi = class(TForm)
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
    QMasterKlasifikasi: TUniQuery;
    DsMasterKlasifikasi: TDataSource;
    QMasterKlasifikasiid_master: TGuidField;
    QMasterKlasifikasicode_type_customer: TStringField;
    QMasterKlasifikasiname_type_customer: TStringField;
    QMasterKlasifikasicode_item_category: TStringField;
    QMasterKlasifikasiname_item_category: TStringField;
    QMasterKlasifikasicode_type_count: TStringField;
    QMasterKlasifikasiname_type_count: TStringField;
    QMasterKlasifikasicode_customer_selling_type: TStringField;
    QMasterKlasifikasiname_customer_selling_type: TStringField;
    QMasterKlasifikasicode_sell_type: TStringField;
    QMasterKlasifikasiname_sell_type: TStringField;
    QMasterKlasifikasistatus_payment: TIntegerField;
    QMasterKlasifikasiname_payment: TMemoField;
    QMasterKlasifikasistatus_grouping: TIntegerField;
    QMasterKlasifikasiname_grouping: TMemoField;
    QMasterKlasifikasistatus_tax: TIntegerField;
    QMasterKlasifikasiname_tax: TMemoField;
    QMasterKlasifikasistatus_disc: TIntegerField;
    QMasterKlasifikasiname_disc: TMemoField;
    QMasterKlasifikasistatus_promo: TIntegerField;
    QMasterKlasifikasiname_promo: TMemoField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure QMasterKlasifikasiname_sell_typeGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QMasterKlasifikasiname_paymentGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QMasterKlasifikasiname_groupingGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QMasterKlasifikasiname_taxGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QMasterKlasifikasiname_discGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QMasterKlasifikasiname_promoGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
  end;

var
  FListKlasifikasi: TFListKlasifikasi;

implementation

{$R *.dfm}

uses UDataModule, UDaftarKlasifikasi;

procedure TFListKlasifikasi.Clear;
begin
end;

procedure TFListKlasifikasi.QMasterKlasifikasiname_discGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QMasterKlasifikasiname_disc.AsString, 1, 255);
end;

procedure TFListKlasifikasi.QMasterKlasifikasiname_groupingGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QMasterKlasifikasiname_grouping.AsString, 1, 255);
end;

procedure TFListKlasifikasi.QMasterKlasifikasiname_paymentGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QMasterKlasifikasiname_payment.AsString, 1, 255);
end;

procedure TFListKlasifikasi.QMasterKlasifikasiname_promoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QMasterKlasifikasiname_promo.AsString, 1, 255);
end;

procedure TFListKlasifikasi.QMasterKlasifikasiname_sell_typeGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QMasterKlasifikasiname_sell_type.AsString, 1, 255);
end;

procedure TFListKlasifikasi.QMasterKlasifikasiname_taxGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QMasterKlasifikasiname_tax.AsString, 1, 255);
end;

procedure TFListKlasifikasi.ActBaruExecute(Sender: TObject);
begin
  FDaftarKlasifikasi.TabDaftarKlasifikasiPelanggan.TabVisible:=true;
  FDaftarKlasifikasi.TabMasterKlasifikasi.TabVisible:=true;
  FDaftarKlasifikasi.PageControl1.ActivePage:=FDaftarKlasifikasi.TabMasterKlasifikasi;
  FDaftarKlasifikasi.Clear;
  FDaftarKlasifikasi.ShowModal;
end;

procedure TFListKlasifikasi.ActROExecute(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QMasterKlasifikasi do
   begin
       close;
       sql.Clear;
       sql.Text:=' SELECT a."id" AS id_master, "code_type_customer", b.NAME AS "name_type_customer", '+
                 ' "code_item_category", c.category as "name_item_category", '+
                 ' "code_type_count",	d.name as "name_type_count", "code_customer_selling_type", '+
                 ' e.name as "name_customer_selling_type", "code_sell_type", f.name as "name_sell_type", '+
                 ' "status_payment", case when "status_payment"=0 then ''Cash'' else ''Kredit'' end "name_payment", '+
                 ' "status_grouping",	case when "status_grouping"=0 then ''Non Grouping'' else ''Grouping'' end "name_grouping", '+
                 ' "status_tax", case when "status_tax"=0 then ''Tidak'' else ''Iya'' end "name_tax", '+
                 ' "status_disc",	case when "status_disc"=0 then ''Disc'' else ''Value (Rp)'' end "name_disc", '+
                 ' "status_promo", case when "status_promo"=0 then ''Tidak'' else ''Iya'' end "name_promo" '+
                 ' FROM	"t_sales_classification" a '+
                 ' LEFT JOIN t_customer_type b ON a.code_type_customer = b.code '+
                 ' LEFT JOIN t_item_category c ON a.code_item_category = c.code '+
                 ' LEFT JOIN t_sell_type_count d ON a.code_type_count = d.code '+
                 ' LEFT JOIN t_customer_selling_type e ON a.code_customer_selling_type = e.code '+
                 ' LEFT JOIN t_sell_type f ON a.code_sell_type = f.code '+
                 ' Order By b.NAME asc ';
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListKlasifikasi.ActUpdateExecute(Sender: TObject);
begin
  FDaftarKlasifikasi.TabDaftarKlasifikasiPelanggan.TabVisible:=true;
  FDaftarKlasifikasi.TabMasterKlasifikasi.TabVisible:=true;
  FDaftarKlasifikasi.PageControl1.ActivePage:=FDaftarKlasifikasi.TabMasterKlasifikasi;
  FDaftarKlasifikasi.Clear;
  FDaftarKlasifikasi.ShowModal;
end;

initialization
  RegisterClass(TFListKlasifikasi);

end.
