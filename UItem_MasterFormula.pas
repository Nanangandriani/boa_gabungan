unit UItem_MasterFormula;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableEh, Vcl.StdCtrls, RzCmboBx,
  RzButton, Vcl.ExtCtrls;

type
  TFItem_MasterFormula = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    EdProduk: TRzComboBox;
    Label14: TLabel;
    MemMaterial: TMemTableEh;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BClose: TRzBitBtn;
    BSimpan: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BCloseClick(Sender: TObject);
    procedure DBGridEh1Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Simpan;
  end;

var
  FItem_MasterFormula: TFItem_MasterFormula;

implementation

{$R *.dfm}

uses UDataModule, UCari_Barang, UMainMenu;

Procedure TFItem_masterFormula.Simpan;
begin
    with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' insert into "warehouse".t_master_test(item_code,qty,product_code,conversion_qty)values'+
              ' (:paritem_code,:parqty,:parproduct_code,:parkd_sbu,:parthn,:parnourut,:parbln,:partglno)';
              ParamByName('parstatus').Value:='0';
              ParamByName('parkd_produk').Value:=EdProduk.Text;
     //         ParamByName('pargudang').Value:=kd_gdng;
   //           ParamByName('pargudang2').Value:=kd_gdng2;
    //          ParamByName('parkd_sbu').Value:=loksbu;
    //          ParamByName('parthn').Value:=Vthn;
    //          Parambyname('parnourut').value:=order_no;
     //         Parambyname('parbln').Value:=Vbln;
      //        Parambyname('partglno').value:=Vtgl;
    ExecSQL;
  end;
end;

procedure TFItem_MasterFormula.DBGridEh1Columns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FCari_Barang do
  begin
    show;
    VMenu:='9';
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
  EdProduk.Clear;
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
    EdProduk.Items.Add(DM.Qtemp['item_code2']);
    Dm.Qtemp.Next;
  END;
end;

procedure TFItem_MasterFormula.BCloseClick(Sender: TObject);
begin
  Close;
end;

end.
