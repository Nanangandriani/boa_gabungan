unit UListKonversi_Material;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  dxRibbon, dxBar, cxClasses, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni;

type
  TFListKonvMaterial = class(TForm)
    DBGridEh1: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DsKonversiM: TDataSource;
    QKonversiM: TUniQuery;
    procedure dxBarLargeBaruClick(Sender: TObject);
    procedure dxBarRefreshClick(Sender: TObject);
    procedure dxBarUpdateClick(Sender: TObject);
  private
    { Private declarations }
    Procedure Refresh;

  public
    { Public declarations }
    Procedure Autonumber;
  end;

var
  FListKonvMaterial: TFListKonvMaterial;
  status,urut:integer;

implementation

{$R *.dfm}

uses UNewKonv_Material, UDataModule;


procedure TFListKonvMaterial.Refresh;
begin

end;


procedure TFListKonvMaterial.Autonumber;
begin
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:=' SELECT max(t_konversi_material.no_konversi)AS urut FROM t_konversi_material';
     execsql;
   end;
   urut:=Dm.Qtemp.FieldByName('urut').AsInteger+1;
   FNewKonv_Material.Edno.Text:=FloatToStr(urut);
end;

procedure TFListKonvMaterial.dxBarLargeBaruClick(Sender: TObject);
begin
  Status:=0;
  FNewKonv_Material.showmodal;
  Self.Autonumber;
  FNewKonv_Material.caption:='New Konversi Material';
end;

procedure TFListKonvMaterial.dxBarRefreshClick(Sender: TObject);
begin
  DBGridEh1.StartLoadingStatus();
  Self.Refresh;
  DBGridEh1.FinishLoadingStatus();
end;

procedure TFListKonvMaterial.dxBarUpdateClick(Sender: TObject);
begin
  FNewKonv_Material.Show;
  FNewKonv_Material.Caption:='Update Konversi Material';
  Status:=1;
  with QKonversiM do
  begin
    FNewKonv_Material.Edno.Text:=QKonversiM.FieldByName('no_konversi').AsString;
    FNewKonv_Material.EdKd.Text:=QKonversiM.FieldByName('kd_material').AsString;
    FNewKonv_Material.EdNm.Text:=QKonversiM.FieldByName('nm_material').AsString;
    FNewKonv_Material.Edqty.Text:=QKonversiM.FieldByName('qtysatuan').AsString;
    FNewKonv_Material.Edsatuan.Text:=QKonversiM.FieldByName('satuan').AsString;
    FNewKonv_Material.EdqtyKon.Text:=QKonversiM.FieldByName('qtykonversi').AsString;
    FNewKonv_Material.EdKonversi.Text:=QKonversiM.FieldByName('konversi').AsString;
    FNewKonv_Material.Edcategory.Text:=QKonversiM.FieldByName('category').AsString;
  end;
end;

end.
