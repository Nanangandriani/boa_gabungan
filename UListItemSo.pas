unit UListItemSo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RzButton, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, Vcl.ComCtrls, RzDTP, RzPanel;

type
  TFlistItemSo = class(TForm)
    QMaterial: TUniQuery;
    DsMaterial: TDataSource;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BEdit: TRzBitBtn;
    DBGridMaterial: TDBGridEh;
    QMaterialnotrans: TStringField;
    QMaterialqty: TFloatField;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    DT_tgl_kirim: TRzDateTimePicker;
    Ed_no_Kendaraan: TRzEdit;
    Cari: TRzBitBtn;
    Ed_kode: TEdit;
    ed_vehicle_group_sort_number: TEdit;
    ed_vehicle_group_id: TEdit;
    BCari: TRzBitBtn;
    QMaterialcode_item: TStringField;
    QMaterialname_item: TStringField;
    QMaterialcode_unit: TStringField;
    Cb_All: TCheckBox;
    QMaterialsent_date: TDateField;
    QMaterialname_cust: TStringField;
    QMaterialbuy: TFloatField;
    QMaterialorder_date: TDateField;
    QMaterialcode_cust: TStringField;
    QMaterialname_unit: TStringField;
    BEdit2: TRzBitBtn;
    QMaterialitem_stock_code: TStringField;
    procedure BBatalClick(Sender: TObject);
    procedure CariClick(Sender: TObject);
    procedure BCariClick(Sender: TObject);
    procedure Cb_AllClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BEdit2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlistItemSo: TFlistItemSo;

implementation

{$R *.dfm}

uses U_List_SO_PO, UNew_PO, UDataModule, UMainMenu;

procedure TFlistItemSo.BBatalClick(Sender: TObject);
begin
  DT_tgl_kirim.Date:=now();
  Ed_no_Kendaraan.Text:='';
  Ed_kode.Text:='';
  ed_vehicle_group_sort_number.Text:='';
  ed_vehicle_group_id.Text:='';
  Close;
end;

