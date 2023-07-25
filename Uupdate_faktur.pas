unit Uupdate_faktur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, RzButton,
  Vcl.ExtCtrls, Vcl.Mask, RzEdit;

type
  TFupdate_faktur = class(TForm)
    edfaktur: TRzEdit;
    edid: TEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    RzLabel1: TRzLabel;
    procedure BBatalClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fupdate_faktur: TFupdate_faktur;

implementation

{$R *.dfm}

uses UDataModule, UFakturPajak;

procedure TFupdate_faktur.BBatalClick(Sender: TObject);
begin
   edid.Text:='';
   edfaktur.Text:='';
   Close;
end;

procedure TFupdate_faktur.BSimpanClick(Sender: TObject);
begin
    with Dm.Qtemp do
    begin
      close;
      Sql.Clear;
      Sql.Text:= 'update t_faktur set no_faktur=:parno_faktur where id=:parid';
      parambyname('parno_faktur').Value:=edfaktur.Text;
      parambyname('parid').Value:=edid.Text;
      ExecSql;
    end;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    FFakturPajak.Refresh;
    Close;
end;

end.
