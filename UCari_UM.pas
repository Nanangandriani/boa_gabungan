unit UCari_UM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFCari_UM = class(TForm)
    QUM: TUniQuery;
    DS_UM: TDataSource;
    DBGrid_um: TDBGridEh;
    DBGridCek_Det: TDBGridEh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCari_UM: TFCari_UM;

implementation

{$R *.dfm}

end.
