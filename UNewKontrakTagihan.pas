unit UNewKontrakTagihan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, RzButton,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzBtnEdt, Vcl.ExtCtrls, Vcl.ComCtrls, RzDTP, Vcl.Samples.Spin,
  Vcl.Buttons, RzPanel, RzRadGrp;

type
  TFNewKontrakTagihan = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edNamaPelanggan: TRzButtonEdit;
    edNoKontrak: TEdit;
    edNamaJenisKontrak: TRzButtonEdit;
    edKodePelanggan: TEdit;
    RzPageControl1: TRzPageControl;
    TabDataJasa: TRzTabSheet;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    edNPWP: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MemAlamat: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    EdKodeJenisKontrak: TEdit;
    dtPeriodeAwal: TRzDateTimePicker;
    dtPeriodeAkhir: TRzDateTimePicker;
    Label15: TLabel;
    edJatuhTempo: TSpinEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edTermin: TSpinEdit;
    Label19: TLabel;
    btMasterSumberJenis: TSpeedButton;
    MemDataBiaya: TMemTableEh;
    dsDataBiaya: TDataSource;
    DBGridSumberPenjualan: TDBGridEh;
    rgIntegrasiBiaya: TRzRadioGroup;
    Label20: TLabel;
    edMenejFee: TSpinEdit;
    Label23: TLabel;
    Label24: TLabel;
    MemDataBiayakd_biaya: TStringField;
    MemDataBiayanm_biaya: TStringField;
    MemDataBiayamenejmen_fee: TSmallintField;
    MemDataBiayaakun_ppn: TStringField;
    MemDataBiayanama_ppn: TStringField;
    MemDataBiayapersen_ppn: TFloatField;
    MemDataBiayappn: TFloatField;
    MemDataBiayaakun_pph: TStringField;
    MemDataBiayanama_pph: TStringField;
    MemDataBiayapersen_pph: TFloatField;
    MemDataBiayapph: TFloatField;
    MemDataBiayaketerangan: TWideStringField;
    procedure edNamaJenisKontrakButtonClick(Sender: TObject);
    procedure btMasterSumberJenisClick(Sender: TObject);
    procedure edNamaPelangganButtonClick(Sender: TObject);
    procedure DBGridSumberPenjualanColumns4EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridSumberPenjualanColumns7EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure edMenejFeeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshGrid;
    procedure Clear;
  end;

var
  FNewKontrakTagihan: TFNewKontrakTagihan;

implementation

{$R *.dfm}

uses UMasterData, Ubrowse_pelanggan, UDataModule, UCari_DaftarPerk;

procedure TFNewKontrakTagihan.RefreshGrid;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "code", "name", "description", "code_master" FROM '+
            ' "t_type_contract_service_det" where deleted_at IS NULL ) a '+
            ' WHERE "code_master"='+QuotedStr(EdKodeJenisKontrak.Text)+' '+
            ' Order By code, name desc');
    open;
  end;

    FNewKontrakTagihan.MemDataBiaya.active:=false;
    FNewKontrakTagihan.MemDataBiaya.active:=true;
    FNewKontrakTagihan.MemDataBiaya.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FNewKontrakTagihan.MemDataBiaya.active:=false;
      FNewKontrakTagihan.MemDataBiaya.active:=true;
      FNewKontrakTagihan.MemDataBiaya.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FNewKontrakTagihan.MemDataBiaya.insert;
     FNewKontrakTagihan.MemDataBiaya['kd_biaya']:=Dm.Qtemp.fieldbyname('code').value;
     FNewKontrakTagihan.MemDataBiaya['nm_biaya']:=Dm.Qtemp.fieldbyname('name').value;
     FNewKontrakTagihan.MemDataBiaya['menejmen_fee']:=0;
     FNewKontrakTagihan.MemDataBiaya['akun_ppn']:='0';
     FNewKontrakTagihan.MemDataBiaya['nama_ppn']:='0';
     FNewKontrakTagihan.MemDataBiaya['persen_ppn']:=0;
     FNewKontrakTagihan.MemDataBiaya['akun_pph']:='0';
     FNewKontrakTagihan.MemDataBiaya['nama_pph']:='0';
     FNewKontrakTagihan.MemDataBiaya['persen_pph']:=0;
     FNewKontrakTagihan.MemDataBiaya['keterangan']:=Dm.Qtemp.fieldbyname('description').value;
     FNewKontrakTagihan.MemDataBiaya.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFNewKontrakTagihan.Clear;
