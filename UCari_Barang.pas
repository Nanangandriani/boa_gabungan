unit UCari_Barang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Samples.Gauges;

type
  TFCari_Barang = class(TForm)
    DBGridEh1: TDBGridEh;
    QBarang: TUniQuery;
    DsBarang: TDataSource;
    Gauge1: TGauge;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    status_tr,jenistr:string;
  end;

//var
Function  FCari_Barang: TFCari_Barang;

implementation

{$R *.dfm}

uses UNew_Barang_stok, UNew_BonPermtBarang, UNew_KonvBarang, UDataModule,
  UNew_Supplier, UMaster_PercBarang, UNew_PercBarang, UMainMenu,
  UNew_SPKFormula, URpt_Rekap_Pembelian, UMy_Function, URpt_Kartu_Gudang,
  UItem_MasterFormula;

var
  realfCari_barang: TFCari_Barang;
// implementasi function
function FCari_Barang: TFCari_Barang;
begin
  if RealFCari_Barang <> nil then
    FCari_Barang:= RealfCari_barang
  else
    Application.CreateForm(TFCari_Barang, Result);
end;

procedure TFCari_Barang.DBGridEh1DblClick(Sender: TObject);
begin
  if status_tr='MatStok' then
  begin
    with Fnew_Barang_stok do
    begin
      EdKd_Material.Text:=QBarang.FieldByName('item_code').AsString;
      Edmerk.Text:=QBarang.FieldByName('merk').AsString;
      EdNm_Material.Text:=QBarang.FieldByName('item_name').AsString;
      no_material:=QBarang.FieldByName('order_no').AsString;
      EdSatuan.Text:=QBarang.FieldByName('unit').AsString;
      EdNm_supp.Enabled:=True;;
    end;
  end;
  if status_tr='KonvBarang' then
  begin
    with FNew_KonvBarang do
    begin
      Edkd.Text:=QBarang.FieldByName('item_code').AsString;
      EdNm.Text:=QBarang.FieldByName('item_name').AsString;
      Edsatuan.Text:=QBarang.FieldByName('unit').AsString;
      Edqty.Text:='1';
    end;
  end;
  if status_tr='BonBarang' then
  begin
    with FNew_BonPermtBarang do
    begin
      MemMaterial.Insert;
      MemMaterial['kd_material']:=QBarang.FieldByName('item_code').AsString;
      MemMaterial['nm_material']:=QBarang.FieldByName('item_name').AsString;
      MemMaterial['satuan']:=QBarang.FieldByName('unit').AsString;
      MemMaterial.Post;
    end;
  end;
  if status_tr='Supplier' then
  begin
    with FNew_Supplier do
    begin
      MemMaterial.Insert;
      MemMaterial['kd_material']:=QBarang.FieldByName('item_code').AsString;
      MemMaterial['nm_material']:=QBarang.FieldByName('item_name').AsString;
      MemMaterial['satuan']:=QBarang.FieldByName('unit').AsString;
      MemMaterial['qty']:=0;
      MemMaterial['kode']:=QBarang.FieldByName('item_code').AsString+edno.Text;
      MemMaterial.Post;
    end;
  end;
  if status_tr='5' then
  begin
    with FMaster_PercBarang do
    begin
      edkd.text:=QBarang.FieldByName('item_code').AsString;
      ednm.text:=QBarang.FieldByName('item_name').AsString;
    end;
  end;
  if status_tr='6' then
  begin
    with FMaster_PercBarang do
    begin
      Memdetail.Insert;
      Memdetail['item_code']:=QBarang.FieldByName('item_code').AsString;
      Memdetail['item_name']:=QBarang.FieldByName('item_name').AsString;
      Memdetail['qty']:=0;
      Memdetail['unit']:=QBarang.FieldByName('unit').AsString;
    end;
  end;
  if Vmenu='7' then
  begin
    with FNew_PercBarang do
    begin
      MemMaterial.Insert;
      MemMaterial['kd_material']:=QBarang.FieldByName('item_code').AsString;
      MemMaterial['nm_material']:=QBarang.FieldByName('item_name').AsString;
      MemMaterial['qty']:=0;
      MemMaterial['satuan']:=QBarang.FieldByName('unit').AsString;
    end;
  end;
  if Vmenu='8' then
  begin
    with FNew_SPKFormula do
    begin
      Memformuladet.Insert;
      Memformuladet['kd_material']:=QBarang.FieldByName('item_code').AsString;
      Memformuladet['nm_material']:=QBarang.FieldByName('item_name').AsString;
      Memformuladet['qty']:=0;
      Memformuladet['satuan']:=QBarang.FieldByName('unit').AsString;
    end;
  end;
  if statustr='Rekap_Pemb' then
  begin
    with FRptRekap_Pembelian do
    begin
      EdKd_Barang.Text:=QBarang.FieldByName('item_code').AsString;
      CbBarang.EditValue:=QBarang.FieldByName('item_name').AsString;
    end;
  end;
  if status_tr='9' then
  begin
    with FRpt_Kartu_Gudang do
    begin
     { edkd.text:=QBarang.FieldByName('item_code').AsString;
      ednm.text:=QBarang.FieldByName('item_name').AsString;
         }
      cxkd_barang.EditValue:=QBarang.FieldByName('item_code').AsString;
      cxnm_barang.EditValue:=QBarang.FieldByName('item_name').AsString;
    end;
  end;
    if status_tr='10' then
  begin
    with FItem_MasterFormula do
    begin
      MemMaterial.Insert;
      MemMaterial['kd_barang']:=QBarang['item_code'];
      MemMaterial['nm_barang']:=QBarang['item_name'];
      MemMaterial['qty']:=0;
      MemMaterial['qty_conv']:=0;
      MemMaterial.Post;
    end;
  end;
  close;
end;

procedure TFCari_Barang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFCari_Barang.FormCreate(Sender: TObject);
begin
  RealFCari_barang:=self;
end;

procedure TFCari_Barang.FormDestroy(Sender: TObject);
begin
  RealFCari_barang:=nil;
end;

end.