procedure TFlistItemSo.BEditClick(Sender: TObject);
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
          if ref_code='SO' then
          begin
            with FNew_PO.Memitempo do
            begin
              FNew_PO.MemItempo.Insert;
              //FNew_PO.MemItempo['kd_material_stok']:=QMaterial['item_stock_code'];
              FNew_PO.MemItempo['kd_material']:=QMaterial['code_item'];
              FNew_PO.MemItempo['nm_material']:=QMaterial['name_item'];
              FNew_PO.MemItempo['satuan']:=QMaterial['code_unit'];
              FNew_PO.MemItempo['harga']:=QMaterial['buy'];
              FNew_PO.MemItempo['harga_rp']:=QMaterial['buy'];
              //FNew_po.MemItempo['qtykontrak']:=QMaterial['remaining_qty'];
              FNew_po.MemItempo['qtykontrak']:=0;
              FNew_po.MemItempo['ppn']:=11;
              FNew_po.MemItempo['ppn_rp']:=0;
              FNew_po.MemItempo['pemb_ppn']:=0;
              FNew_po.MemItempo['pemb_ppn_us']:=0;
              FNew_po.MemItempo['pemb_dpp']:=0;
              FNew_po.MemItempo['ppn_us']:=0;
              FNew_PO.MemItempo['qty']:=QMaterial['qty'];
              FNew_po.MemItempo['pph']:=0;
              FNew_po.MemItempo['pph_rp']:=0;
              //FNew_po.MemItempo['subtotal_rp']:=QMaterial_stok['subtotal_rp'];
              //FNew_po.MemItempo['grandtotalrp']:=QMaterial_stok['grandtotal'];
              FNew_PO.MemItempo['gudang']:=FNew_PO.cb_gudang.Text;
              FNew_PO.MemItempo.Post;
            end;

            {if Locate('kd_material', QMaterial['code_item'], []) then
            begin
              // === BARANG SUDAH ADA → TAMBAH QTY ===
              Edit;
              FieldByName('qty').AsFloat :=
                FieldByName('qty').AsFloat + QMaterial.FieldByName('qty').AsFloat;
            end
            else
            begin
              // === BARANG BELUM ADA → INSERT ===
              Append;
              FieldByName('kd_material').AsString := QMaterial['code_item'];
              FieldByName('nm_material').AsString := QMaterial['name_item'];
              FieldByName('satuan').AsString      := QMaterial['code_unit'];
              FieldByName('harga').AsCurrency     := QMaterial['buy'];
              FieldByName('harga_rp').AsCurrency  := QMaterial['buy'];
              FieldByName('qtykontrak').AsFloat   := 0;
              FieldByName('ppn').AsInteger        := 11;
              FieldByName('qty').AsFloat          := QMaterial['qty'];
              FieldByName('pph').AsInteger        := 0;
              FieldByName('gudang').AsString      := FNew_PO.cb_gudang.Text;
            end;

            // === HITUNG ULANG SUBTOTAL ===
              FieldByName('subtotal_rp').AsCurrency :=
              FieldByName('qty').AsFloat * FieldByName('harga_rp').AsCurrency;

            Post;}


          //end;
            {with dm.Qtemp do
            begin
              Close;
              SQL.Clear;
              sql.Text:='select percentage ppn from t_tax_type where type=''PPN''';
              Open;
            End;
            if ref_code<>'KK' then
            begin
              kode_br:=QMaterial['item_code']+FNew_PO.EdKd_supp.Text;
              with FNew_PO.Memitempo do
              begin
                FNew_PO.MemItempo.Insert;
                FNew_PO.MemItempo['kd_material_stok']:=kode_br;
                FNew_PO.MemItempo['kd_material']:=QMaterial['item_code'];
                FNew_PO.MemItempo['nm_material']:=QMaterial['item_name'];
                FNew_PO.MemItempo['satuan']:=QMaterial['unit'];
                FNew_PO.MemItempo['harga']:=QMaterial['price'];
                FNew_PO.MemItempo['harga_rp']:=QMaterial['price'];
                FNew_po.MemItempo['qtykontrak']:=QMaterial['remaining_qty'];
                FNew_po.MemItempo['ppn']:=dm.Qtemp['ppn'];
                FNew_po.MemItempo['ppn_rp']:=0;
                FNew_po.MemItempo['pemb_ppn']:=0;
                FNew_po.MemItempo['pemb_ppn_us']:=0;
                FNew_po.MemItempo['pemb_dpp']:=0;
                FNew_po.MemItempo['ppn_us']:=0;
                FNew_PO.MemItempo['qty']:=QMaterial['remaining_qty'];
                FNew_po.MemItempo['pph']:=0;
                FNew_po.MemItempo['pph_rp']:=0;
                //FNew_po.MemItempo['subtotal_rp']:=QMaterial_stok['subtotal_rp'];
                //FNew_po.MemItempo['grandtotalrp']:=QMaterial_stok['grandtotal'];
                FNew_PO.MemItempo['gudang']:=FNew_PO.cb_gudang.Text;
                FNew_PO.MemItempo.Post;
              end;
              with dm.Qtemp do
              begin
                close;
                sql.Clear;
                sql.Text:='select * from t_item_stock where item_stock_code='+QuotedStr(kode_br);
                Execute;
              end;
              if dm.Qtemp.RecordCount=0 then
              begin
                with dm.Qtemp2 do
                begin
                  close;
                  sql.Clear;
                  sql.Text:='select max(order_no) urut from t_item_stock where supplier_code='+QuotedStr(FNew_PO.EdKd_supp.Text);
                  Execute;
                end;
                if dm.Qtemp2.RecordCount=0 then
                begin
                  kd_sp:='0';
                end;
                if dm.Qtemp2.RecordCount<>0 then
                begin
                  kd_sp:= inttostr(dm.Qtemp2['urut']+1);
                end;
                with dm.Qtemp1 do
                begin
                  Close;
                  sql.clear;
                  SQL.Text:='insert into t_item_stock(item_stock_code,item_code,item_name,unit,order_no,qty,supplier_code,created_by)'+
                  'values('+QuotedStr(kode_br)+','+quotedstr(QMaterial['item_code'])+','+QuotedStr(QMaterial['item_name'])+','+QuotedStr(QMaterial['unit'])+','+QuotedStr(kd_sp)+',''0'','+QuotedStr(FNew_PO.edkd_supp.Text)+','+QuotedStr(Nm)+')';
                  execute;
                end;
              end;
            end;}
          end;
        end;
    end;
   end;
  close;

