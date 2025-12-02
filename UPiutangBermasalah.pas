unit UPiutangBermasalah;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  RzLabel, RzEdit, Vcl.Mask, RzBtnEdt;

type
  TFPiutangBermasalah = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    edNamaPelanggan: TRzButtonEdit;
    edJumlahPiutang: TRzEdit;
    MemKeterangan: TRzMemo;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    Label6: TRzLabel;
    RzLabel5: TRzLabel;
    edTanggalFaktur: TRzEdit;
    edNoFakturNota: TRzButtonEdit;
    RzLabel1: TRzLabel;
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
  private
    { Private declarations }
    strKodePelanggan:String;
    procedure Clear;
    procedure Save;
    procedure Update;
  public
    { Public declarations }
    Status: Integer;
  end;

var
  FPiutangBermasalah: TFPiutangBermasalah;

implementation

{$R *.dfm}

uses UDataModule;

procedure TFPiutangBermasalah.BSaveClick(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
     if edNamaPelanggan.Text='' then
  begin
    MessageDlg('Nama pelanggan wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else if edNoFakturNota.Text='' then
  begin
    MessageDlg('No Faktur/No Nota wajib diisi ..!!',mtInformation,[mbRetry],0);
  end
  else if Status = 0 then
  begin
    if MessageDlg ('Anda Yakin Disimpan No Faktur/No Nota '+edNoFakturNota.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
    begin
      Save;
      Dm.Koneksi.Commit;
    end;
  end
  else if Status = 1 then
  begin
    if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
    begin
      Update;
      Dm.Koneksi.Commit;
    end;
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

procedure TFPiutangBermasalah.Clear;
begin
  strKodePelanggan:='';
  edNamaPelanggan.Text:='';
  edNoFakturNota.Text:='';
  edJumlahPiutang.Text:='0';
  edTanggalFaktur.Text:='';
  MemKeterangan.Text:='';
end;

procedure TFPiutangBermasalah.Save;
begin

end;


procedure TFPiutangBermasalah.Update;
begin

end;


procedure TFPiutangBermasalah.BBatalClick(Sender: TObject);
begin
  Close;
end;

end.
