unit UItem_MasterFormula;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableEh, Vcl.StdCtrls, RzCmboBx,
  RzButton, Vcl.ExtCtrls, DataDriverEh, MemDS, DBAccess, Uni;

type
  TFItem_MasterFormula = class(TForm)
    MemMaterial: TMemTableEh;
    DataSource1: TDataSource;
    Panel1: TPanel;
    BClose: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Brefresh: TRzBitBtn;
    BNew: TRzBitBtn;
    Panel2: TPanel;
    EdProduk: TRzComboBox;
    Label14: TLabel;
    DBGridEh1: TDBGridEh;
    QMasterTest: TUniQuery;
    DsMasterTest: TDataSource;
    MemMasterTest: TMemTableEh;
    DsdMasterTest: TDataSetDriverEh;
    DBGridEh2: TDBGridEh;
    BUpdate: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BCloseClick(Sender: TObject);
    procedure DBGridEh1Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BSimpanClick(Sender: TObject);
    procedure BrefreshClick(Sender: TObject);
    procedure BNewClick(Sender: TObject);
    procedure BUpdateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Simpan;
    Procedure Update;
    procedure load;
    procedure clear;
  end;

var
  FItem_MasterFormula: TFItem_MasterFormula;

implementation

{$R *.dfm}

uses UDataModule, UCari_Barang, UMainMenu, UMy_Function;

procedure TFItem_MasterFormula.clear;
begin
  EdProduk.Text:='';
  MemMaterial.EmptyTable;
end;

procedure TFItem_masterFormula.load;
begin
  EdProduk.Clear;
  MemMaterial.Close;
  MemMaterial.Open;
  MemMasterTest.Close;
  MemMasterTest.Open;
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:='select * from t_item WHERE sell_status=''1'' order by item_code asc ';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while NOT Dm.Qtemp.Eof do
  BEGIN
    EdProduk.Items.Add(DM.Qtemp['item_name']);
    Dm.Qtemp.Next;
  END;
end;

Procedure TFItem_masterFormula.Simpan;
begin
  MemMaterial.First;
  while not MemMaterial.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:=' insert into t_master_test(item_code,qty,product_code,conversion_qty)values'+
                ' (:paritem_code,:parqty,:parproduct_code,:parconv)';
                ParamByName('parproduct_code').Value:=EdProduk.Text;
                ParamByName('paritem_code').Value:=MemMaterial['kd_barang'];
                ParamByName('parqty').Value:=MemMaterial['qty'];
                ParamByName('parconv').Value:=MemMaterial['qty_conv'];
      ExecSQL;
    end;
    MemMaterial.Next
  end;
end;

procedure tFitem_masterformula.Update;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='delete from t_master_test where product_code='+QuotedStr(EdProduk.Text);
    Execute;
  end;
  MemMaterial.First;
  while not MemMaterial.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:=' insert into t_master_test(item_code,qty,product_code,conversion_qty)values'+
                ' (:paritem_code,:parqty,:parproduct_code,:parconv)';
                ParamByName('parproduct_code').Value:=EdProduk.Text;
                ParamByName('paritem_code').Value:=MemMaterial['kd_barang'];
                ParamByName('parqty').Value:=MemMaterial['qty'];
                ParamByName('parconv').Value:=MemMaterial['qty_conv'];
      ExecSQL;
    end;
    MemMaterial.Next
  end;
end;

procedure TFItem_MasterFormula.BSimpanClick(Sender: TObject);
begin
  if statustr='0' then
  begin
    simpan;
  end;
  if statustr='1' then
  begin
    update;
  end;
    BCloseClick(sender);
    BUpdate.Enabled:=true;
    BNew.Enabled:=true;
    Brefresh.Enabled:=true;
end;

procedure TFItem_MasterFormula.BUpdateClick(Sender: TObject);
begin
  clear;
  statustr:='1';
  BNew.Enabled:=false;
  BUpdate.Enabled:=false;
  Brefresh.Enabled:=false;
  Panel2.Visible:=true;
  DBGridEh2.Visible:=false;
  MemMaterial.EmptyTable;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.*,b.item_name from "warehouse".t_master_test a inner join t_item b on a.item_code=b.item_code'+
              ' where a.product_code= '+QuotedStr(MemMasterTest['product_code']);
              Execute;
  end;
  EdProduk.Text:=Dm.Qtemp['product_code'];
  dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    with dm.Qtemp do
    begin
      MemMaterial.Insert;
      MemMaterial['nm_barang']:=dm.Qtemp['item_name'];
      MemMaterial['kd_barang']:=dm.Qtemp['item_code'];
      MemMaterial['qty']:=dm.Qtemp['qty'];
      MemMaterial['qty_conv']:=dm.Qtemp['conversion_qty'];
      MemMaterial.Post;
      dm.Qtemp.Next;
    end;
  end;
end;

procedure TFItem_MasterFormula.DBGridEh1Columns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FCari_Barang do
  begin
    show;
    status_tr:='10';
    with QBarang do
    begin
      Close;
      sql.clear;
      SQL.Text:='select a.item_code,a.item_name,b.category,a.order_no,a.merk,a.unit,c.qty_conv from t_item '+
                ' a INNER JOIN t_item_category b on a.category_id=b.category_id '+
                ' INNER JOIN t_item_conversion C on a. item_code= c.item_code '+
             //   ' where b.category='+QuotedStr(Edcategory.Text)+''+
                ' Group by a.item_code,a.item_name,b.category,a.order_no,a.merk,a.unit,c.qty_conv '+
                ' order by b.category,a.order_no Asc';
      execute;
    end;
   DBGridEh1.IndicatorOptions:=[gioShowRowselCheckboxesEh];
  end;
end;

procedure TFItem_MasterFormula.FormShow(Sender: TObject);
begin
  load;
end;

procedure TFItem_MasterFormula.BrefreshClick(Sender: TObject);
begin
  DBGridEh2.StartLoadingStatus();
    QMasterTest.Close;
    MemMasterTest.close;
    QMasterTest.Open;
    MemMasterTest.open;
  DBGridEh2.FinishLoadingStatus();
end;

procedure TFItem_MasterFormula.BNewClick(Sender: TObject);
begin
  Panel2.Visible:=true;
//  DBGridEh1.Visible:=true;
  DBGridEh2.Visible:=false;
  clear;
  statustr:='0';
  BNew.Enabled:=false;
  BUpdate.Enabled:=false;
  Brefresh.Enabled:=false;
end;

procedure TFItem_MasterFormula.BCloseClick(Sender: TObject);
begin
//  Close;
  Panel2.Visible:=false;
  DBGridEh2.Visible:=true;
  clear;
end;

end.
