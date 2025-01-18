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
    btReset: TRzBitBtn;
    MemDetailsupplier_code: TStringField;
    MemDetailwh_code: TStringField;
    procedure edNamaSupplierButtonClick(Sender: TObject);
    procedure edNamaGudangButtonClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
    procedure btResetClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    vcall,kd_barang_request, stock_code : string;
    qty_request, qty_stock : Real;
    { Public declarations }
    procedure RefreshGrid;
    procedure RefreshGrid_Update;
    procedure Clear;
    procedure process;
    procedure reset_stock;
  end;

var
  FListStockBarang: TFListStockBarang;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UHomeLogin, UNew_Penjualan, UNew_DataPenjualan;

procedure TFListStockBarang.reset_stock;
begin
  if FNew_Penjualan.Status = 0  then //kondisi baru
  begin
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' SELECT *  '+
              ' FROM "public"."t_selling_stock_details"  a '+
              ' WHERE "trans_id"='+QuotedStr(FNew_Penjualan.trans_id_link)+' ' );
      open;
    end;
  end;
  if FNew_Penjualan.Status = 1  then //kondisi update
  begin
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' SELECT *  '+
              ' FROM "public"."t_selling_stock_details"  a '+
              ' WHERE "trans_no"='+QuotedStr(FNew_Penjualan.edNomorTrans.Text)+' ' );
      open;
    end;
  end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
      //update qty_booking t_item_stock_det  kembalikan stock booking
      with dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.Text:=' UPDATE "public"."t_item_stock_det" SET '+
                  ' "qty_booking"=qty_booking-'+(FloatToStr(Dm.Qtemp.FieldByName('qty').Value))+' '+
                  ' WHERE "stock_code"='+QuotedStr(Dm.Qtemp.FieldByName('stock_code').Value)+'; ';
        ExecSQL;
      end;
      with dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.Text:=' delete from "public"."t_selling_stock_details" '+
                  ' WHERE "trans_id"='+QuotedStr(Dm.Qtemp.FieldByName('trans_id').Value)+' ; ';
        ExecSQL;
      end;

     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFListStockBarang.process;
begin
  //update qty_booking t_item_stock_det
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:=' UPDATE "public"."t_item_stock_det" SET '+
              ' "qty_booking"=qty_booking+'+(FloatToStr(MemDetail['qtyout']))+' '+
              ' WHERE "stock_code"='+QuotedStr(stock_code)+'; ';
    ExecSQL;
  end;
  //insert penjualan qty
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "public"."t_selling_stock_details" '+
              ' ("created_at", "created_by", "trans_no", "trans_id", "item_code", '+
              ' "stock_code", "qty", "unit", "wh_code", "supp_code") '+
              ' Values( '+
              ' NOW(), '+
              ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
              ' '+QuotedStr('0')+', '+
              ' '+QuotedStr(FNew_Penjualan.trans_id_link)+', '+
              ' '+QuotedStr(kd_barang_request)+', '+
              ' '+QuotedStr(stock_code)+', '+
              ' '+QuotedStr(MemDetail['qtyout'])+', '+
              ' '+QuotedStr(MemDetail['unit'])+', '+
              ' '+QuotedStr(MemDetail['wh_code'])+', '+
              ' '+QuotedStr(MemDetail['supplier_code'])+');';
    ExecSQL;
  end;
end;

