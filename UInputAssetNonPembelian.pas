unit UInputAssetNonPembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzCmboBx, RzEdit, Mask, RzButton, ExtCtrls, RzPanel;

type
  TFInputAssetNonPembelian = class(TForm)
    RzPanel1: TRzPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    btSimpan: TRzBitBtn;
    btBatal: TRzBitBtn;
    btBaru: TRzBitBtn;
    Label1: TLabel;
    edNoAsset: TEdit;
    btNoAsset: TButton;
    btSup: TButton;
    edKodeSup: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    dtTanggal: TRzDateTimeEdit;
    edNamaSup: TEdit;
    Label12: TLabel;
    MemoKet: TMemo;
    edJumlah: TRzNumericEdit;
    edHargaSatuan: TRzNumericEdit;
    edTotalHarga: TRzNumericEdit;
    cbSatuan: TRzComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Clear;
    procedure btBaruClick(Sender: TObject);
    procedure btNoAssetClick(Sender: TObject);
    procedure btSupClick(Sender: TObject);
    procedure btSimpanClick(Sender: TObject);
    procedure edHargaSatuanChange(Sender: TObject);
    procedure edJumlahChange(Sender: TObject);
    procedure btBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    stat : string;
    next_proses:boolean;
  end;

var
  FInputAssetNonPembelian: TFInputAssetNonPembelian;

implementation

uses  UMainMenu, UMy_Function, UDataModule;//,UAddSup, u_otorisasi;

{$R *.dfm}
       
procedure TFInputAssetNonPembelian.Clear;
begin
  edNoAsset.Clear;
  edKodeSup.Clear;
  edNamaSup.Clear;
  dtTanggal.Date:=now();
  edJumlah.value:=0;
  edHargaSatuan.Value:=0;
  edTotalHarga.Value:=0;
  MemoKet.Clear;
  cbSatuan.Text:='';

  
   with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from t_satuan order by id');
      open;
      first;
    end;

    cbSatuan.Clear;
    cbSatuan.Items.add('');
    while not Dm.Qtemp.eof do
    begin
      cbSatuan.Items.add(Dm.Qtemp.fieldbyname('satuan').AsString);
      Dm.Qtemp.Next;
    end;
    cbSatuan.itemindex:=0;
end;

procedure TFInputAssetNonPembelian.btBaruClick(Sender: TObject);
begin
   Clear;
   stat:='baru';
   btSimpan.Enabled:=true;
end;

procedure TFInputAssetNonPembelian.btNoAssetClick(Sender: TObject);
begin
  ShowMessage('Maaf. System Dalam Maintenance...');
end;

procedure TFInputAssetNonPembelian.btSupClick(Sender: TObject);
begin
  //off 23-05-2025
  //FAddSup.vPanggilSup := 'AssetNONPembelian';
  //FAddSup.Show;
end;

procedure TFInputAssetNonPembelian.btSimpanClick(Sender: TObject);
begin
  if edKodeSup.text='' then
  begin
   ShowMessage('Silakan Pilih Pelanggan...');
   exit;
  end;
  if edNamaSup.text='' then
  begin
   ShowMessage('Silakan Pilih Pelanggan...');
   exit;
  end;
  if ((Length(edNoAsset.Text)=0) or (edNoAsset.Text='0') or (edNoAsset.Text='')) then
  begin
   ShowMessage('Silakan Lengkapi Nomor Asset...');
   exit;
  end;
  if (Length(edTotalHarga.Text)=0) and (edTotalHarga.Value=0) then
  begin
   ShowMessage('Silakan Lengkapi Tagihan Pelanggan...');
   exit;
  end;

  next_proses:=true;
  //DecodeDate(dtTanggal.date,thn,bln,tgl);
  //strbln:=convbulan(bln);
  //strthn:=inttostr(thn);
    if FInputAssetNonPembelian.stat='edit' then
    begin
     next_proses:=false;
{off 23-05-2025     frmotorisasi.vcall:='ubah_asset_non_pembelian';
     frmotorisasi.key_identity:=FInputAssetNonPembelian.edNoAsset.text;
     frmotorisasi.edit1.clear;
     frmotorisasi.edit2.clear;
     frmotorisasi.info:=FInputAssetNonPembelian.edNoAsset.text+' tgl. '+formatdatetime('dd/mm/yyyy',FInputAssetNonPembelian.dtTanggal.date);
     frmotorisasi.showmodal;  }
    end;

    if next_proses=true then
    begin
    with Dm.Qtemp do
    begin
        close;
        sql.clear;
        sql.add(' Select * from t_non_pembelian_asset where NOASSET='+Quotedstr(edNoAsset.Text)+' and delete_at is null ');
        open;
    end;

    if Dm.Qtemp.RecordCount<>0 then
    begin
      ShowMessage('Maaf, Kode Asset Sudah Terdaftar..');
      exit;
    end;
      
    if Dm.Qtemp.RecordCount=0 then
    begin
    with Dm.Qtemp2 do
    begin
    Close;
    sql.Clear;
    sql.Text:=' Insert Into `t_non_pembelian_asset` ('+
              ' `NOASSET`, `KODESUP`, `NASUP`, `NO_INV_SUPP`, `JUMLAH`, `SATUAN`, '+
              ' `HARGASATUAN`, `TOTALHARGA`, `TGLTRANS`, `KODEPRSH`, `USERNAME`, `KETERANGAN`, '+
              ' `flg_crate_asset`, `create_at`) values ('+
              ' '+QuotedStr(edNoAsset.Text)+', '+
              ' '+QuotedStr(edKodeSup.Text)+', '+
              ' '+QuotedStr(edNamaSup.Text)+', '+
              ' '+QuotedStr('0')+', '+
              ' '+QuotedStr(FloatToStr(edJumlah.Value))+', '+
              ' '+QuotedStr(cbSatuan.Text)+', '+
              ' '+QuotedStr(FloatToStr(edHargaSatuan.Value))+', '+
              ' '+QuotedStr(FloatToStr(edTotalHarga.Value))+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal.date))+', '+
              ' '+QuotedStr(loksbu)+', '+
              ' '+QuotedStr(nm)+', '+
              ' '+QuotedStr(MemoKet.Text)+', '+
              ' '+QuotedStr('0')+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd hh:nn:dd',now()))+')';
    ExecSQL ;
    end;
    end;

  if FInputAssetNonPembelian.stat='edit' then
   begin
    // off 23-05-2025 UpdateKpiUser('ASSET' ,'`update`' , '1' , True, 'Merubah Asset Non Pembelian '+edNoAsset.Text);
   end
   else
  if FInputAssetNonPembelian.stat='baru' then
   begin
    // off 23-05-2025 UpdateKpiUser('ASSET' ,'`insert`' , '1' , True, 'Membuat Asset Non Pembelian '+edNoAsset.Text);
   end;
  showmessage('Berhasil Tersimpan !');
  btBaruClick(Sender);
  clear;
  end;
end;

procedure TFInputAssetNonPembelian.edHargaSatuanChange(Sender: TObject);
begin
  edTotalHarga.Value:=edHargaSatuan.Value*edJumlah.Value;
end;

procedure TFInputAssetNonPembelian.edJumlahChange(Sender: TObject);
begin
  edHargaSatuanChange(Sender);
end;

procedure TFInputAssetNonPembelian.btBatalClick(Sender: TObject);
begin
 CLose;
end;

end.
