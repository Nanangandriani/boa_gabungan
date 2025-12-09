unit UUbahPassword;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzButton, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFUbahPassword = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    edPassLama: TRzEdit;
    edPassBaru: TRzEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUbahPassword: TFUbahPassword;

implementation

{$R *.dfm}

uses UDataModule, UMainMenu;

procedure TFUbahPassword.BSaveClick(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT * FROM t_user where user_name='+QuotedStr(Nm)+' AND '+
              'password='+QuotedStr(edPassLama.Text)+' AND status=True';
    open;
  end;

  if dm.Qtemp.RecordCount=0 then
  begin
    MessageDlg('Password Lama tidak ditemukan atau salah..!!', mtError, [mbRetry], 0);
    dm.Qtemp.Close;
    Exit;
  end else
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:='Update t_user set '+
              ' password='+QuotedStr(edPassBaru.Text)+', '+
              ' updated_at=now(), '+
              ' updated_by='+QuotedStr(Nm)+' '+
              'WHERE user_name='+QuotedStr(Nm)+' AND password='+QuotedStr(edPassLama.Text)+' AND status=True';
      ExecSQL;
    end;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
  end;
end;

procedure TFUbahPassword.FormShow(Sender: TObject);
begin
  edPassLama.Text:='';
  edPassBaru.Text:='';
end;

end.
