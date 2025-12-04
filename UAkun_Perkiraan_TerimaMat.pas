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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function
  FAkun_Perkiraan_TerimaMat: TFAkun_Perkiraan_TerimaMat;
implementation

{$R *.dfm}

uses UNew_Pembelian, UMy_Function, URpt_BukuHarianPembelian,
  u_rencana_lunas_hutang_input, URpt_Buku_Besar;

var
  RealFAkun_Perkiraan_TerimaMat : TFAkun_Perkiraan_TerimaMat;

Function FAkun_Perkiraan_TerimaMat: TFAkun_Perkiraan_TerimaMat;
begin
  if RealFAkun_Perkiraan_TerimaMat <> nil then
    FAkun_Perkiraan_TerimaMat:= RealFAkun_Perkiraan_TerimaMat
  else
    Application.CreateForm(TFAkun_Perkiraan_TerimaMat, Result);
end;

procedure TFAkun_Perkiraan_TerimaMat.DBGridEh1DblClick(Sender: TObject);
begin
    if statustr='rencana_pelunasan_hutang' then
    with FRencana_Lunas_Hutang do
    begin
         Memrencana.Edit;
         Memrencana['akun_pph']:=QAkun['code'];
         Memrencana['nm_akun_pph']:=QAkun['account_name'];
         Memrencana.Post;

    end;
    //ShowMessage(statustr);
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
        edakun.EditValue:=QAkun['code'];
        ednm_akun.EditValue:=QAkun['account_name'];
      end;
    end;

    if statustr='buku_besar' then
    begin
      with FRpt_Buku_Besar do
      begin
        edAkun.EditValue:=QAkun['code'];
        ednm_akun.EditValue:=QAkun['account_name'];
      end;
    end;
  Close;
end;

procedure TFAkun_Perkiraan_TerimaMat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION:=cafree;
end;

procedure TFAkun_Perkiraan_TerimaMat.FormCreate(Sender: TObject);
begin
  RealFAkun_Perkiraan_TerimaMat:=Self;
end;

procedure TFAkun_Perkiraan_TerimaMat.FormDestroy(Sender: TObject);
begin
  RealFAkun_Perkiraan_TerimaMat:=nil;
end;

procedure TFAkun_Perkiraan_TerimaMat.FormShow(Sender: TObject);
begin
  if QAkun.Active=false then QAkun.Active:=True;
  QAkun.Close;
  QAkun.Open;
end;

end.
