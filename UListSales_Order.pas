unit UListSales_Order;

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
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFSalesOrder = class(TForm)
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
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridOrder: TDBGridEh;
    QSalesOrder: TUniQuery;
    DsSalesOrder: TDataSource;
    QSalesOrdernotrans: TStringField;
    QSalesOrderorder_date: TDateField;
    QSalesOrdersent_date: TDateField;
    QSalesOrdercode_cust: TStringField;
    QSalesOrdername_cust: TStringField;
    QSalesOrdercode_sales: TStringField;
    QSalesOrdername_sales: TStringField;
    QSalesOrderpayment_term: TSmallintField;
    QSalesOrderno_reference: TStringField;
    QSalesOrdercode_source: TStringField;
    QSalesOrdername_source: TStringField;
    procedure dxBarRefreshClick(Sender: TObject);
    procedure dxBarLargeNewClick(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
  end;

var
  FSalesOrder: TFSalesOrder;

implementation

{$R *.dfm}

uses UNew_SalesOrder, UDataModule, UMy_Function, UHomeLogin;

procedure TFSalesOrder.Refresh;
begin
   with QSalesOrder do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_sales_order"   '+
                 ' where deleted_at is null order by created_at Desc ';
       open;
   end;
   QSalesOrder.Active:=False;
   QSalesOrder.Active:=True;

  DBGridOrder.StartLoadingStatus();
  try
   QSalesOrder.Close;
   QSalesOrder.Open;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
end;


procedure TFSalesOrder.ActBaruExecute(Sender: TObject);
begin
  FNew_SalesOrder.Clear;
  //FNew_SalesOrder.Autonumber;
  FNew_SalesOrder.MemDetail.EmptyTable;
  Status:=0;
  FNew_SalesOrder.edKodeOrder.Enabled:=true;
  FNew_SalesOrder.ShowModal;
end;

procedure TFSalesOrder.ActDelExecute(Sender: TObject);
begin
   with dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_selling"   '+
                 ' where no_reference='+QuotedStr(QSalesOrder.FieldByName('notrans').AsString)+' '+
                 ' AND deleted_at is null order by created_at Desc ';
       open;
   end;
   if dm.Qtemp.RecordCount<>0 then
   begin
     ShowMessage('Maaf, Proses Tidak Dapat Dilanjutkan Dikarenakan Sudah Di Buat Tagihan...!!!');
     exit;
   end;

  if MessageDlg('Apakah anda yakin ingin membatalkan pesanan ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "sale"."t_sales_order"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "notrans"='+QuotedStr(QSalesOrder.FieldByName('notrans').AsString);
          ExecSQL;
        end;
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "sale"."t_sales_order_det"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "notrans"='+QuotedStr(QSalesOrder.FieldByName('notrans').AsString);
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

procedure TFSalesOrder.ActROExecute(Sender: TObject);
begin
   with QSalesOrder do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_sales_order"   '+
                 ' where deleted_at is null order by created_at Desc ';
       open;
   end;

  DBGridOrder.StartLoadingStatus();
  try
    QSalesOrder.Close;
    QSalesOrder.Open;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
end;

procedure TFSalesOrder.ActUpdateExecute(Sender: TObject);
begin
   FNew_SalesOrder.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_sales_order" a '+
                 ' WHERE "notrans"='+QuotedSTr(QSalesOrder.FieldByName('notrans').AsString)+' '+
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
  with FNew_SalesOrder do
  begin
    edKodeOrder.Text:=Dm.Qtemp.FieldByName('notrans').AsString;
    dtTanggal_Kirim.Date:=Dm.Qtemp.FieldByName('sent_date').AsDateTime;
    dtTanggal_Pesan.Date:=Dm.Qtemp.FieldByName('order_date').AsDateTime;
    edKode_Pelanggan.Text:=Dm.Qtemp.FieldByName('code_cust').AsString;
    edNama_Pelanggan.Text:=Dm.Qtemp.FieldByName('name_cust').AsString;
    edKode_Sales.Text:=Dm.Qtemp.FieldByName('code_sales').AsString;
    edNama_Sales.Text:=Dm.Qtemp.FieldByName('name_sales').AsString;
    edKodeSumber.Text:=Dm.Qtemp.FieldByName('code_source').AsString;
    edNamaSumber.Text:=Dm.Qtemp.FieldByName('name_source').AsString;
    spJatuhTempo.Text:=Dm.Qtemp.FieldByName('payment_term').AsString;
    edNoReff.Text:=Dm.Qtemp.FieldByName('no_reference').AsString;
    vFormSumber:=SelectRow('SELECT form_target from t_order_source where code='+QuotedStr(Dm.Qtemp.FieldByName('code_source').AsString)+' ');
    Edautocode.Text:=Dm.Qtemp.FieldByName('notrans').AsString;
    order_no:=Dm.Qtemp.FieldByName('order_no').AsString;
    kd_kares:=Dm.Qtemp.FieldByName('additional_code').AsString;
    strtgl:=Dm.Qtemp.FieldByName('trans_day').AsString;
    strbulan:=Dm.Qtemp.FieldByName('trans_month').AsString;
    strtahun:=Dm.Qtemp.FieldByName('trans_year').AsString;
  end;
  end;
  FNew_SalesOrder.edKodeOrder.Enabled:=false;
  FNew_SalesOrder.Show;
  Status := 1;
end;

procedure TFSalesOrder.dxBarLargeNewClick(Sender: TObject);
begin
  FNew_SalesOrder.ShowModal;
  FNew_SalesOrder.Clear;
  Status:=0;
end;

procedure TFSalesOrder.dxBarRefreshClick(Sender: TObject);
begin
  DBGridOrder.StartLoadingStatus();
  try
    QSalesOrder.Close;
    QSalesOrder.Open;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
end;

procedure TFSalesOrder.FormShow(Sender: TObject);
begin
  Refresh;
end;


initialization
RegisterClass(TFSalesOrder);

end.