end;

procedure TFlistItemSo.CariClick(Sender: TObject);
begin
    with FList_SO.Q_list_so do
    begin
      close;
      sql.Clear;
      sql.Text:='select DISTINCT type_vehicles_code,vehicle_group_sort_number,vehicle_group_id,vehicles,type_vehicles_name,capacity,sent_date,deleted_at FROM '+
                '(SELECT notrans,order_date,sent_date,vehicle_group_sort_number,vehicle_group_id,vehicles,type_vehicles_code,type_vehicles_name,capacity,deleted_at from t_sales_order WHERE vehicle_group_sort_number is NOT NULL)a '+
                'WHERE sent_date='+QuotedStr(FormatDateTime('yyyy-mm-dd',FlistItemSo.DT_tgl_kirim.Date))+' and deleted_at IS NULL '+
                'ORDER BY type_vehicles_code ASC ';
      open;
    end;
    FList_SO.Q_list_so.Close;
    FList_SO.Q_list_so.Open;
    FList_SO.Show;
end;

procedure TFlistItemSo.Cb_AllClick(Sender: TObject);
begin
    if Cb_All.Checked then
    begin
      DBGridMaterial.SelectedRows.SelectAll;
    end
    else
      DBGridMaterial.SelectedRows.Clear;
end;

procedure TFlistItemSo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DT_tgl_kirim.Date:=now();
   Ed_no_Kendaraan.Text:='';
   Ed_kode.Text:='';
   ed_vehicle_group_sort_number.Text:='';
   ed_vehicle_group_id.Text:='';
   BCariClick(sender);
end;

procedure TFlistItemSo.FormShow(Sender: TObject);
begin
  DT_tgl_kirim.Date:=now();
  Ed_no_Kendaraan.Text:='';
  Ed_kode.Text:='';
  ed_vehicle_group_sort_number.Text:='';
  ed_vehicle_group_id.Text:='';
  Cb_All.Checked:=false;
end;

procedure TFlistItemSo.BCariClick(Sender: TObject);
begin
    with QMaterial do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT a.*,b.item_stock_code FROM '+
                '(select a.notrans,b.order_date,b.sent_date,b.code_cust,b.name_cust,a.code_item,a.name_item,a.amount qty,a.code_unit,a.name_unit,c.buy  from t_sales_order_det a '+
                'left join t_sales_order b on b.notrans=a.notrans '+
                'INNER JOIN t_item c on a.code_item=c.item_code '+
                'where b.sent_date='+QuotedStr(FormatDateTime('yyyy-mm-dd',DT_tgl_kirim.Date))+' AND b.vehicle_group_sort_number='+QuotedStr(ed_vehicle_group_sort_number.Text)+' AND '+
                'a.code_item IN (SELECT item_code from t_item_stock WHERE supplier_code='+QuotedStr(FNew_PO.EdKd_supp.Text)+' '+
                'and deleted_at is NULL ) and b.deleted_at is null and (a.status_po=0 or a.status_po is Null) '+
                'ORDER BY a.notrans ASC) a '+
                'LEFT JOIN t_item_stock b on a.code_item=b.item_code WHERE b.supplier_code='+QuotedStr(FNew_PO.EdKd_supp.Text)+' ';
      open;
    end;
    QMaterial.Close;
    QMaterial.Open;
end;

procedure TFlistItemSo.BEdit2Click(Sender: TObject);
var
  i: Integer;
