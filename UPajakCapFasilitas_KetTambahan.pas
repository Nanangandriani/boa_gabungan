unit UPajakCapFasilitas_KetTambahan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFPajakCapFasilitas_KetTambahan = class(TForm)
    DBGridEh1: TDBGridEh;
    DSPajakCapFasilitas: TDataSource;
    QPajakCapFasilitas: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strWhereKodeTransaksi,vcall :String;
  end;

var
  FPajakCapFasilitas_KetTambahan: TFPajakCapFasilitas_KetTambahan;

implementation

{$R *.dfm}

uses UExportFaktur, UDataModule;

procedure TFPajakCapFasilitas_KetTambahan.DBGridEh1DblClick(Sender: TObject);
begin
  if vcall='capfasilitas' then
  begin
    FExportFaktur.strKodeCapFasilitas:=QPajakCapFasilitas.FieldByName('kode').AsString;
    FExportFaktur.edCapFasilitas.Text:=QPajakCapFasilitas.FieldByName('keterangan').AsString;
  end else if vcall='kettambahan' then
  begin
    FExportFaktur.strKodeKetTambahan:=QPajakCapFasilitas.FieldByName('kode').AsString;
    FExportFaktur.edKetTambahan.Text:=QPajakCapFasilitas.FieldByName('keterangan').AsString;
  end;
  Close;
end;

procedure TFPajakCapFasilitas_KetTambahan.FormShow(Sender: TObject);
var strTable: String;
begin
  if vcall='kettambahan' then
  begin
    strTable:='t_pajak_ket_tambahan ';
  end else if vcall='capfasilitas' then
  begin
    strTable:='t_pajak_cap_fasilitas ';
  end;

  if strTable<>'' then
  begin
    with QPajakCapFasilitas do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from '+strTable+strWhereKodeTransaksi+' order by kode desc;';
      open;
    end;
    if QPajakCapFasilitas.RecordCount=0 then
    begin
      MessageDlg('Maaf, data tidak ditemukan ..!!',mtInformation,[mbRetry],0);
      Close;
    end;
  end;
end;

end.
