unit UHasil_Percampuran_Barang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter, dxBar,
  cxClasses, dxRibbon, cxStyles, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableDataEh, DataDriverEh, MemTableEh,
  dxSkinBasic, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxCore,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFHasil_Perc_Barang = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBUpdate: TdxBarButton;
    dxBRefresh: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBbaru1: TdxBarButton;
    dxBbaru2: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    DBGridEh1: TDBGridEh;
    Qhasil: TUniQuery;
    DsHasil: TDataSource;
    dxBarManager1Bar3: TdxBar;
    dxBterima: TdxBarButton;
    Memhasil: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure dxBbaruClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure ActAppExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function FHasil_Perc_Barang: TFHasil_Perc_Barang;

implementation

{$R *.dfm}

uses UDataModule, UNew_HasilPercampuranBarang, umainmenu;
var RealFhasil_perc_material: TFhasil_perc_Barang;
function FHasil_Perc_Barang: TFHasil_Perc_Barang;
begin
  if RealFhasil_perc_material <> nil then Fhasil_perc_Barang:= RealFhasil_perc_material
  else  Application.CreateForm(TFHasil_Perc_Barang, Result);
end;
procedure TFHasil_Perc_Barang.ActAppExecute(Sender: TObject);
begin
  with FNew_Hasil_Perc_Barang do
  begin
    FNew_Hasil_Perc_Barang.Show;
    FNew_Hasil_Perc_Barang.Clear;
    FNew_Hasil_Perc_Barang.PnInput.Visible:=False;
    FNew_Hasil_Perc_Barang.Pnterima.visible:=True;
    with Qhasil do
    begin
      FNew_Hasil_Perc_Barang.Edno2.Text:=Memhasil['result_no'];
      FNew_Hasil_Perc_Barang.EdQty2.Text:=memhasil['qty'];
      FNew_Hasil_Perc_Barang.EdNo_permintaan2.Text:=Memhasil['mixing_no'];
      FNew_Hasil_Perc_Barang.ednm_material2.Text:=Memhasil['item_name'];
      FNew_Hasil_Perc_Barang.edkd_material2.Text:=Memhasil['item_stock_code'];
  //    FNew_Hasil_Perc_Barang.edno_material.Text:=Memhasil['no_material'];
      FNew_Hasil_Perc_Barang.EdSatuan2.Text:=Memhasil['unit'];
      FNew_Hasil_Perc_Barang.EdStatus.Text:=Memhasil['status'];
      FNew_Hasil_Perc_Barang.DtTanggal2.Date:=Memhasil['trans_date'];
    end;
  end;
end;

procedure TFHasil_Perc_Barang.ActBaruExecute(Sender: TObject);
begin
  with FNew_Hasil_Perc_Barang do
  begin
    Show;
    Clear;
  //  FNew_Hasil_Perc_Barang.Autonumber;
    PnInput.Visible:=True;
    Pnterima.visible:=False;
    BEdit.Visible:=False;
    BSimpan.Visible:=True;
    Caption:='New Hasil Percampuran Material';
  end;
//if Memhasil['status']=0 then ActApp.Enabled:=true else ActApp.Enabled:=false;
{  if Memhasil['status']=0 then
  begin
    ActApp.Enabled:=true;
    ActUpdate.Enabled:=true;
  end;
  if Memhasil['status']<>0 then
  begin
    ActApp.Enabled:=false;
    ActUpdate.Enabled:=false;
  end;   }
end;

