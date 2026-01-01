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
    MemTableEh1kode: TStringField;
    MemTableEh1nama: TStringField;
    MemTableEh1last_sync: TDateField;
    MemTableEh1aksi: TBooleanField;
    ChTandai: TCheckBox;
    btProses: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
    procedure cbModulChange(Sender: TObject);
    procedure ChTandaiClick(Sender: TObject);
    procedure btProsesClick(Sender: TObject);
  private
    { Private declarations }
    procedure Load;
    procedure RefreshGrid;
    procedure SyncSupplierBatch(AKodeList: TStringList);
    procedure SyncItemStockBatch(AKodeList: TStringList);
  public
    table_task: string;
    { Public declarations }
  end;

var
  FSingkronisasi: TFSingkronisasi;

implementation

{$R *.dfm}

uses UDataModule, UMy_Function, UHomeLogin;
procedure TFSingkronisasi.SyncSupplierBatch(AKodeList: TStringList);
var
  i: Integer;
begin
  if (AKodeList = nil) or (AKodeList.Count = 0) then Exit;

  with dm.QtempPusat do
  begin
    Close;
    SQL.Text :=
      'select supplier_code, supplier_code2, supplier_name, address, telp, npwp,'+
      'header_code, account_code, header_code_um, account_code_um,'+
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
        ParamByName('created_at').AsDateTime :=
          dm.QtempPusat.FieldByName('created_at').AsDateTime;
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
    sql.Text:=' SELECT modul FROM "tsynchronization" group by modul ';
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

      dm.koneksi.Commit;
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
