unit Ulist_materialstok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, RzButton, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Data.DB, MemDS, DBAccess, Uni;

type
  TFlistmaterialstok = class(TForm)
    DsMaterial_stok: TDataSource;
    QMaterial_stok: TUniQuery;
    DBGridMaterial: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BEdit: TRzBitBtn;
    procedure BEditClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flistmaterialstok: TFlistmaterialstok;
  ItemReturn :Integer;

implementation

{$R *.dfm}

uses UNew_KontrakKerjasama;

procedure TFlistmaterialstok.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFlistmaterialstok.BEditClick(Sender: TObject);
var i:integer;
begin
    if ItemReturn=0 then
    begin
      if DBGridMaterial.SelectedRows.Count > 0 then
      begin
        with DBGridMaterial.DataSource.DataSet do
        begin
           for i := 0 to DBGridMaterial.SelectedRows.Count-1 do
           begin
             GotoBookmark(DBGridMaterial.SelectedRows.Items[i]);
             with FNewKontrak_ks do
             begin
                MemMaterial.Insert;
                MemMaterial['kd_material']:=QMaterial_stok.FieldByName('item_stock_code').AsString;
                MemMaterial['nm_material']:=QMaterial_stok.FieldByName('item_name').AsString;
                MemMaterial['nm_supplier']:=QMaterial_stok.FieldByName('supplier_name').AsString;
                MemMaterial['satuan']:=QMaterial_stok.FieldByName('unit').AsString;
                MemMaterial['qty']:='0';
                MemMaterial['harga']:='0';
                MemMaterial['harga2']:='0';
                MemMaterial['ppn']:='10';
                MemMaterial.Post;
             end;
           end;
        end;
      end;
    end;
    close;
end;

end.
