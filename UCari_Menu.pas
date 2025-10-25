unit UCari_Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Vcl.ExtCtrls;

type
  TFCari_Menu = class(TForm)
    DBGridEh1: TDBGridEh;
    QMenu: TUniQuery;
    DsMenu: TDataSource;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function  FCari_Menu: TFCari_Menu;

implementation

{$R *.dfm}

uses UNew_HakAkses, UDataModule, UMainMenu;

var  RealFCari_menu : TFCari_Menu;
// implementasi function
function FCari_Menu: TFCari_Menu;
begin
  if RealFCari_Menu <> nil then FCari_Menu:= RealFCari_menu
  else
    Application.CreateForm(TFCari_Menu, Result);
end;


procedure TFCari_Menu.BSimpanClick(Sender: TObject);
  VAR I :integer;
begin
FNew_Hak_Akses.MemDetail.active:=false;
FNew_Hak_Akses.memdetail.active:=true;
  if DBGridEh1.SelectedRows.Count > 0 then
    begin
      with DBGridEh1.DataSource.DataSet do
      begin
      for i := 0 to DBGridEh1.SelectedRows.Count-1 do
        begin
          GotoBookmark(DBGridEh1.SelectedRows.Items[i]);
          with QMenu do
          begin
            with dm.qtemp do
            begin
              close;
              sql.Clear;
              sql.Text:=' insert into t_akses '+
                        ' (rolenama,submenu,submenu_code,created_by,position_code,akses_no,dept_code)'+
                        ' values('+
                        ' ''0'','+
                        ' '+QuotedStr(qmenu['submenu'])+','+
                        ' '+QuotedStr(qmenu['submenu_code'])+','+
                        ' '+QuotedStr(nm)+','+
                        ' '+QuotedStr(FNew_Hak_Akses.EdkdJabatan.Text)+','+
                        ' '+QuotedStr(FNew_Hak_Akses.Edkd.Text+''+FNew_Hak_Akses.EdkdJabatan.Text)+','+
                        ' '+QuotedStr(FNew_Hak_Akses.Edkd.Text)+')';
              Execute;                                                                                 {+QuotedStr(nm)+}
            end;
          end;
        end;
      end;
    end;
  Close;
  FNew_Hak_Akses.Refreshakses;
end;

procedure TFCari_Menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFCari_Menu.FormCreate(Sender: TObject);
begin
  RealFCari_menu:=self;
end;

procedure TFCari_Menu.FormDestroy(Sender: TObject);
begin
  RealFCari_menu:=nil;
end;

end.
