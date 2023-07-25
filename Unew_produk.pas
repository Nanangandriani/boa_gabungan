unit Unew_produk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls;

type
  TFInput_Produk = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    PnInput: TPanel;
    Label1: TLabel;
    Harga: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edkd: TEdit;
    EdNm: TEdit;
    edharga_dalam_pulau: TEdit;
    Edsatuan: TEdit;
    Edno: TEdit;
    edharga_luar_pulau: TEdit;
    procedure BBatalClick(Sender: TObject);
    procedure edharga_dalam_pulauChange(Sender: TObject);
    procedure edharga_luar_pulauChange(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Save;
    procedure Update;
    procedure Clear;

  end;

var
  FInput_Produk: TFInput_Produk;
  Status: Integer;

implementation

{$R *.dfm}

uses UDataModule, UListProduk;


Function Ribuan(Edit : TEdit):String;
var
 NilaiRupiah: string;
 AngkaRupiah: Currency;
begin
if Edit.Text='' then Exit;
 NilaiRupiah := Edit.text;
 NilaiRupiah := StringReplace(NilaiRupiah,',','',[rfReplaceAll,rfIgnoreCase]);
 NilaiRupiah := StringReplace(NilaiRupiah,'.','',[rfReplaceAll,rfIgnoreCase]);
 AngkaRupiah := StrToCurrDef(NilaiRupiah,0);
 Edit.Text := FormatCurr('#,###',AngkaRupiah);
 Edit.SelStart := length(Edit.text);
end;

Function HapusFormat(Nilai:TEdit):Integer;
var
  Hasil:String;
begin
  Hasil:=Nilai.Text;
  Hasil:=StringReplace(Hasil,',','',[rfReplaceAll,rfIgnoreCase]);
  Hasil:=StringReplace(Hasil,'.','',[rfReplaceAll,rfIgnoreCase]);
  Result:=StrToInt(Hasil);
end;

procedure TFInput_Produk.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Insert Into t_produk(kd_produk,nm_produk,harga_satuan_dalam,harga_satuan_luar) '+
    'Values (:parkd_produk,:parnm_produk,:parharga_satuan_dalam,:parharga_satuan_luar)';
    parambyname('parkd_produk').Value:=Edkd.Text;
    parambyname('parnm_produk').Value:=EdNm.Text;
    parambyname('parharga_satuan_dalam').Value:=HapusFormat(edharga_dalam_pulau);
    parambyname('parharga_satuan_luar').Value:=HapusFormat(edharga_luar_pulau);
    execsql;
  end;
  Close;
  FListProduk.Refresh;
end;

procedure TFInput_Produk.Update;
begin
  with dm.Qtemp do
  begin
    close;
      Sql.Clear;
      Sql.Text:= 'update t_produk set nm_produk=:parnm_produk,harga_satuan_dalam=:parharga_satuan_dalam, '+
                 'harga_satuan_luar=:parharga_satuan_luar where kd_produk=:parkd_produk';
    parambyname('parkd_produk').Value:=Edkd.Text;
    parambyname('parnm_produk').Value:=EdNm.Text;
    parambyname('parharga_satuan_dalam').Value:=HapusFormat(edharga_dalam_pulau);
    parambyname('parharga_satuan_luar').Value:=HapusFormat(edharga_luar_pulau);
    execsql;
  end;
  Close;
  FListProduk.Refresh;
end;

procedure TFInput_Produk.BSimpanClick(Sender: TObject);
begin
    if not dm.Koneksi.InTransaction then
    dm.Koneksi.StartTransaction;
    try
    if Edkd.Text='' then
    begin
      MessageDlg('Kode Produk Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end
    else if EdNm.Text='' then
    begin
      MessageDlg('Nama Produk Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end
    else if edharga_dalam_pulau.Text='' then
    begin
      MessageDlg('Harga Dalam Pulau Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end
    else if edharga_luar_pulau.Text='' then
    begin
       MessageDlg('Harga Luar Pulau Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end
    else if Status = 0 then
    begin
      Save;
      Dm.Koneksi.Commit;
    end
    else if Status = 1 then
    begin
      Update;
      Dm.Koneksi.Commit;
    end;
    Except on E :Exception do
      begin
        begin
          MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
          Dm.koneksi.Rollback ;
        end;
      end;
    end;
end;

procedure TFInput_Produk.Clear;
begin
  Edkd.Text:='';
  EdNm.Text:='';
  edharga_dalam_pulau.Text:='';
  edharga_luar_pulau.Text:='';
  Edsatuan.Text:='';
  Edno.Text:='';
end;


procedure TFInput_Produk.edharga_dalam_pulauChange(Sender: TObject);
begin
  Ribuan(edharga_dalam_pulau);
end;

procedure TFInput_Produk.edharga_luar_pulauChange(Sender: TObject);
begin
  Ribuan(edharga_luar_pulau);
end;

procedure TFInput_Produk.BBatalClick(Sender: TObject);
begin
  Close;
end;

end.
