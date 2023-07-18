unit Udafperkiraan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFdafperkiraan = class(TForm)
    Button1: TButton;
    DBGridDaftar_Perk: TDBGridEh;
    Edit1: TEdit;
    Label1: TLabel;
    query1: TUniQuery;
    query1kode: TStringField;
    query1nama_perkiraan: TStringField;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

     vpanggil,nm_jenis:string;
  end;

var
  Fdafperkiraan: TFdafperkiraan;

implementation

{$R *.dfm}

uses UKategori_Barang;

procedure TFdafperkiraan.Button1Click(Sender: TObject);
begin

    if (vpanggil = 'kategorimaterial')then
    begin
      FKategori_Barang.Edkd_akun.Text:=query1.fieldbyname('kode').AsString;
      FKategori_Barang.EdNm_akun.Text:=query1.fieldbyname('nama_perkiraan').AsString;
      query1.Close;
      fdafperkiraan.Close;
    end
    //else
end;

end.
