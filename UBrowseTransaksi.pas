unit UBrowseTransaksi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni;

type
  TFBrowseTransaksi = class(TForm)
    DBGridEh1: TDBGridEh;
    DStransaksi: TDataSource;
    QTransaksi: TUniQuery;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBrowseTransaksi: TFBrowseTransaksi;

implementation

{$R *.dfm}

uses UDataModule, UKoreksi;

procedure TFBrowseTransaksi.DBGridEh1DblClick(Sender: TObject);
begin
  FKoreksi.edNoTransaksi.Text:=QTransaksi.FieldByName('trans_no').AsString;
  Close;
end;

end.
