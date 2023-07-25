unit UAkun_Perkiraan_TerimaMat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFAkun_Perkiraan_TerimaMat = class(TForm)
    DBGridEh1: TDBGridEh;
    QAkun: TUniQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAkun_Perkiraan_TerimaMat: TFAkun_Perkiraan_TerimaMat;

implementation

{$R *.dfm}

procedure TFAkun_Perkiraan_TerimaMat.FormShow(Sender: TObject);
begin
  if QAkun.Active=false then QAkun.Active:=True;
end;

end.
