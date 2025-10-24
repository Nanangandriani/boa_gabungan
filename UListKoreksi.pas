unit UListKoreksi;

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
  DynVarsEh, Data.DB, MemDS, DBAccess, Uni, dxBarExtItems, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFListKoreksi = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridOrder: TDBGridEh;
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
    dxBarManager1Bar2: TdxBar;
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
    cbBulan: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarCombo1: TdxBarCombo;
    QKoreksi: TUniQuery;
    DsKoreksi: TDataSource;
    cbStatus: TdxBarCombo;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    procedure FormShow(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ApproveAkses: Boolean;
    procedure Refresh;
  end;

var
  FListKoreksi: TFListKoreksi;

implementation

{$R *.dfm}

uses UDataModule, UMainMenu, UKoreksi;

procedure TFListKoreksi.ActBaruExecute(Sender: TObject);
begin
  if QKoreksi.FieldValues['status']=0 then
  begin
    FKoreksi.Clear;
    FKoreksi.kode_koreksi:=QKoreksi.FieldValues['code'];
    FKoreksi.vcall:='';
    FKoreksi.Status:=1;
    FKoreksi.ShowModal;
  end else begin
    MessageDlg('Tidak dapat melakukan approval, status sudah '+QKoreksi.FieldValues['status_correction']+' ..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFListKoreksi.ActDelExecute(Sender: TObject);
begin
  if QKoreksi.FieldValues['status']=0 then
  begin
    FKoreksi.Clear;
    FKoreksi.kode_koreksi:=QKoreksi.FieldValues['code'];
    FKoreksi.vcall:='';
    FKoreksi.Status:=2;
    FKoreksi.ShowModal;
  end else begin
    MessageDlg('Tidak dapat melakukan approval, status sudah '+QKoreksi.FieldValues['status_correction']+' ..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFListKoreksi.ActROExecute(Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun.Text:=(year);
//  cbBulan.ItemIndex:=StrToInt(month)-1;
//  with dm.Qtemp do
//  begin
//    Close;
//    Sql.Clear;
//    Sql.Text:='select a.* from vcorrection_trans a left join t_menu_sub b on '+
//              'b.submenu_code=a.menu_trans  '+
//              'left join t_menu c on c.menu_code=b.menu_code '+
//              'where c.menu_code in (select menu_code from t_akses_correction_approve aa '+
//              'where is_active=TRUE and  position_code = (select position_code from t_user  '+
//              'where user_name='+QuotedStr(Nm)+' AND deleted_at IS NULL))';
//    Open;
//  end;
  if ActBaru.Enabled=True then
//  if dm.Qtemp.RecordCount>0 then
  begin
    ApproveAkses:=True;
    cbStatus.ItemIndex:= 1;
  end else begin
    ApproveAkses:=False;
    cbStatus.ItemIndex:= 0;
  end;

//  if ApproveAkses=True then
//  begin
//    cbStatus.ItemIndex:= 1;
//  end else begin
//    cbStatus.ItemIndex:= 0;
//  end;

  Refresh;
end;

procedure TFListKoreksi.ActUpdateExecute(Sender: TObject);
begin
  if QKoreksi.FieldValues['status']=0 then
  begin
    FKoreksi.Clear;
    FKoreksi.kode_koreksi:=QKoreksi.FieldValues['code'];
    FKoreksi.vcall:='';
    FKoreksi.Status:=1;
    FKoreksi.ShowModal;
  end else begin
    MessageDlg('Tidak dapat melakukan approval, status sudah '+QKoreksi.FieldValues['status_correction']+' ..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFListKoreksi.dxBarLargeButton1Click(Sender: TObject);
begin
  Refresh;
end;

procedure TFListKoreksi.FormShow(Sender: TObject);
begin
  ActROExecute(sender);
end;

procedure TFListKoreksi.Refresh;
var strStatus,strMenu: String;
begin

  if cbStatus.Text='SEMUA' then
  begin
    strStatus:='';
  end else begin
    strStatus:=' AND status_correction='+QuotedStr(TRIM(cbStatus.Text))+' ';
  end;

  if ApproveAkses=True then
  begin
    with QKoreksi do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from vcorrection_trans where EXTRACT(YEAR FROM created_at)='+edTahun.Text+'  '+
                strStatus;
//      sql.Text:='select a.* from vcorrection_trans a left join t_menu_sub b on b.submenu_code=a.menu_trans  '+
//                'left join t_menu c on c.menu_code=b.menu_code '+
//                'where c.menu_code in (select menu_code from t_akses_correction_approve aa '+
//                'where is_active=TRUE and  position_code = (select position_code from t_user  '+
//                'where user_name='+QuotedStr(Nm)+')) AND EXTRACT(YEAR FROM a.created_at)='+edTahun.Text+strStatus;
//      sql.Text:='select * from vcorrection_trans where EXTRACT(YEAR FROM created_at)='+edTahun.Text+strStatus;
      open;
    end;
    dxBarUpdate.Enabled:=True;
  end else begin
    with QKoreksi do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from vcorrection_trans where EXTRACT(YEAR FROM created_at)='+edTahun.Text+' AND '+
                'created_by='+QuotedStr(Nm)+strStatus;
      open;
    end;
    dxBarUpdate.Enabled:=False;
  end;
end;

initialization
RegisterClass(TFListKoreksi);

end.
