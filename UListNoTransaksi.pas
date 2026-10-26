unit UListNoTransaksi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni;

type
  TFListNoTransaksi = class(TForm)
    DBGridEh1: TDBGridEh;
    QListTransNo: TUniQuery;
    DSListTransNo: TDataSource;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall:string;
    procedure update_grid(fld_name_trans_no,fld_order_no,tbl_name,vwhere:string);
  end;

var
  FListNoTransaksi: TFListNoTransaksi;

implementation

{$R *.dfm}

uses UDataModule, UNew_Penjualan, UNew_DataPenjualan, UMasterData, UMy_Function,
  UDataPenerimaanBank, UNew_SalesOrder, UDataReturPenjualan, UNew_PO,
  UNew_Pembelian, UDataPerintahMuat, UNew_TerimaMaterial, UNewDeliveryOrder,
  UDataPengajuanPengeluaranKasBank, UNewJurnal_memorial, UDataKasKecil,
  UDataKasbon2, UDataPengeluaranKasBank;

procedure TFListNoTransaksi.DBGridEh1DblClick(Sender: TObject);
var trans_no,hasil: String;
begin
  trans_no:=QListTransNo.FieldValues['trans_no'];
  hasil := Copy(trans_no, 1, Pos('-DEL', trans_no) - 1);

  if vcall='pengeluaran_kas_bank' then
  begin
    FDataPengeluaranKasBank.strNoTransaksiDiGanti:=trans_no;
    order_no:=QListTransNo.FieldValues['order_no'];
    FDataPengeluaranKasBank.edNoTrans.text:=hasil;
  end;

  if vcall='kas_bon' then
  begin
    FDataKasbon2.strNoTransaksiDiGanti:=trans_no;
    order_no:=QListTransNo.FieldValues['order_no'];
    FDataKasbon2.edNoTrans.text:=hasil;
  end;
  if vcall='kas_kecil' then
  begin
    FDataKasKecil.strNoTransaksiDiGanti:=trans_no;
    order_no:=QListTransNo.FieldValues['order_no'];
    FDataKasKecil.edNoTrans.text:=hasil;
  end;


  if vcall='Terima_barang' then     //23-07-2026  cr ds
  begin
    FNew_TerimaMaterial.EdNo.text:=hasil;
    FNew_TerimaMaterial.strNoTransaksiDiGanti:=trans_no;
    FNew_TerimaMaterial.Edurut.Text:=QListTransNo.FieldValues['order_no'];
  end;

  if vcall='penjualan' then
  begin
    FNew_Penjualan.strNoTransaksiDiGanti:=trans_no;
    order_no:=QListTransNo.FieldValues['order_no'];
    FNew_Penjualan.edNomorTrans.text:=hasil;
  end;
  if vcall='penerimaanbankkas' then
  begin
    FDataPenerimaanBank.strNoTransaksiDiGanti:=trans_no;
    order_no:=QListTransNo.FieldValues['order_no'];
    FDataPenerimaanBank.edNoTrans.text:=hasil;
  end;
  if vcall='salesorder' then
  begin
    FNew_SalesOrder.strNoTransaksiDiGanti:=trans_no;
    order_no:=QListTransNo.FieldValues['order_no'];
    FNew_SalesOrder.edKodeOrder.text:=hasil;
  end;
  if vcall='retur_penjualan' then
  begin
    FDataReturPenjualan.strNoTransaksiDiGanti:=trans_no;
    order_no:=QListTransNo.FieldValues['order_no'];
    FDataReturPenjualan.edNoTrans.text:=hasil;
  end;
  if vcall='suratperintahmuat' then
  begin
    FDataPerintahMuat.strNoTransaksiDiGanti:=trans_no;
    order_no:=QListTransNo.FieldValues['order_no'];
    FDataPerintahMuat.edKodeMuat.text:=hasil;
  end;
  if vcall='pembelian' then
  begin
   // ShowMessage(hasil);
    FNew_Pembelian.EdNo.text:=hasil;
    FNew_Pembelian.strNoTransaksiDiGanti:=trans_no;
    FNew_Pembelian.Edurut.Text:=QListTransNo.FieldValues['order_no'];
  end;
  if vcall='PO' then     //02-07-2026  cr ds
  begin
    FNew_PO.Ednopo.text:=hasil;
    FNew_PO.strNoTransaksiDiGanti:=trans_no;
//    Urut:=QListTransNo.FieldValues['order_no'];
    FNew_PO.Edurut.Text:=QListTransNo.FieldValues['order_no'];
  end;
  if vcall='deliveryorder' then
  begin
    FNewDeliveryOrder.strNoTransaksiDiGanti:=trans_no;
    order_no:=QListTransNo.FieldValues['order_no'];
    FNewDeliveryOrder.edKodeDOMuatan.text:=hasil;
    FNewDeliveryOrder.edKodeDOBiaya.text:=hasil;
    FNewDeliveryOrder.edKodeDODok.text:=hasil;
  end;
  if vcall='pengajuan_kas_bank' then
  begin
    FDataPengajuanPengeluaranKasBank.strNoTransaksiDiGanti:=trans_no;
    order_no:=QListTransNo.FieldValues['order_no'];
    FDataPengajuanPengeluaranKasBank.edNoTrans.text:=hasil;
  end;
  if vcall='memorial' then
  begin
    FNewJurnal_memo.edno_bukti_memorial.text:=hasil;
    FNewJurnal_memo.strNoTransaksiDiGanti:=trans_no;
    Urut:=QListTransNo.FieldValues['order_no'];
  end;

  close;
end;

procedure TFListNoTransaksi.update_grid(fld_name_trans_no,fld_order_no,tbl_name,vwhere:string);
begin
  with QListTransNo do
  begin
    close;
    sql.clear;
    sql.add(' SELECT '+fld_name_trans_no+' AS trans_no ,'+fld_order_no+'  AS order_no '+
            ' from '+tbl_name+' '+
            ' '+vwhere+' ');
    open;
  end;
  QListTransNo.Refresh;
  if  QListTransNo.RecordCount=0 then
  begin
    Showmessage('Maaf, Data Tidak Ditemukan..');
    FListNoTransaksi.Close;
  end;

end;

end.
