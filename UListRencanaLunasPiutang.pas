unit UListRencanaLunasPiutang;

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
  TFListRencanaLunasPiutang = class(TForm)
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
    QRencanaLunasHutang: TUniQuery;
    DsRencanaLunasHutang: TDataSource;
    QRencanaLunasHutangnotrans: TStringField;
    QRencanaLunasHutangperiod_date1: TDateField;
    QRencanaLunasHutangperiod_date2: TDateField;
    QRencanaLunasHutangcode_cust: TStringField;
    QRencanaLunasHutangname_cust: TStringField;
    QRencanaLunasHutangdescription: TMemoField;
    QRencanaLunasHutangtot_paid_amount: TFloatField;
    QRencanaLunasHutangdate_trans: TDateField;
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
  FListRencanaLunasPiutang: TFListRencanaLunasPiutang;

implementation

{$R *.dfm}

uses UDataRencanaLunasPiutang, UDataModule, UHomeLogin, UMy_Function;
procedure TFListRencanaLunasPiutang.ActBaruExecute(Sender: TObject);
begin
  FDataRencanaLunasPiutang.Clear;
  //FDataRencanaLunasPiutang.Autocode;
  FDataRencanaLunasPiutang.Status:=0;
  FDataRencanaLunasPiutang.edNoTrans.Enabled:=true;
  FDataRencanaLunasPiutang.ShowModal;
end;

procedure TFListRencanaLunasPiutang.ActDelExecute(Sender: TObject);
begin
  MessageDlg('Buatkan Validasi Tagihan Sudah Dibuat Tahap Lanjut Belum...',mtInformation,[MBOK],0);
  if MessageDlg('Apakah anda yakin ingin Membatalkan Rencana ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "cash_banks"."t_plan_receivable"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "notrans"='+QuotedStr(QRencanaLunasHutang.FieldByName('notrans').AsString);
          ExecSQL;
        end;
        MessageDlg('Proses Pembatalan Berhasil..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
  end;
end;

procedure TFListRencanaLunasPiutang.ActROExecute(Sender: TObject);
begin
  DBGridOrder.StartLoadingStatus();
  try
   with QRencanaLunasHutang do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "cash_banks"."t_plan_receivable"   '+
                 ' where deleted_at is null order by created_at Desc ';
       open;
   end;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
end;

procedure TFListRencanaLunasPiutang.ActUpdateExecute(Sender: TObject);
begin
   FDataRencanaLunasPiutang.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "cash_banks"."t_plan_receivable" a '+
                 ' WHERE "notrans"='+QuotedSTr(QRencanaLunasHutang.FieldByName('notrans').AsString)+' '+
                 ' AND deleted_at is null order by created_at Desc ';
       open;
   end;
  if Dm.Qtemp.RecordCount=0 then
  begin
    ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
    exit;
  end;
  if Dm.Qtemp.RecordCount<>0 then
  begin
  with FDataRencanaLunasPiutang do
  begin
    edNoTrans.Text:=Dm.Qtemp.FieldByName('notrans').AsString;
    dtTrans.date:=Dm.Qtemp.FieldByName('date_trans').AsDateTime;
    dtPeriode1.date:=Dm.Qtemp.FieldByName('period_date1').AsDateTime;
    dtPeriode2.date:=Dm.Qtemp.FieldByName('period_date2').AsDateTime;
    edKode_Pelanggan.Text:=Dm.Qtemp.FieldByName('code_cust').AsString;
    edNama_Pelanggan.Text:=Dm.Qtemp.FieldByName('name_cust').AsString;
    MemKeterangan.Text:=Dm.Qtemp.FieldByName('description').AsString;
    order_no:=Dm.Qtemp.FieldByName('order_no').AsString;
    //kd_kares:=Dm.Qtemp.FieldByName('additional_code').AsString;
    strtgl:=Dm.Qtemp.FieldByName('trans_day').AsString;
    strbulan:=Dm.Qtemp.FieldByName('trans_month').AsString;
    strtahun:=Dm.Qtemp.FieldByName('trans_year').AsString;
  end;
  end;
  FDataRencanaLunasPiutang.edNoTrans.Enabled:=false;
  FDataRencanaLunasPiutang.RefreshGrid;
  FDataRencanaLunasPiutang.Show;
  FDataRencanaLunasPiutang.Status := 1;
end;

Initialization
  RegisterClasses([TFListRencanaLunasPiutang]);

end.
