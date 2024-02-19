//cr ds 20-01-2021
unit UMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter,
  MemTableDataEh, Data.DB, DataDriverEh, MemTableEh, MemDS, DBAccess, Uni,
  dxBar, cxClasses, dxRibbon, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  dxSkinBasic, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxCore,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFMenu = class(TForm)
    DBGridMenu: TDBGridEh;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarUpdate: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    QMenu: TUniQuery;
    MemMenu: TMemTableEh;
    DsMenu: TDataSource;
    DsdMenu: TDataSetDriverEh;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fmenu:tfmenu;
//var
 // FMenu: TFMenu;

implementation

{$R *.dfm}

uses UNew_Menu, UDataModule;

var
  realfmenu : Tfmenu;

// implementasi function
function fmenu: Tfmenu;
begin
  if Realfmenu <> nil then
    fmenu:= Realfmenu
  else
    Application.CreateForm(Tfmenu, Result);
end;

procedure TFMenu.ActBaruExecute(Sender: TObject);
begin
  with Fnew_menu do
  begin
    EDkd.clear;
    Ednm.Clear;
    Show;
    status:=0;
    Caption:='New Menu';
  end;
end;

procedure TFMenu.ActDelExecute(Sender: TObject);
begin
  if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridMenu.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:='Delete From t_submenu2 where kd_submenu='+QuotedStr(DBGridMenu.Fields[1].AsString);
    Execute;
  end;
  ActRoExecute(sender);
  ShowMessage('Data Berhasil di Hapus');
  end;
end;

procedure TFMenu.ActRoExecute(Sender: TObject);
begin
  DBGridMenu.StartLoadingStatus();
  DBGridMenu.FinishLoadingStatus();
  QMenu.Close;
  MemMenu.Close;
  QMenu.Open;
  MemMenu.Open;
end;

procedure TFMenu.ActUpdateExecute(Sender: TObject);
begin
  with FNew_menu do
  begin
    Show;
    Status:=1;
    Caption:='Update Menu';
    Edkd.Text:=MemMenu['submenu_code'];
    EdNm.Text:=MemMenu['submenu'];
    EdGroup.Text:=MemMenu['menu'];
    no_group:=MemMenu['menu_code'];
  //  idmenu:=MemMenu['id'];
    edlink.text:=MemMenu['link'];
  end;
end;

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFMenu.FormCreate(Sender: TObject);
begin
  realfmenu:=self;
end;

procedure TFMenu.FormDestroy(Sender: TObject);
begin
  realfmenu:=nil;
end;

procedure TFMenu.FormShow(Sender: TObject);
begin
//  ActRoExecute(sender);
end;

end.
