unit UList_Pelaku_Biaya;

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
  TFListPelakuBiaya = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DBGridPelakuBiaya: TDBGridEh;
    DsdPelaku_Biaya: TDataSetDriverEh;
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
    MemPelaku_Biaya: TMemTableEh;
    QPelaku_Biaya: TUniQuery;
    DsPelaku_Biaya: TDataSource;
    procedure ActBaruExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListPelakuBiaya: TFListPelakuBiaya;

implementation

{$R *.dfm}

uses UDataModule, U_Pelaku_Biaya;


procedure TFListPelakuBiaya.ActBaruExecute(Sender: TObject);
begin
   FPelaku_Biaya.stat:='new';
   FPelaku_Biaya.Show;
   FPelaku_Biaya.txtpelaku.Text:='';
   FPelaku_Biaya.txtket.Text:='';
end;

procedure TFListPelakuBiaya.ActDelExecute(Sender: TObject);
begin
    if application.MessageBox('Data akan dihapus?','confirm',mb_yesno or mb_iconquestion)=id_yes then
    begin
      {with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add('select * from t_cash_bank_expenditure where perpetrator_id=:ids');
        ParamByName('ids').AsInteger:=QPelaku_Biaya.fieldbyname('id').asinteger;
        open;
      end;
      if dm.Qtemp.RecordCount<>0 then
      begin
        showmessage('Data pelaku tidak dapat dihapus !');
        Exit;
      end
      else}
      begin
        with dm.Qtemp1 do
        begin
          close;
          sql.clear;
          sql.add('delete from t_cost_performer where id=:ids');
          ParamByName('ids').AsInteger:=DBGridPelakuBiaya.Fields[0].value;
          execute;
        end;
        showmessage('Data berhasil dihapus !');
        MemPelaku_Biaya.Close;
        MemPelaku_Biaya.open;
      end;
    end;
end;

procedure TFListPelakuBiaya.ActROExecute(Sender: TObject);
begin
    DBGridPelakuBiaya.StartLoadingStatus();
    with QPelaku_Biaya do
    begin
      close;
      sql.clear;
      sql.add('select * from t_cost_performer ');
      open;
    end;
    DBGridPelakuBiaya.FinishLoadingStatus();
    QPelaku_Biaya.Close;
    QPelaku_Biaya.Open;
    MemPelaku_Biaya.Close;
    MemPelaku_Biaya.Open;
    DBGridPelakuBiaya.SearchPanel.SearchingText:='';
end;

procedure TFListPelakuBiaya.ActUpdateExecute(Sender: TObject);
begin
    FPelaku_Biaya.Ed_id.Text:=DBGridPelakuBiaya.Fields[0].value;
    FPelaku_Biaya.txtpelaku.Text:=DBGridPelakuBiaya.Fields[1].AsString;
    FPelaku_Biaya.cbkaresidenan.Text:=DBGridPelakuBiaya.Fields[2].AsString;
    FPelaku_Biaya.txtket.Text:=DBGridPelakuBiaya.Fields[3].AsString;
    FPelaku_Biaya.stat:='edit';
    FPelaku_Biaya.show;
end;

procedure TFListPelakuBiaya.FormShow(Sender: TObject);
begin
  if MemPelaku_Biaya.Active=false then
     MemPelaku_Biaya.Active:=True;
end;

initialization
RegisterClass(TFListPelakuBiaya);


end.