begin
  edNoKontrak.Clear;
  edKodePelanggan.Clear;
  edNamaPelanggan.Clear;
  edNPWP.Clear;
  MemAlamat.Clear;
  dtPeriodeAwal.Date:=Now();
  dtPeriodeAkhir.Date:=Now();
  EdKodeJenisKontrak.Clear;
  edNamaJenisKontrak.Clear;
  edTermin.Value:=0;
  edJatuhTempo.Value:=0;
  edMenejFee.Value:=0;
  rgIntegrasiBiaya.ItemIndex:=0;
  MemDataBiaya.EmptyTable;
end;

procedure TFNewKontrakTagihan.DBGridSumberPenjualanColumns4EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='kontrak_jasa_ppn';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                ' left join t_ak_header c on b.header_code=c.header_code'+
                ' GROUP BY b.code,b.account_name,c.header_name '+
                ' ORDER BY b.code,b.account_name,c.header_name';
      Execute;
    end;
  end;
end;

procedure TFNewKontrakTagihan.DBGridSumberPenjualanColumns7EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='kontrak_jasa_pph';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                ' left join t_ak_header c on b.header_code=c.header_code'+
                ' GROUP BY b.code,b.account_name,c.header_name '+
                ' ORDER BY b.code,b.account_name,c.header_name';
      Execute;
    end;
  end;
end;

procedure TFNewKontrakTagihan.btMasterSumberJenisClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data';
  FMasterData.vcall:='setmaster_jenis_kontrakTagihan';
  FMasterData.update_grid('code','name','description','t_type_contract_service','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.Show;
end;

procedure TFNewKontrakTagihan.edMenejFeeChange(Sender: TObject);
begin
  if edMenejFee.Value<>0 then
  begin
    FNewKontrakTagihan.MemDataBiaya.active:=false;
    FNewKontrakTagihan.MemDataBiaya.active:=true;

     FNewKontrakTagihan.MemDataBiaya.insert;
     FNewKontrakTagihan.MemDataBiaya['kd_biaya']:='MENFEE';
     FNewKontrakTagihan.MemDataBiaya['nm_biaya']:='MENEJMEN FEE';
     FNewKontrakTagihan.MemDataBiaya['menejmen_fee']:=0;
     FNewKontrakTagihan.MemDataBiaya['akun_ppn']:='0';
     FNewKontrakTagihan.MemDataBiaya['nama_ppn']:='0';
     FNewKontrakTagihan.MemDataBiaya['persen_ppn']:=0;
     FNewKontrakTagihan.MemDataBiaya['akun_pph']:='0';
     FNewKontrakTagihan.MemDataBiaya['nama_pph']:='0';
     FNewKontrakTagihan.MemDataBiaya['persen_pph']:=0;
     FNewKontrakTagihan.MemDataBiaya['keterangan']:='-';
     FNewKontrakTagihan.MemDataBiaya.post;
  end;
  if edMenejFee.Value=0 then
  begin
    MemDataBiaya.First;
      while not MemDataBiaya.Eof do
      begin
      if MemDataBiaya.FieldByName('kd_biaya').AsString = 'MENFEE' then
        MemDataBiaya.Delete
      else
      MemDataBiaya.Next;
      end;
  end;
end;

procedure TFNewKontrakTagihan.edNamaJenisKontrakButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data';
  FMasterData.vcall:='master_jenis_kontrakTagihan';
  FMasterData.update_grid('code','name','description','t_type_contract_service','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.Show;
end;

procedure TFNewKontrakTagihan.edNamaPelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='kontrak_jasa';
  Fbrowse_data_pelanggan.ShowModal;
end;

end.
