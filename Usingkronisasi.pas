unit Usingkronisasi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB, MemTableEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzBtnEdt, Vcl.ExtCtrls, Vcl.ComCtrls, RzDTP, RzButton, RzCmboBx;

type
  TFSingkronisasi = class(TForm)
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    RzPageControl1: TRzPageControl;
    TabSData: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    Label1: TLabel;
    Label2: TLabel;
    DataSource1: TDataSource;
    MemTableEh1: TMemTableEh;
    btTampilkan: TRzBitBtn;
    cbModul: TRzComboBox;
    edServerPusat: TEdit;
    edServerPenerima: TEdit;
    ChTandai: TCheckBox;
    btProses: TRzBitBtn;
    MemTableEh1kode: TStringField;
    MemTableEh1nama: TStringField;
    MemTableEh1last_sync: TDateField;
    MemTableEh1aksi: TBooleanField;
    procedure FormShow(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
    procedure cbModulChange(Sender: TObject);
    procedure ChTandaiClick(Sender: TObject);
    procedure btProsesClick(Sender: TObject);
  private
    { Private declarations }
    procedure Load;
    procedure RefreshGrid;
    //Supplier
    procedure SyncSupplierBatch(AKodeList: TStringList);
    procedure SyncItemStockBatch(AKodeList: TStringList);
    //Barang
    procedure SyncMasterItemBatch(AKodeList: TStringList);
    procedure SyncMasterItemBatch_account(AKodeList: TStringList);
    procedure SyncAccountbatch(Akodelist: TStringList);
  public
    table_task: string;
    { Public declarations }
  end;

var
  FSingkronisasi: TFSingkronisasi;

implementation

{$R *.dfm}

uses UDataModule, UMy_Function, UHomeLogin;

procedure TFSingkronisasi.SyncAccountbatch(AKodeList: TStringList);   //cr ds 17-03-2026
var
  i: Integer;
begin
  if (AKodeList = nil) or (AKodeList.Count = 0) then Exit;
  with dm.QtempPusat do
  begin
    Close;
    SQL.Text :='select code,header_code,account_name,posting_id,posisi_dk,balance,balance_status,cost_st_id,balance_st_id,lr_st_id,balance_post_st_id, '+
    ' group_id,type_id,category_code,created_at,created_by,updated_at, updated_by,deleted_at,deleted_by from t_ak_account '+
    ' where code = :Kode';
    Prepare;
  end;
  with dm.Qtemp do
  begin
    Close;
    SQL.Text :=
      ' INSERT INTO t_ak_account (code,header_code,account_name,posting_id,posisi_dk,balance,balance_status,cost_st_id,balance_st_id,lr_st_id,'+
      ' balance_post_st_id,group_id,type_id,category_code,created_at,created_by,updated_at, updated_by,deleted_at,deleted_by) '+
      ' VALUES (:code,:header_code,:account_name,:posting_id,:posisi_dk,:balance,:balance_status,:cost_st_id,:balance_st_id,:lr_st_id,'+
      ' :balance_post_st_id,:group_id,:type_id,:category_code,:created_at,:created_by,:updated_at,:updated_by,:deleted_at,:deleted_by) '+
      ' ON CONFLICT (code) DO UPDATE SET '+
      ' header_code      = EXCLUDED.header_code,'+
      ' account_name     = EXCLUDED.account_name,'+
      ' posting_id       = EXCLUDED.posting_id,'+
      ' posisi_dk        = EXCLUDED.posisi_dk,'+
      ' balance          = EXCLUDED.balance,'+
      ' balance_status   = EXCLUDED.balance_status,'+
      ' cost_st_id       = EXCLUDED.cost_st_id,'+
      ' balance_st_id    = EXCLUDED.balance_st_id,'+
      ' lr_st_id         = EXCLUDED.lr_st_id,'+
      ' balance_post_st_id= EXCLUDED.balance_post_st_id,'+
      ' group_id         = EXCLUDED.group_id,'+
      ' type_id          = EXCLUDED.type_id,'+
      ' category_code    = EXCLUDED.category_code,'+
      ' created_at       = EXCLUDED.created_at, '+
      ' created_by       = EXCLUDED.created_by,  '+
      ' updated_at       = EXCLUDED.updated_at, '+
      ' updated_by       = EXCLUDED.updated_by,  '+
      ' deleted_at       = EXCLUDED.deleted_at, '+
      ' deleted_by       = EXCLUDED.deleted_by';
    Prepare;
  end;
  for i := 0 to AKodeList.Count - 1 do
  begin
    dm.QtempPusat.Close;
    dm.QtempPusat.ParamByName('kode').AsString := AKodeList[i];
    dm.QtempPusat.Open;
    if dm.QtempPusat.IsEmpty then Continue;
    with dm.Qtemp do
    begin
      ParamByName('code').AsString :=dm.QtempPusat['code'];
      ParamByName('header_code').AsString :=dm.QtempPusat['header_code'];
      ParamByName('account_name').AsString :=dm.QtempPusat['account_name'];
      ParamByName('posting_id').value :=dm.QtempPusat['posting_id'];
      ParamByName('posisi_dk').AsString :=dm.QtempPusat['posisi_dk'];
      ParamByName('balance').value :=dm.QtempPusat['balance'];
      ParamByName('balance_status').AsString :=dm.QtempPusat['balance_status'];
      ParamByName('cost_st_id').value :=dm.QtempPusat['cost_st_id'];
      ParamByName('balance_st_id').value :=dm.QtempPusat['balance_st_id'];
      ParamByName('lr_st_id').value :=dm.QtempPusat['lr_st_id'];
      ParamByName('balance_post_st_id').value :=dm.QtempPusat['balance_post_st_id'];
      ParamByName('group_id').value :=dm.QtempPusat['group_id'];
      ParamByName('type_id').AsString :=dm.QtempPusat['type_id'];
      ParamByName('category_code').AsString :=dm.QtempPusat['category_code'];
      { created_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('created_at').IsNull then
        ParamByName('created_at').Clear
      else
        ParamByName('created_at').Value :=
          dm.QtempPusat['created_at'];
      { updated_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('updated_at').IsNull then
        ParamByName('updated_at').Clear
      else
        ParamByName('updated_at').AsDateTime :=
          dm.QtempPusat.FieldByName('updated_at').AsDateTime;
      { deleted_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('deleted_at').IsNull then
        ParamByName('deleted_at').Clear
      else
        ParamByName('deleted_at').AsDateTime :=
          dm.QtempPusat.FieldByName('deleted_at').AsDateTime;
      { created_by }
      if dm.QtempPusat.FieldByName('created_by').IsNull then
        ParamByName('created_by').Clear
      else
        ParamByName('created_by').AsString :=
          dm.QtempPusat.FieldByName('created_by').AsString;
      { updated_by }
      if dm.QtempPusat.FieldByName('updated_by').IsNull then
        ParamByName('updated_by').Clear
      else
        ParamByName('updated_by').AsString :=
          dm.QtempPusat.FieldByName('updated_by').AsString;
      { deleted_by }
      if dm.QtempPusat.FieldByName('deleted_by').IsNull then
        ParamByName('deleted_by').Clear
      else
        ParamByName('deleted_by').AsString :=
          dm.QtempPusat.FieldByName('deleted_by').AsString;
      ExecSQL;
    end;
  end;
  with dm.QtempPusat1 do
  begin
    Close;
    SQL.Text :=
      'UPDATE t_ak_account SET '+
      ' created_at       = :created_at, '+
      ' updated_at       = :updated_at, '+
      ' deleted_at       = :deleted_at'+
      ' where code   = :code';
    Prepare;
  end;
  for i := 0 to AKodeList.Count - 1 do
  begin
    dm.QtempPusat.Close;
    dm.QtempPusat.ParamByName('kode').AsString := AKodeList[i];
    dm.QtempPusat.Open;
    if dm.QtempPusat.IsEmpty then Continue;
    with dm.QtempPusat1 do
    begin
      ParamByName('code').AsString :=dm.QtempPusat.FieldByName('code').AsString;
      if dm.QtempPusat.FieldByName('created_at').IsNull then
        ParamByName('created_at').Clear
      else
        ParamByName('created_at').Value :=
          dm.QtempPusat['created_at'];
      { updated_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('updated_at').IsNull then
        ParamByName('updated_at').Clear
      else
        ParamByName('updated_at').AsDateTime :=
          dm.QtempPusat.FieldByName('updated_at').AsDateTime;
      { deleted_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('deleted_at').IsNull then
        ParamByName('deleted_at').Clear
      else
        ParamByName('deleted_at').AsDateTime :=
          dm.QtempPusat.FieldByName('deleted_at').AsDateTime;
        execsql;
    end;
  end;
end;

procedure TFSingkronisasi.SyncMasterItemBatch(AKodeList: TStringList);
var
  i: Integer;
begin
  if (AKodeList = nil) or (AKodeList.Count = 0) then Exit;
  with dm.QtempPusat do
  begin
    Close;
    SQL.Text :=
      'SELECT order_no, item_code, item_code2, item_name, '+
      'category_id, unit, merk, account_code, created_by, description, group_id, '+
      'sell_status, buy, disc_buy, sell, disc_sell, lot_status, header_code, sbu_code, '+
      'item_code_coretax, item_name_coretax, '+
      'created_at, updated_at, updated_by, deleted_at, deleted_by '+
      'FROM t_item '+
      'WHERE item_code = :kode';
    Prepare;
  end;
  with dm.Qtemp do
  begin
    Close;
    SQL.Text :=
      'INSERT INTO t_item ( '+
      'item_code,order_no,  item_code2, item_name, '+
      'category_id, unit, merk, account_code, description, group_id, '+
      'sell_status, buy, disc_buy, sell, disc_sell, lot_status, header_code, sbu_code, '+
      'item_code_coretax, item_name_coretax, created_by, '+
      'created_at, updated_at, updated_by, deleted_at, deleted_by) '+
      'VALUES ( '+
      ':item_code, :order_no, :item_code2, :item_name, '+
      ':category_id, :unit, :merk, :account_code, :description, :group_id, '+
      ':sell_status, :buy, :disc_buy, :sell, :disc_sell, :lot_status, :header_code, :sbu_code, '+
      ':item_code_coretax, :item_name_coretax, :created_by, '+
      ':created_at, :updated_at, :updated_by, :deleted_at, :deleted_by) '+
      'ON CONFLICT (item_code) DO UPDATE SET '+
      'order_no          = EXCLUDED.order_no, '+
      'item_code2        = EXCLUDED.item_code2, '+
      'item_name         = EXCLUDED.item_name, '+
      'category_id       = EXCLUDED.category_id, '+
      'unit              = EXCLUDED.unit, '+
      'merk              = EXCLUDED.merk, '+
      'account_code      = EXCLUDED.account_code, '+
      'description       = EXCLUDED.description, '+
      'group_id          = EXCLUDED.group_id, '+
      'sell_status       = EXCLUDED.sell_status, '+
      'buy               = EXCLUDED.buy, '+
      'disc_buy          = EXCLUDED.disc_buy, '+
      'sell              = EXCLUDED.sell, '+
      'disc_sell         = EXCLUDED.disc_sell, '+
      'lot_status        = EXCLUDED.lot_status, '+
      'header_code       = EXCLUDED.header_code, '+
      'sbu_code          = EXCLUDED.sbu_code, '+
      'item_code_coretax = EXCLUDED.item_code_coretax, '+
      'item_name_coretax = EXCLUDED.item_name_coretax, '+
      'created_at        = EXCLUDED.created_at, '+
      'created_by        = EXCLUDED.created_by, '+
      'updated_at        = EXCLUDED.updated_at, '+
      'updated_by        = EXCLUDED.updated_by, '+
      'deleted_at        = EXCLUDED.deleted_at, '+
      'deleted_by        = EXCLUDED.deleted_by';
    Prepare;
  end;
  for i := 0 to AKodeList.Count - 1 do
  begin
    dm.QtempPusat.Close;
    dm.QtempPusat.ParamByName('kode').AsString := AKodeList[i];
    dm.QtempPusat.Open;
    if dm.QtempPusat.IsEmpty then Continue;
    with dm.Qtemp do
    begin
      // String fields
      ParamByName('item_code').AsString := dm.QtempPusat.FieldByName('item_code').AsString;
      ParamByName('item_code2').AsString := dm.QtempPusat.FieldByName('item_code2').AsString;
      ParamByName('item_name').AsString := dm.QtempPusat.FieldByName('item_name').AsString;
      ParamByName('unit').AsString := dm.QtempPusat.FieldByName('unit').AsString;
      ParamByName('merk').AsString := dm.QtempPusat.FieldByName('merk').AsString;
      ParamByName('account_code').AsString := dm.QtempPusat.FieldByName('account_code').AsString;
      ParamByName('description').AsString := dm.QtempPusat.FieldByName('description').AsString;
      ParamByName('header_code').AsString := dm.QtempPusat.FieldByName('header_code').AsString;
      ParamByName('sbu_code').AsString := dm.QtempPusat.FieldByName('sbu_code').AsString;
      ParamByName('item_code_coretax').AsString := dm.QtempPusat.FieldByName('item_code_coretax').AsString;
      ParamByName('item_name_coretax').AsString := dm.QtempPusat.FieldByName('item_name_coretax').AsString;
      { order_no (NULL SAFE - Integer) }
      if dm.QtempPusat.FieldByName('order_no').IsNull then
        ParamByName('order_no').Clear
      else
        ParamByName('order_no').AsInteger := dm.QtempPusat.FieldByName('order_no').AsInteger;
      { category_id (NULL SAFE - Integer) }
      if dm.QtempPusat.FieldByName('category_id').IsNull then
        ParamByName('category_id').Clear
      else
        ParamByName('category_id').AsInteger := dm.QtempPusat.FieldByName('category_id').AsInteger;
      { group_id (NULL SAFE - String/Integer) }
      if dm.QtempPusat.FieldByName('group_id').IsNull then
        ParamByName('group_id').Clear
      else
        ParamByName('group_id').AsString := dm.QtempPusat.FieldByName('group_id').AsString;
      { sell_status (NULL SAFE - String) }
   {   if dm.QtempPusat.FieldByName('sell_status').IsNull then
        ParamByName('sell_status').Clear
      else
        ParamByName('sell_status').AsString := dm.QtempPusat.FieldByName('sell_status').AsString;
      { buy (NULL SAFE - Float/Decimal) }
     { if dm.QtempPusat.FieldByName('buy').IsNull then
        ParamByName('buy').Clear
      else
        ParamByName('buy').AsFloat := dm.QtempPusat.FieldByName('buy').AsFloat;
      { disc_buy (NULL SAFE - Float/Decimal) }
    {  if dm.QtempPusat.FieldByName('disc_buy').IsNull then
        ParamByName('disc_buy').Clear
      else
        ParamByName('disc_buy').AsFloat := dm.QtempPusat.FieldByName('disc_buy').AsFloat;
      { sell (NULL SAFE - Float/Decimal) }
   {   if dm.QtempPusat.FieldByName('sell').IsNull then
        ParamByName('sell').Clear
      else
        ParamByName('sell').AsFloat := dm.QtempPusat.FieldByName('sell').AsFloat;
      { disc_sell (NULL SAFE - Float/Decimal) }
    {  if dm.QtempPusat.FieldByName('disc_sell').IsNull then
        ParamByName('disc_sell').Clear
      else
        ParamByName('disc_sell').AsFloat := dm.QtempPusat.FieldByName('disc_sell').AsFloat;      }
      { lot_status (NULL SAFE - String) }
      if dm.QtempPusat.FieldByName('lot_status').IsNull then
        ParamByName('lot_status').Clear
      else
        ParamByName('lot_status').AsString := dm.QtempPusat.FieldByName('lot_status').AsString;
      { created_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('created_at').IsNull then
        ParamByName('created_at').Clear
      else
        ParamByName('created_at').AsDateTime := dm.QtempPusat.FieldByName('created_at').AsDateTime;
      { updated_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('updated_at').IsNull then
        ParamByName('updated_at').Clear
      else
        ParamByName('updated_at').AsDateTime := dm.QtempPusat.FieldByName('updated_at').AsDateTime;
      { deleted_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('deleted_at').IsNull then
        ParamByName('deleted_at').Clear
      else
        ParamByName('deleted_at').AsDateTime := dm.QtempPusat.FieldByName('deleted_at').AsDateTime;
      { created_by (NULL SAFE) }
      if dm.QtempPusat.FieldByName('created_by').IsNull then
        ParamByName('created_by').Clear
      else
        ParamByName('created_by').AsString := dm.QtempPusat.FieldByName('created_by').AsString;
      { updated_by (NULL SAFE) }
      if dm.QtempPusat.FieldByName('updated_by').IsNull then
        ParamByName('updated_by').Clear
      else
        ParamByName('updated_by').AsString := dm.QtempPusat.FieldByName('updated_by').AsString;
      { deleted_by (NULL SAFE) }
      if dm.QtempPusat.FieldByName('deleted_by').IsNull then
        ParamByName('deleted_by').Clear
      else
        ParamByName('deleted_by').AsString := dm.QtempPusat.FieldByName('deleted_by').AsString;
      ExecSQL;
    end;
  end;
   // cr ds 17-03-2026
  with dm.QtempPusat1 do
  begin
    Close;
    SQL.Text :=
      'UPDATE t_item SET '+
      ' created_at       = :created_at, '+
      ' updated_at       = :updated_at, '+
      ' deleted_at       = :deleted_at'+
      ' where item_code   = :item_code';
    Prepare;
  end;
  for i := 0 to AKodeList.Count - 1 do
  begin
    dm.QtempPusat.Close;
    dm.QtempPusat.ParamByName('kode').AsString := AKodeList[i];
    dm.QtempPusat.Open;
    if dm.QtempPusat.IsEmpty then Continue;
    with dm.QtempPusat1 do
    begin
      ParamByName('item_code').AsString :=dm.QtempPusat.FieldByName('item_code').AsString;
      if dm.QtempPusat.FieldByName('created_at').IsNull then
        ParamByName('created_at').Clear
      else
        ParamByName('created_at').Value :=
          dm.QtempPusat['created_at'];
      { updated_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('updated_at').IsNull then
        ParamByName('updated_at').Clear
      else
        ParamByName('updated_at').AsDateTime :=
          dm.QtempPusat.FieldByName('updated_at').AsDateTime;
      { deleted_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('deleted_at').IsNull then
        ParamByName('deleted_at').Clear
      else
        ParamByName('deleted_at').AsDateTime :=
          dm.QtempPusat.FieldByName('deleted_at').AsDateTime;
        execsql;
    end;
  end;
end;

procedure TFSingkronisasi.SyncMasterItemBatch_Account(AKodeList: TStringList);
var
  i: Integer;
begin
  if (AKodeList = nil) or (AKodeList.Count = 0) then Exit;
  with dm.QtempPusat do
  begin
    Close;
    SQL.Text :=
      ' select item_code,acc_persd,acc_pemb,acc_penj,acc_rtpemb,acc_potpemb,acc_rtpenj from t_item_account '+
      ' WHERE item_code = :kode';
    Prepare;
  end;
  with dm.Qtemp do
  begin
    Close;
    SQL.Text :=
      'INSERT INTO t_item_account (item_code,acc_persd,acc_pemb,acc_penj,acc_rtpemb,acc_potpemb,acc_rtpenj) '+
      'VALUES (:item_code,:acc_persd,:acc_pemb,:acc_penj,:acc_rtpemb,:acc_potpemb,:acc_rtpenj) '+
      'ON CONFLICT (item_code) DO UPDATE SET '+
      ' acc_persd      = EXCLUDED.acc_persd, '+
      ' acc_pemb       = EXCLUDED.acc_pemb,'+
      ' acc_penj       = EXCLUDED.acc_penj,'+
      ' acc_rtpemb     = EXCLUDED.acc_rtpemb,'+
      ' acc_potpemb    = EXCLUDED.acc_potpemb,'+
      ' acc_rtpenj     = EXCLUDED.acc_rtpenj';
    Prepare;
  end;
  for i := 0 to AKodeList.Count - 1 do
  begin
      dm.Qtemp1.Close;
      dm.Qtemp1.SQL.Text :=
      'delete from t_item_account '+
      'where item_code = :item_code';
      dm.Qtemp1.ParamByName('item_code').AsString := AKodeList[i];
      dm.Qtemp1.ExecSQL;

    dm.QtempPusat.Close;
    dm.QtempPusat.ParamByName('kode').AsString := AKodeList[i];
    dm.QtempPusat.Open;
    if dm.QtempPusat.IsEmpty then Continue;
    with dm.Qtemp do
    begin
      // String fields
      ParamByName('item_code').AsString := dm.QtempPusat.FieldByName('item_code').AsString;
      ParamByName('acc_persd').AsString := dm.QtempPusat.FieldByName('acc_persd').AsString;
      ParamByName('acc_pemb').AsString := dm.QtempPusat.FieldByName('acc_pemb').AsString;
      ParamByName('acc_penj').AsString := dm.QtempPusat.FieldByName('acc_penj').AsString;
      ParamByName('acc_rtpemb').AsString := dm.QtempPusat.FieldByName('acc_rtpemb').AsString;
      ParamByName('acc_potpemb').AsString := dm.QtempPusat.FieldByName('acc_potpemb').AsString;
      ParamByName('acc_rtpenj').AsString := dm.QtempPusat.FieldByName('acc_rtpenj').AsString;
      ExecSQL;
    end;
  end;
end;

procedure TFSingkronisasi.SyncSupplierBatch(AKodeList: TStringList);
var
  i: Integer;
begin
  if (AKodeList = nil) or (AKodeList.Count = 0) then Exit;
  with dm.QtempPusat do
  begin
    Close;
    SQL.Text :=
      'select supplier_code, supplier_code2, supplier_name, address, telp, npwp, '+
      'header_code, account_code, header_code_um, account_code_um, '+
      'created_at, created_by, updated_at,	updated_by,	deleted_at,	deleted_by, '+
      'up_npwp, supplier_initial, sbu_code,'+
      'header_code2, account_code2, tempo '+
      'from t_supplier '+
      'where supplier_code = :kode';
    Prepare;
  end;
  with dm.Qtemp do
  begin
    Close;
    SQL.Text :=
      ' INSERT INTO t_supplier ( '+
      ' supplier_code, supplier_code2, supplier_name, address, telp, npwp, '+
      ' header_code, account_code, header_code_um, account_code_um, '+
      ' created_at, created_by, '+
      ' updated_at, updated_by, '+
      ' deleted_at, deleted_by, '+
      ' up_npwp, supplier_initial, sbu_code, '+
      ' header_code2, account_code2, tempo) '+
      ' VALUES ( '+
      ' :supplier_code, :supplier_code2, :supplier_name, :address, :telp, :npwp, '+
      ' :header_code, :account_code, :header_code_um, :account_code_um, '+
      ' :created_at, :created_by, '+
      ' :updated_at, :updated_by, '+
      ' :deleted_at, :deleted_by, '+
      ' :up_npwp, :supplier_initial, :sbu_code, '+
      ' :header_code2, :account_code2, :tempo) '+
      ' ON CONFLICT (supplier_code) DO UPDATE SET '+
      ' supplier_code2   = EXCLUDED.supplier_code2, '+
      ' supplier_name    = EXCLUDED.supplier_name, '+
      ' address          = EXCLUDED.address, '+
      ' telp             = EXCLUDED.telp, '+
      ' npwp             = EXCLUDED.npwp, '+
      ' header_code      = EXCLUDED.header_code, '+
      ' account_code     = EXCLUDED.account_code, '+
      ' header_code_um   = EXCLUDED.header_code_um, '+
      ' account_code_um  = EXCLUDED.account_code_um, '+
      ' up_npwp          = EXCLUDED.up_npwp, '+
      ' supplier_initial = EXCLUDED.supplier_initial, '+
      ' sbu_code         = EXCLUDED.sbu_code, '+
      ' header_code2     = EXCLUDED.header_code2, '+
      ' account_code2    = EXCLUDED.account_code2, '+
      ' tempo            = EXCLUDED.tempo, '+
      ' created_at       = EXCLUDED.created_at, '+
      ' created_by       = EXCLUDED.created_by,  '+
      ' updated_at       = EXCLUDED.updated_at, '+
      ' updated_by       = EXCLUDED.updated_by,  '+
      ' deleted_at       = EXCLUDED.deleted_at, '+
      ' deleted_by       = EXCLUDED.deleted_by';
    Prepare;
  end;
  for i := 0 to AKodeList.Count - 1 do
  begin
    dm.QtempPusat.Close;
    dm.QtempPusat.ParamByName('kode').AsString := AKodeList[i];
    dm.QtempPusat.Open;
    if dm.QtempPusat.IsEmpty then Continue;
    with dm.Qtemp do
    begin
      ParamByName('supplier_code').AsString :=dm.QtempPusat.FieldByName('supplier_code').AsString;
      ParamByName('supplier_code2').AsString :=dm.QtempPusat.FieldByName('supplier_code2').AsString;
      ParamByName('supplier_name').AsString :=dm.QtempPusat.FieldByName('supplier_name').AsString;
      ParamByName('address').AsString :=dm.QtempPusat.FieldByName('address').AsString;
      ParamByName('telp').AsString :=dm.QtempPusat.FieldByName('telp').AsString;
      ParamByName('npwp').AsString :=dm.QtempPusat.FieldByName('npwp').AsString;
      ParamByName('header_code').AsString :=dm.QtempPusat.FieldByName('header_code').AsString;
      ParamByName('account_code').AsString :=dm.QtempPusat.FieldByName('account_code').AsString;
      ParamByName('header_code_um').AsString :=dm.QtempPusat.FieldByName('header_code_um').AsString;
      ParamByName('account_code_um').AsString :=dm.QtempPusat.FieldByName('account_code_um').AsString;
      ParamByName('up_npwp').AsString :=dm.QtempPusat.FieldByName('up_npwp').AsString;
      ParamByName('supplier_initial').AsString :=dm.QtempPusat.FieldByName('supplier_initial').AsString;
      ParamByName('sbu_code').AsString :=dm.QtempPusat.FieldByName('sbu_code').AsString;
      ParamByName('header_code2').AsString :=dm.QtempPusat.FieldByName('header_code2').AsString;
      ParamByName('account_code2').AsString :=dm.QtempPusat.FieldByName('account_code2').AsString;
      { created_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('created_at').IsNull then
        ParamByName('created_at').Clear
      else
        ParamByName('created_at').Value :=
          dm.QtempPusat['created_at'];
      { updated_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('updated_at').IsNull then
        ParamByName('updated_at').Clear
      else
        ParamByName('updated_at').AsDateTime :=
          dm.QtempPusat.FieldByName('updated_at').AsDateTime;
      { deleted_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('deleted_at').IsNull then
        ParamByName('deleted_at').Clear
      else
        ParamByName('deleted_at').AsDateTime :=
          dm.QtempPusat.FieldByName('deleted_at').AsDateTime;
      { created_by }
      if dm.QtempPusat.FieldByName('created_by').IsNull then
        ParamByName('created_by').Clear
      else
        ParamByName('created_by').AsString :=
          dm.QtempPusat.FieldByName('created_by').AsString;
      { updated_by }
      if dm.QtempPusat.FieldByName('updated_by').IsNull then
        ParamByName('updated_by').Clear
      else
        ParamByName('updated_by').AsString :=
          dm.QtempPusat.FieldByName('updated_by').AsString;
      { deleted_by }
      if dm.QtempPusat.FieldByName('deleted_by').IsNull then
        ParamByName('deleted_by').Clear
      else
        ParamByName('deleted_by').AsString :=
          dm.QtempPusat.FieldByName('deleted_by').AsString;
      { tempo (NULL SAFE) }
      if dm.QtempPusat.FieldByName('tempo').IsNull then
        ParamByName('tempo').Clear
      else
        ParamByName('tempo').AsInteger :=
          dm.QtempPusat.FieldByName('tempo').AsInteger;
      ExecSQL;
    end;
  end;
  // cr ds 17-03-2026
  with dm.QtempPusat1 do
  begin
    Close;
    SQL.Text :=
      'UPDATE t_supplier SET '+
      ' created_at       = :created_at, '+
      ' updated_at       = :updated_at, '+
      ' deleted_at       = :deleted_at'+
      ' where supplier_code   = :supplier_code';
    Prepare;
  end;
  for i := 0 to AKodeList.Count - 1 do
  begin
    dm.QtempPusat.Close;
    dm.QtempPusat.ParamByName('kode').AsString := AKodeList[i];
    dm.QtempPusat.Open;
    if dm.QtempPusat.IsEmpty then Continue;
    with dm.QtempPusat1 do
    begin
      ParamByName('supplier_code').AsString :=dm.QtempPusat.FieldByName('supplier_code').AsString;
      if dm.QtempPusat.FieldByName('created_at').IsNull then
        ParamByName('created_at').Clear
      else
        ParamByName('created_at').Value :=
          dm.QtempPusat['created_at'];
      { updated_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('updated_at').IsNull then
        ParamByName('updated_at').Clear
      else
        ParamByName('updated_at').AsDateTime :=
          dm.QtempPusat.FieldByName('updated_at').AsDateTime;
      { deleted_at (NULL SAFE) }
      if dm.QtempPusat.FieldByName('deleted_at').IsNull then
        ParamByName('deleted_at').Clear
      else
        ParamByName('deleted_at').AsDateTime :=
          dm.QtempPusat.FieldByName('deleted_at').AsDateTime;
        execsql;
    end;
  end;
end;

procedure TFSingkronisasi.SyncItemStockBatch(AKodeList: TStringList);
var
  i: Integer;
begin
  if (AKodeList = nil) or (AKodeList.Count = 0) then Exit;
  for i := 0 to AKodeList.Count - 1 do
  begin
    dm.Qtemp.Close;
    dm.Qtemp.SQL.Text :=
      'delete from t_item_stock '+
      'where supplier_code = :supplier_code';
    dm.Qtemp.ParamByName('supplier_code').AsString := AKodeList[i];
    dm.Qtemp.ExecSQL;
    dm.QtempPusat.Close;
    dm.QtempPusat.SQL.Text :=
      'select item_stock_code, item_code, supplier_code, qty, unit, '+
      'order_no, item_name, '+
      'created_at, created_by, '+
      'updated_at, updated_by, '+
      'deleted_at, deleted_by '+
      'from t_item_stock '+
      'where supplier_code = :supplier_code';
    dm.QtempPusat.ParamByName('supplier_code').AsString := AKodeList[i];
    dm.QtempPusat.Open;
    dm.Qtemp.Close;
    dm.Qtemp.SQL.Text :=
      'insert into t_item_stock ('+
      'item_stock_code, item_code, supplier_code, qty, unit, '+
      'order_no, item_name, '+
      'created_at, created_by, '+
      'updated_at, updated_by, '+
      'deleted_at, deleted_by) '+
      'values ('+
      ':item_stock, :item_code, :supplier_code, :qty, :unit, '+
      ':order_no, :item_name, '+
      ':created_at, :created_by, '+
      ':updated_at, :updated_by, '+
      ':deleted_at, :deleted_by)';
    dm.Qtemp.Prepare;
    while not dm.QtempPusat.Eof do
    begin
      dm.Qtemp.ParamByName('item_stock').AsString :=
        dm.QtempPusat.FieldByName('item_stock_code').AsString;
      dm.Qtemp.ParamByName('item_code').AsString :=
        dm.QtempPusat.FieldByName('item_code').AsString;
      dm.Qtemp.ParamByName('supplier_code').AsString :=
        dm.QtempPusat.FieldByName('supplier_code').AsString;
      dm.Qtemp.ParamByName('qty').AsFloat :=
        dm.QtempPusat.FieldByName('qty').AsFloat;
      dm.Qtemp.ParamByName('unit').AsString :=
        dm.QtempPusat.FieldByName('unit').AsString;
      dm.Qtemp.ParamByName('order_no').AsString :=
        dm.QtempPusat.FieldByName('order_no').AsString;
      dm.Qtemp.ParamByName('item_name').AsString :=
        dm.QtempPusat.FieldByName('item_name').AsString;
      {===== created_at =====}
      if dm.QtempPusat.FieldByName('created_at').IsNull then
        dm.Qtemp.ParamByName('created_at').Clear
      else
        dm.Qtemp.ParamByName('created_at').AsDateTime :=
          dm.QtempPusat.FieldByName('created_at').AsDateTime;
      {===== created_by =====}
      if dm.QtempPusat.FieldByName('created_by').IsNull then
        dm.Qtemp.ParamByName('created_by').Clear
      else
        dm.Qtemp.ParamByName('created_by').AsString :=
          dm.QtempPusat.FieldByName('created_by').AsString;
      {===== updated_at =====}
      if dm.QtempPusat.FieldByName('updated_at').IsNull then
        dm.Qtemp.ParamByName('updated_at').Clear
      else
        dm.Qtemp.ParamByName('updated_at').AsDateTime :=
          dm.QtempPusat.FieldByName('updated_at').AsDateTime;
      {===== updated_by =====}
      if dm.QtempPusat.FieldByName('updated_by').IsNull then
        dm.Qtemp.ParamByName('updated_by').Clear
      else
        dm.Qtemp.ParamByName('updated_by').AsString :=
          dm.QtempPusat.FieldByName('updated_by').AsString;
      {===== deleted_at =====}
      if dm.QtempPusat.FieldByName('deleted_at').IsNull then
        dm.Qtemp.ParamByName('deleted_at').Clear
      else
        dm.Qtemp.ParamByName('deleted_at').AsDateTime :=
          dm.QtempPusat.FieldByName('deleted_at').AsDateTime;
      {===== deleted_by =====}
      if dm.QtempPusat.FieldByName('deleted_by').IsNull then
        dm.Qtemp.ParamByName('deleted_by').Clear
      else
        dm.Qtemp.ParamByName('deleted_by').AsString :=
          dm.QtempPusat.FieldByName('deleted_by').AsString;
      dm.Qtemp.ExecSQL;
      dm.QtempPusat.Next;
    end;
    dm.QtempPusat.Close;
  end;
end;

Procedure TFSingkronisasi.Load;
begin
  //Modul
  cbModul.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' SELECT modul FROM "tsynchronization"  where status=''t'' group by modul ';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbModul.Items.Add(Dm.Qtemp['modul']);
    Dm.Qtemp.Next;
  end;
end;

procedure TFSingkronisasi.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Add(' SELECT * FROM '+table_task+'( '+
            ' '+QuotedStr(FHomeLogin.vKodePRSH)+', '+
            ' '+QuotedStr(dm.ABSTable1Ip_db_Pusat.AsString)+', '+
            ' '+QuotedStr(dm.abstable1Port_db_Pusat.AsString)+', '+
            ' '+QuotedStr(dm.ABSTable1Db_Name_Pusat.AsString)+', '+
            ' '+QuotedStr(dm.abstable1User_db_Pusat.AsString)+', '+
            ' '+QuotedStr(dm.abstable1Password_Pusat.AsString)+');');
    open;
  end;

  FSingkronisasi.MemTableEh1.active:=false;
  FSingkronisasi.MemTableEh1.active:=true;
  FSingkronisasi.MemTableEh1.EmptyTable;

  if  Dm.Qtemp.RecordCount=0 then
  begin
  FSingkronisasi.MemTableEh1.active:=false;
  FSingkronisasi.MemTableEh1.active:=true;
  FSingkronisasi.MemTableEh1.EmptyTable;
  ShowMessage('Tidak Ditemukan Data...');
  end;

  if  Dm.Qtemp.RecordCount<>0 then
  begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
      FSingkronisasi.MemTableEh1.insert;
      FSingkronisasi.MemTableEh1['kode']:=Dm.Qtemp.fieldbyname('code').value;
      FSingkronisasi.MemTableEh1['nama']:=Dm.Qtemp.fieldbyname('name').value;
      FSingkronisasi.MemTableEh1['last_sync']:=Dm.Qtemp.FieldByName('last_sync').AsDateTime;
      FSingkronisasi.MemTableEh1['aksi']:=ChTandai.Checked;
      FSingkronisasi.MemTableEh1.post;
      Dm.Qtemp.next;
    end;
  end;
end;

procedure TFSingkronisasi.btProsesClick(Sender: TObject);
var
  ListKode: TStringList;
begin
  if MemTableEh1.RecordCount = 0 then Exit;
  DBGridDetail.StartLoadingStatus;
  ListKode := TStringList.Create;
  try
    MemTableEh1.First;
    while not MemTableEh1.Eof do
    begin
      if MemTableEh1.FieldByName('aksi').AsBoolean then
        ListKode.Add(MemTableEh1.FieldByName('kode').AsString);
      MemTableEh1.Next;
    end;
    if ListKode.Count = 0 then
      Exit;
    if not dm.koneksi.InTransaction then
      dm.koneksi.StartTransaction;
    try
      if cbModul.Text = 'MASTER SUPPLIER' then
      begin
        SyncSupplierBatch(ListKode);
        SyncItemStockBatch(ListKode);
      end;
      if cbModul.Text = 'MASTER BARANG' then
      begin
        //master kategori
        //master kelompok
        SyncMasterItemBatch(ListKode);
        SyncMasterItemBatch_account(ListKode);
        //t_item_account
      end;
      if cbModul.Text = 'MASTER AKUN PERKIRAAN' then
      begin
      {  with dm.qtemp do
        begin
          close;
          sql.clear;
          sql.Text:='select * from sync_accountbatch('+QuotedStr(ListKode)+','+QuotedStr(v_conn)+')';
          ExecSQL;
          //MessageDlg('Modul Dalam Maintenance', mtInformation, [mbOK], 0);
        end;        }
        SyncAccountbatch(ListKode);
      end;

      {if cbModul.Text = 'MASTER PELANGGAN' then
      begin
        MessageDlg('Modul Dalam Maintenance', mtInformation, [mbOK], 0);
      end;                 }
      dm.koneksi.Commit;
      btTampilkanClick(sender); // cr ds 17-03-2026
      MessageDlg('Data berhasil diproses', mtInformation, [mbOK], 0);
    except
      on E: Exception do
      begin
        dm.koneksi.Rollback;
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
    end;
  finally
    ListKode.Free;
    DBGridDetail.FinishLoadingStatus;
  end;
end;


procedure TFSingkronisasi.btTampilkanClick(Sender: TObject);
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Add(' SELECT table_task FROM "tsynchronization" '+
            ' where modul='+QuotedStr(cbModul.Text)+';');
    open;
  end;
  table_task:=Dm.Qtemp.FieldByName('table_task').AsString;
  RefreshGrid;
end;

procedure TFSingkronisasi.cbModulChange(Sender: TObject);
begin
  edServerPusat.Text:='PUSAT';
  edServerPenerima.Text:= FHomeLogin.vNamaPRSH;

  DM.Koneksi.Connected:=True;
  DM.Koneksi_PST.Connected:=True;
end;

procedure TFSingkronisasi.ChTandaiClick(Sender: TObject);
begin
  if MemTableEh1.RecordCount<>0 then
  begin
    MemTableEh1.First;
    DBGridDetail.StartLoadingStatus();
    while not MemTableEh1.Eof do
      begin
        MemTableEh1.Edit;
          MemTableEh1['aksi']:=ChTandai.Checked;
        MemTableEh1.Next;
      end;
    MemTableEh1.Active:=false;
    MemTableEh1.Active:=true;
    DBGridDetail.FinishLoadingStatus();
  end;
end;

procedure TFSingkronisasi.FormShow(Sender: TObject);
begin
  Load;
end;

end.
