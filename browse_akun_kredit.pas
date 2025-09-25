unit browse_akun_kredit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni;

type
  TFbrowse_akun_kredit = class(TForm)
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    UniQuery1: TUniQuery;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function Fbrowse_akun_kredit: TFbrowse_akun_kredit;
var Status_browse_akun_kredit :integer;

implementation

{$R *.dfm}

uses UDatamodule, UNewJurnal_memorial;//, UNewPelunasan_piutang, UNewPenerimaanKas,UNew_penerimaan_kas_non_dagang;

var RealFbrowse_akun_kredit: TFbrowse_akun_kredit;
function Fbrowse_akun_kredit: TFbrowse_akun_kredit;
begin
  if RealFbrowse_akun_kredit <> nil then Fbrowse_akun_kredit:= RealFbrowse_akun_kredit
  else  Application.CreateForm(TFbrowse_akun_kredit, Result);
end;

procedure TFbrowse_akun_kredit.DBGridEh1DblClick(Sender: TObject);
begin
  if Status_browse_akun_kredit= 1 then
  begin
    with UniQuery1 do
    begin
    //  FNew_pelunasan_piutang.edkode_akun.Text:=FieldByName('kode_perkiraan').AsString;
    //  FNew_pelunasan_piutang.edakun_kredit.Text:=FieldByName('nama_perkiraan').AsString;
    end;
  end;
  if Status_browse_akun_kredit= 2 then
  begin
    with UniQuery1 do
    begin
    //  Fnewpenerimaan_kas_non_dagang.edkode_akun.Text:=FieldByName('kode_perkiraan').AsString;
    //  Fnewpenerimaan_kas_non_dagang.ednama_akun.Text:=FieldByName('nama_perkiraan').AsString;
    end;
  end;
  if Status_browse_akun_kredit= 3 then
  begin
    with UniQuery1 do
    begin
    //  FNewpenerimaan_kas.edkode_akun_kredit.Text:=FieldByName('kode_perkiraan').AsString;
    //  FNewpenerimaan_kas.ednama_akun_kredit.Text:=FieldByName('nama_perkiraan').AsString;
    end;
  end;
  if Status_browse_akun_kredit= 4 then
  begin
     with UniQuery1 do
    begin
      FNewJurnal_memo.MemTableEh1.insert;
      FNewJurnal_memo.MemTableEh1['kode_akun']:=FieldByName('account_code').AsString;;
      FNewJurnal_memo.MemTableEh1['nama_akun']:=FieldByName('Account_name').AsString;
      FNewJurnal_memo.MemTableEh1['debit']:=0;
      FNewJurnal_memo.MemTableEh1['kredit']:=0;
      FNewJurnal_memo.MemTableEh1.Post;
    end;
  end;
  if Status_browse_akun_kredit= 5 then
  begin
    with UniQuery1 do
    begin
  {    with Fnewpenerimaan_kas_non_dagang do
      begin
        memdetail.insert;
        memdetail['kode_akun']:=FieldByName('kode_perkiraan').AsString;
        memdetail['nama_akun']:=FieldByName('nama_perkiraan').AsString;
        Memdetail.Post;
      end;          off  19-03-2025 }
    end;
  end;
  Close;
end;

procedure TFbrowse_akun_kredit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  UniQuery1.Close;
  Action:=caFree;
end;

procedure TFbrowse_akun_kredit.FormCreate(Sender: TObject);
begin
  RealFbrowse_akun_kredit:=self;
end;

procedure TFbrowse_akun_kredit.FormDestroy(Sender: TObject);
begin
  RealFbrowse_akun_kredit:=nil;
end;

procedure TFbrowse_akun_kredit.FormShow(Sender: TObject);
begin
  UniQuery1.Close;
  UniQuery1.Open;
end;

end.
