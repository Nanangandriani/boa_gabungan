unit UTransfer_Barang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinsdxBarPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, MemTableDataEh, Data.DB, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, DataDriverEh, MemTableEh, MemDS, DBAccess, Uni, dxRibbon, dxBar,
  cxClasses, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet, dxSkinBasic,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxCore, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFTransfer_Barang = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarUpdate: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    QTransfer: TUniQuery;
    MemTransfer: TMemTableEh;
    DsdTransfer: TDataSetDriverEh;
    DsTransfer: TDataSource;
    DBGridTransfer: TDBGridEh;
    Qdetail: TUniQuery;
    DsDetail: TDataSource;
    DBGridEh1: TDBGridEh;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    Rpt: TfrxReport;
    QRptTransfer: TUniQuery;
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
    procedure dxBarLargeButton1Click(Sender: TObject);
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

//var
function  FTransfer_Barang: TFTransfer_Barang;
var  th:string;

implementation

{$R *.dfm}

uses UNew_TransferBarang,UMainmenu, UDataModule;
var
  realftransfer_gdng: TFTransfer_Barang;
// implementasi function
function FTransfer_Barang: TFTransfer_Barang;
begin
  if realftransfer_gdng <> nil then
    FTransfer_Barang:= realftransfer_gdng
  else
    Application.CreateForm(TFTransfer_Barang, Result);
end;

procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);
var
  memo: TfrxMemoView;
begin
  memo := aReport.FindObject(aMemoName) as TfrxMemoView;
  if memo <> nil then
    memo.Text := aText;
end;

procedure TFTransfer_Barang.ActBaruExecute(Sender: TObject);
begin
  with FNew_TransferBarang do
  begin
    Show;
    Clear;
    status:=0;
    Caption:='New Transfer Barang Antar Gudang';
    //autonumber;
  end;
end;

procedure TFTransfer_Barang.ActRoExecute(Sender: TObject);
begin
  DBGridTransfer.StartLoadingStatus();
  DBGridTransfer.FinishLoadingStatus();
  if loksbu='' then
  begin
    with QTransfer do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from warehouse.t_item_transfer order by trans_no desc';
      ExecSQL;
    end;
    QTransfer.Active:=True;
    MemTransfer.Active:=False;
    MemTransfer.Active:=True;
    Qdetail.Active:=False;
    Qdetail.Active:=True;
  end;
  if loksbu<>'' then
  begin
    with QTransfer do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from warehouse.t_item_transfer where sbu_code='+QuotedStr(loksbu)+' order by trans_no desc';
      ExecSQL;
    end;
    QTransfer.Active:=True;
    MemTransfer.Active:=False;
    MemTransfer.Active:=True;
    Qdetail.Active:=False;
    Qdetail.Active:=True;
  end;
end;

procedure TFTransfer_Barang.ActUpdateExecute(Sender: TObject);
begin
 with FNew_TransferBarang do
  begin
    Show;
    Clear;
    status:=1;
    Caption:='Update Transfer Barang Antar Gudang';
    Edno.Text:=MemTransfer['trans_no'];
    DtTransfer.Date:=MemTransfer['trans_date'];
    EdKet.Text:=MemTransfer['note'];
    CbDari.Text:=MemTransfer['wh_code_from'];
    CbKe.Text:=MemTransfer['wh_code_to'];
    CbKategori.Text:=MemTransfer['category'];
  end;
  Qdetail.First;
  while not Qdetail.eof do
  begin
    with Qdetail do
    begin
      with FNew_TransferBarang do
      begin
        Memdetail.Insert;
        Memdetail['kd_material']:=Qdetail['item_stock_code'];
        Memdetail['kd_stok_lama']:=Qdetail['stock_code_old'];
        Memdetail['kd_stok_baru']:=Qdetail['stock_code_new'];
        Memdetail['qty']:=Qdetail['qty'];
        Memdetail['satuan']:=Qdetail['unit'];
        Memdetail['nm_material']:=Qdetail['item_name'];
        Memdetail['no_material']:=Qdetail['order_no'];
        Memdetail.Post;
        Qdetail.Next;
      end;
    end;
  end;
end;

procedure TFTransfer_Barang.dxBarLargeButton1Click(Sender: TObject);
begin
 with QRptTransfer do
 begin
   Filtered:=False;
   Filter:=' no_transfer='+QuotedStr(DBGridTransfer.Fields[0].AsString);
   FilterOptions:=[];
   Filtered:=True;
 end;
 QRptTransfer.Open;
if QRptTransfer.FieldByName('no_transfer').AsString=''  then
begin
ShowMessage('Maaf data kosong');
end else
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_TransferAntarGudang.Fr3');
  Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=kdSBU;
 // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
//  SetMemo(Rpt,'MPT',' '+SBU+' ');
  //SetMemo(Rpt,'MPeriode',' '++' Rupiah ');
  Rpt.ShowReport();
end;

procedure TFTransfer_Barang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFTransfer_Barang.FormCreate(Sender: TObject);
begin
  realftransfer_gdng:=self;
end;

procedure TFTransfer_Barang.FormDestroy(Sender: TObject);
begin
  realftransfer_gdng:=nil;
end;

procedure TFTransfer_Barang.FormShow(Sender: TObject);
begin
//dxbarRefreshClick(sender);
end;

end.