procedure TFHasil_Perc_Barang.ActRoExecute(Sender: TObject);
begin
  DBGridEh1.StartLoadingStatus();
  DBGridEh1.FinishLoadingStatus();
  Memhasil.Close;
  if loksbu<>'' then
  begin
    with Qhasil do
    begin
      close;
      sql.Clear;
      SQL.Text:='select (case WHEN a.status=0 THEN ''In-Proses'' else ''Selesai'' END) AS statustr,A.*,'+
      ' B.item_name from warehouse.t_item_mixing_result A inner join warehouse.t_item_stock B on '+
      ' A.item_stock_code=B.item_stock_code where a.sbu_code='+QuotedStr(loksbu)+' order by a.result_no desc  ';
      ExecSQL;
    end;
    Qhasil.Open;
    Memhasil.Open;
  end;
  if loksbu='' then
  begin
    with Qhasil do
    begin
      close;
      sql.Clear;
      SQL.Text:='select (case WHEN a.status=0 THEN ''In-Proses'' else ''Selesai'' END) AS statustr,A.*,'+
      ' B.item_name from warehouse.t_item_mixing_result A inner join warehouse.t_item_stock B on '+
      ' A.item_stock_code=B.item_stock_code order by a.result_no desc  ';
      ExecSQL;
    end;
    Qhasil.Open;
    Memhasil.Open;
  end;
end;

procedure TFHasil_Perc_Barang.ActUpdateExecute(Sender: TObject);
begin
  FNew_Hasil_Perc_Barang.Show;
  FNew_Hasil_Perc_Barang.Clear;
  FNew_Hasil_Perc_Barang.PnInput.Visible:=True;
  FNew_Hasil_Perc_Barang.Pnterima.visible:=False;
  FNew_Hasil_Perc_Barang.BEdit.Visible:=True;
  FNew_Hasil_Perc_Barang.BSimpan.Visible:=False;
  FNew_Hasil_Perc_Barang.Caption:='Update Hasil Percampuran Material';
  with Memhasil do
  begin
    FNew_Hasil_Perc_Barang.Edno.Text:=Memhasil['result_no'];
    FNew_Hasil_Perc_Barang.EdQty.Text:=Memhasil['qty'];
    FNew_Hasil_Perc_Barang.EdNo_permintaan.Text:=Memhasil['mixing_no'];
    FNew_Hasil_Perc_Barang.ednm_material.Text:=Memhasil['item_name'];
    FNew_Hasil_Perc_Barang.edkd_material.Text:=Memhasil['item_stock_code'];
    FNew_Hasil_Perc_Barang.EdSatuan.Text:=Memhasil['unit'];
    FNew_Hasil_Perc_Barang.EdStatus.Text:=Memhasil['status'];
    FNew_Hasil_Perc_Barang.DtTanggal.Date:=Memhasil['trans_date'];
  end;
end;

procedure TFHasil_Perc_Barang.DBGridEh1CellClick(Column: TColumnEh);
begin
  if Memhasil['status']=0 then
  begin
    ActApp.Enabled:=true;
    ActUpdate.Enabled:=true;
  end;
  if Memhasil['status']<>0 then
  begin
    ActApp.Enabled:=false;
    ActUpdate.Enabled:=false;
  end;
end;

procedure TFHasil_Perc_Barang.dxBbaruClick(Sender: TObject);
begin
{with FNew_Hasil_Perc_Barang do
begin
  FNew_Hasil_Perc_Barang.Show;
  FNew_Hasil_Perc_Barang.Clear;
//  FNew_Hasil_Perc_Barang.Autonumber;
  FNew_Hasil_Perc_Barang.PnInput.Visible:=True;
  FNew_Hasil_Perc_Barang.Pnterima.visible:=False;
  FNew_Hasil_Perc_Barang.BEdit.Visible:=False;
  FNew_Hasil_Perc_Barang.BSimpan.Visible:=True;
  Caption:='New Hasil Percampuran Material';
  end;       }
end;

procedure TFHasil_Perc_Barang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFHasil_Perc_Barang.FormCreate(Sender: TObject);
begin
  RealFhasil_perc_material:=self;
end;

procedure TFHasil_Perc_Barang.FormDestroy(Sender: TObject);
begin
  RealFhasil_perc_material:=nil;
end;

procedure TFHasil_Perc_Barang.FormShow(Sender: TObject);
begin
//Memhasil.Close;
//Memhasil.Open;
end;

initialization
Registerclass(TFHasil_Perc_Barang);

end.
