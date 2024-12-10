unit UPeng_stok;

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
  MemTableDataEh, Data.DB, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, frxClass, frxDBSet,
  DataDriverEh, MemTableEh, MemDS, DBAccess, Uni, dxBar, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, cxClasses, dxRibbon, dxSkinBasic,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxCore;

type
  TFPeng_Stok = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridTransfer: TDBGridEh;
    DBGridEh1: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarUpdate: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    QPeng_stok: TUniQuery;
    MemPeng_stok: TMemTableEh;
    DsdPeng_stok: TDataSetDriverEh;
    DsPeng_stok: TDataSource;
    Qdetail: TUniQuery;
    DsDetail: TDataSource;
    Rpt: TfrxReport;
    QRptPeng_stok: TUniQuery;
    DbRptTransfer: TfrxDBDataset;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure dxBarUpdateClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function FPeng_Stok: TFPeng_Stok;

implementation

{$R *.dfm}

uses UDataModule, UMainMenu, UNew_PengStok, UMy_Function;

//Udm, UItemTransferAntar_Gdng, UNew_PengStok, USearch_Brng, umainmenu;
var
  RealFPeng_Stok: TFPeng_Stok;
function FPeng_Stok: TFPeng_Stok;
begin
  if RealFPeng_Stok <> nil then
    FPeng_Stok:= RealFPeng_Stok
  else
    Application.CreateForm(TFPeng_Stok, Result);
end;

procedure TFPeng_Stok.ActBaruExecute(Sender: TObject);
begin
  with FNew_PengStok do
  begin
    Show;
    //Autonumber;
    statustr:='0';
  end;
end;

procedure TFPeng_Stok.ActRoExecute(Sender: TObject);
begin
DBGridTransfer.StartLoadingStatus();
DBGridTransfer.FinishLoadingStatus();
  if loksbu='' then
  begin
    with QPeng_stok do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT a.*,b.item_name,b.item_code as kdmat,c.wh_name,c.wh_code code2 from t_item_comb a INNER JOIN '+
      ' t_item_stock b on a.item_code=b.item_stock_code inner join t_wh c on a.wh_code=c.wh_code order by a.trans_no asc';
      ExecSQL;
    end;
    QPeng_stok.Open;
    MemPeng_stok.Close;
    MemPeng_stok.Open;
    Qdetail.close;
    qdetail.open;
  end;
  if loksbu<>'' then
  begin
    with QPeng_stok do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT a.*,b.item_name,b.item_code as kdmat,c.wh_name,c.wh_code code2 from t_item_comb a INNER JOIN '+
      ' t_item_stock b on a.item_code=b.item_stock_code inner join t_wh c on a.wh_code=c.wh_code '+
      '  where a.sbu_code='+QuotedStr(loksbu)+' order by a.trans_no asc';
      ExecSQL;
    end;
    QPeng_stok.Open;
    MemPeng_stok.Close;
    MemPeng_stok.Open;
    Qdetail.close;
    qdetail.open;
  end;
end;

procedure TFPeng_Stok.dxBarUpdateClick(Sender: TObject);
begin
  with FNew_PengStok do
  begin
    Show;
    statustr:='1';
    Edno.Text:=MemPeng_stok['trans_no'];
    EdKet.Text:=MemPeng_stok['note'];
    Edkd_stok.Text:=MemPeng_stok['stock_code'];
    Edkd_Barang.Text:=MemPeng_stok['item_code'];
    edkdbr.Text:=MemPeng_stok['kdmat'];
    EdNm_Barang.Text:=MemPeng_stok['item_name'];
    kdgd:=MemPeng_stok['wh_code'];
    nogd:=MemPeng_stok['code2'];
    CbGudang.Text:=MemPeng_stok['wh_name'];
    DtTransfer.Text:=MemPeng_stok['trans_date'];
    satuan:=MemPeng_stok['unit'];
    Qdetail.First;
    while not Qdetail.eof do
    begin
      with Qdetail do
      begin
        MemDetail.Insert;
        MemDetail['kd_material']:=Qdetail.FieldByName('item_stock_code').AsString;
        MemDetail['nm_material']:=Qdetail.FieldByName('item_name').AsString;
        MemDetail['qty']:=Qdetail.FieldByName('qty').AsString;
        MemDetail['satuan']:=Qdetail.FieldByName('unit').AsString;
        MemDetail['kd_stok']:=Qdetail.FieldByName('stock_code_old').AsString;
        MemDetail.Post;
        Qdetail.Next;
      end;
    end;
  end;
end;

procedure TFPeng_Stok.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFPeng_Stok.FormCreate(Sender: TObject);
begin
  RealFPeng_Stok:=self;
end;

procedure TFPeng_Stok.FormDestroy(Sender: TObject);
begin
  RealFPeng_Stok:=nil;
end;

initialization
RegisterClass(TFPeng_Stok);

end.
