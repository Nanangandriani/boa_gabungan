unit UDataPeLakuBiaya;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzBtnEdt, Vcl.ExtCtrls, RzButton;

type
  TFDataPeLakuBiaya = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    edNama: TEdit;
    edNikKaryawan: TEdit;
    edKode: TEdit;
    Panel2: TPanel;
    btSimpan: TRzBitBtn;
    btBatal: TRzBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    edNoTelp: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    memAlamat: TMemo;
    procedure btBatalClick(Sender: TObject);
    procedure btSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    Status :integer;
    { Public declarations }
    procedure Clear;
    procedure Autocode;
  end;

var
  FDataPeLakuBiaya: TFDataPeLakuBiaya;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UDataListPelakuBiaya;
procedure TFDataPeLakuBiaya.Autocode;
var
  kode : String;
  Urut : Integer;
begin
  With Dm.Qtemp do
  begin
    Close;
    SQL.Clear;
    Sql.Text :=' select * from t_cost_actors ';
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
                   ' from t_cost_actors ';
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
  Edkode.Text := 'PB.'+Kode;
end;

procedure TFDataPeLakuBiaya.btBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataPeLakuBiaya.btSimpanClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if Ednama.Text='' then
      begin
        MessageDlg('Nama Wajib Diisi..!!',mtInformation,[mbRetry],0);
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
          sql.Text:=' INSERT INTO "public"."t_cost_actors" ("created_at", "code", '+
                    ' "name", "nik_employee", "phone_number", "address", "created_by" ) '+
                    ' Values( '+
                    ' NOW(), '+
                    ' '+QuotedStr(Edkode.Text)+', '+
                    ' '+QuotedStr(Ednama.Text)+', '+
                    ' '+QuotedStr(edNikKaryawan.Text)+', '+
                    ' '+QuotedStr(EdNoTelp.Text)+', '+
                    ' '+QuotedStr(MemAlamat.Text)+', '+
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
          sql.Text:=' UPDATE "public"."t_cost_actors" SET '+
                    ' "name"='+QuotedStr(Ednama.Text)+', '+
                    ' "nik_employee"='+QuotedStr(edNikKaryawan.Text)+', '+
                    ' "phone_number"='+QuotedStr(EdNoTelp.Text)+', '+
                    ' "address"='+QuotedStr(MemAlamat.Text)+', '+
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
      FDataListPelakuBiaya.ActROExecute(Sender);
      FDataPeLakuBiaya.Close;
end;

procedure TFDataPeLakuBiaya.Clear;
begin
  Edkode.Clear;
  Ednama.Clear;
  edNikKaryawan.Clear;
  EdNoTelp.Clear;
  MemAlamat.Clear;
end;


end.