begin
  if DBGridMaterial.SelectedRows.Count = 0 then Exit;

  FNew_PO.Show;
  DBGridMaterial.DataSource.DataSet.DisableControls;
  FNew_PO.MemItemPO.DisableControls;
  FNew_PO.MemItemPO2.DisableControls;

  with DBGridMaterial.DataSource.DataSet do //save sumTotal
  begin
    DisableControls;
    try
      for i := 0 to DBGridMaterial.SelectedRows.Count - 1 do
      begin
        GotoBookmark(DBGridMaterial.SelectedRows.Items[i]);

        if ref_code = 'SO' then
        begin
          with FNew_PO.MemItemPO do
          begin
            // === JIKA KODE BARANG SUDAH ADA ===
            if Locate('kd_material', QMaterial.FieldByName('code_item').AsString, []) then
            begin
              Edit;
              FieldByName('qty').AsFloat :=
                FieldByName('qty').AsFloat +
                QMaterial.FieldByName('qty').AsFloat;
            end
            else
            begin
              // === JIKA BELUM ADA → INSERT BARU ===
              Append;
              FieldByName('Kd_Material_stok').AsString :=
                QMaterial.FieldByName('item_stock_code').AsString;
              FieldByName('kd_material').AsString :=
                QMaterial.FieldByName('code_item').AsString;
              FieldByName('nm_material').AsString :=
                QMaterial.FieldByName('name_item').AsString;
              FieldByName('satuan').AsString :=
                QMaterial.FieldByName('code_unit').AsString;
              FieldByName('harga').AsCurrency :=
                QMaterial.FieldByName('buy').AsCurrency;
              FieldByName('harga_rp').AsCurrency :=
                QMaterial.FieldByName('buy').AsCurrency;
              FieldByName('qtykontrak').AsFloat := 0;
              FieldByName('ppn').AsInteger := 11;
              FieldByName('qty').AsFloat :=
                QMaterial.FieldByName('qty').AsFloat;
              FieldByName('pph').AsInteger := 0;
              FieldByName('gudang').AsString :=
                FNew_PO.cb_gudang.Text;
            end;
            // === HITUNG ULANG DETAIL ===
            FNew_PO.HitungDetail_so;


            Post;
          end;

          with FNew_PO.Memitempo2 do
          begin
              FNew_PO.MemItempo2.Insert;
              FNew_PO.MemItempo2['kd_material_stok']:=QMaterial['item_stock_code'];
              FNew_PO.MemItempo2['kd_material']:=QMaterial['code_item'];
              FNew_PO.MemItempo2['nm_material']:=QMaterial['name_item'];
              FNew_PO.MemItempo2['satuan']:=QMaterial['code_unit'];
              FNew_PO.MemItempo2['harga']:=QMaterial['buy'];
              FNew_PO.MemItempo2['harga_rp']:=QMaterial['buy'];
              //FNew_po.MemItempo2['qtykontrak']:=QMaterial['remaining_qty'];
              FNew_po.MemItempo2['qtykontrak']:=0;
              FNew_po.MemItempo2['ppn']:=11;
              FNew_po.MemItempo2['ppn_rp']:=0;
              FNew_po.MemItempo2['pemb_ppn']:=0;
              FNew_po.MemItempo2['pemb_ppn_us']:=0;
              FNew_po.MemItempo2['pemb_dpp']:=0;
              FNew_po.MemItempo2['ppn_us']:=0;
              FNew_PO.MemItempo2['qty']:=QMaterial['qty'];
              FNew_po.MemItempo2['pph']:=0;
              FNew_po.MemItempo2['pph_rp']:=0;
              //FNew_po.MemItempo2['subtotal_rp']:=QMaterial_stok['subtotal_rp'];
              //FNew_po.MemItempo2['grandtotalrp']:=QMaterial_stok['grandtotal'];
              FNew_PO.MemItempo2['gudang']:=FNew_PO.cb_gudang.Text;
              FNew_PO.MemItempo2['item_code']:=QMaterial['code_item'];
              FNew_PO.MemItempo2['so_no']:=QMaterial['notrans'];
              FNew_PO.MemItempo2['cust_code']:=QMaterial['code_cust'];
              FNew_PO.MemItempo2['cust_name']:=QMaterial['name_cust'];
              FNew_PO.MemItempo2['sent_date']:=QMaterial['sent_date'];
              FNew_PO.MemItempo2.Post;
          end;
          FNew_PO.Ed_kode.Text:=Ed_kode.Text;
          FNew_PO.ed_vehicle_group_sort_number.Text:=ed_vehicle_group_sort_number.Text;
          FNew_PO.ed_vehicle_group_id.Text:=ed_vehicle_group_id.Text;
        end;
      end;
    finally
      EnableControls;
      DBGridMaterial.DataSource.DataSet.EnableControls;
      FNew_PO.MemItemPO.EnableControls;
      FNew_PO.MemItemPO2.EnableControls;
    end;
  end;

  Close;
end;


end.
