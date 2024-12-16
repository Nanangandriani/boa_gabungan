unit UDataKelompokBiaya;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFDataKelompokBiaya = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edNama: TEdit;
    edKodeInisial: TEdit;
    edKode: TEdit;
    memKeterangan: TMemo;
    Panel2: TPanel;
    btSimpan: TRzBitBtn;
    btBatal: TRzBitBtn;
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
  FDataKelompokBiaya: TFDataKelompokBiaya;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UDataListKelompokBiaya;
procedure TFDataKelompokBiaya.Clear;
begin
  Edkode.Clear;
  edKodeInisial.Clear;
  Ednama.Clear;
  memKeterangan.Clear;
end;

procedure TFDataKelompokBiaya.Autocode;
var
  kode : String;
  Urut : Integer;
begin
  With Dm.Qtemp do
  begin
    Close;
    SQL.Clear;
    Sql.Text :=' select * from t_cost_group ';
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
                   ' from t_cost_group ';
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
  Edkode.Text := 'KB.'+Kode;
end;


procedure TFDataKelompokBiaya.btBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataKelompokBiaya.btSimpanClick(Sender: TObject);
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
          sql.Text:=' INSERT INTO "public"."t_cost_group" ("created_at", "code", '+
                    ' "name", "initial_code", "description", "created_by" ) '+
                    ' Values( '+
                    ' NOW(), '+
                    ' '+QuotedStr(Edkode.Text)+', '+
                    ' '+QuotedStr(Ednama.Text)+', '+
                    ' '+QuotedStr(edKodeInisial.Text)+', '+
                    ' '+QuotedStr(memKeterangan.Text)+', '+
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
          sql.Text:=' UPDATE "public"."t_cost_group" SET '+
                    ' "name"='+QuotedStr(Ednama.Text)+', '+
                    ' "initial_code"='+QuotedStr(edKodeInisial.Text)+', '+
                    ' "description"='+QuotedStr(memKeterangan.Text)+', '+
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
      FDataListKelompokBiaya.ActROExecute(Sender);
      FDataKelompokBiaya.Close;
end;

end.
