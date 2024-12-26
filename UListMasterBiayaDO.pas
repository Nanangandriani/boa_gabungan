unit UListMasterBiayaDO;

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
  TFListMasterBiayaDO = class(TForm)
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
    QBiayaDO: TUniQuery;
    DsBiayaDO: TDataSource;
    QBiayaDOname_starting_location: TMemoField;
    QBiayaDOname_province: TMemoField;
    QBiayaDOname_regency: TMemoField;
    QBiayaDOname_subdistrict: TMemoField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure QBiayaDOname_starting_locationGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QBiayaDOname_provinceGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QBiayaDOname_regencyGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QBiayaDOname_subdistrictGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListMasterBiayaDO: TFListMasterBiayaDO;

implementation

{$R *.dfm}

uses UNew_MasterBiayaDO, UDataModule;

procedure TFListMasterBiayaDO.ActBaruExecute(Sender: TObject);
begin
    FNew_MasterBiayaDO.Clear;
    FNew_MasterBiayaDO.ShowModal;
end;

procedure TFListMasterBiayaDO.ActROExecute(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QBiayaDO do
   begin
       close;
       sql.Clear;
       sql.Text:=' SELECT DISTINCT  '+
                 ' INITCAP("name_starting_location") as name_starting_location, '+
                 ' INITCAP("name_province") as name_province, '+
                 ' INITCAP("name_regency") as name_regency,  '+
                 ' INITCAP("name_subdistrict") as name_subdistrict from (  '+
                 ' SELECT "code_starting_location", "name_starting_location",  '+
                 ' "code_province", "name_province", "code_regency",  "name_regency", '+
                 ' "code_subdistrict", "name_subdistrict", "code_transport_type",  '+
                 ' "name_transport_type", "transportation_costs", "cost_per_point", '+
                 ' "additional_km_costs" from "public"."t_cost_delivery_order"  '+
                 ' WHERE deleted_at IS NULL) a  Order By "name_starting_location" asc ';
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListMasterBiayaDO.ActUpdateExecute(Sender: TObject);
begin
   FNew_MasterBiayaDO.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from (  '+
                 ' SELECT "code_starting_location", "name_starting_location",  '+
                 ' "code_province", "name_province", "code_regency",  "name_regency", '+
                 ' "code_subdistrict", "name_subdistrict", "code_transport_type",  '+
                 ' "name_transport_type", "transportation_costs", "cost_per_point", '+
                 ' "additional_km_costs" from "public"."t_cost_delivery_order"  '+
                 ' WHERE deleted_at IS NULL)  a ';
       open;
   end;
  if Dm.Qtemp.RecordCount=0 then
  begin
    ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
    exit;
  end;
  if Dm.Qtemp.RecordCount<>0 then
  begin
  with FNew_MasterBiayaDO do
  begin
    edKodeLokasi.Text:=Dm.Qtemp.FieldByName('code_starting_location').AsString;
    edNamaLokasi.Text:=Dm.Qtemp.FieldByName('name_starting_location').AsString;
    edKodeProvinsi.Text:=Dm.Qtemp.FieldByName('code_province').AsString;
    edNamaProvinsi.Text:=Dm.Qtemp.FieldByName('name_province').AsString;
    edKodeKabupaten.Text:=Dm.Qtemp.FieldByName('code_regency').AsString;
    edNamaKabupaten.Text:=Dm.Qtemp.FieldByName('name_regency').AsString;
    edKodeKecamatan.Text:=Dm.Qtemp.FieldByName('code_subdistrict').AsString;
    edNamaKecamatan.Text:=Dm.Qtemp.FieldByName('name_subdistrict').AsString;
  end;
  end;
  //FNew_MasterBiayaDO.btPreviewClick(Sender);
  FNew_MasterBiayaDO.RefreshGrid;
  FNew_MasterBiayaDO.ShowModal;
end;

procedure TFListMasterBiayaDO.QBiayaDOname_provinceGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QBiayaDOname_province.AsString, 1, 255);
end;

procedure TFListMasterBiayaDO.QBiayaDOname_regencyGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QBiayaDOname_regency.AsString, 1, 255);
end;

procedure TFListMasterBiayaDO.QBiayaDOname_starting_locationGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QBiayaDOname_starting_location.AsString, 1, 255);
end;

procedure TFListMasterBiayaDO.QBiayaDOname_subdistrictGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QBiayaDOname_subdistrict.AsString, 1, 255);
end;

initialization
  RegisterClass(TFListMasterBiayaDO);


end.
