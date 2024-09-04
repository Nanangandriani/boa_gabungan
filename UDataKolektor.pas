unit UDataKolektor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  Vcl.Mask, RzEdit, RzBtnEdt, Vcl.Buttons;

type
  TFDataKolektor = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Panel1: TPanel;
    Label6: TLabel;
    Label3: TLabel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edkode: TEdit;
    Ednama: TEdit;
    edNikKaryawan: TEdit;
    EdNoTelp: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    MemAlamat: TMemo;
    GroupBox1: TGroupBox;
    edKodeKares: TEdit;
    edKodeKab: TEdit;
    edNameKab: TEdit;
    edNamaKares: TRzButtonEdit;
    Label24: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label23: TLabel;
    procedure edNamaKaresButtonClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    Status :integer;
    { Public declarations }
    procedure Clear;
    procedure Autocode;
  end;

var
  FDataKolektor: TFDataKolektor;

implementation

{$R *.dfm}

uses UDataModule, UMasterWilayah, UHomeLogin, UListKolektor;
procedure TFDataKolektor.Autocode;
var
  kode : String;
  Urut : Integer;
begin
  With Dm.Qtemp do
  begin
    Close;
    SQL.Clear;
    Sql.Text :=' select * from t_collector ';
    open;
  end;

  if  Dm.Qtemp.RecordCount = 0 then urut := 1 else
  if  Dm.Qtemp.RecordCount > 0 then
  begin
      With  Dm.Qtemp do
      begin
        Close;
        Sql.Clear;
        Sql.Text :=' select count(code) as hasil '+
                   ' from t_collector ';
        Open;
      end;
      Urut :=  Dm.Qtemp.FieldByName('hasil').AsInteger + 1;
  end;
  Edkode.Clear;
  kode := inttostr(urut);
  if Length(kode)=1 then
  begin
    kode := '000'+kode;
  end
  else
  if Length(kode)=2 then
  begin
    kode := '00'+kode;
  end
  else
  if Length(kode)=3 then
  begin
    kode := '0'+kode;
  end
  else
  if Length(kode)=4 then
  begin
    kode := kode;
  end;
  Edkode.Text := 'COL.'+Kode;
end;

procedure TFDataKolektor.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataKolektor.BSaveClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if Ednama.Text='' then
      begin
        MessageDlg('Nama Wajib Diisi..!!',mtInformation,[mbRetry],0);
        Ednama.SetFocus;
      end
      else if edKodeKares.Text='' then
      begin
        MessageDlg('Karesidenan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        Ednama.SetFocus;
      end
      else if Status = 0 then
      begin
      Autocode;
      //if application.MessageBox('Apa Anda Yakin Menyimpan Data '+Edkode.Text+' - '+Ednama.Text+'ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Apa Anda Yakin Menyimpan Data '+Edkode.Text+' - '+Ednama.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "public"."t_collector" ("created_at", "code", '+
                    ' "name", "nik_employee", "phone_number", "address", "code_kares", '+
                    ' "name_kares", "code_regency", "name_regency", "created_by" ) '+
                    ' Values( '+
                    ' NOW(), '+
                    ' '+QuotedStr(Edkode.Text)+', '+
                    ' '+QuotedStr(Ednama.Text)+', '+
                    ' '+QuotedStr(edNikKaryawan.Text)+', '+
                    ' '+QuotedStr(EdNoTelp.Text)+', '+
                    ' '+QuotedStr(MemAlamat.Text)+', '+
                    ' '+QuotedStr(edKodeKares.Text)+', '+
                    ' '+QuotedStr(edNamaKares.Text)+', '+
                    ' '+QuotedStr(edKodeKab.Text)+', '+
                    ' '+QuotedStr(edNameKab.Text)+', '+
                    ' '+QuotedStr(FHomeLogin.Eduser.Text)+' );';
          ExecSQL;
        end;
        MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
      end;
      end
      else if Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "public"."t_collector" SET '+
                    ' "name"='+QuotedStr(Ednama.Text)+', '+
                    ' "nik_employee"='+QuotedStr(edNikKaryawan.Text)+', '+
                    ' "phone_number"='+QuotedStr(EdNoTelp.Text)+', '+
                    ' "address"='+QuotedStr(MemAlamat.Text)+', '+
                    ' "code_kares"='+QuotedStr(edKodeKares.Text)+', '+
                    ' "name_kares"='+QuotedStr(edNamaKares.Text)+', '+
                    ' "code_regency"='+QuotedStr(edKodeKab.Text)+', '+
                    ' "name_regency"='+QuotedStr(edNameKab.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(Edkode.Text)+';';
          ExecSQL;
        end;
        MessageDlg('Update Berhasil..!!',mtInformation,[MBOK],0);
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
      FListKolektor.ActROExecute(Sender);
      FDataKolektor.Close;
end;

procedure TFDataKolektor.Clear;
begin
  Edkode.Clear;
  Ednama.Clear;
  edNikKaryawan.Clear;
  EdNoTelp.Clear;
  MemAlamat.Clear;
  edKodeKares.Clear;
  edKodeKab.Clear;
  edNamaKares.Clear;
  edNameKab.Clear;
end;

procedure TFDataKolektor.edNamaKaresButtonClick(Sender: TObject);
begin
  FMasterWilayah.vcall:='m_kolektor';
  FMasterWilayah.Showmodal;
end;

end.
