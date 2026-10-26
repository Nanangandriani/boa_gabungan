unit USumberBarangRetur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, RzPanel, RzButton, Vcl.ComCtrls, RzDTP, Vcl.StdCtrls, Data.DB,
  MemDS, DBAccess, Uni;

type
  TFSumberBarangRetur = class(TForm)
    RzPanel1: TRzPanel;
    Label12: TLabel;
    Label13: TLabel;
    dtTanggal1: TRzDateTimePicker;
    Label1: TLabel;
    dtTanggal2: TRzDateTimePicker;
    btTampilkan: TRzBitBtn;
    DBGrid_SumberOrder: TDBGridEh;
    QReturList: TUniQuery;
    DSReturList: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
    procedure DBGrid_SumberOrderDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSumberBarangRetur: TFSumberBarangRetur;

implementation

{$R *.dfm}

uses UDataModule, UTambah_Barang, UDataReturPenjualan;

procedure TFSumberBarangRetur.btTampilkanClick(Sender: TObject);
begin
  with QReturList do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT * from get_selling_item_details('+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal1.Date))+
              ','+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal2.Date))+
              ','+QuotedStr(FDataReturPenjualan.edKode_Pelanggan.Text)+')';
//    sql.Text:='SELECT b.trans_no, b.no_inv_tax, b.trans_date, a.code_item, '+
//              'c.item_name,a.code_unit,d.unit_name name_unit '+
//              'FROM t_selling b '+
//              'INNER JOIN t_selling_det a ON a.trans_no = b.trans_no AND a.deleted_at IS NULL '+
//              'LEFT JOIN t_item c ON c.item_code = a.code_item '+
//              'LEFT JOIN t_unit d on d.unit_code=c.unit '+
//              'WHERE b.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal1.Date))+' AND '+
//              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal2.Date))+' AND b.code_cust='+QuotedStr(FDataReturPenjualan.edKode_Pelanggan.Text)+' '+
//              'and (b.no_inv_tax is not null and b.no_inv_tax<>'''') AND b.deleted_at IS NULL '+
//              'UNION ALL '+
//	            'SELECT b.trans_no, b.no_inv_tax, b.trans_date, a.code_item, '+
//              'c.item_name,a.code_unit,d.unit_name name_unit '+
//              'FROM t_selling_initial_balance b '+
//              'INNER JOIN t_selling_initial_balance_det a ON a.trans_no = b.trans_no '+
//              'LEFT JOIN t_item c ON c.item_code = a.code_item '+
//              'LEFT JOIN t_unit d on d.unit_code=c.unit '+
//              'WHERE b.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal1.Date))+' AND '+
//              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal2.Date))+' AND b.customer_code='+QuotedStr(FDataReturPenjualan.edKode_Pelanggan.Text)+' '+
//              'and (b.no_inv_tax is not null and b.no_inv_tax<>'''') ;';
    open;
  end;
end;

procedure TFSumberBarangRetur.DBGrid_SumberOrderDblClick(Sender: TObject);
begin
  FTambah_Barang.edKodeBarang.Text:=QReturList.FieldValues['code_item'];
  FTambah_Barang.edNamaBarang.Text:=QReturList.FieldValues['item_name'];
  FTambah_Barang.edKodeSatuan.Text:=QReturList.FieldValues['code_unit'];
  FTambah_Barang.edSatuan.Text:=QReturList.FieldValues['name_unit'];
  FTambah_Barang.edNoNota.Text:=QReturList.FieldValues['trans_no'];
  FTambah_Barang.no_faktur:=QReturList.FieldValues['no_inv_tax'];
  Close;
end;

procedure TFSumberBarangRetur.FormShow(Sender: TObject);
begin
  DBGrid_SumberOrder.SearchPanel.SearchingText:='';
  dtTanggal1.Date:=Now();
  dtTanggal2.Date:=Now();
  QReturList.Close;

end;

end.
