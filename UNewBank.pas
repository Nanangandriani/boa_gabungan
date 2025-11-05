unit UNewBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  RzCmboBx, Vcl.Mask, RzEdit, RzBtnEdt;

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
    Label5: TLabel;
    Label6: TLabel;
    Ed_atas_nama: TEdit;
    Ednm_akun1: TRzButtonEdit;
    edkd_akun1: TRzEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EdSaldo: TRzNumericEdit;
    edKodePerkiraan: TRzEdit;
    Label11: TLabel;
    Label12: TLabel;
    EdKurs: TRzNumericEdit;
    label_sbu2: TLabel;
    Label_sbu: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Ed_VA_bank: TRzEdit;
    CB_SBU: TRzComboBox;
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure CBmata_uangKeyPress(Sender: TObject; var Key: Char);
    procedure edbankKeyPress(Sender: TObject; var Key: Char);
    procedure edkode_bankKeyPress(Sender: TObject; var Key: Char);
    procedure edno_rekKeyPress(Sender: TObject; var Key: Char);
    procedure Ednm_akun1ButtonClick(Sender: TObject);
    procedure EdSaldoKeyPress(Sender: TObject; var Key: Char);
    procedure edkd_akun1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    KodeHeaderPerkiraan:string;
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure Autocode_perkiraan;
  end;

var
  FNewBank: TFNewBank;
  status:integer;

implementation

{$R *.dfm}

uses UDataModule, UListBank_perusahaan, UMainMenu, UMasterData, UHomeLogin,
  UMy_Function;


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
      Autocode_perkiraan;
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
    Ed_atas_nama.Text:='';
    edKodePerkiraan.Text:='';
    edkd_akun1.Text:='';
    Ednm_akun1.Text:='';
    EdKurs.Text:='';
    EdSaldo.Value:=0;
end;

procedure TFNewBank.edbankKeyPress(Sender: TObject; var Key: Char);
begin
    if key = chr(13) then
    begin
      edno_rek.SetFocus;
    end
end;

procedure TFNewBank.edkd_akun1Change(Sender: TObject);
begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_ak_header where header_code='+Quotedstr(Edkd_akun1.Text)+' ';
      open;
      Ednm_akun1.Text:=fieldbyname('header_name').AsString;
    end;
end;

procedure TFNewBank.edkode_bankKeyPress(Sender: TObject; var Key: Char);
begin
    if key = chr(13) then
    begin
      edbank.SetFocus;
    end;
end;

procedure TFNewBank.Ednm_akun1ButtonClick(Sender: TObject);
begin
   FMasterData.DBGridCustomer.SearchPanel.SearchingText:='';
   FMasterData.Caption:='Master Data Perkiraan';
   FMasterData.vcall:='perkiraan_bank';
   FMasterData.update_grid('header_code','header_name','journal_name','t_ak_header','WHERE	deleted_at IS NULL');
   FMasterData.Showmodal;
   Autocode_perkiraan;
end;

procedure TFNewBank.edno_rekKeyPress(Sender: TObject; var Key: Char);
begin
    if key = chr(13) then
    begin
      CBmata_uang.SetFocus;
    end;
end;

procedure TFNewBank.EdSaldoKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  BSave.SetFocus;
end;

procedure TFNewBank.FormShow(Sender: TObject);
begin
   FillSBUBarCombo2(CB_SBU,label_sbu,label_sbu2);
end;

procedure TFNewBank.Save;
begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Insert Into t_bank(bank_name,rekening_no,bank_code,on_behalf_of,saldo,exchange_rate,account_no,header_account_no,currency,created_at,created_by,company_code,sbu_code) '+
                'Values (:parnama_bank,:parno_rekening,:parkode_bank,:paron_behalf_of,:parsaldo,:parexchange_rate,:paraccount_no,:parheader_account_no,:parmatauang,:created_at,:created_by,:company_code,:sbu_code)';
      parambyname('parnama_bank').Value:=edbank.Text;
      parambyname('parno_rekening').Value:=edno_rek.Text;
      parambyname('parkode_bank').Value:=edkode_bank.Text;
      parambyname('paron_behalf_of').Value:=Ed_atas_nama.Text;
      parambyname('parsaldo').Value:=edsaldo.Value;
      parambyname('parexchange_rate').Value:=edkurs.Value;
      parambyname('paraccount_no').Value:=edkodeperkiraan.Text;
      parambyname('parheader_account_no').Value:=edkd_akun1.Text;
      parambyname('parmatauang').Value:=CBmata_uang.Text;
      parambyname('created_at').AsDateTime:=Now;
      parambyname('created_by').AsString:=Nm;
      parambyname('company_code').AsString:=Ed_VA_bank.Text;
      parambyname('sbu_code').AsString:=CB_SBU.Text;
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
                'bank_code=:parkode_bank,currency=:parmatauang,updated_at=:updated_at,updated_by=:updated_by,company_code=:company_code,sbu_code=:sbu_code '+
                'where id=:parid';
      parambyname('parnama_bank').Value:=edbank.Text;
      parambyname('parno_rekening').Value:=edno_rek.Text;
      parambyname('parkode_bank').Value:=edkode_bank.Text;
      parambyname('parmatauang').Value:=CBmata_uang.Text;
      parambyname('updated_at').AsDateTime:=Now;
      parambyname('updated_by').Value:=Nm;
      parambyname('parid').Value:=edid.Text;
      parambyname('company_code').AsString:=Ed_VA_bank.Text;
      parambyname('sbu_code').AsString:=CB_SBU.Text;

      ExecSql;
    end;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    FListBank.Refresh;
end;

procedure TFNewBank.Autocode_perkiraan;
var
  kode : String;
  Urut : Integer;
begin
   with dm.Qtemp do
    begin
      Close;
      SQL.Clear;
      Sql.Text :=' SELECT * FROM t_ak_account '+
                 ' WHERE header_code='+Quotedstr(edkd_akun1.Text)+'  ';
      open;
    end;

    if Dm.Qtemp.RecordCount = 0 then urut := 1 else
    if Dm.Qtemp.RecordCount > 0 then
    begin
        With Dm.Qtemp do
        begin
          Close;
          Sql.Clear;
          Sql.Text :=' select count(header_code) as hasil '+
                     ' from  t_ak_account where header_code='+QuotedSTR(edkd_akun1.Text)+'  ';
          Open;
        end;
        Urut := dm.Qtemp.FieldByName('hasil').AsInteger + 1;
    end;
    edKodePerkiraan.Clear;
    kode := inttostr(urut);

    if Length(kode)=1 then
    begin
      kode := '0'+kode;
    end
    else
    if Length(kode)=2 then
    begin
      kode := kode;
    end;
    edKodePerkiraan.Text := edkd_akun1.Text+'.'+kode;
end;

procedure TFNewBank.BBatalClick(Sender: TObject);
begin
 Close;
end;

end.
