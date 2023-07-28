unit UNew_Posting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFNewPosting = class(TForm)
    Label17: TLabel;
    Label16: TLabel;
    ednama_posting: TEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNewPosting: TFNewPosting;

implementation

{$R *.dfm}

uses UNewDaftar_perkiraan, UDataModule;

procedure TFNewPosting.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNewPosting.BSaveClick(Sender: TObject);
begin
  if ednama_posting.Text='' then
  begin
    MessageDlg('Nama Posting Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Insert Into t_posting(nama_posting) '+
                'Values (:parnama_modul)';
      parambyname('parnama_modul').Value:=ednama_posting.Text;
      execsql;
    end;
    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
    FNewdaftar_perkiraan_bank.CBposting.Clear;
    with dm.Qtemp do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select nama_posting from t_posting';
      Open;
    end;
    while not DM.Qtemp.Eof do
    begin
      FNewdaftar_perkiraan_bank.CBposting.Items.Add(DM.Qtemp.FieldByName('nama_posting').AsString);
      DM.Qtemp.Next;
    end;
    Close;
  end
end;

end.
