// cr ds 20-01-2021
unit UNew_HakAkses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RzButton,
  Vcl.ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, MemTableDataEh, Data.DB,
  MemTableEh, MemDS, DBAccess, Uni, DataDriverEh;

type
  TFNew_Hak_Akses = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    DsDetail: TDataSource;
    DsMenu: TDataSource;
    BTambah: TRzBitBtn;
    QDetail: TUniQuery;
    BKurang: TRzBitBtn;
    QMenu: TUniQuery;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    MemDetail: TMemTableEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edkd: TEdit;
    EdNm: TRzComboBox;
    EdNo: TEdit;
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BTambahClick(Sender: TObject);
    procedure EdNmSelect(Sender: TObject);
    procedure BKurangClick(Sender: TObject);
    procedure EdkdChange(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh2Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Autonumber;
    Procedure Load;
    Procedure RefreshMenu;
    Procedure Refreshakses;
  end;

function  FNew_Hak_Akses: TFNew_Hak_Akses;
var
  no_dept:string;
  Status:integer;

implementation

{$R *.dfm}

uses UHak_Akses, UDataModule, UCari_Menu;
var
  realfnew_akses : TFNew_Hak_Akses;
// implementasi function
function fnew_hak_akses: TFNew_Hak_Akses;
begin
  if realfnew_akses <> nil then
    FNew_Hak_Akses:= realfnew_akses
  else
    Application.CreateForm(TFNew_Hak_Akses, Result);
end;

Procedure TFNew_Hak_Akses.Autonumber;
var code:string;
i:integer;
begin
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    SQL.Text:='select max(akses_no)as no from t_akses';
    ExecSQL;
  end;
  if dm.Qtemp['no'] = null then
      code := '1'
   else
      code:= FloatToStr(dm.Qtemp['no']+ 1);
  { if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;   }
  EdNo.Text:=code;
end;

Procedure TFNew_Hak_Akses.Load;
begin
EdNm.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_dept';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    EdNm.Items.Add(Dm.Qtemp['dept']);
    Dm.Qtemp.Next;
  end;
end;

Procedure TFNew_Hak_Akses.RefreshMenu;
begin
  with Fcari_menu do
  begin
    with QMenu do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * from t_menu_sub WHERE submenu_code  in (SELECT submenu_code  from t_menu_sub  EXCEPT SELECT submenu_code FROM t_akses '+
                ' WHERE dept_code='+QuotedStr(Edkd.Text)+' ) order by submenu_code Asc';
      ExecSQL;
    end;
    QMenu.Close;
    QMenu.Open;
  end;
end;

Procedure TFNew_Hak_Akses.Refreshakses;
begin
    with QDetail do
  begin
    close;
    sql.Clear;
    sql.Text:=' select A.*,b.submenu,c.Dept from t_akses  a inner join t_menu_sub b on '+
              ' a.submenu_code=b.submenu_code inner join t_dept c on a.dept_code=c.dept_code '+
              ' where a.dept_code='+QuotedStr(Edkd.Text)+''+
              ' order by a.submenu_code Asc ';
    ExecSQL;
  end;
    QDetail.Close;
    QDetail.Open;
end;

procedure TFNew_Hak_Akses.BKurangClick(Sender: TObject);
begin
with dm.Qtemp do
begin
  close;
  sql.clear;
  sql.Text:='Delete From t_akses where idakses='+QuotedStr(QDetail['idakses']);
  ExecSQL;
end;
  EdkdChange(sender);
  RefreshMenu;
end;

procedure TFNew_Hak_Akses.BBatalClick(Sender: TObject);
begin
 FHak_Akses.ActROExecute(sender);
 Close;
end;

procedure TFNew_Hak_Akses.BSimpanClick(Sender: TObject);
begin
  if EdNo.Text='' then
  begin
    MessageDlg('No Stok Opname Produksi Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdNo.SetFocus;
    Exit;
  end;
  if EdNm.Text='' then
  begin
    MessageDlg('Department Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdNm.SetFocus;
    Exit;
  end;
  if not dm.koneksi.InTransaction then
  dm.koneksi.StartTransaction;
  try
    begin
      if status=0 then
      begin
        QDetail.Edit;
        QDetail.Post;
      end;
      if status=1 then
      begin
        QDetail.Edit;
        QDetail.Post;
      end;
      dm.koneksi.Commit;
      Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
      BBatalClick(sender);
    end;
     Except
    on E :Exception do
     begin
        MessageDlg(E.Message,mtError,[MBok],0);
        dm.koneksi.Rollback;
     end;
  end;
end;

procedure TFNew_Hak_Akses.BTambahClick(Sender: TObject);
begin
  {MemDetail.Insert;
  MemDetail['no_menu']:=QMenu['no_menu'];
  MemDetail['nm_menu']:=QMenu['nm_menu'];
  MemDetail.Post;  }
  with Dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='insert into t_akses(no_akses,no_menu,baru,update,refresh,delete,status,iddept,'+
              ' serah,terima,id_menu,no_group)values('+QuotedStr(EdNo.Text)+','+QuotedStr(QMenu['no_menu'])+','+
              ' ''0'',''0'',''0'',''0'',''1'','+QuotedStr(Edkd.Text)+',''0'',''0'','+''+
              ' '+QuotedStr(Qmenu['id_menu'])+','+QuotedStr(qmenu['no_group'])+')';
    ExecSQL;
  end;
  QDetail.Close;
  QDetail.Open;
  RefreshMenu;
end;

procedure TFNew_Hak_Akses.DBGridEh1DblClick(Sender: TObject);
begin
  BTambahClick(sender);
end;

procedure TFNew_Hak_Akses.DBGridEh2Columns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  With FCari_Menu do
  begin
    show;
    RefreshMenu;
  end;
end;

procedure TFNew_Hak_Akses.EdkdChange(Sender: TObject);
begin
{  with QDetail do
  begin
    close;
    sql.Clear;
    sql.Text:=' select A.*,b.submenu,c.Dept from t_akses  a inner join t_menu_sub b on '+
              ' a.submenu_code=b.submenu_code inner join t_dept c on a.dept_code=c.dept_code '+
              ' where a.dept_code='+QuotedStr(Edkd.Text)+''+
              ' order by a.submenu_code Asc ';
    ExecSQL;
  end;
    QDetail.Close;
    QDetail.Open;   }
    RefreshAkses;
end;

procedure TFNew_Hak_Akses.EdNmSelect(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_dept where dept='+QuotedStr(EdNm.Text);
    ExecSQL;
  end;
    Edkd.Text:=Dm.Qtemp['dept_code'];
    no_dept:=Dm.Qtemp['dept_code'];
 //   EdkdChange(sender);
//    RefreshMenu;
end;

procedure TFNew_Hak_Akses.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_Hak_Akses.FormCreate(Sender: TObject);
begin
  realfnew_akses:=self;
end;

procedure TFNew_Hak_Akses.FormDestroy(Sender: TObject);
begin
  realfnew_akses:=nil;
end;

end.
