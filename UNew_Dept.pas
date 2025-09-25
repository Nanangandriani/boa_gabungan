unit UNew_Dept;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls;

type
  TFNew_Dept = class(TForm)
    Edkd: TEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    EdDept: TEdit;
    Label8: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    procedure BBatalClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Autonumber;
  end;

Function
  FNew_Dept: TFNew_Dept;
var  Status:integer;

implementation

{$R *.dfm}

uses UDataModule, UDept, UMainMenu;

var
  RealNew_Dept: TFNew_Dept;

function FNew_Dept: TFNew_Dept;
begin
  if RealNew_Dept <> nil then
    FNew_Dept:= RealNew_Dept
  else
    Application.CreateForm(TFNew_Dept, Result);
end;

Procedure TFNew_Dept.Autonumber;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:='select max(case when dept_code=null then 0 else dept_code end )as no from t_dept';
    ExecSQL;
  end;
  Edkd.Text:=Dm.Qtemp['no'] + 1;
end;

procedure TFNew_Dept.BBatalClick(Sender: TObject);
begin
  Close;
  //FDept.dxbarRefreshClick(sender);
  FDept.ActROExecute(sender);
end;

procedure TFNew_Dept.BSimpanClick(Sender: TObject);
begin
    if Edkd.Text='' then
    begin
      MessageDlg('Kode Department Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edkd.SetFocus;
      Exit;
    end;
    if EdDept.Text='' then
    begin
      MessageDlg('Department User Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdDept.SetFocus;
      Exit;
    end;
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
    begin
    if status=0 then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        //sql.Text:='insert into t_dept(no_dept,Dept)values('+QuotedStr(Edkd.Text)+','+
                  //''+QuotedStr(EdDept.Text)+')';
        sql.Text:='insert into t_dept(Dept,created_at,created_by)values('+QuotedStr(EdDept.Text)+',:created_at,:created_by)';
        parambyname('created_at').AsDateTime:=Now;
        parambyname('created_by').AsString:='Admin';
        ExecSQL;
      end;
    end;
    if status=1 then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:=' Update t_dept set dept='+QuotedStr(EdDept.Text)+',updated_at=now(),updated_by=:updated_by '+
                  ' where dept_code='+QuotedStr(Edkd.Text);
        //parambyname('updated_at').AsDateTime:=Now;
        parambyname('updated_by').AsString:='Admin';
        ExecSQL;
      end;
    end;
    dm.koneksi.Commit;
    Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
    BBatalClick(sender);
    end
    Except
    on E :Exception do
    begin
      MessageDlg(E.Message,mtError,[MBok],0);
      dm.koneksi.Rollback;
    end;
    end;
    refresh;
    FMainMenu.TampilTabForm2;
end;

procedure TFNew_Dept.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_Dept.FormCreate(Sender: TObject);
begin
  RealNew_Dept:=self;
end;

procedure TFNew_Dept.FormDestroy(Sender: TObject);
begin
  RealNew_Dept:=nil;
end;

end.
