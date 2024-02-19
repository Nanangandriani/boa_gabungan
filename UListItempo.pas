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
    Qmaterial_stok2item_stock_code: TStringField;
    Qmaterial_stok2order_no: TLargeintField;
    Qmaterial_stok2qty: TFloatField;
    Qmaterial_stok2unit: TStringField;
    Qmaterial_stok2merk: TStringField;
    Qmaterial_stok2item_name: TStringField;
    Qmaterial_stok2item_code: TStringField;
    Qmaterial_stok2supplier_code: TStringField;
    Qmaterial_stok2supplier_name: TStringField;
    Qmaterial_stok2item_name_1: TStringField;
    DsMaterial3: TDataSource;
    QMaterial3: TUniQuery;
    DBGridMaterial3: TDBGridEh;
    QMaterial3trans_no: TStringField;
    QMaterial3item_code: TStringField;
    QMaterial3item_name: TStringField;
    QMaterial3qty: TFloatField;
    QMaterial3unit: TStringField;
    QMaterial3note: TStringField;
    BEdit3: TRzBitBtn;
    procedure Bedit2Click(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure DBGridMaterialDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridMaterial2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BEdit3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
  //Flistitempo: TFlistitempo;


Function Flistitempo: TFlistitempo;

implementation

{$R *.dfm}

uses UNew_PO, UDataModule,Ulist_materialstok;

var
  RealFlistitempo: TFlistitempo;
function Flistitempo: TFlistitempo;
begin
  if RealFlistitempo <> nil then
    Flistitempo:= RealFlistitempo
  else
    Application.CreateForm(TFlistitempo, Result);
end;

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
          with FNew_PO do
          begin
            FNew_PO.MemItempo.Insert;
            FNew_PO.MemItempo['kd_material_stok']:=QMaterial_stok2['item_stock_code'];
            FNew_PO.MemItempo['kd_material']:=QMaterial_stok2['item_code'];
            FNew_PO.MemItempo['nm_material']:=QMaterial_stok2['item_name'];
            FNew_PO.MemItempo['satuan']:=QMaterial_stok2['unit'];
            FNew_PO.MemItempo['harga']:='0';
            FNew_PO.MemItempo['qtykontrak']:='0';
            FNew_PO.MemItempo['qty']:=0;
            FNew_PO.MemItempo['ppn']:=Flistmaterialstok.Qjenis_pajak['percentage'];
            FNew_po.MemItempo['pemb_ppn']:=0;
            FNew_po.MemItempo['pemb_ppn_us']:=0;
            FNew_po.MemItempo['pph']:=0;
            FNew_po.MemItempo['pemb_dpp']:=0;
            MemItempo['gudang']:=cb_gudang.Text;
            FNew_PO.MemItempo.Post;
          end;
        end;
      end;
    end;
   close;
end;

procedure TFlistitempo.BEdit3Click(Sender: TObject);
var i:integer;
begin
   if DBGridMaterial3.SelectedRows.Count > 0 then
    begin
      with DBGridMaterial3.DataSource.DataSet do
      begin
        for i := 0 to DBGridMaterial3.SelectedRows.Count-1 do
        begin
          GotoBookmark((DBGridMaterial3.SelectedRows.Items[i]));
          FNew_PO.Show;
          with FNew_PO do
          begin
            FNew_PO.MemItempo.Insert;
            FNew_PO.MemItempo['kd_material']:=QMaterial3['item_code'];
            FNew_PO.MemItempo['nm_material']:=QMaterial3['item_name'];
            FNew_PO.MemItempo['satuan']:=QMaterial3['unit'];
            FNew_PO.MemItempo['qty']:=QMaterial3['qty'];;
            FNew_PO.MemItempo['harga']:='0';
            FNew_PO.MemItempo['qtykontrak']:='0';
            //FNew_PO.MemItempo['qty']:=0;
            FNew_PO.MemItempo['ppn']:=Flistmaterialstok.Qjenis_pajak['percentage'];
            FNew_po.MemItempo['pemb_ppn']:=0;
            FNew_po.MemItempo['pemb_ppn_us']:=0;
            FNew_po.MemItempo['pph']:=0;
            FNew_po.MemItempo['pemb_dpp']:=0;
            MemItempo['gudang']:=cb_gudang.Text;
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
            FNew_PO.MemItempo['kd_material_stok']:=QMaterial_stok['item_stock_code'];
            FNew_PO.MemItempo['kd_material']:=QMaterial_stok['item_code'];
            FNew_PO.MemItempo['nm_material']:=QMaterial_stok['item_name'];
            FNew_PO.MemItempo['satuan']:=QMaterial_stok['unit'];
            FNew_PO.MemItempo['harga']:=QMaterial_stok['price'];
            FNew_PO.MemItempo['harga_rp']:=QMaterial_stok['price'];
            FNew_po.MemItempo['qtykontrak']:=QMaterial_stok['remaining_qty'];
            FNew_po.MemItempo['ppn']:=QMaterial_stok['ppn'];
            FNew_po.MemItempo['ppn_rp']:=QMaterial_stok['ppn_rp'];
            FNew_po.MemItempo['pemb_ppn']:=QMaterial_stok['pemb_ppn'];
            FNew_po.MemItempo['pemb_ppn_us']:=QMaterial_stok['pemb_ppn'];
            FNew_po.MemItempo['pemb_dpp']:=QMaterial_stok['pemb_dpp'];
            FNew_po.MemItempo['ppn_us']:=0;
            FNew_PO.MemItempo['qty']:=QMaterial_stok['remaining_qty'];
            FNew_po.MemItempo['pph']:=QMaterial_stok['pph'];
            FNew_po.MemItempo['pph_rp']:=QMaterial_stok['pph_rp'];
            FNew_po.MemItempo['subtotal_rp']:=QMaterial_stok['subtotal_rp'];
            FNew_po.MemItempo['grandtotalrp']:=QMaterial_stok['grandtotal'];
            FNew_PO.MemItempo['gudang']:=FNew_PO.cb_gudang.Text;
            FNew_PO.MemItempo.Post;
          end;
        end;
    end;
  end;
    close;
end;

procedure TFlistitempo.DBGridMaterial2DblClick(Sender: TObject);
begin
  with FNew_PO do
  begin
    MemItempo.Insert;
    MemItempo['kd_material_stok']:=QMaterial_stok2['item_stock_code'];
    MemItempo['nm_material']:=QMaterial_stok2['item_name'];
    MemItempo['satuan']:=QMaterial_stok2['unit'];
    MemItempo['harga']:='0';
    MemItempo['qtykontrak']:='0';
    MemItempo['qty']:=0;
    MemItempo['ppn']:=Flistmaterialstok.Qjenis_pajak['percentage'];
    MemItempo['pemb_ppn']:=0;
    MemItempo['pemb_dpp']:=0;
    MemItempo['pemb_ppn_us']:=0;
    MemItempo['pph']:=0;
    MemItempo['gudang']:=cb_gudang.Text;
    MemItempo.Post;
  end;
  close;
end;

procedure TFlistitempo.DBGridMaterialDblClick(Sender: TObject);
begin
  with FNew_PO.Memitempo do
  begin
    FNew_PO.MemItempo.Insert;
    FNew_PO.MemItempo['kd_material_stok']:=QMaterial_stok['item_stock_code'];
    FNew_PO.MemItempo['nm_material']:=QMaterial_stok['item_name'];
    FNew_PO.MemItempo['satuan']:=QMaterial_stok['unit'];
    FNew_PO.MemItempo['harga']:=QMaterial_stok['price'];
    FNew_po.MemItempo['qtykontrak']:=QMaterial_stok['remaining_qty'];
    FNew_po.MemItempo['ppn']:=QMaterial_stok['ppn'];
    FNew_PO.MemItempo['qty']:=0;
    FNew_po.MemItempo['pph']:='0';
    FNew_PO.MemItempo['gudang']:=FNew_PO.cb_gudang.Text;
    FNew_PO.MemItempo.Post;
  end;
  close;
end;

procedure TFlistitempo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TFlistitempo.FormCreate(Sender: TObject);
begin
  RealFlistitempo:=self;
end;

procedure TFlistitempo.FormDestroy(Sender: TObject);
begin
  RealFlistitempo:=nil;
end;

procedure TFlistitempo.FormShow(Sender: TObject);
begin
   Flistmaterialstok.Qjenis_pajak.Close;
   Flistmaterialstok.Qjenis_pajak.Open;
end;

end.
