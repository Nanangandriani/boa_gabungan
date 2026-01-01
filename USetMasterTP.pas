unit USetMasterTP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Vcl.ExtCtrls, RzPanel, RzBtnEdt, RzButton;

type
  TFSetMasterTP = class(TForm)
    edArea: TRzEdit;
    Label1: TLabel;
    Label3: TLabel;
    RzPanel1: TRzPanel;
    btBatal_setkares: TRzBitBtn;
    edSimpan_setkares: TRzBitBtn;
    edTP: TRzEdit;
    Label4: TLabel;
    Label5: TLabel;
    edProvinsi: TRzButtonEdit;
    edKabupaten: TRzButtonEdit;
    procedure btBatal_setkaresClick(Sender: TObject);
    procedure edSimpan_setkaresClick(Sender: TObject);
    procedure edProvinsiButtonClick(Sender: TObject);
    procedure edKabupatenButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKodeTP,strKodeArea,strKodeProvinsi,strKodeKabupaten: String;
    procedure Clear;
  end;

var
  FSetMasterTP: TFSetMasterTP;

implementation

{$R *.dfm}

uses UDataModule, UMasterData;

procedure TFSetMasterTP.Clear;
begin
  strKodeTP:='';
  strKodeArea:='';
  strKodeProvinsi:='';
  strKodeKabupaten:='';
  edArea.Text:='';
  edTP.Text:='';
  edProvinsi.Text:='';
  edKabupaten.Text:='';
end;

procedure TFSetMasterTP.edKabupatenButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='m_kabupaten_master_tp';
  FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_province='+QuotedStr(strKodeProvinsi)+'');
  FMasterData.ShowModal;
end;

procedure TFSetMasterTP.edProvinsiButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Provinsi';
  FMasterData.vcall:='m_provinsi_master_tp';
  FMasterData.update_grid('code','name','description','t_region_province','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFSetMasterTP.edSimpan_setkaresClick(Sender: TObject);
begin
if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
  if edTP.Text='' then
  begin
    MessageDlg('TP Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if edKabupaten.Text='' then
  begin
    MessageDlg('Kabupaten Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else
  begin
    if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:=' UPDATE "t_region_regency" SET '+
                  ' "code_tp"='+QuotedStr(strKodeTP)+' '+
                  ' WHERE "code"='+QuotedStr(strKodeKabupaten)+';';
        ExecSQL;
      end;
      MessageDlg('Update Berhasil..!!',mtInformation,[MBOK],0);
      Dm.Koneksi.Commit;
      Close;
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

procedure TFSetMasterTP.btBatal_setkaresClick(Sender: TObject);
begin
  Close;
end;

end.
