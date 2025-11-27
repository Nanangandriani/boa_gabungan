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
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxBarExtItems, cxMemo,
  cxBarEditItem, cxButtonEdit, cxCalendar;

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
    dxBarManager1Bar2: TdxBar;
    cbBulan: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    dxBarLargeButton1: TdxBarLargeButton;
    DBGridEh1: TDBGridEh;
    Qdetail: TUniQuery;
    DsDetail: TDataSource;
    dxBarCombo1: TdxBarCombo;
    dxBarButton8: TdxBarButton;
    dxBarSpinEdit1: TdxBarSpinEdit;
    dxBarFontNameCombo1: TdxBarFontNameCombo;
    dxBarButton9: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    dxBarButton10: TdxBarButton;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    dtAwal: TcxBarEditItem;
    dtAkhir: TcxBarEditItem;
    edKaresidenan: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    procedure dxBarRefreshClick(Sender: TObject);
    procedure dxBarLargeNewClick(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure DBGridOrderDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridOrderAdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
      AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_kares:String;
    procedure Refresh;
  end;

//var
//  FSalesOrder: TFSalesOrder;
function FSalesOrder: TFSalesOrder;

implementation

{$R *.dfm}

uses UNew_SalesOrder, UDataModule, UMy_Function, UHomeLogin, UMasterData;

var
  realfdatalistsalesorder : TFSalesOrder;
// implementasi function
function FSalesOrder: TFSalesOrder;
begin
  if realfdatalistsalesorder <> nil then
    FSalesOrder:= realfdatalistsalesorder
  else
    Application.CreateForm(TFSalesOrder, Result);
end;

procedure TFSalesOrder.Refresh;
var mm: Integer;
strKaresidenan:String;
begin
  mm:=cbBulan.ItemIndex+1;
  strKaresidenan:='';
  if edKaresidenan.EditValue<>'' then
  begin
    strKaresidenan:=' AND karesidenan='+QuotedStr(edKaresidenan.EditValue)+' ';
  end;

  DBGridOrder.StartLoadingStatus();
  try
   Sys_Batas_Data('order_date');
   with QSalesOrder do
   begin
       close;
       sql.Clear;
       sql.Text:='SELECT * FROM get_sales_order() '+
                 'WHERE (order_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
                 ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+') '+strKaresidenan+' '+
//               'where EXTRACT(YEAR FROM order_date)='+edTahun.Text+' AND '+
//               'EXTRACT(MONTH FROM order_date)='+(IntToStr(mm))+' ');
//       sql.add( vBatas_Data );
                  'order by order_date Desc,notrans Desc ';
       open;
   end;
   Qdetail.Close;
   Qdetail.Open;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
end;


procedure TFSalesOrder.ActBaruExecute(Sender: TObject);
begin
//  with dm.Qtemp do
//  begin
//    close;
//    sql.Clear;
//    sql.Text:='SELECT * FROM t_sales_order where deleted_at is NULL and status=0';
//    open;
//  end;
//
//  if dm.Qtemp.RecordCount>0 then
//  begin
//    MessageDlg('Masih ada Sales Order yang diajukan, silahkan Disetujui/Ditolak terlebih dahulu..!!',mtInformation,[mbRetry],0);
//  end else
//  begin
    FNew_SalesOrder.Clear;
    //FNew_SalesOrder.Autonumber;
    FNew_SalesOrder.MemDetail.EmptyTable;
    Status:=0;
    FNew_SalesOrder.edKodeOrder.Enabled:=true;
    FNew_SalesOrder.BSave.Enabled:=True;
    FNew_SalesOrder.Panel1.Enabled:=True;
    FNew_SalesOrder.DBGridDetail.Enabled:=True;
    FNew_SalesOrder.cbKonversiMuatan.Checked:=False;
    FNew_SalesOrder.DBGridDetail.Columns[10].Visible:=False;
    FNew_SalesOrder.DBGridDetail.Columns[11].Visible:=False;
    FNew_SalesOrder.ShowModal;
//  end;
end;

procedure TFSalesOrder.ActDelExecute(Sender: TObject);
begin
   with dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_selling"   '+
                 ' where no_reference='+QuotedStr(QSalesOrder.FieldByName('notrans').AsString)+' '+
                 ' AND deleted_at is null order by created_at Desc ';
       open;
   end;
   if dm.Qtemp.RecordCount<>0 then
   begin
     ShowMessage('Maaf, Proses Tidak Dapat Dilanjutkan Dikarenakan Sudah Di Buat Penjualan...!!!');
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
          sql.Text:=' UPDATE "public"."t_sales_order"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "notrans"='+QuotedStr(QSalesOrder.FieldByName('notrans').AsString);
          ExecSQL;
        end;
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "public"."t_sales_order_det"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "notrans"='+QuotedStr(QSalesOrder.FieldByName('notrans').AsString);
          ExecSQL;
        end;
        MessageDlg('Proses Pembatalan Berhasil..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
        Refresh;
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
var month,year:String;
begin
//  year :=FormatDateTime('yyyy', NOW());
//  month :=FormatDateTime('m', NOW());
//  edTahun.Text:=(year);
//  cbBulan.ItemIndex:=StrToInt(month)-1;
  Refresh;
end;

procedure TFSalesOrder.ActUpdateExecute(Sender: TObject);
begin
  FNew_SalesOrder.Clear;
  with Dm.Qtemp2 do
  begin
       close;
       sql.Clear;
       sql.Text:= 'SELECT * FROM get_sales_order()'+
                  'WHERE notrans='+QuotedSTr(QSalesOrder.FieldByName('notrans').AsString);
       open;
  end;
  if Dm.Qtemp2.RecordCount=0 then
  begin
    ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
    exit;
  end else if Dm.Qtemp2.FieldValues['status']=99 then
  begin
    ShowMessage('Data Sudah Di Tolak...!!!');
    exit;
  end else
  if Dm.Qtemp2.RecordCount<>0 then
  begin

    if (Dm.Qtemp2.FieldValues['no_invoice']<>'') then
    begin
      ShowMessage('SO sudah dibuat Penjualan tidak dapat diubah...!!!');
      FNew_SalesOrder.BSave.Enabled:=False;
      FNew_SalesOrder.Panel1.Enabled:=False;
      FNew_SalesOrder.DBGridDetail.Enabled:=False;
    end else
    begin
      FNew_SalesOrder.BSave.Enabled:=True;
      FNew_SalesOrder.Panel1.Enabled:=True;
      FNew_SalesOrder.DBGridDetail.Enabled:=True;
    end;

    with FNew_SalesOrder do
    begin
      edKodeOrder.Text:=Dm.Qtemp2.FieldByName('notrans').AsString;
      dtTanggal_Kirim.Date:=Dm.Qtemp2.FieldByName('sent_date').AsDateTime;
      dtTanggal_Pesan.Date:=Dm.Qtemp2.FieldByName('order_date').AsDateTime;
      edKode_Pelanggan.Text:=Dm.Qtemp2.FieldByName('code_cust').AsString;
      edNama_Pelanggan.Text:=Dm.Qtemp2.FieldByName('name_cust').AsString;
      edKode_Sales.Text:=Dm.Qtemp2.FieldByName('code_sales').AsString;
      edNama_Sales.Text:=Dm.Qtemp2.FieldByName('name_sales').AsString;
      edKodeSumber.Text:=Dm.Qtemp2.FieldByName('code_source').AsString;
      edNamaSumber.Text:=Dm.Qtemp2.FieldByName('name_source').AsString;
      spJatuhTempo.Text:=Dm.Qtemp2.FieldByName('payment_term').AsString;
      edPOOrder.Text:=Dm.Qtemp2.FieldByName('po_order').AsString;
      edNoReff.Text:=Dm.Qtemp2.FieldByName('no_reference').AsString;
      vFormSumber:=SelectRow('SELECT form_target from t_order_source where code='+QuotedStr(Dm.Qtemp2.FieldByName('code_source').AsString)+' ');
      Edautocode.Text:=Dm.Qtemp2.FieldByName('notrans').AsString;
      order_no:=Dm.Qtemp2.FieldByName('order_no').AsString;
      kd_kares:=Dm.Qtemp2.FieldByName('additional_code').AsString;
      strtgl:=Dm.Qtemp2.FieldByName('trans_day').AsString;
      strbulan:=Dm.Qtemp2.FieldByName('trans_month').AsString;
      strtahun:=Dm.Qtemp2.FieldByName('trans_year').AsString;

      if Dm.Qtemp2.FieldByName('vehicles').AsString<>NULL then
      begin
        edKelompokKendaraan.Text:=Dm.Qtemp2.FieldByName('vehicle_group_id').AsString;
        edKodeTypeKendaraan.Text:=Dm.Qtemp2.FieldByName('type_vehicles_code').AsString;
        edTypeKendaraan.Text:=Dm.Qtemp2.FieldByName('type_vehicles_name').AsString;
        edKendaraan.Text:=Dm.Qtemp2.FieldByName('vehicles').AsString;
        edKapasitas.Value:=Dm.Qtemp2.FieldByName('capacity').Value;
      end;

      if Dm.Qtemp2.FieldValues['load_conversion']=True then
      begin
        FNew_SalesOrder.cbKonversiMuatan.Checked:=True;
        FNew_SalesOrder.DBGridDetail.Columns[10].Visible:=True;
        FNew_SalesOrder.DBGridDetail.Columns[11].Visible:=True;
      end else begin
        FNew_SalesOrder.cbKonversiMuatan.Checked:=False;
        FNew_SalesOrder.DBGridDetail.Columns[10].Visible:=False;
        FNew_SalesOrder.DBGridDetail.Columns[11].Visible:=False;
      end;
    end;
  end;
  FNew_SalesOrder.edKodeOrder.Enabled:=false;
  FNew_SalesOrder.Show;
  Status := 1;
end;

procedure TFSalesOrder.DBGridOrderAdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
  AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
  var Params: TColCellParamsEh; var Processed: Boolean);
var
strStatus: Integer;
begin
strStatus := Column.Field.DataSet.FieldByName('status').AsInteger;

 if (QSalesOrder.RecordCount<>0) then
 begin
    if (strStatus=99) then
    begin
//      Params.Font.Style := [fsBold];
      Params.Font.Color := clRed;
//      Params.Background := $004080FF;
    end;
 end;

end;

procedure TFSalesOrder.DBGridOrderDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
//var
//  StatusValue: Integer;
begin
//  if gdSelected in State then
//    Exit;
//  if not (gdSelected in State) and (Column.Field.FieldName = 'status') then
//  begin
//    if not Column.Field.IsNull then
//    begin
//      StatusValue := Column.Field.AsInteger;
//
//      if StatusValue = 99 then
//      begin
//        DBGridOrder.Canvas.Font.Color := clRed;
//        // DBGridEh1.Canvas.Brush.Color := clYellow;
//      end
//      else
//      begin
//
//        DBGridOrder.Canvas.Font.Color := clWindowText;
//        DBGridOrder.Canvas.Brush.Color := clWindow;
//      end;
//
//
//      DBGridOrder.DefaultDrawColumnCell(Rect, DataCol, Column, State);
//    end;
//  end;
end;

procedure TFSalesOrder.dxBarLargeButton1Click(Sender: TObject);
begin
  Refresh;
end;

procedure TFSalesOrder.dxBarLargeButton4Click(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edKaresidenan.EditValue:='';
  vkd_kares:='';
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

procedure TFSalesOrder.edKaresidenanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='listsalesorder_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFSalesOrder.FormCreate(Sender: TObject);
begin
  realfdatalistsalesorder:=self;
end;

procedure TFSalesOrder.FormDestroy(Sender: TObject);
begin
  realfdatalistsalesorder:=nil;
end;

procedure TFSalesOrder.FormShow(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edKaresidenan.EditValue:='';
  vkd_kares:='';
  ActROExecute(sender);
end;


initialization
RegisterClass(TFSalesOrder);

end.
