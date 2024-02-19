unit UCari_DaftarPerk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFCari_DaftarPerk = class(TForm)
    Button1: TButton;
    DBGridDaftar_Perk: TDBGridEh;
    Edit1: TEdit;
    Label1: TLabel;
    QDaftar_Perk: TUniQuery;
    DataSource1: TDataSource;
    procedure DBGridDaftar_PerkDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

     vpanggil,nm_jenis:string;
  end;

Function FCari_DaftarPerk: TFCari_DaftarPerk;

implementation

{$R *.dfm}

uses UNew_KategoriBarang, UNew_ItemType, UNew_Barang, UNew_KelompokBarang,
  UInput_um;


var RealFCari_DaftarPerk: TFCari_DaftarPerk;
function FCari_DaftarPerk: TFCari_DaftarPerk;
begin
  if RealFCari_DaftarPerk <> nil then FCari_DaftarPerk:= RealFCari_DaftarPerk
  else  Application.CreateForm(TFCari_DaftarPerk, Result);
end;

procedure TFCari_DaftarPerk.DBGridDaftar_PerkDblClick(Sender: TObject);
begin
    if (vpanggil = 'kategorimaterial')then
    begin
      FNew_KategoriBarang.Edkd_akun.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_KategoriBarang.EdNm_akun.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;

    if (vpanggil = 'itemtype')then
    begin
      FNew_Itemtype.Edkd_akun.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_Itemtype.EdNm_akun.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if (vpanggil = 'itemtype2')then
    begin
   //   FNew_Itemtype.Edkd_akun2.Text:=QDaftar_Perk.fieldbyname('code').AsString;
   //   FNew_Itemtype.EdNm_akun2.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if (vpanggil = 'barang')then
    begin
      FNew_barang.Edkd_akun.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.EdNm_akun.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if vpanggil = 'Pemb_barang' then
    begin
      FNew_barang.Edkd_akunpemb.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.EdNm_akunpemb.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if vpanggil = 'RTPemb_barang' then
    begin
      FNew_barang.Edkd_akunRt_pemb.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.EdNm_akunRt_pemb.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if vpanggil = 'PotPemb_barang' then
    begin
      FNew_barang.Edkd_akunPot_pemb.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.EdNm_akunPot_pemb.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if vpanggil = 'Penj_barang' then
    begin
      FNew_barang.Edkd_akunPenj.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.EdNm_akunPenj.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if vpanggil = 'RtPenj_barang' then
    begin
      FNew_barang.Edkd_akunRt_Penj.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.EdNm_akunRt_Penj.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if (vpanggil = 'groupmaterial')then
    begin
      FNew_KelompokBarang.Edkd_akun.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_KelompokBarang.EdNm_akun.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if (vpanggil = 'um')then
    begin
      FNew_UM_Pembelian.Edkd_akun.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_UM_Pembelian.EdNm_akun.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    close;
end;

procedure TFCari_DaftarPerk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=cafree;
end;

procedure TFCari_DaftarPerk.FormCreate(Sender: TObject);
begin
  RealFCari_DaftarPerk:=self;
end;

procedure TFCari_DaftarPerk.FormDestroy(Sender: TObject);
begin
  RealFCari_DaftarPerk:=nil;
end;

end.
