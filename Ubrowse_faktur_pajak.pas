unit Ubrowse_faktur_pajak;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFbrowse_faktur_pajak = class(TForm)
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Qfaktur: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  vcall: string;
  end;

var
  Fbrowse_faktur_pajak: TFbrowse_faktur_pajak;

implementation

{$R *.dfm}

uses UDataModule, UNew_Penjualan, UNew_DataPenjualan;//, UNewPenjualan_Promosi;

procedure TFbrowse_faktur_pajak.DBGridEh1DblClick(Sender: TObject);
begin
  if vcall='penjualan' then
  begin
    FNew_Penjualan.edNomorFaktur.Text:=Qfaktur.FieldByName('no_invoice_tax').AsString;
  end;
  close;
end;

procedure TFbrowse_faktur_pajak.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Qfaktur.Close;
end;

procedure TFbrowse_faktur_pajak.FormShow(Sender: TObject);
begin
  Qfaktur.Close;
  Qfaktur.Open;
end;

end.
