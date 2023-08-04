unit UNew_Jabatan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls;

type
  TFNew_Jabatan = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    EdJab: TEdit;
    Edkd: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure Autonumber;
  end;

var
  FNew_Jabatan: TFNew_Jabatan;
  Status:integer;

implementation

{$R *.dfm}

uses UDataModule, UJabatan, UMainMenu;

procedure TFNew_Jabatan.Autonumber;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:='select max(case when position_code=null then 0 else position_code end )as no from t_position ';
    ExecSQL;
  end;
  Edkd.Text:=Dm.Qtemp['no'] + 1;
end;

procedure TFNew_Jabatan.BBatalClick(Sender: TObject);
begin
  Close;
  FJabatan.ActROExecute(sender);
end;

procedure TFNew_Jabatan.BSimpanClick(Sender: TObject);
begin
    if Edkd.Text='' then
    begin
      MessageDlg('Kode Jabatan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edkd.SetFocus;
      Exit;
    end;
    if EdJab.Text='' then
    begin
      MessageDlg('Jabatan User Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdJab.SetFocus;
      Exit;
    end;
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
    begin
    if status=0 then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        //sql.Text:='insert into t_dept(no_dept,Dept)values('+QuotedStr(Edkd.Text)+','+
                  //''+QuotedStr(EdDept.Text)+')';
        sql.Text:='insert into t_position(position,created_at,created_by)values('+QuotedStr(EdJab.Text)+',:created_at,:created_by)';
        parambyname('created_at').AsDateTime:=Now;
        parambyname('created_by').AsString:='Admin';
        ExecSQL;
      end;
    end;
    if status=1 then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:=' Update t_position set position='+QuotedStr(EdJab.Text)+',updated_at=:updated_at,updated_by=:updated_by '+
                  ' where position_code='+QuotedStr(Edkd.Text);
        parambyname('updated_at').AsDateTime:=Now;
        parambyname('updated_by').AsString:='Admin';
        ExecSQL;
      end;
    end;
    dm.koneksi.Commit;
    Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
    BBatalClick(sender);
    end
    Except
    on E :Exception do
    begin
      MessageDlg(E.Message,mtError,[MBok],0);
      dm.koneksi.Rollback;
    end;
    end;
    refresh;
    FMainMenu.TampilTabForm2;
end;

end.
