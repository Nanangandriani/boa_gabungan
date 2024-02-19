unit UJabatan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  MemDS, DBAccess, Uni, MemTableEh, dxRibbon, dxBar, cxClasses, DataDriverEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFJabatan = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DBGridJab: TDBGridEh;
    DsdJab: TDataSetDriverEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    MemJab: TMemTableEh;
    QJab: TUniQuery;
    DsJab: TDataSource;
    QJabid: TGuidField;
    QJabposition_code: TIntegerField;
    QJabposition: TStringField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure refresh;
  end;

var
  FJabatan: TFJabatan;

implementation

{$R *.dfm}

uses UNew_Jabatan, UDataModule;

procedure TFJabatan.refresh;
begin
   with QJab do
   begin
       close;
       sql.Clear;
       sql.Text:='select * from t_position where deleted_at is null order by created_at ASC ';
       open;
   end;
   QJab.Active:=False;
   QJab.Active:=True;
   QJab.Close;
   MemJab.Close;
   QJab.Open;
   MemJab.Open;
end;

procedure TFJabatan.ActBaruExecute(Sender: TObject);
begin
    with Fnew_jabatan do
    begin
      EDkd.clear;
      EdJab.Clear;
      Autonumber;
      Show;
      status:=0;
    end;
end;


procedure TFJabatan.ActDelExecute(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridJab.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
    then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      //sql.Text:='Delete From t_position where position_code='+QuotedStr(DBGridJab.Fields[0].AsString);
      sql.Text:=' Update t_position set deleted_at=:deleted_at,deleted_by=:deleted_by '+
                ' where position_code='+QuotedStr(DBGridJab.Fields[0].AsString);
      parambyname('deleted_at').AsDateTime:=Now;
      parambyname('deleted_by').AsString:='Admin';
      Execute;
    end;
    //dxbarRefreshClick(sender);
    ActROExecute(sender);
    ShowMessage('Data Berhasil di Hapus');
    end;
end;

procedure TFJabatan.ActROExecute(Sender: TObject);
begin
    DBGridJab.StartLoadingStatus();
    DBGridJab.FinishLoadingStatus();
    QJab.Close;
    MemJab.Close;
    QJab.Open;
    MemJab.Open;
end;

procedure TFJabatan.ActUpdateExecute(Sender: TObject);
begin
    with FNew_Jabatan do
    begin
      Show;
      Status:=1;
      Caption:='Update Jabatan';
      Edkd.Text:=MemJab['Position_code'];
      EdJab.Text:=MemJab['Position'];
    end;
end;

procedure TFJabatan.FormShow(Sender: TObject);
begin
    Refresh;
end;

end.
