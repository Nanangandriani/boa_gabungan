unit UDashboard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, frxClass;

type
  TFDashboard = class(TForm)
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDashboard: TFDashboard;

implementation

{$R *.dfm}

procedure TFDashboard.BitBtn1Click(Sender: TObject);
begin
//  frxReport1.ShowReport()
end;

Initialization
  RegisterClass(TFDashboard);


end.
