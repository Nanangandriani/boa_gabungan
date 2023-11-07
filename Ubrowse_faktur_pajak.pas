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
  end;

var
  Fbrowse_faktur_pajak: TFbrowse_faktur_pajak;
  Status_fak: Integer;

implementation

{$R *.dfm}

uses UDataModule, UNew_Penjualan;//, UNewPenjualan_Promosi;

procedure TFbrowse_faktur_pajak.DBGridEh1DblClick(Sender: TObject);
begin
  if Status_fak=1 then
  begin
    With Qfaktur do
    begin
    //10-10-2023  Fnewpenjualan_promosi.EdFaktur.Text:=FieldByName('no_faktur').AsString;
    end;
  end
  else
  begin
    With Qfaktur do
    begin
      Finput_penjualan.EdFaktur.Text:=FieldByName('no_faktur').AsString;
    end;
  end;
  Status_fak:=0;
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
