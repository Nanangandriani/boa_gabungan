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
    statustr:string;
  end;

var
  FAkun_Perkiraan_TerimaMat: TFAkun_Perkiraan_TerimaMat;

implementation

{$R *.dfm}

uses UNew_Pembelian;

procedure TFAkun_Perkiraan_TerimaMat.DBGridEh1DblClick(Sender: TObject);
begin
    {if   statustr='dopj' then
    begin
      with Fnew_do_penjualan do
      begin
        edkdperk.Text:=QAkun['kode'];
        EdNamaAkun.Text:=QAkun['nama_perkiraan'];
        //MemPPh.Post;
      end;
    end;
    if   statustr='Tmpph' then
    begin
      with FNew_TerimaMaterial_PPh do
      begin
        MemPPh.Edit;
        MemPPh['kd_akun']:=QAkun['kode'];
        MemPPh['nm_akun']:=QAkun['nama_perkiraan'];
        MemPPh.Post;
      end;
    end;
    if statustr='pemb' then
    begin
      with FNew_Pembelian do
      begin
        Edkd_akun.Text:=QAkun['kode'];
        EdNm_akun.Text:=QAkun['nama_perkiraan'];
      end;
    end;
    if statustr='pemb2' then
    begin
      with FNew_Pembelian do
      begin
        Edkd_akunBea.Text:=QAkun['kode'];
        Lblakun.Caption:=QAkun['nama_perkiraan'];
      end;
    end;
    if statustr='material' then
    begin
        with Fnewmaterial do
      begin
        Edkd_akun.Text:=QAkun['kode'];
        EdNm_akun.Text:=QAkun['nama_perkiraan'];
      end;
    end;
    if statustr='buku_besar' then
    begin
      with FRpt_Buku_Besar_PerAkun do
      begin
        Edkd_akun.Text:=QAkun['kode'];
        EdNm_akun.Text:=QAkun['nama_perkiraan'];
      end;
    end;}
    if statustr='pphpemb' then
    begin
      with FNew_Pembelian do
      begin
        MemterimaDet.Edit;
        MemterimaDet['kd_akunpph']:=QAkun['account_code'];
        MemterimaDet.Post;
        kd_akpph:=QAkun['account_code'];
      end;
    end;
    {if statustr='beapemb' then
    begin
      with FNew_Pembelian do
      begin
        MemterimaDet.Edit;
        MemterimaDet['kd_akunbea']:=QAkun['kode'];
        MemterimaDet.Post;
        kd_akbea:=QAkun['kode'];
      end;
    end;
    if statustr='bhp' then
    begin
      with FRpt_BukuHarianPembelian do
      begin
        edkd_akun.Text:=QAkun['kode'];
        Ednm_akun.Text:=QAkun['nama_perkiraan'];
      end;
    end;
    if   statustr='do' then
    begin
      with FNew_do do
      begin
        edkd_akun.Text:=QAkun['kode'];
        Ednm_akun.Text:=QAkun['nama_perkiraan'];
      end;
    end;
    if   statustr='pphdo' then
    begin
      with FNew_do do
      begin
        Edkd_akunpph.Text:=QAkun['kode'];
        Ednm_akunpph.Text:=QAkun['nama_perkiraan'];
      end;
    end;
    if   statustr='um' then
    begin
      with FNew_po do
      begin
        edkd_akun.Text:=QAkun['kode'];
        Ednm_akun.Text:=QAkun['nama_perkiraan'];
      end;
    end;
    if statustr='pemb_um' then
    begin
      with FNew_Pembelian do
      begin
        Edkd_akunum.Text:=QAkun['kode'];
        EdNm_akunum.Text:=QAkun['nama_perkiraan'];
      end;
    end;
    if statustr='ppndo' then
    begin
      with FNew_do do
      begin
        Edkd_akunppn.Text:=QAkun['kode'];
        Ednm_akunppn.Text:=QAkun['nama_perkiraan'];
      end;
    end;
    if statustr='dopj_ppn' then
    begin
      with Fnew_do_penjualan do
      begin
        Edkd_akunppn.Text:=QAkun['kode'];
        EdNm_akunppn.Text:=QAkun['nama_perkiraan'];
      end;
    end;}
   Close;
end;

procedure TFAkun_Perkiraan_TerimaMat.FormShow(Sender: TObject);
begin
  if QAkun.Active=false then QAkun.Active:=True;
end;

end.
