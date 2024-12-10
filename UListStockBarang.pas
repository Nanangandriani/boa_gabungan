unit UListStockBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzBtnEdt, Vcl.ComCtrls, RzDTP, Vcl.ExtCtrls;

type
  TFListStockBarang = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edNamaSupplier: TRzButtonEdit;
    edKodeSupplier: TEdit;
    btTampilkan: TRzBitBtn;
    RzPageControl1: TRzPageControl;
    TabDataBarang: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    MemDetail: TMemTableEh;
    dsDetail: TDataSource;
    edNamaGudang: TRzButtonEdit;
    edKodeGudang: TEdit;
    MemDetailitem_stock_code: TStringField;
    MemDetailstock_code: TStringField;
    MemDetailsupplier_name: TStringField;
    MemDetailwh_name: TStringField;
    MemDetailitem_code: TStringField;
    MemDetailitem_name: TStringField;
    MemDetailunit: TStringField;
    MemDetailpilih: TBooleanField;
    MemDetailqty: TCurrencyField;
    MemDetailqtyout: TCurrencyField;
    MemDetailoutstanding: TCurrencyField;
    procedure edNamaSupplierButtonClick(Sender: TObject);
    procedure edNamaGudangButtonClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    vcall,kd_barang_request : string;
    qty_request, qty_stock : Real;
    { Public declarations }
    procedure RefreshGrid;
    procedure Clear;
  end;

var
  FListStockBarang: TFListStockBarang;

implementation

{$R *.dfm}

uses UDataModule, UMasterData;

procedure TFListStockBarang.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFListStockBarang.BSaveClick(Sender: TObject);
begin
  //qty_request Validasi qty request harus sama dengan qty yang di tandai
  qty_stock:=0;
  MemDetail.First;
  while not MemDetail.Eof do
  begin
    if MemDetail['pilih']=true then
    begin
      qty_stock:=qty_stock+MemDetail['qtyout'];
    end;
    MemDetail.Next;
  end;
  if qty_stock<>qty_request then
  begin
    ShowMessage('Data Penjualan Tidak Balance Dengan Stock Persediaan!!!');
    Exit;
  end;


  //udpate stock
  Close;
end;

procedure TFListStockBarang.btTampilkanClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      {if edKodeSupplier.Text='' then
      begin
        MessageDlg('Data Supplier Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNamaSupplier.SetFocus;
      end
      else if edKodeGudang.Text='' then
      begin
        MessageDlg('Data Gudang Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNamaGudang.SetFocus;
      end
      else if (edKodeSupplier.Text<>'') and (edKodeGudang.Text<>'')  then
      begin
        RefreshGrid;
        Dm.Koneksi.Commit;
      end;}
        RefreshGrid;
        Dm.Koneksi.Commit;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
end;

procedure TFListStockBarang.Clear;
begin
  edKodeSupplier.Clear;
  edNamaSupplier.Clear;
  edKodeGudang.Clear;
  edNamaGudang.Clear;
  MemDetail.EmptyTable;
  MemDetail.Active:=true;
end;

procedure TFListStockBarang.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  if vcall='penjualan' then
  begin
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * '+
              ' FROM "public"."vsaldo_akhir_gudang"  a '+
              ' WHERE "item_code"='+QuotedStr(kd_barang_request)+'' );
        if Length(edNamaSupplier.Text)<>0 then
        begin
          sql.add(' AND "supplier_code"='+QuotedStr(edKodeSupplier.Text)+' ' );
        end;
        if Length(edNamaGudang.Text)<>0 then
        begin
          sql.add(' AND "wh_code"='+QuotedStr(edKodeGudang.Text)+' ');
        end;
      //sql.add(' ORDER BY "created_at" desc');
      open;
    end;
  end;

    FListStockBarang.MemDetail.active:=false;
    FListStockBarang.MemDetail.active:=true;
    FListStockBarang.MemDetail.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FListStockBarang.MemDetail.active:=false;
      FListStockBarang.MemDetail.active:=true;
      FListStockBarang.MemDetail.EmptyTable;
      ShowMessage('Tidak Ditemukan Data...');
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FListStockBarang.MemDetail.insert;
     FListStockBarang.MemDetail['item_stock_code']:=Dm.Qtemp.FieldByName('item_stock_code').AsString;
     FListStockBarang.MemDetail['stock_code']:=Dm.Qtemp.FieldByName('stock_code').AsString;
     FListStockBarang.MemDetail['supplier_name']:=Dm.Qtemp.FieldByName('supplier_name').AsString;
     FListStockBarang.MemDetail['wh_name']:=Dm.Qtemp.FieldByName('wh_name').AsString;
     FListStockBarang.MemDetail['item_code']:=Dm.Qtemp.FieldByName('item_code').AsString;
     FListStockBarang.MemDetail['item_name']:=Dm.Qtemp.FieldByName('item_name').AsString;
     FListStockBarang.MemDetail['unit']:=Dm.Qtemp.FieldByName('unit').AsString;
     FListStockBarang.MemDetail['qty']:=Dm.Qtemp.FieldByName('qty').AsFloat;
     FListStockBarang.MemDetail['qtyout']:=0;
     FListStockBarang.MemDetail['outstanding']:=Dm.Qtemp.FieldByName('outstanding').AsFloat;
     FListStockBarang.MemDetail['pilih']:=0;
     FListStockBarang.MemDetail.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFListStockBarang.edNamaSupplierButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Supplier';
  FMasterData.vcall:='m_supplier';
  FMasterData.update_grid('supplier_code','supplier_name','address','"public"."t_supplier"','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFListStockBarang.FormShow(Sender: TObject);
begin
  Clear;
end;

procedure TFListStockBarang.edNamaGudangButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Gudang';
  FMasterData.vcall:='m_gudang';
  FMasterData.update_grid('wh_code','wh_name','category','"public"."t_wh"','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

end.
