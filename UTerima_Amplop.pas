// CR Ds 18-12-2020
//  Komponen RzComponen,Devexppress,Ehlib
unit UTerima_Amplop;

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
  cxClasses, dxRibbon, MemTableDataEh, Data.DB, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  DataDriverEh, MemTableEh, MemDS, DBAccess, Uni, dxSkinBasic,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxCore, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFTerima_Amplop = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarUpdate: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    QTerima_Material: TUniQuery;
    MemTerima_Material: TMemTableEh;
    DsTerima_Material: TDataSource;
    DsdTerima_Material: TDataSetDriverEh;
    DBGridPermt_Material: TDBGridEh;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
function  FTerima_Amplop: TFTerima_Amplop;

implementation

{$R *.dfm}

uses UNew_terimaAmplop, UDatamodule, umainmenu;
var
  realftr_mat: TFTerima_Amplop;
// implementasi function
function FTerima_Amplop: TFTerima_Amplop;
begin
  if realftr_mat<> nil then
    FTerima_Amplop:= realftr_mat
  else
    Application.CreateForm(TFTerima_Amplop, Result);
end;

procedure TFTerima_Amplop.ActBaruExecute(Sender: TObject);
begin
  with FNew_TerimaAmplop do
  begin
    Show;
    Clear;
   // Autonumber;
    Status:=0;
    Caption:='New Terima Amplop';
  end;
end;

procedure TFTerima_Amplop.ActDelExecute(Sender: TObject);
begin
  if messageDlg ('Anda Yakin Akan Mengahpus Data '+DBGridPermt_Material.Fields[1].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='update warehouse.t_item_receive3 set deleted_at=now,deleted_by='+quotedstr(nm)+'  where no_terima='+QuotedStr(DBGridPermt_Material.Fields[1].AsString);
      Execute;
    end;
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='update warehouse.t_item_receive3 set deleted_at=now,deleted_by='+quotedstr(nm)+'  where no_terima='+QuotedStr(DBGridPermt_Material.Fields[1].AsString);
      Execute;
    end;
    ActROExecute(sender);
    ShowMessage('Data Berhasil di Hapus');
  end;
end;

procedure TFTerima_Amplop.ActROExecute(Sender: TObject);
begin
 DBGridPermt_Material.StartLoadingStatus();
  DBGridPermt_Material.FinishLoadingStatus();
  if loksbu='' then
  begin
    with QTerima_Material do
    begin
      close;
      sql.Clear;
      sql.Text:='select A.*,B.item_name,C.supplier_name,d.wh_name from warehouse.t_item_receive3 A  '+
      ' inner join warehouse.t_item_stock B on A.item_stock_code=B.item_stock_code'+
      ' Inner Join t_supplier C on B.supplier_code=C.supplier_code'+
      ' inner join t_wh d on a.wh_code=d.wh_code order by a.request_no desc';
    end;
  end;
  if loksbu<>'' then
  begin
    with QTerima_Material do
    begin
      close;
      sql.Clear;
      sql.Text:='select A.*,B.item_name,C.supplier_name,d.wh_name from warehouse.t_item_receive3 A  '+
      ' inner join warehouse.t_item_stock B on A.item_stock_code=B.item_stock_code'+
      ' Inner Join t_supplier C on B.supplier_code=C.supplier_code'+
      ' inner join t_wh d on a.wh_code=d.wh_code where d.sbu_code='+QuotedStr(loksbu)+''+
      ' order by a.request_no desc';
    end;
  end;
  QTerima_Material.Close;
  MemTerima_Material.Close;
  QTerima_Material.Open;
  MemTerima_Material.Open;

end;

procedure TFTerima_Amplop.ActUpdateExecute(Sender: TObject);
begin
  with FNew_TerimaAmplop do
  begin
    Show;
    Clear;
    Status:=1;
    Caption:='Update Terima Amplop';
    Edno.Text:=MemTerima_Material['receive_no'];
    Edqty.Text:=MemTerima_Material['qty'];
    Ednm_material.Text:=MemTerima_Material['item_name'];
    Edkd_material.Text:=MemTerima_Material['item_stock_code'];
    Edsatuan.Text:=MemTerima_Material['unit'];
    EdGudang.Text:=MemTerima_Material['wh_name'];
    Edkd_stok.Text:=MemTerima_Material['stock_code'];
    EdSupplier.Text:=MemTerima_Material['supplier_name'];
   // edno_material.Text:=MemTerima_Material['no_material'];
    Dttanggal.Date:=MemTerima_Material['trans_date'];
    EdHarga.Text:=MemTerima_Material['price'];
    Edtotal.Text:=MemTerima_Material['total_price'];
    EdNo_Permt.Text:=MemTerima_Material['request_no'];
    kd_gdng:=MemTerima_Material['wh_code'];
    thn:=MemTerima_Material['trans_year'];
  end;
end;

procedure TFTerima_Amplop.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFTerima_Amplop.FormCreate(Sender: TObject);
begin
  realftr_mat:=self;
end;

procedure TFTerima_Amplop.FormDestroy(Sender: TObject);
begin
  realftr_mat:=nil;
end;

procedure TFTerima_Amplop.FormShow(Sender: TObject);
begin
  ActROExecute(sender);
end;

initialization
RegisterClass(TFTerima_Amplop);

end.
