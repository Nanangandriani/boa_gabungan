unit ULogout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFLogout = class(TForm)
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogout: TFLogout;

implementation

{$R *.dfm}

uses UMainMenu, UHomeLogin;

procedure TFLogout.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;
  FHomeLogin.ShowModal;
end;

procedure TFLogout.FormCreate(Sender: TObject);
begin
 // FMainMenu.Close;
 // FHomeLogin.ShowModal;
end;

procedure TFLogout.FormShow(Sender: TObject);
begin
  BitBtn1Click(sender);
end;

initialization
RegisterClass(TFLogout);

end.