procedure TFListStockBarang.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFListStockBarang.BSaveClick(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
  //qty_request Validasi qty request harus sama dengan qty yang di tandai
  qty_stock:=0;
  stock_code:='';
  MemDetail.First;
  while not MemDetail.Eof do
  begin
    if MemDetail['pilih']=true then
    begin
      qty_stock:=qty_stock+MemDetail['qtyout'];
    end;
    MemDetail.Next;
  end;

  if qty_stock<>qty_request then //pastikan qty yang di request dengn yang di tag harus sama
  begin
    ShowMessage('Data Penjualan Tidak Balance Dengan Stock Persediaan!!!');
    Exit;
  end;

    MemDetail.First;
    while not MemDetail.Eof do //Croscek + progress per lot
    begin
    if MemDetail['pilih']=true then
    begin
      with Dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add(' SELECT outstanding-qty_booking as saldo_akhir  '+
                ' FROM "public"."vsaldo_akhir_gudang"  a '+
                ' WHERE "item_code"='+QuotedStr(kd_barang_request)+' ' );
        sql.add(' AND "stock_code"='+QuotedStr(MemDetail['stock_code'])+' ' );
        open;
      end;

      if Dm.Qtemp.FieldByName('saldo_akhir').Value < MemDetail['qtyout'] then
      //via cara refresh stok pastikan qty yang di request dengn yang di tag harus sama prepare update stock
      begin
        ShowMessage('Saldo Akhir Barang Lebih Kecil Dari Pada Jumlah Yang Diproses');
        Exit;
      end;
      if Dm.Qtemp.FieldByName('saldo_akhir').Value >= MemDetail['qtyout'] then
      begin
        stock_code:=MemDetail['stock_code'];
        process;
      end;
    end;
    MemDetail.Next;
    end;
  //end;
  MessageDlg('Proses Berhasil..!!',mtInformation,[MBOK],0);
  Dm.Koneksi.Commit;
  Close;
  Except on E :Exception do
  begin
    begin
      MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
      Dm.koneksi.Rollback ;
    end;
  end;
  end;
end;

procedure TFListStockBarang.btResetClick(Sender: TObject);
begin
  reset_stock;
  btTampilkanClick(Sender);
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
qty_saldo_akhir,qty_sisa,qty_out : Real;
begin
  if vcall='penjualan' then
  begin
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' SELECT *, outstanding-qty_booking as sld_akhir '+
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
      sql.add(' AND outstanding-qty_booking>0');
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
    qty_saldo_akhir:=0;
    qty_sisa:=0;
    qty_out:=0;
    while not Dm.Qtemp.Eof do
    begin
     qty_saldo_akhir:=Dm.Qtemp.FieldByName('outstanding').AsFloat-Dm.Qtemp.FieldByName('qty_booking').AsFloat;
     {if (qty_saldo_akhir+qty_sisa) >= qty_request then
     begin
      qty_sisa:=(qty_saldo_akhir+qty_sisa)-qty_request;
      ShowMessage('a'+FloatToStr(qty_saldo_akhir)+'XX'+FloatToStr(qty_request)+'XX'+FloatToStr(qty_sisa));
     end;
     if (qty_saldo_akhir+qty_sisa) < qty_request then
     begin
      qty_sisa:=qty_saldo_akhir;
      ShowMessage('b'+FloatToStr(qty_saldo_akhir)+'XX'+FloatToStr(qty_request)+'XX'+FloatToStr(qty_sisa));
     end;
     qty_out:=qty_out+qty_sisa;
       ShowMessage('c'+FloatToStr(qty_saldo_akhir)+'XX'+FloatToStr(qty_request)+'XX'+FloatToStr(qty_sisa)+'XX'+FloatToStr(qty_sisa));
                }
     FListStockBarang.MemDetail.insert;
     FListStockBarang.MemDetail['item_stock_code']:=Dm.Qtemp.FieldByName('item_stock_code').AsString;
     FListStockBarang.MemDetail['stock_code']:=Dm.Qtemp.FieldByName('stock_code').AsString;
     FListStockBarang.MemDetail['supplier_code']:=Dm.Qtemp.FieldByName('supplier_code').AsString;
     FListStockBarang.MemDetail['supplier_name']:=Dm.Qtemp.FieldByName('supplier_name').AsString;
     FListStockBarang.MemDetail['wh_name']:=Dm.Qtemp.FieldByName('wh_name').AsString;
     FListStockBarang.MemDetail['wh_code']:=Dm.Qtemp.FieldByName('wh_code').AsString;
     FListStockBarang.MemDetail['item_code']:=Dm.Qtemp.FieldByName('item_code').AsString;
     FListStockBarang.MemDetail['item_name']:=Dm.Qtemp.FieldByName('item_name').AsString;
     FListStockBarang.MemDetail['unit']:=Dm.Qtemp.FieldByName('unit').AsString;
     FListStockBarang.MemDetail['qty']:=qty_saldo_akhir;
     FListStockBarang.MemDetail['qtyout']:=0;
     FListStockBarang.MemDetail['outstanding']:=Dm.Qtemp.FieldByName('outstanding').AsFloat;
     FListStockBarang.MemDetail['pilih']:=0;
     FListStockBarang.MemDetail.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFListStockBarang.RefreshGrid_Update;
var
URUTAN_KE : Integer;
qty_saldo_akhir,qty_sisa,qty_out : Real;
begin
  if FNew_Penjualan.Status = 0  then //kondisi baru
  begin
    with Dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.add(' SELECT *  '+
              ' FROM "public"."t_selling_stock_details"  a '+
              ' WHERE "trans_id"='+QuotedStr(FNew_Penjualan.trans_id_link)+' ' );
      open;
    end;
  end;
  if FNew_Penjualan.Status = 1  then //kondisi update
  begin
    with Dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.add(' SELECT *  '+
              ' FROM "public"."t_selling_stock_details"  a '+
              ' WHERE "trans_no"='+QuotedStr(FNew_Penjualan.edNomorTrans.Text)+' ' );
      open;
    end;
  end;


    FListStockBarang.MemDetail.active:=false;
    FListStockBarang.MemDetail.active:=true;
    FListStockBarang.MemDetail.EmptyTable;

    if Dm.Qtemp1.RecordCount=0 then
    begin
      FListStockBarang.MemDetail.active:=false;
      FListStockBarang.MemDetail.active:=true;
      FListStockBarang.MemDetail.EmptyTable;
      ShowMessage('Tidak Ditemukan Data...');
    end;

    if Dm.Qtemp1.RecordCount<>0 then
    begin
    Dm.Qtemp1.first;
      while not Dm.Qtemp1.Eof do
      begin
        with Dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.add(' SELECT * '+
                  ' FROM "public"."vsaldo_akhir_gudang"  a '+
                  ' WHERE "stock_code"='+QuotedStr(Dm.Qtemp1.FieldByName('stock_code').AsString)+'' );
          //sql.add(' ORDER BY "created_at" desc');
          open;
        end;

       FListStockBarang.MemDetail.insert;
       FListStockBarang.MemDetail['item_stock_code']:=Dm.Qtemp.FieldByName('item_stock_code').AsString;
       FListStockBarang.MemDetail['stock_code']:=Dm.Qtemp1.FieldByName('stock_code').AsString;
       FListStockBarang.MemDetail['supplier_name']:=Dm.Qtemp.FieldByName('supplier_name').AsString;
       FListStockBarang.MemDetail['wh_name']:=Dm.Qtemp.FieldByName('wh_name').AsString;
       FListStockBarang.MemDetail['item_code']:=Dm.Qtemp.FieldByName('item_code').AsString;
       FListStockBarang.MemDetail['item_name']:=Dm.Qtemp.FieldByName('item_name').AsString;
       FListStockBarang.MemDetail['unit']:=Dm.Qtemp1.FieldByName('unit').AsString;
       FListStockBarang.MemDetail['qty']:=Dm.Qtemp1.FieldByName('qty').AsFloat;
       FListStockBarang.MemDetail['qtyout']:=Dm.Qtemp1.FieldByName('qty').AsFloat;
       FListStockBarang.MemDetail['outstanding']:=Dm.Qtemp1.FieldByName('qty').AsFloat;
       FListStockBarang.MemDetail['pilih']:=0;
       FListStockBarang.MemDetail.post;
       ShowMessage(Dm.Qtemp.FieldByName('item_stock_code').AsString);
       Dm.Qtemp1.next;
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

procedure TFListStockBarang.FormClose(Sender: TObject;
  var Action: TCloseAction);
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
