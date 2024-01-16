unit UNew_KelompokBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, RzEdit, Vcl.StdCtrls,
  RzButton, Vcl.ExtCtrls, RzBtnEdt, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni;

type
  TFNew_KelompokBarang = class(TForm)
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EdKelompok: TEdit;
    Edno: TEdit;
    Panel1: TPanel;
    BTutup: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BCari: TRzBitBtn;
    EdJenis: TComboBox;
    Edkd: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    CbKategori: TComboBox;
    Label19: TLabel;
    Label20: TLabel;
    Edkd_akun: TRzEdit;
    EdNm_akun: TRzButtonEdit;
    Btambah: TRzBitBtn;
    BRefresh: TRzBitBtn;
    DBGridEh7: TDBGridEh;
    QKelompok: TUniQuery;
    DsKelompok: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure EdJenisSelect(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure CbKategoriSelect(Sender: TObject);
    procedure EdNm_akunButtonClick(Sender: TObject);
    procedure BTutupClick(Sender: TObject);
    procedure BtambahClick(Sender: TObject);
    procedure BRefreshClick(Sender: TObject);
    procedure DBGridEh7DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Clear;
    Procedure Load;
  end;

var
  FNew_KelompokBarang: TFNew_KelompokBarang;
  ct_id,group_id:string;

implementation

{$R *.dfm}

uses UDataModule, UCari_DaftarPerk, UMainMenu;

procedure TFNew_KelompokBarang.clear;
begin
  EdKelompok.Clear;
  CbKategori.clear;
  EdJenis.Text:='';
  Edkd_akun.Clear;
  EdNm_akun.Clear;
  Edkd.Clear;
end;

procedure TFNew_KelompokBarang.DBGridEh7DblClick(Sender: TObject);
begin
    statustr:=1;
    group_id:=QKelompok['group_id'];
    EdKd.Text:=QKelompok['code'];
    EdJenis.Text:=QKelompok['type'];
    ct_id:=QKelompok['category_id'];
    CbKategori.Text:=QKelompok['category'];
    Edkd_akun.Text:=QKelompok['account_code'];
    EdNm_akun.Text:=QKelompok['account_name'];
    edkelompok.Text:=QKelompok['group_name'];
    Edno.Text:=QKelompok['order_no'];
end;

Procedure TFNew_kelompokBarang.Load;
begin
  EdJenis.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_item_type where deleted_at isnull order by created_by ';
    open;
  end;
    dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
      EdJenis.Items.Add(dm.Qtemp['type']);
    dm.Qtemp.Next;
    end;
end;

procedure TFNew_KelompokBarang.BTutupClick(Sender: TObject);
begin
  Close;
end;

procedure TFNew_KelompokBarang.BRefreshClick(Sender: TObject);
begin
  DBGridEh7.StartLoadingStatus();
  QKelompok.Close;
  QKelompok.Open;
  DBGridEh7.FinishLoadingStatus();
end;

procedure TFNew_KelompokBarang.BSimpanClick(Sender: TObject);
begin
  if statustr=0 then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='insert into t_item_group(category_id,account_code,order_no,code,group_name,created_by)values'+
                '(:ct,:kd_akun,:no,:code,:group,:pic)';
                ParamByName('ct').Value:=ct_id;
                ParamByName('kd_akun').Value:=Edkd_akun.Text;
                ParamByName('code').Value:=Edkd.Text;
                ParamByName('no').Value:=Edno.Text;
                ParamByName('group').Value:=EdKelompok.Text;
                ParamByName('pic').Value:=nm;
      ExecSQL;
    end;
  end;
  if statustr=1 then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Update t_item_group set category_id=:ct,account_code=:kd_akun,order_no=:no,code=:code,'+
                'group_name=:group,updated_by=:pic where group_id=:group_id';
                ParamByName('ct').Value:=ct_id;
                ParamByName('kd_akun').Value:=Edkd_akun.Text;
                ParamByName('code').Value:=Edkd.Text;
                ParamByName('no').Value:=Edno.Text;
                ParamByName('group').Value:=EdKelompok.Text;
                ParamByName('pic').Value:=nm;
                ParamByName('group_id').Value:=group_id;

      ExecSQL;
    end;
  end;
  ShowMessage('Data Berhasil Ditambahkan');
  BRefreshClick(sender);
end;

procedure TFNew_KelompokBarang.BtambahClick(Sender: TObject);
begin
  clear;
  Load;
  edjenis.SetFocus;
  statustr:=0;
end;

procedure TFNew_KelompokBarang.CbKategoriSelect(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_item_category where "category"='+QuotedStr(CbKategori.Text)+' and deleted_at isnull order by created_by ';
    open;
  end;
  ct_id:=dm.Qtemp['category_id'];
end;

procedure TFNew_KelompokBarang.EdJenisSelect(Sender: TObject);
begin
  cbKategori.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select b.*,a."type" from t_item_type a INNER JOIN t_item_category b on a.type_id=b.type_id '+
    ' where a."type"='+QuotedStr(edjenis.Text)+' and b.deleted_at isnull order by b.created_by ';
    open;
  end;
    dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
      cbKategori.Items.Add(dm.Qtemp['category']);
    dm.Qtemp.Next;
    end;
end;

procedure TFNew_KelompokBarang.EdNm_akunButtonClick(Sender: TObject);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='groupmaterial';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:='SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                'left join t_ak_header c on b.header_code=c.header_code';
      Execute;
    end;
  end;
end;

procedure TFNew_KelompokBarang.FormShow(Sender: TObject);
begin
  Load;
end;

end.
