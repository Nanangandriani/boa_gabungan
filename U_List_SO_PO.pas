unit U_List_SO_PO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls, Vcl.Mask,
  RzEdit, Vcl.ComCtrls, RzDTP, RzPanel;

type
  TFList_SO = class(TForm)
    DBGrid_SO: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BEdit: TRzBitBtn;
    Cb_All: TCheckBox;
    Q_list_so: TUniQuery;
    DS_So: TDataSource;
    Q_list_sovehicle_group_sort_number: TStringField;
    Q_list_sovehicle_group_id: TStringField;
    Q_list_sovehicles: TStringField;
    DBGridMaterial: TDBGridEh;
    Q_list_sosent_date: TDateField;
    Q_list_sotype_vehicles_code: TStringField;
    Q_list_sotype_vehicles_name: TStringField;
    Q_list_socapacity: TIntegerField;
    procedure Cb_AllClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FList_SO: TFList_SO;
  kode_br,kd_sp:string;

implementation

{$R *.dfm}

uses UDataModule, UNew_PO, UListItemSo;


function GetSelectedSO(Grid: TDBGridEh): string;
var
  i: Integer;
  DS: TDataSet;
begin
  Result := '';
  DS := Grid.DataSource.DataSet;

  for i := 0 to Grid.SelectedRows.Count - 1 do
  begin
    DS.GotoBookmark(Grid.SelectedRows.Items[i]);
    Result := Result + QuotedStr(DS.FieldByName('notrans').AsString) + ',';
  end;

  if Result <> '' then
    Delete(Result, Length(Result), 1); // hapus koma terakhir
end;


procedure TFList_SO.BBatalClick(Sender: TObject);
begin
   Close;
end;

procedure TFList_SO.BEditClick(Sender: TObject);
var i:integer;
    //ListSO: string;
begin
  for i := 0 to DBGrid_SO.SelectedRows.Count - 1 do
  begin
    Q_list_so.GotoBookmark(DBGrid_SO.SelectedRows[i]);

    FlistItemSo.Ed_no_Kendaraan.Text :=Q_list_so.FieldByName('vehicles').AsString;
    FlistItemSo.Ed_kode.Text :=Q_list_so.FieldByName('vehicles').AsString;
    FlistItemSo.Ed_vehicle_group_sort_number.Text :=Q_list_so.FieldByName('vehicle_group_sort_number').AsString;
    FlistItemSo.Ed_vehicle_group_id.Text :=Q_list_so.FieldByName('vehicle_group_id').AsString;

    Break; // ambil satu saja
  end;
  Close;

  {if DBGrid_SO.SelectedRows.Count = 0 then Exit;

    ListSO := GetSelectedSO(DBGrid_SO);
    FlistItemSo.Show;

    with FlistItemSo.QMaterial do
    begin
      Close;
      SQL.Clear;
      SQL.Text :='SELECT a.notrans, c.item_code, c.item_name,a.amount AS qty, c.unit, c.buy AS price,e.supplier_code FROM t_sales_order_det a '+
                 'INNER JOIN t_sales_order b on a.notrans=b.notrans '+
                 'INNER JOIN t_item c ON a.code_item = c.item_code '+
                 'INNER JOIN t_item_stock d on c.item_code=d.item_code '+
                 'INNER JOIN t_supplier e on d.supplier_code=e.supplier_code '+
                 'WHERE e.supplier_code='+QuotedStr(FNew_PO.EdKd_supp.Text)+' and b.notrans IN (' + ListSO + ')';

      Open;
    end;}


    {with FlistItemSo.QMaterial do
    begin
      Close;
      SQL.Clear;
      SQL.Text :='SELECT a.notrans, b.item_code, b.item_name,a.amount AS remaining_qty, b.unit, b.buy AS price '+
                 'FROM t_sales_order_det a INNER JOIN t_item b ON a.code_item = b.item_code '+
                 'WHERE a.notrans IN (' + ListSO + ') '+
                 'ORDER BY a.notrans, b.item_code';
      Open;
    end;}


  {if DBGrid_SO.SelectedRows.Count > 0 then
  begin
    with DBGrid_SO.DataSource.DataSet do
    begin
       for i := 0 to DBGrid_SO.SelectedRows.Count-1 do
        begin
          GotoBookmark((DBGrid_SO.SelectedRows.Items[i]));
          FlistItemSo.Show;
          with FlistItemSo.QMaterial do
          begin
             close;
             sql.Clear;
             sql.Text:='SELECT a.notrans,b.item_code,b.item_name,a.amount AS remaining_qty,b.unit,b.buy AS price FROM t_sales_order_det a '+
                       'INNER JOIN t_item b ON a.code_item = b.item_code '+
                       'WHERE a.notrans IN (SELECT notrans FROM t_sales_order WHERE vehicle_group_sort_number = :p_sort '+
                       'AND vehicle_group_id = :p_group_id '+
                       'AND vehicles = :p_vehicle) '+
                       'ORDER BY a.notrans, b.item_code ';
             Open;
          end;
        end;

    end;
  end;}
end;

procedure TFList_SO.Cb_AllClick(Sender: TObject);
begin
    if Cb_All.Checked then
    begin
      DBGrid_SO.SelectedRows.SelectAll;
    end
    else
      DBGrid_SO.SelectedRows.Clear;
end;

end.
