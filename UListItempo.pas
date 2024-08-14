unit UListItempo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, RzButton,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFlistitempo = class(TForm)
    DBGridMaterial: TDBGridEh;
    DBGridMaterial2: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BEdit: TRzBitBtn;
    Bedit2: TRzBitBtn;
    QMaterial_stok: TUniQuery;
    DsMaterial_stok: TDataSource;
    DsMaterial_stok2: TDataSource;
    Qmaterial_stok2: TUniQuery;
    Qmaterial_stok2material_code: TStringField;
    Qmaterial_stok2supplier_code: TStringField;
    Qmaterial_stok2material_stock_code: TStringField;
    Qmaterial_stok2order_no: TLargeintField;
    Qmaterial_stok2order_code: TStringField;
    Qmaterial_stok2qty: TFloatField;
    Qmaterial_stok2unit: TStringField;
    Qmaterial_stok2merk: TStringField;
    Qmaterial_stok2material_name: TStringField;
    Qmaterial_stok2material_no: TStringField;
    Qmaterial_stok2qty_per_conversion: TFloatField;
    Qmaterial_stok2qty_conversion: TFloatField;
    Qmaterial_stok2unit_conversion: TStringField;
    Qmaterial_stok2supplier_name: TStringField;
    Qmaterial_stok2material_name_1: TStringField;
    QMaterial_stokcontract_no: TStringField;
    QMaterial_stokmaterial_stock_code: TStringField;
    QMaterial_stokqty: TFloatField;
    QMaterial_stokprice: TFloatField;
    QMaterial_stokunit: TStringField;
    QMaterial_stoktotal_price: TFloatField;
    QMaterial_stokremaining_qty: TFloatField;
    QMaterial_stoktotalpo: TFloatField;
    QMaterial_stokmaterial_name: TStringField;
    QMaterial_stokppn: TFloatField;
    procedure Bedit2Click(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure DBGridMaterialDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flistitempo: TFlistitempo;

implementation

{$R *.dfm}

uses UNew_PO;

procedure TFlistitempo.BBatalClick(Sender: TObject);
begin
   close;
end;

procedure TFlistitempo.Bedit2Click(Sender: TObject);
var i:integer;
begin
  if DBGridMaterial2.SelectedRows.Count > 0 then
  begin
  with DBGridMaterial2.DataSource.DataSet do
  begin
  for i := 0 to DBGridMaterial2.SelectedRows.Count-1 do
  begin
  GotoBookmark((DBGridMaterial2.SelectedRows.Items[i]));
  FNew_PO.Show;
  with FNew_PO.Memitempo do
  begin
    FNew_PO.MemItempo.Insert;
    FNew_PO.MemItempo['kd_material_stok']:=QMaterial_stok2['kd_material_stok'];
    FNew_PO.MemItempo['nm_material']:=QMaterial_stok2['nm_material'];
    FNew_PO.MemItempo['satuan']:=QMaterial_stok2['satuan'];
    FNew_PO.MemItempo['harga']:='0';
    FNew_PO.MemItempo['qtykontrak']:='0';
    FNew_PO.MemItempo['qty']:=0;
    FNew_PO.MemItempo['ppn']:='10';
    FNew_PO.MemItempo.Post;
  end;
  end;
  end;
  end;
  close;
end;

procedure TFlistitempo.BEditClick(Sender: TObject);
var i:integer;
begin
    if DBGridMaterial.SelectedRows.Count > 0 then
    begin
      with DBGridMaterial.DataSource.DataSet do
      begin
        for i := 0 to DBGridMaterial.SelectedRows.Count-1 do
        begin
          GotoBookmark((DBGridMaterial.SelectedRows.Items[i]));
          FNew_PO.Show;
          with FNew_PO.Memitempo do
          begin
            FNew_PO.MemItempo.Insert;
            FNew_PO.MemItempo['kd_material_stok']:=QMaterial_stok['kd_material_stok'];
            FNew_PO.MemItempo['nm_material']:=QMaterial_stok['nm_material'];
            FNew_PO.MemItempo['satuan']:=QMaterial_stok['satuan'];
            FNew_PO.MemItempo['harga']:=QMaterial_stok['harga'];
            FNew_po.MemItempo['qtykontrak']:=QMaterial_stok['sisaqty'];
            FNew_po.MemItempo['ppn']:=QMaterial_stok['ppn'];;
            FNew_PO.MemItempo['qty']:=0;
            FNew_po.MemItempo['pph']:='0';
            FNew_PO.MemItempo['gudang']:=FNew_PO.cb_gudang.Text;
            FNew_PO.MemItempo.Post;
          end;
        end;
      end;
    end;
    close;
end;

procedure TFlistitempo.DBGridMaterialDblClick(Sender: TObject);
begin
  with FNew_PO.Memitempo do
  begin
    FNew_PO.MemItempo.Insert;
    FNew_PO.MemItempo['kd_material_stok']:=QMaterial_stok['kd_material_stok'];
    FNew_PO.MemItempo['nm_material']:=QMaterial_stok['nm_material'];
    FNew_PO.MemItempo['satuan']:=QMaterial_stok['satuan'];
    FNew_PO.MemItempo['harga']:=QMaterial_stok['harga'];
    FNew_po.MemItempo['qtykontrak']:=QMaterial_stok['sisaqty'];
    FNew_po.MemItempo['ppn']:=QMaterial_stok['ppn'];
    FNew_PO.MemItempo['qty']:=0;
    FNew_po.MemItempo['pph']:='0';
    FNew_PO.MemItempo['gudang']:=FNew_PO.cb_gudang.Text;
    FNew_PO.MemItempo.Post;
  end;
  close;
end;

end.
