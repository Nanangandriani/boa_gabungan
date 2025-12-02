unit ULokasiMuat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzLabel, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Data.DB,
  MemDS, DBAccess, Uni;

type
  TFLokasiMuat = class(TForm)
    RzPanel1: TRzPanel;
    BSave: TRzBitBtn;
    DBGridEh1: TDBGridEh;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    edLokasiMuat: TRzEdit;
    edBaru: TRzBitBtn;
    btRefreshData: TRzBitBtn;
    btBatal: TRzBitBtn;
    DsLokasiMuat: TDataSource;
    QLokasiMuat: TUniQuery;
    procedure edBaruClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure btBatalClick(Sender: TObject);
    procedure btRefreshDataClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    kodetrans: String;
  end;

var
  FLokasiMuat: TFLokasiMuat;
  Status: Integer;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UMainMenu;

procedure TFLokasiMuat.BSaveClick(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
  if edLokasiMuat.Text='' then
  begin
    MessageDlg('Lokasi Muat Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if Status = 0 then
  begin
    if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:='SELECT * FROM t_location_loading WHERE name='+QuotedStr(edLokasiMuat.Text)+' AND deleted_at IS NULL;';
        ExecSQL;
      end;

      if dm.Qtemp.RecordCount=0 then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_location_loading" ("name","created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edLokasiMuat.Text)+', '+
                    ' '+QuotedStr(Nm)+' );';
          ExecSQL;
        end;
        MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
        edLokasiMuat.Enabled:=False;
        BSave.Enabled:=False;
        Dm.Koneksi.Commit;
      end else begin
        MessageDlg('Lokasi Muat Sudah Ada..!!',mtInformation,[mbRetry],0);
      end;

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
        sql.Text:='SELECT * FROM t_location_loading WHERE name='+QuotedStr(edLokasiMuat.Text)+' AND deleted_at IS NULL;';
        ExecSQL;
      end;

      if dm.Qtemp.RecordCount=0 then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_location_loading" SET '+
                    ' "name"='+QuotedStr(edLokasiMuat.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "id"='+QuotedStr(kodetrans)+';';
          ExecSQL;
        end;
        MessageDlg('Update Berhasil..!!',mtInformation,[MBOK],0);
        edLokasiMuat.Enabled:=False;
        BSave.Enabled:=False;
        Dm.Koneksi.Commit;
      end else begin
        MessageDlg('Lokasi Muat Sudah Ada..!!',mtInformation,[mbRetry],0);
      end;
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
  Status:=0;
  edLokasiMuat.Text:='';
  btRefreshDataClick(Sender);
end;

procedure TFLokasiMuat.btBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFLokasiMuat.btRefreshDataClick(Sender: TObject);
begin
  QLokasiMuat.Close;
  QLokasiMuat.Open;
end;

procedure TFLokasiMuat.DBGridEh1DblClick(Sender: TObject);
begin
  Status:=1;
  edLokasiMuat.Enabled:=True;
  kodetrans:=QLokasiMuat.FieldValues['id'];
  edLokasiMuat.Text:=QLokasiMuat.FieldValues['name'];
  BSave.Enabled:=True;
end;

procedure TFLokasiMuat.edBaruClick(Sender: TObject);
begin
  Status:=0;
  edLokasiMuat.Enabled:=True;
  edLokasiMuat.Text:='';
  BSave.Enabled:=True;
end;

procedure TFLokasiMuat.FormShow(Sender: TObject);
begin
  QLokasiMuat.Close;
  QLokasiMuat.Open;
  BSave.Enabled:=False;
  edLokasiMuat.Enabled:=False;
end;

end.
