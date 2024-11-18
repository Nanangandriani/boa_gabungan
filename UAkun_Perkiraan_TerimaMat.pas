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
    DsAkun: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAkun_Perkiraan_TerimaMat: TFAkun_Perkiraan_TerimaMat;
implementation

{$R *.dfm}

uses UNew_Pembelian, UMy_Function, URpt_BukuHarianPembelian;

procedure TFAkun_Perkiraan_TerimaMat.DBGridEh1DblClick(Sender: TObject);
begin
  { with FNew_Pembelian do
   begin
       MemterimaDet.Edit;
       MemterimaDet['kd_akunpph']:=QAkun['code'];
       MemterimaDet.Post;
       kd_akpph:=QAkun['code'];
   end;
   Close;}
    if statustr='pphpemb' then
    begin
      with FNew_Pembelian do
      begin
        MemterimaDet.Edit;
        MemterimaDet['kd_akunpph']:=QAkun['code'];
        MemterimaDet.Post;
        kd_akpph:=QAkun['code'];
      end;
    end;

    if statustr='beapemb' then
    begin
      with FNew_Pembelian do
      begin
        MemterimaDet.Edit;
        MemterimaDet['kd_akunbea']:=QAkun['code'];
        MemterimaDet.Post;
        kd_akbea:=QAkun['code'];
      end;
    end;

    if statustr='1' then    // bhp pembelian
    begin
      with FRpt_BukuHarianPembelian do
      begin
        edkd_akun.Text:=QAkun['code'];
        ednm_akun.text:=QAkun['account_name'];
      end;
    end;
  Close;
end;

procedure TFAkun_Perkiraan_TerimaMat.FormShow(Sender: TObject);
begin
  if QAkun.Active=false then QAkun.Active:=True;
  QAkun.Close;
  QAkun.Open;
end;

end.
