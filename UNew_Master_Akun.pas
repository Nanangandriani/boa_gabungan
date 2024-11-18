unit UNew_Master_Akun;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.StdCtrls,
  RzButton, Vcl.ExtCtrls;

type
  TFNew_Master_Akun = class(TForm)
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EdDesk: TEdit;
    Edkd_akun: TEdit;
    Ednm_akun: TRzButtonEdit;
    Edkd: TEdit;
    procedure BBatalClick(Sender: TObject);
    procedure Ednm_akunButtonClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure clear;
  end;

function FNew_Master_Akun: TFNew_Master_Akun;

implementation

{$R *.dfm}

uses UCari_DaftarPerk, UMainMenu, UDataModule, UMaster_Akun, UMy_Function;

var RealFNew_Master_Akun : TFNew_Master_Akun;

function FNew_Master_Akun: TFNew_Master_Akun;
begin
  if RealFNew_Master_Akun <> nil then FNew_Master_Akun:= RealFNew_Master_Akun
  else  Application.CreateForm(TFNew_Master_Akun, Result);
end;

procedure TFNew_Master_Akun.clear;
begin
   EdDesk.Clear;
   Edkd_akun.Clear;
   Ednm_akun.Clear;
end;

procedure TFNew_Master_Akun.BBatalClick(Sender: TObject);
begin
  clear;
  close;
  FMaster_Akun.ActRoExecute(SENDER);
end;

procedure TFNew_Master_Akun.BSimpanClick(Sender: TObject);
begin
  if messageDlg ('Yakin Simpan ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
    if Edkd_akun.Text='' then
    begin
      MessageDlg('Akun Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNm_akun.SetFocus;
      Exit;
    end;
    if EdDesk.Text='' then
    begin
      MessageDlg('Deskripsi Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Eddesk.SetFocus;
      Exit;
    end;
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
      begin
        if statustr='0' then
        begin
          with dm.qtemp do
          begin
            close;
            sql.clear;
            sql.text:='insert into t_ak_account_master(description,account_code,created_by)values('+QuotedStr(EdDesk.Text)+','+QuotedStr(Edkd_akun.Text)+','+QuotedStr(nm)+')';
            execute;
          end;
        end;
        if statustr='1' then
        begin
          with dm.qtemp do
          begin
            close;
            sql.clear;
            sql.text:='Update t_ak_account_master set description='+QuotedStr(EdDesk.Text)+',account_code='+QuotedStr(Edkd_akun.Text)+',updated_by='+QuotedStr(nm)+' where master_id='+QuotedStr(Edkd.Text);
            execute;
          end;
        end;
        dm.koneksi.Commit;
        Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
        BBatalClick(sender);
      end;
      except on E :Exception do
      begin
        MessageDlg(E.Message,mtError,[MBok],0);
        dm.koneksi.Rollback;
      end;
    end;
  end;
end;

procedure TFNew_Master_Akun.Ednm_akunButtonClick(Sender: TObject);
begin
  with FCari_DaftarPerk do
  begin
    show;
    vpanggil:='master_akun';
    with QDaftar_Perk do
    begin
      close;
      sql.clear;
      sql.text:='SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a left join t_ak_account b on a.account_code=b.code left join t_ak_header c on b.header_code=c.header_code group by b.code,b.account_name,c.header_name order by b.code';
      execute;
    end;
  end;
end;

procedure TFNew_Master_Akun.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFNew_Master_Akun.FormCreate(Sender: TObject);
begin
  RealFNew_Master_Akun:=self;
end;

procedure TFNew_Master_Akun.FormDestroy(Sender: TObject);
begin
  RealFNew_Master_Akun:=nil;
end;

procedure TFNew_Master_Akun.FormShow(Sender: TObject);
begin
    clear;
end;

end.
