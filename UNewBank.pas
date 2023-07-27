unit UNewBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  RzCmboBx;

type
  TFNewBank = class(TForm)
    edkode_bank: TEdit;
    CBmata_uang: TRzComboBox;
    edid: TEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    edno_rek: TEdit;
    edbank: TEdit;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure CBmata_uangKeyPress(Sender: TObject; var Key: Char);
    procedure edbankKeyPress(Sender: TObject; var Key: Char);
    procedure edkode_bankKeyPress(Sender: TObject; var Key: Char);
    procedure edno_rekKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure Save;
    procedure Update;
  end;

var
  FNewBank: TFNewBank;
  status:integer;

implementation

{$R *.dfm}

uses UDataModule, UListBank_perusahaan, UMainMenu;


procedure TFNewBank.BSaveClick(Sender: TObject);
begin
    if not dm.Koneksi.InTransaction then
    dm.Koneksi.StartTransaction;
    try
    if edbank.Text='' then
    begin
      MessageDlg('Nama Bank Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end
    else if edno_rek.Text='' then
    begin
      MessageDlg('No Rekening Wajib Diisi..!!',mtInformation,[mbRetry],0);
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
    FMainMenu.TampilTabForm2;
end;

procedure TFNewBank.CBmata_uangKeyPress(Sender: TObject; var Key: Char);
begin
    if key = chr(13) then
    begin
      BSaveClick(sender);
    end;
end;

procedure TFNewBank.Clear;
begin
    edbank.Text:='';
    edno_rek.Text:='';
    edkode_bank.Text:='';
    CBmata_uang.ItemIndex:=0;
end;

procedure TFNewBank.edbankKeyPress(Sender: TObject; var Key: Char);
begin
    if key = chr(13) then
    begin
      edno_rek.SetFocus;
    end
end;

procedure TFNewBank.edkode_bankKeyPress(Sender: TObject; var Key: Char);
begin
    if key = chr(13) then
    begin
      edbank.SetFocus;
    end;
end;

procedure TFNewBank.edno_rekKeyPress(Sender: TObject; var Key: Char);
begin
    if key = chr(13) then
    begin
      CBmata_uang.SetFocus;
    end;
end;

procedure TFNewBank.Save;
begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Insert Into t_bank(bank_name,rekening_no,bank_code,currency,created_at,created_by) '+
                'Values (:parnama_bank,:parno_rekening,:parkode_bank,:parmatauang,:created_at,:created_by)';
      parambyname('parnama_bank').Value:=edbank.Text;
      parambyname('parno_rekening').Value:=edno_rek.Text;
      parambyname('parkode_bank').Value:=edkode_bank.Text;
      parambyname('parmatauang').Value:=CBmata_uang.Text;
      parambyname('created_at').AsDateTime:=Now;
      parambyname('created_by').AsString:='Admin';
      execsql;
    end;
    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    FListBank.Refresh;
end;

procedure TFNewBank.Update;
begin
    with Dm.Qtemp do
    begin
      close;
      Sql.Clear;
      Sql.Text:='update t_bank set bank_name=:parnama_bank,rekening_no=:parno_rekening, '+
                'bank_code=:parkode_bank,currency=:parmatauang,updated_at=:updated_at,updated_by=:updated_by '+
                'where id=:parid';
      parambyname('parnama_bank').Value:=edbank.Text;
      parambyname('parno_rekening').Value:=edno_rek.Text;
      parambyname('parkode_bank').Value:=edkode_bank.Text;
      parambyname('parmatauang').Value:=CBmata_uang.Text;
      parambyname('updated_at').AsDateTime:=Now;
      parambyname('updated_by').Value:='Admin';
      parambyname('parid').Value:=edid.Text;

      ExecSql;
    end;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    FListBank.Refresh;
end;

procedure TFNewBank.BBatalClick(Sender: TObject);
begin
 Close;
end;

end.
