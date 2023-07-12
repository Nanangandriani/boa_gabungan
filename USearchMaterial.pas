unit USearchMaterial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFSearchMaterial = class(TForm)
    DBGridEh1: TDBGridEh;
    QMaterial: TUniQuery;
    DsMaterial: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSearchMaterial: TFSearchMaterial;

implementation

{$R *.dfm}

end.
