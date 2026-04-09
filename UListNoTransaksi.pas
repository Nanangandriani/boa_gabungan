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
  UDataPenerimaanBank, UNew_SalesOrder, UDataReturPenjualan;

procedure TFListNoTransaksi.DBGridEh1DblClick(Sender: TObject);
var trans_no,hasil: String;
begin
  trans_no:=QListTransNo.FieldValues['trans_no'];
  hasil := Copy(trans_no, 1, Pos('-DEL', trans_no) - 1);

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

  if  QListTransNo.RecordCount=0 then
  begin
    Showmessage('Maaf, Data Tidak Ditemukan..');
    QListTransNo.Close;
    FListNoTransaksi.Close;
  end;

end;

end.
