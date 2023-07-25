unit UInput_Pelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  RzEdit;

type
  TFInput_Pelanggan = class(TForm)
    MemAlamat: TRzMemo;
    Edemail: TEdit;
    Edtempo: TEdit;
    Edkode: TEdit;
    Ednama: TEdit;
    Edtelp: TEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure EdkodeKeyPress(Sender: TObject; var Key: Char);
    procedure EdnamaKeyPress(Sender: TObject; var Key: Char);
    procedure MemAlamatKeyPress(Sender: TObject; var Key: Char);
    procedure EdtelpKeyPress(Sender: TObject; var Key: Char);
    procedure EdemailKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure Autocode;
  end;

var
  FInput_Pelanggan: TFInput_Pelanggan;
  status: integer;

implementation

{$R *.dfm}

uses UDataModule, UListPelanggan;


procedure TFInput_Pelanggan.Autocode;
var
  kode : String;
  Urut : Integer;
begin
  With DM.Qtemp2 do
  begin
    Close;
    SQL.Clear;
    Sql.Text := 'select * from t_pelanggan';
    open;
  end;

  if Dm.Qtemp2.RecordCount = 0 then urut := 1 else
  if Dm.Qtemp2.RecordCount > 0 then
  begin
      With Dm.Qtemp do
      begin
        Close;
        Sql.Clear;
        Sql.Text := 'select max(right(kode_pelanggan, 5)) as kode from t_pelanggan';
        Open;
      end;
      Urut := dm.Qtemp.FieldByName('kode').AsInteger + 1;
  end;
  Edkode.Clear;
  kode := inttostr(urut);
  kode := Copy('00000'+kode, length('00000'+kode)-4, 5);
  Edkode.Text := 'PL'+Kode;

end;

procedure TFInput_Pelanggan.Clear;
begin
  Edkode.Text:='';
  Ednama.Text:='';
  Edtelp.Text:='';
  Edemail.Text:='';
  MemAlamat.Text:='';
  Edtempo.Text:='';
end;

procedure TFInput_Pelanggan.EdemailKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Edtempo.SetFocus;
  end;
end;

procedure TFInput_Pelanggan.EdkodeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Ednama.SetFocus;
  end;
end;

procedure TFInput_Pelanggan.EdnamaKeyPress(Sender: TObject; var Key: Char);
begin
    if key = chr(13) then
    begin
      MemAlamat.SetFocus;
    end;
end;

procedure TFInput_Pelanggan.EdtelpKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Edemail.SetFocus;
  end;
end;

procedure TFInput_Pelanggan.MemAlamatKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Edtelp.SetFocus;
  end;
end;

procedure TFInput_Pelanggan.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      Sql.Text := 'Update t_pelanggan set nama_pelanggan=:parnama_pelanggan,'+
                  'alamat=:paralamat,telpon=:partelpon,email=:paremail,tempo_pembayaran=:partempo_pembayaran '+
                  'Where kode_pelanggan=:parkode_pelanggan';
      parambyname('parkode_pelanggan').Value:=Edkode.Text;
      parambyname('parnama_pelanggan').Value:=Ednama.Text;
      parambyname('paralamat').Value:=MemAlamat.Text;
      parambyname('partelpon').Value:=Edtelp.Text;
      parambyname('paremail').Value:=edemail.Text;
      parambyname('partempo_pembayaran').Value:=Edtempo.Text;

      ExecSQL;
    end;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
    Flistpelanggan.Refresh;
end;

procedure TFInput_Pelanggan.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:='Insert into t_pelanggan(kode_pelanggan,nama_pelanggan,'+
              'alamat,telpon,email,tempo_pembayaran) '+
              'Values(:parkode_pelanggan,:parnama_pelanggan,'+
              ':paralamat,:partelpon,:paremail,:partempo_pembayaran)';
    parambyname('parkode_pelanggan').Value:=Edkode.Text;
    parambyname('parnama_pelanggan').Value:=Ednama.Text;
    parambyname('paralamat').Value:=MemAlamat.Text;
    parambyname('partelpon').Value:=Edtelp.Text;
    parambyname('paremail').Value:=edemail.Text;
    parambyname('partempo_pembayaran').Value:=Edtempo.Text;
    ExecSQL;
  end;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  Flistpelanggan.Refresh;
end;

procedure TFInput_Pelanggan.BBatalClick(Sender: TObject);
begin
   Close;
end;

procedure TFInput_Pelanggan.BSaveClick(Sender: TObject);
begin
    if not dm.Koneksi.InTransaction then
      dm.Koneksi.StartTransaction;
    try
    if Edkode.Text='' then
    begin
      MessageDlg('Kode Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
      Edkode.SetFocus;
    end
    else if Ednama.Text='' then
    begin
      MessageDlg('Nama Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
      Ednama.SetFocus;
    end
    else if Edtempo.Text='' then
    begin
      MessageDlg('Tempo Pembayaran Wajib Diisi..!!',mtInformation,[mbRetry],0);
      Ednama.SetFocus;
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

end.
