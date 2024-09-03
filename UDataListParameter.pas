unit UDataListParameter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, Data.DB, MemDS, DBAccess, Uni, dxBar, cxClasses, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFDataListParameter = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid: TDBGridEh;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeNew: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    QParameter: TUniQuery;
    DsParameter: TDataSource;
    QParameterkd_master: TStringField;
    QParameternm_master: TMemoField;
    QParameterketerangan: TStringField;
    QParametermodul: TStringField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure QParameternm_masterGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
  end;

var
  FDataListParameter: TFDataListParameter;

implementation

{$R *.dfm}

uses USetMasterPenjulan, UDataModule;
procedure TFDataListParameter.Refresh;
begin
  DBGrid.StartLoadingStatus();
  try
   with QParameter do
   begin
       close;
       sql.Clear;
       sql.Text:=' SELECT key_parameter AS kd_master, value_parameter AS nm_master, '+
                 ' description_parameter AS keterangan,	module AS modul FROM t_parameter '+
                 ' WHERE deleted_at IS NULL ORDER BY key_parameter asc ';
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;


procedure TFDataListParameter.ActBaruExecute(Sender: TObject);
begin
  {with FSetMasterPenjulan do
  begin
    TabSetSumberOrder.TabVisible:=false;
    TabSetSumberJual.TabVisible:=false;
    TabParameter.TabVisible:=true;
    QParameter.Close;
    QParameter.Open;
    RzPageControl1.ActivePage:=FSetMasterPenjulan.TabParameter;
    status:=0;
    Clear;
    DBGridEhParameter.Visible:=false;
  end;
  FSetMasterPenjulan.ClientHeight:=245;
  FSetMasterPenjulan.ShowModal;}
  ShowMessage('Maaf Tidak Ada Akses Untuk Membuat Parameter...');
  exit;
end;

procedure TFDataListParameter.ActDelExecute(Sender: TObject);
begin
  ShowMessage('Maaf Tidak Ada Akses Untuk Menghapus Parameter...');
  exit;
end;

procedure TFDataListParameter.ActROExecute(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QParameter do
   begin
       close;
       sql.Clear;
       sql.Text:=' SELECT key_parameter AS kd_master, value_parameter AS nm_master, '+
                 ' description_parameter AS keterangan,	module AS modul FROM t_parameter '+
                 ' WHERE deleted_at IS NULL ORDER BY key_parameter asc ';
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFDataListParameter.ActUpdateExecute(Sender: TObject);
begin
  FSetMasterPenjulan.Clear;
     with Dm.Qtemp do
     begin
         close;
         sql.Clear;
          sql.Text:=' SELECT key_parameter AS kd_master, value_parameter AS nm_master, '+
                    ' description_parameter AS keterangan,	module AS modul FROM t_parameter '+
                    ' WHERE key_parameter='+QuotedStr(QParameter.fieldbyname('kd_master').AsString)+' '+
                    ' AND deleted_at IS NULL ORDER BY key_parameter asc ';
         open;
     end;
      if Dm.Qtemp.RecordCount=0 then
      begin
        ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
        exit;
      end;
      if Dm.Qtemp.RecordCount<>0 then
      begin
      with FSetMasterPenjulan do
      begin
        TabSetJenisReturJual.TabVisible:=false;
        TabSetSumberOrder.TabVisible:=false;
        TabSetSumberJual.TabVisible:=false;
        TabParameter.TabVisible:=true;
        RzPageControl1.ActivePage:=FSetMasterPenjulan.TabParameter;
        status:=1;
        DBGridEhParameter.Visible:=false;
        ClientHeight:=330;
        edKeyParameter.Text:=Dm.Qtemp.fieldbyname('kd_master').AsString;
        edValueParameter.Text:=Dm.Qtemp.fieldbyname('nm_master').AsString;
        edKetParameter.Text:=Dm.Qtemp.fieldbyname('keterangan').AsString;
        edModulParameter.Text:=Dm.Qtemp.fieldbyname('modul').AsString;
      end;
      //ShowMessage(IntToStr(FSetMasterPenjulan.status));
      FSetMasterPenjulan.ShowModal;
      end;
end;

procedure TFDataListParameter.FormShow(Sender: TObject);
begin
  Refresh;
end;

procedure TFDataListParameter.QParameternm_masterGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QParameternm_master.AsString, 1, 255);
end;

initialization
RegisterClass(TFDataListParameter);

end.
