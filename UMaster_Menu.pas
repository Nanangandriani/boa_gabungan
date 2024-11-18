unit UMaster_Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls;

type
  TFMaster_Menu = class(TForm)
    PnlAksi: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BCari: TRzBitBtn;
    Btambah: TRzBitBtn;
    BRefresh: TRzBitBtn;
    PnlNew: TPanel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    EdDesk: TEdit;
    Edkd: TEdit;
    Pnllist: TPanel;
    DBGridEh1: TDBGridEh;
    Qmenu: TUniQuery;
    Dsmenu: TDataSource;
    Label1: TLabel;
    Label3: TLabel;
    Cbmaster: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure CbmasterSelect(Sender: TObject);
    procedure BtambahClick(Sender: TObject);
    procedure BRefreshClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    kdmaster:string;
  end;

Function FMaster_Menu: TFMaster_Menu;

implementation

{$R *.dfm}

uses UDataModule, UMainMenu, UMy_Function;

var RealFMaster_Menu: TFMaster_Menu;

function FMaster_Menu: TFMaster_Menu;
begin
  if RealFMaster_menu<> nil then FMAster_menu:= RealFMaster_Menu
  else  Application.CreateForm(TFMaster_Menu, Result);
end;

procedure TFMaster_Menu.BBatalClick(Sender: TObject);
begin
  close;
  Cbmaster.Text:='';
  Edkd.Clear;
  EdDesk.Clear;
end;

procedure TFMaster_Menu.BRefreshClick(Sender: TObject);
begin
  DBGridEh1.StartLoadingStatus();
  Qmenu.Close;
  Qmenu.Open;
  DBGridEh1.FinishLoadingStatus();
end;

procedure TFMaster_Menu.BSimpanClick(Sender: TObject);
begin
  if statustr='0' then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='insert into t_menu(master_code,menu_code,menu)values('+QuotedStr(kdmaster)+','+QuotedStr(Edkd.Text)+','+QuotedStr(EdDesk.Text)+')';
      ExecSQL;
    end;
  end;
  if statustr='1' then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='update t_menu set master_code='+QuotedStr(kdmaster)+',menu='+QuotedStr(EdDesk.Text)+' where menu_code='+QuotedStr(Edkd.Text);
      ExecSQL;
    end;
  end;
  BRefreshClick(sender);
  Btambah.Enabled:=true;
  Cbmaster.Text:='';
  Edkd.Clear;
  EdDesk.Clear;
end;

procedure TFMaster_Menu.BtambahClick(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    SQL.Text:='select cast(cast(max(left(right(menu_code,5),2) )as integer)+1 as VARCHAR) urut from t_menu';
    Execute;
  end;
  Edkd.Text:='M'+dm.Qtemp['urut']+'000';
  Cbmaster.SetFocus;
  statustr:='0';
end;

procedure TFMaster_Menu.CbmasterSelect(Sender: TObject);
begin
  with dm.qtemp do
  begin
    close;
    sql.clear;
    sql.text:='select * from t_menu_master where master_name='+quotedstr(cbmaster.text);
    execute;
  end;
  kdmaster:=dm.qtemp['master_code'];
end;

procedure TFMaster_Menu.DBGridEh1DblClick(Sender: TObject);
begin
  kdmaster:=Qmenu['master_code'];
  Edkd.Text:=Qmenu['menu_code'];
  EdDesk.Text:=Qmenu['menu'];
  Cbmaster.Text:=Qmenu['master_name'];
  statustr:='1';
  Btambah.Enabled:=False;
end;

procedure TFMaster_Menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFMaster_Menu.FormCreate(Sender: TObject);
begin
  RealFMaster_Menu:=self;
end;

procedure TFMaster_Menu.FormDestroy(Sender: TObject);
begin
  RealFMaster_Menu:=nil;
end;

procedure TFMaster_Menu.FormShow(Sender: TObject);
begin
  with dm.qtemp do
  begin
    close;
    sql.clear;
    sql.text:='select * from t_menu_master order by master_code';
    execute;
  end;
    while not dm.qtemp.eof do
    begin
      cbmaster.items.add(dm.qtemp['master_name']);
      dm.qtemp.next;
    end;
end;

end.
