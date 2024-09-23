unit UNew_JenisUsaha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  RzRadChk, Vcl.Mask, RzEdit, Data.DB, MemDS, DBAccess, Uni;

type
  TFNew_Jenis_Usaha = class(TForm)
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Ed_kode: TRzEdit;
    Ed_Jenis: TRzEdit;
    Label3: TLabel;
    Label4: TLabel;
    Cb_Aktif: TRzCheckBox;
    QJenis_Usaha: TUniQuery;
    DSJenis_Usaha: TDataSource;
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNew_Jenis_Usaha: TFNew_Jenis_Usaha;
  status:integer;
implementation

{$R *.dfm}

uses UDataModule, UMy_Function, UMainMenu, UNew_Perusahaan;

procedure TFNew_Jenis_Usaha.BBatalClick(Sender: TObject);
begin
    Close;
end;

procedure TFNew_Jenis_Usaha.BSimpanClick(Sender: TObject);
begin
   status:=0;
   if not dm.koneksi.InTransaction then
      dm.koneksi.StartTransaction;
   try
   begin
       with dm.Qtemp do
       begin
          close;
          sql.clear;
          sql.Text:='SELECT * FROM t_business_type WHERE status_active=''true'' ';
          Open;
       end;
       with dm.Qtemp do
       begin
         close;
         sql.Clear;
         sql.Text:='insert into t_business_type (business_code,business_name,status_active,created_at,created_by,'+
                   ' updated_at, updated_by,deleted_at,deleted_by)values(:parbusiness_code,:parbusiness_name,:parstatus_active,:parcreated_at,:parcreated_by,'+
                   ' :parupdated_at,:parupdated_by,:pardeleted_at,:pardeleted_by)';

         parambyname('parbusiness_code').AsString:=Ed_kode.Text;
         parambyname('parbusiness_name').AsString:=Ed_Jenis.Text;
            if Cb_Aktif.Checked then
            begin
               parambyname('parstatus_active').AsString:='1';
            end
            else
            if Cb_Aktif.Checked=false then
            begin
               parambyname('parstatus_active').AsString:='0';
            end;
         parambyname('parcreated_at').AsDateTime:=Now;
         parambyname('parcreated_by').AsString:=Nm;
         parambyname('parupdated_at').AsDateTime:=Now;
         parambyname('parupdated_by').AsString:=Nm;
         parambyname('pardeleted_at').AsDateTime:=Now;
         parambyname('pardeleted_by').AsString:=Nm;
         ExecSQL;
       end;
       dm.koneksi.Commit;
       Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
   end;
   Except
      on E :Exception do
      begin
        MessageDlg(E.Message,mtError,[MBok],0);
        dm.koneksi.Rollback;
      end;
   end;
   QJenis_Usaha.Close;
   QJenis_Usaha.Open;
   BSimpan.Enabled:=false;
end;

procedure TFNew_Jenis_Usaha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    QJenis_Usaha.Close;
    QJenis_Usaha.Open;
end;

procedure TFNew_Jenis_Usaha.FormShow(Sender: TObject);
begin
   if QJenis_Usaha.Active=false then QJenis_Usaha.Active:=true;
   QJenis_Usaha.Close;
   QJenis_Usaha.Open;
   Ed_kode.Text:='';
   Ed_Jenis.Text:='';
   Cb_Aktif.Checked:=false;
end;

end.
