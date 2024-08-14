unit UPermintaan_Barang2;

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
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, dxSkinsdxBarPainter,
  MemTableDataEh, Data.DB, DataDriverEh, MemTableEh, MemDS, DBAccess, Uni,
  dxBar, dxSkinChooserGallery, dxRibbonGallery, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, cxClasses, dxRibbon, dxSkinBasic,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxCore, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFPermintaan_Barang2 = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridPermt_Material: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    dxBarUpdate: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxBarButton1: TdxBarButton;
    QPermt_Material: TUniQuery;
    MemPermt_Material: TMemTableEh;
    DsPermt_Material: TDataSource;
    DsdPermt_Material: TDataSetDriverEh;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
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
    procedure ActRoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function FPermintaan_Barang2: TFPermintaan_Barang2;

implementation

{$R *.dfm}

uses UNew_Permintaan_Barang2, umainmenu;
var RealFPermt_Etk_Amplop: TFPermintaan_Barang2;
function FPermintaan_Barang2: TFPermintaan_Barang2;
begin
  if RealFPermt_Etk_Amplop <> nil then FPermintaan_Barang2:= RealFPermt_Etk_Amplop
  else  Application.CreateForm(TFPermintaan_Barang2, Result);
end;

procedure TFPermintaan_Barang2.ActBaruExecute(Sender: TObject);
begin
  with FNew_Permintaan_Barang2 do
  begin
    Show;
    //autonumber;
    BSimpan.Visible:=True;
    BEdit.Visible:=False;
    Caption:='New Permintaan Material Untuk Etiket & Amplop';
  end;
end;

procedure TFPermintaan_Barang2.ActRoExecute(Sender: TObject);
begin
  DBGridPermt_Material.StartLoadingStatus();
  DBGridPermt_Material.FinishLoadingStatus();
  if Loksbu='' then
  begin
    with QPermt_Material do
    begin
      close;
      sql.Clear;
      sql.Text:='select A.*,b.item_name,c.wh_name,d.item_name type_name from warehouse.t_item_request2 A inner join warehouse.t_item_stock B on A.item_stock_code=B.item_stock_code'+
      '  INNER JOIN t_wh c on a.wh_code=c.wh_code inner join warehouse.t_item_stock d on a.trans_type=d.item_stock_code order by A.request_no desc';
      ExecSQL;
    end;
  QPermt_Material.Open;
  MemPermt_Material.Close;
  MemPermt_Material.Open;
  end;
  if Loksbu<>'' then
  begin
    with QPermt_Material do
    begin
      close;
      sql.Clear;
      sql.Text:='select A.*,b.item_name,c.wh_name,d.item_name type_name from warehouse.t_item_request2 A inner join warehouse.t_item_stock B on A.item_stock_code=B.item_stock_code '+
      ' INNER JOIN t_wh c on a.wh_code=c.wh_code inner join warehouse.t_item_stock d on a.trans_type=d.item_stock_code where a.sbu_code='+QuotedStr(loksbu)+' order by A.request_no desc';
     ExecSQL;
    end;
    QPermt_Material.Open;
    MemPermt_Material.Close;
    MemPermt_Material.Open;
  end;
end;

procedure TFPermintaan_Barang2.ActUpdateExecute(Sender: TObject);
begin
  with FNew_Permintaan_Barang2 do
  begin
    Show;
    BSimpan.Visible:=false;
    BEdit.Visible:=true;
    EdNo.Text:=MemPermt_Material['request_no'];
    edket.Text:=MemPermt_Material['notes'];
    EdNm_Material.Text:=MemPermt_Material['item_name'];
    EdQty.Text:=MemPermt_Material['qty'];
    EdKegunaan.Text:=MemPermt_Material['type_name'];
    kd_brng2:=MemPermt_Material['trans_type'];
    EdKd_Material.Text:=MemPermt_Material['item_stock_code'];
    DtPermt.Date:=MemPermt_Material['trans_date'];
    thn:=MemPermt_Material['trans_year'];
    Edgudang.Text:=MemPermt_Material['wh_name'];
    kd_gdng:=MemPermt_Material['wh_code'];
    Ednopo.Text:=MemPermt_Material['pono'];
    Caption:='Update Permintaan Material Untuk Etiket & Amplop';
  end;
end;

procedure TFPermintaan_Barang2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFPermintaan_Barang2.FormCreate(Sender: TObject);
begin
  RealFPermt_Etk_Amplop:=self;
end;

procedure TFPermintaan_Barang2.FormDestroy(Sender: TObject);
begin
  RealFPermt_Etk_Amplop:=nil;
end;

procedure TFPermintaan_Barang2.FormShow(Sender: TObject);
begin
  actroexecute(sender);
end;

initialization
RegisterClass(TFPermintaan_Barang2);

end.
