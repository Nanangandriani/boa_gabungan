unit Ulist_materialstok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, RzButton, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Data.DB, MemDS, DBAccess, Uni;

type
  TFlistmaterialstok = class(TForm)
    DsMaterial_stok: TDataSource;
    QMaterial_stok: TUniQuery;
    DBGridMaterial: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BEdit: TRzBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flistmaterialstok: TFlistmaterialstok;

implementation

{$R *.dfm}

end.
