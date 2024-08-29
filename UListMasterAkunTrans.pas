unit UListMasterAkunTrans;

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
  TFListMasterAkunTrans = class(TForm)
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
    QAkunTransaksi: TUniQuery;
    DsAkunTransaksi: TDataSource;
    QAkunTransaksiid: TGuidField;
    QAkunTransaksicreated_at: TDateTimeField;
    QAkunTransaksicreated_by: TStringField;
    QAkunTransaksiupdated_at: TDateTimeField;
    QAkunTransaksiupdated_by: TStringField;
    QAkunTransaksideleted_at: TDateTimeField;
    QAkunTransaksideleted_by: TStringField;
    QAkunTransaksicode_module: TStringField;
    QAkunTransaksiname_module: TStringField;
    QAkunTransaksicode_trans: TStringField;
    QAkunTransaksiname_trans: TStringField;
    QAkunTransaksidescription: TMemoField;
    QAkunTransaksiaccount_number_bank: TStringField;
    QAkunTransaksiaccount_name_bank: TStringField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure QAkunTransaksidescriptionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListMasterAkunTrans: TFListMasterAkunTrans;

implementation

{$R *.dfm}

uses UDataMasterAkunTrans, UDataModule;

procedure TFListMasterAkunTrans.ActBaruExecute(Sender: TObject);
begin
  FDataMasterAkunTrans.Clear;
  //FDataMasterAkunTrans.Autocode;
  FDataMasterAkunTrans.MemDetail.EmptyTable;
  FDataMasterAkunTrans.Status:=0;
  FDataMasterAkunTrans.edKodeModul.Enabled:=true;
  FDataMasterAkunTrans.edNamaModul.Enabled:=true;
  FDataMasterAkunTrans.edKodeTrans.Enabled:=true;
  FDataMasterAkunTrans.edNamaTrans.Enabled:=true;
  FDataMasterAkunTrans.edNamaBank.Enabled:=true;
  FDataMasterAkunTrans.edNorekening.Enabled:=true;
  FDataMasterAkunTrans.MemDetail.active:=false;
  FDataMasterAkunTrans.MemDetail.active:=true;
  FDataMasterAkunTrans.ShowModal;
end;

procedure TFListMasterAkunTrans.ActDelExecute(Sender: TObject);
begin
  ShowMessage('Hapus');
end;

procedure TFListMasterAkunTrans.ActROExecute(Sender: TObject);
begin
  DBGridOrder.StartLoadingStatus();
  try
   with QAkunTransaksi do
   begin
       close;
       sql.Clear;
       sql.add(' select * from "public"."t_master_trans_account"   '+
               ' where deleted_at is null ');
       sql.add(' order by code_module, account_number_bank, code_trans asc ');
       open;
   end;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
end;

procedure TFListMasterAkunTrans.ActUpdateExecute(Sender: TObject);
begin
   FDataMasterAkunTrans.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_master_trans_account"  a '+
                 ' WHERE code_module='+QuotedSTr(QAkunTransaksi.FieldByName('code_module').AsString)+' '+
                 ' AND code_trans='+QuotedSTr(QAkunTransaksi.FieldByName('code_trans').AsString)+' '+
                 ' AND account_number_bank='+QuotedSTr(QAkunTransaksi.FieldByName('account_number_bank').AsString)+'' ;
       open;
   end;
  if Dm.Qtemp.RecordCount=0 then
  begin
    ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
    exit;
  end;
  if Dm.Qtemp.RecordCount<>0 then
  begin
  with FDataMasterAkunTrans do
  begin
    edKodeModul.Text:=Dm.Qtemp.FieldByName('code_module').AsString;
    edNamaModul.Text:=Dm.Qtemp.FieldByName('name_module').AsString;
    edKodeTrans.Text:=Dm.Qtemp.FieldByName('code_trans').AsString;
    edNamaTrans.Text:=Dm.Qtemp.FieldByName('name_trans').AsString;
    edNamaBank.Text:=Dm.Qtemp.FieldByName('account_name_bank').AsString;
    edNorekening.Text:=Dm.Qtemp.FieldByName('account_number_bank').AsString;
    MemKeterangan.Text:=Dm.Qtemp.FieldByName('description').AsString;
    rgTagihan.ItemIndex:=Dm.Qtemp.FieldByName('status_bill').AsInteger;
  end;
  end;
  FDataMasterAkunTrans.edKodeModul.Enabled:=false;
  FDataMasterAkunTrans.edNamaModul.Enabled:=false;
  FDataMasterAkunTrans.edKodeTrans.Enabled:=false;
  FDataMasterAkunTrans.edNamaTrans.Enabled:=false;
  FDataMasterAkunTrans.edNamaBank.Enabled:=false;
  FDataMasterAkunTrans.edNorekening.Enabled:=false;
  FDataMasterAkunTrans.RefreshGrid;
  FDataMasterAkunTrans.Show;
  FDataMasterAkunTrans.Status := 1;
end;

procedure TFListMasterAkunTrans.QAkunTransaksidescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QAkunTransaksidescription.AsString, 1, 255);
end;

initialization
RegisterClass(TFListMasterAkunTrans);
end.
