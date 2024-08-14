unit UHak_Akses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  Data.DB, MemDS, DBAccess, Uni, dxRibbon, dxBar, cxClasses, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, MemTableDataEh, MemTableEh,
  DataDriverEh;

type
  TFHak_Akses = class(TForm)
    DBGridAkses: TDBGridEh;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarUpdate: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    QAkses: TUniQuery;
    MemAkses: TMemTableEh;
    DsAkses: TDataSource;
    DsdAkses: TDataSetDriverEh;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHak_Akses: TFHak_Akses;

implementation

{$R *.dfm}

uses UNew_HakAkses, UDataModule;

procedure TFHak_Akses.ActBaruExecute(Sender: TObject);
begin
  with FNew_Hak_Akses do
  begin
    Ednm.Clear;
    Edkd.text:='0';
    Autonumber;
    Show;
    Load;
  //  RefreshMenu;
    status:=0;
    Caption:='New Hak Akses';
  end;
end;

procedure TFHak_Akses.ActDelExecute(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridAkses.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
    then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Delete From t_akses where no_akses='+QuotedStr(DBGridAkses.Fields[0].AsString);
      Execute;
    end;
    ActROExecute(sender);
    ShowMessage('Data Berhasil di Hapus');
    end;
end;

procedure TFHak_Akses.ActROExecute(Sender: TObject);
begin
    DBGridAkses.StartLoadingStatus();
    DBGridAkses.FinishLoadingStatus();
    QAkses.Close;
    MemAkses.close;
    QAkses.Open;
    MemAkses.Open;
end;

procedure TFHak_Akses.ActUpdateExecute(Sender: TObject);
begin
    with FNew_Hak_Akses do
    begin
      Show;
      Load;
      Status:=1;
      Caption:='Update Hak Akses';
      with FNew_Hak_Akses.QDetail do
      begin
        close;
        sql.Clear;
        sql.Text:=' select A.*,b.submenu2,c.Dept from t_akses  a inner join t_submenu2 b on '+
                  ' a.menu_code=b.kd_submenu inner join t_dept c on a.iddept=c.iddept '+
                  ' where a.akses_no='+QuotedStr(DBGridAkses.Fields[0].AsString)+''+
                  ' order by a.no_akses Asc ';
      end;
      EdNo.Text:=MemAkses['no_akses'];
      Edkd.Text:=MemAkses['iddept'];
      EdNm.Text:=MemAkses['dept'];
      EdNmSelect(sender);
    end;
end;

Initialization
  RegisterClasses([TFHak_Akses]);

end.
