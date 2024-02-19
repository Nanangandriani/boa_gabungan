unit UNew_Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  RzCmboBx, Vcl.Buttons;

type
  TFNew_menu = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edkd: TEdit;
    EdNm: TEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    EdGroup: TRzComboBox;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Edlink: TEdit;
    procedure BBatalClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure EdGroupSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Autonumber;
    Procedure Load;
  end;

Function  FNew_menu: TFNew_menu;
var
  Status:Integer;
  No_group,idmenu:String;

implementation

{$R *.dfm}

uses UDataModule, UMenu, UMaster_Menu, UMainMenu;
var
  realfnewmenu : TFNew_menu;
// implementasi function
function fnew_menu: TFNew_menu;
begin
  if realfnewmenu<> nil then
    FNew_menu:= realfnewmenu
  else
    Application.CreateForm(TFNew_menu, Result);
end;

Procedure TFNew_menu.Autonumber;
var urut:string;
    i:integer;
begin
  with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='select left(menu_code,3) kode,cast(cast(max(right(menu_code,3)) as INTEGER) as VARCHAR) as no from '+
    ' t_menu WHERE menu='+QuotedStr(EdGroup.Text)+' GROUP BY left(menu_code,3)';
    Execute;
  end;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select max(right(submenu_code,3))as no from t_menu_sub where menu_code='+QuotedStr(No_group);
    Execute;
  end;
 { if dm.qtemp['no'] = null then
  begin
    Edkd.Text:=Dm.Qtemp2['kode']+Dm.Qtemp2['no'];
  end else
    Edkd.Text:=Dm.Qtemp2['kode']+IntToStr(strtoint(Dm.Qtemp['no'])+1); }


  if dm.qtemp['no'] = null then
      urut := '1'
   else
      urut:= IntToStr(dm.Qtemp['no']+ 1);
   if length(urut) < 10 then
    begin
     for i := length(urut) to 2 do
      urut := '0' + urut;
    end;
    Edkd.Text:=Dm.Qtemp2['kode']+urut;
end;

Procedure TFNew_menu.Load;
begin
EdGroup.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Select * from t_menu';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    EdGroup.Items.Add(Dm.Qtemp['menu']);
    Dm.Qtemp.Next;
  end;
end;

procedure TFNew_menu.SpeedButton1Click(Sender: TObject);
begin
  with FMaster_Menu do
  begin
    Show;
    btambah.enabled:=false;
    Cbmaster.Text:='';
    Edkd.Clear;
    EdDesk.Clear;
    Qmenu.Close;
    qmenu.open;
  end;
end;

procedure TFNew_menu.BBatalClick(Sender: TObject);
begin
   Close;
   FMenu.ActRoExecute(sender);
end;

procedure TFNew_menu.BSimpanClick(Sender: TObject);
begin
if Edkd.Text='' then
begin
  MessageDlg('No Menu Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edkd.SetFocus;
  Exit;
end;
if EdNm.Text='' then
begin
  MessageDlg('Nama User Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNm.SetFocus;
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
    sql.Text:='insert into t_menu_sub(submenu_code,submenu,menu_code,link,created_by)values('+QuotedStr(Edkd.Text)+','+
              ''+QuotedStr(EdNm.Text)+', '+QuotedStr(No_group)+', '+QuotedStr(edlink.Text)+', '+QuotedStr(nm)+')';
    ExecSQL;
  end;
end;
if status=1 then
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' Update t_menu_sub set submenu='+QuotedStr(EdNm.Text)+',menu_code='+QuotedStr(No_group)+',submenu_code='+QuotedStr(Edkd.Text)+','+
              ' link='+QuotedStr(Edlink.Text)+',updated_by='+QuotedStr(nm)+',updated_at=now() where submenu_code='+QuotedStr(Edkd.Text);
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
end;

procedure TFNew_menu.EdGroupSelect(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:='select * from t_menu where menu='+QuotedStr(EdGroup.Text);
    ExecSQL;
  end;
  No_group:=Dm.Qtemp['menu_code'];
  Autonumber;
end;

procedure TFNew_menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFNew_menu.FormCreate(Sender: TObject);
begin
  realfnewmenu:=self;
end;

procedure TFNew_menu.FormDestroy(Sender: TObject);
begin
realfnewmenu:=nil;
end;

procedure TFNew_menu.FormShow(Sender: TObject);
begin
  Self.Load;
end;

end.
