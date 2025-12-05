unit UListPenjualan;

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
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, frxClass, frxDBSet, dxBarExtItems,
  frxRich, cxBarEditItem, cxCalendar, cxButtonEdit;

type
  TFDataListPenjualan = class(TForm)
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
    QPenjualan: TUniQuery;
    DsPenjualan: TDataSource;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton3: TdxBarLargeButton;
    QCetak: TUniQuery;
    frxDBDPenjualan: TfrxDBDataset;
    Report: TfrxReport;
    dxBarLargeButton4: TdxBarLargeButton;
    QCetakSJ: TUniQuery;
    frxDBDCetakSJ: TfrxDBDataset;
    QCetakSJno_traveldoc: TStringField;
    QCetakSJcode_cust: TStringField;
    QCetakSJname_cust: TStringField;
    QCetakSJaddress: TMemoField;
    QCetakSJcode_item: TStringField;
    QCetakSJname_item: TStringField;
    QCetakSJamount: TFloatField;
    QCetakSJcode_unit: TStringField;
    QCetakSJname_unit: TStringField;
    QCetakSJno_reference: TStringField;
    QCetakSJket: TStringField;
    QCetakSJtrans_no: TStringField;
    QCetakSJtrans_date: TDateField;
    QJurnal: TUniQuery;
    frxDBDJurnal: TfrxDBDataset;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    cbBulan: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    dxBarLargeButton6: TdxBarLargeButton;
    frxReport1: TfrxReport;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    frxRichObject1: TfrxRichObject;
    QCetaktrans_no: TStringField;
    QCetakno_inv_tax: TStringField;
    QCetaktrans_date: TDateField;
    QCetakcode_cust: TStringField;
    QCetakname_cust: TStringField;
    QCetakaddress: TMemoField;
    QCetakno_npwp: TMemoField;
    QCetakcode_item: TStringField;
    QCetakname_item: TStringField;
    QCetakamount: TFloatField;
    QCetakcode_unit: TStringField;
    QCetakname_unit: TStringField;
    QCetakno_reference: TStringField;
    QCetakunit_price: TFloatField;
    QCetaksub_total: TFloatField;
    QCetakppn_account: TStringField;
    QCetakppn_percent: TFloatField;
    QCetakppn_value: TFloatField;
    QCetakpph_account: TStringField;
    QCetakpph_name: TStringField;
    QCetakpph_percent: TFloatField;
    QCetakpph_value: TFloatField;
    QCetaktot_piece_value: TFloatField;
    QCetaktot_piece_percent: TFloatField;
    QCetakgrand_tot: TFloatField;
    QCetakpiece_first: TFloatField;
    QCetakpiece_second: TFloatField;
    QCetakpiece_third: TFloatField;
    QCetakpiece_fourth: TFloatField;
    QCetakcustomer_name_pkp: TStringField;
    ReportJurnal: TfrxReport;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton9: TdxBarLargeButton;
    QCetakSJgross_weight: TFloatField;
    QCetakSJtare_weight: TFloatField;
    QCetakSJvehicles: TMemoField;
    QCetakSJaddress2: TMemoField;
    QCetakdeleted_at: TDateTimeField;
    dxBarDateCombo1: TdxBarDateCombo;
    cxBarEditItem1: TcxBarEditItem;
    dxBarDateCombo2: TdxBarDateCombo;
    dtAwal: TcxBarEditItem;
    dtAkhir: TcxBarEditItem;
    dxBarLargeButton10: TdxBarLargeButton;
    edKaresidenan: TcxBarEditItem;
    dxBarLargeButton11: TdxBarLargeButton;
    ReportValidasi: TfrxReport;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure dxBarLargeButton9Click(Sender: TObject);
    procedure DBGridOrderAdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
      AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure cxBarEditItem2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_kares: String;
    procedure reset_stock;
    procedure Refresh;
  end;

//var
//  FDataListPenjualan: TFDataListPenjualan;
function FDataListPenjualan: TFDataListPenjualan;

implementation

{$R *.dfm}

uses UNew_DataPenjualan, UDataModule, UMy_Function, UHomeLogin,
  UNewKontrakTagihan, UMainMenu, UExportFaktur, UAmplopPelanggan,
  UPenyesuaianPenjualan, UMasterData;

var
  realfdatalistpenjualan : TFDataListPenjualan;
// implementasi function
function FDataListPenjualan: TFDataListPenjualan;
begin
  if realfdatalistpenjualan <> nil then
    FDataListPenjualan:= realfdatalistpenjualan
  else
    Application.CreateForm(TFDataListPenjualan, Result);
end;

procedure TFDataListPenjualan.Refresh;
var mm: Integer;
strKaresidenan:String;
begin
  strKaresidenan:='';
  if edKaresidenan.EditValue<>'' then
  begin
    strKaresidenan:=' AND karesidenan='+QuotedStr(edKaresidenan.EditValue)+' ';
  end;
//  mm:=cbBulan.ItemIndex+1;
  DBGridOrder.StartLoadingStatus();
  try
    with QPenjualan do
    begin
       close;
       sql.Clear;
       sql.Text:='select * from get_selling(False) '+
                 'WHERE (trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
                 ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+') '+strKaresidenan+' '+
//                 'where EXTRACT(YEAR FROM trans_date)='+edTahun.Text+' AND '+
//                 'EXTRACT(MONTH FROM trans_date)='+(IntToStr(mm))+'  '+
                 'order by trans_date Desc,trans_no Desc ';
       open;
    end;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
end;

procedure TFDataListPenjualan.reset_stock;
begin
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' SELECT *  '+
              ' FROM "public"."t_selling_stock_details"  a '+
              ' WHERE "trans_no"='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+' ' );
      open;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
      //update qty_booking t_item_stock_det  kembalikan stock booking
      with dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.Text:=' UPDATE "public"."t_item_stock_det" SET '+
                  ' "qty_booking"=qty_booking-'+(FloatToStr(Dm.Qtemp.FieldByName('qty').Value))+' '+
                  ' WHERE "stock_code"='+QuotedStr(Dm.Qtemp.FieldByName('stock_code').Value)+'; ';
        ExecSQL;
      end;
      with dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.Text:=' delete from "public"."t_selling_stock_details" '+
                  ' WHERE "trans_id"='+QuotedStr(Dm.Qtemp.FieldByName('trans_id').Value)+' ; ';
        ExecSQL;
      end;

     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFDataListPenjualan.ActBaruExecute(Sender: TObject);
begin
  FNew_Penjualan.Clear;
  //FNew_Penjualan.Autonumber;
  FNew_Penjualan.MemDetail.EmptyTable;
  FNew_Penjualan.trans_id_link:=SelectRow('SELECT uuid_generate_v4()::VARCHAR AS uuid_as_varchar;');
  FNew_Penjualan.Status:=0;
  with FNew_Penjualan do
  begin
    edNomorTrans.ReadOnly:=False;
    edSuratJalanTrans.ReadOnly:=False;
    edNama_Pelanggan.ReadOnly:=False;
    dtTanggal.Enabled:=True;
    edNamaSumber.ReadOnly:=False;
    edNoReff.ReadOnly:=False;
    isCancel:=0;
//    edNomorFaktur.ReadOnly:=False;
  end;

  FNew_Penjualan.ShowModal;
end;

procedure TFDataListPenjualan.ActDelExecute(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT * FROM t_cash_bank_acceptance_receivable WHERE no_invoice='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString);
    open;
  end;
  if dm.Qtemp.RecordCount>0 then
  begin
    MessageDlg('Nota sudah ada  pembayaran..!!',mtInformation,[mbRetry],0);
  end else if CheckJurnalPosting(QPenjualan.FieldByName('trans_no').AsString)>0 then
  begin
    MessageDlg('Nota sudah approve jurnal tidak bisa melakukan pembatalan..!!',mtInformation,[mbRetry],0);
  end else begin

    if MessageDlg('Apakah Anda Yakin Ingin Membatalkan Tagihan ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "public"."t_selling"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(Nm)+'  '+
                    ' WHERE "trans_no"='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString);
          ExecSQL;
        end;
//        with dm.Qtemp do
//        begin
//          close;
//          sql.clear;
//          sql.Text:=' UPDATE "public"."t_selling_det"  SET '+
//                    ' "deleted_at"=now(), '+
//                    ' "deleted_by"='+QuotedStr(Nm)+'  '+
//                    ' WHERE "trans_no"='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString);
//          ExecSQL;
//        end;
        //Kembalikan Stock
//          reset_stock;
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
end;

procedure TFDataListPenjualan.ActROExecute(Sender: TObject);
var month,year:String;
begin
//  year :=FormatDateTime('yyyy', NOW());
//  month :=FormatDateTime('m', NOW());
//  edTahun.Text:=(year);
//  cbBulan.ItemIndex:=StrToInt(month)-1;
  Refresh;
end;

procedure TFDataListPenjualan.ActUpdateExecute(Sender: TObject);
begin
   FNew_Penjualan.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from t_selling '+
                 ' WHERE "trans_no"='+QuotedSTr(QPenjualan.FieldByName('trans_no').AsString);
       open;
   end;
  if Dm.Qtemp.RecordCount=0 then
  begin
    ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
    exit;
  end;
  if Dm.Qtemp.RecordCount<>0 then
  begin
    with FNew_Penjualan do
    begin
      if (Dm.Qtemp.FindField('deleted_at') <> nil) and (not Dm.Qtemp.FieldByName('deleted_at').IsNull) then
      begin
        isCancel := 1;
      end else begin
        isCancel:=0;
      end;

      edKode_Trans.Text:=Dm.Qtemp.FieldByName('code_trans').AsString;
      edNama_Trans.Text:=SelectRow('select name from t_sales_transaction_source where code='+QuotedStr(Dm.Qtemp.FieldByName('code_trans').AsString)+' ');
      edNomorFaktur.Text:=Dm.Qtemp.FieldByName('no_inv_tax').AsString;
      edNomorTrans.Text:=Dm.Qtemp.FieldByName('trans_no').AsString;
      edSuratJalanTrans.Text:=Dm.Qtemp.FieldByName('no_traveldoc').AsString;
      dtTanggal.Date:=Dm.Qtemp.FieldByName('trans_date').AsDateTime;
      edKode_Pelanggan.Text:=Dm.Qtemp.FieldByName('code_cust').AsString;
      edNama_Pelanggan.Text:=Dm.Qtemp.FieldByName('name_cust').AsString;
      edKodeSumber.Text:=Dm.Qtemp.FieldByName('code_source').AsString;
      edNamaSumber.Text:=Dm.Qtemp.FieldByName('name_source').AsString;
      edPOOrder.Text:=Dm.Qtemp.FieldByName('po_order').AsString;
      spJatuhTempo.Text:=Dm.Qtemp.FieldByName('payment_term').AsString;
      edNoReff.Text:=Dm.Qtemp.FieldByName('no_reference').AsString;
      vFormSumber:=SelectRow('SELECT form_target from t_selling_source where code='+QuotedStr(Dm.Qtemp.FieldByName('code_source').AsString)+' ');
      order_no:=Dm.Qtemp.FieldByName('order_no').AsString;
      kd_kares:=Dm.Qtemp.FieldByName('additional_code').AsString;
      strtgl:=Dm.Qtemp.FieldByName('trans_day').AsString;
      strbulan:=Dm.Qtemp.FieldByName('trans_month').AsString;
      strtahun:=Dm.Qtemp.FieldByName('trans_year').AsString;
      kd_perkiraan_pel:=Dm.Qtemp.FieldByName('account_code').AsString;
      IntStatusKoreksi:=Dm.Qtemp.FieldValues['status_correction'];
    end;
  end;
  with FNew_Penjualan do
  begin
    edNomorTrans.ReadOnly:=True;
    edSuratJalanTrans.ReadOnly:=True;
    edNama_Pelanggan.ReadOnly:=True;
    dtTanggal.Enabled:=False;
    edNamaSumber.ReadOnly:=True;
    edNoReff.ReadOnly:=True;

    if Dm.Qtemp.FieldByName('code_source').AsString='SEL002' then
    edPOOrder.ReadOnly:=True else edPOOrder.ReadOnly:=False;


//    if (Dm.Qtemp.FieldByName('no_inv_tax_coretax').AsString<>'') AND
//    (Dm.Qtemp.FieldByName('no_inv_tax_coretax').AsString<>NULL) THEN edNomorFaktur.ReadOnly:=True
//    else
    edNomorFaktur.ReadOnly:=False;


  end;
  FNew_Penjualan.RefreshGrid;
  FNew_Penjualan.Status := 1;
  FNew_Penjualan.ShowModal;

end;

procedure TFDataListPenjualan.cxBarEditItem2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='listpenjualan_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFDataListPenjualan.DBGridOrderAdvDrawDataCell(
  Sender: TCustomDBGridEh; Cell, AreaCell: TGridCoord; Column: TColumnEh;
  const ARect: TRect; var Params: TColCellParamsEh; var Processed: Boolean);
var
  DS: TDataSet;
  F: TField;
begin
  if (Column = nil) or (Column.Field = nil) then Exit;

  DS := Column.Field.DataSet;

  if (DS = nil) or (not DS.Active) or DS.IsEmpty then Exit;

  F := DS.FindField('deleted_at');
  if F = nil then Exit;
  if not F.IsNull then
    Params.Font.Color := clRed;
end;

procedure TFDataListPenjualan.dxBarLargeButton10Click(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edKaresidenan.EditValue:='';
  vkd_kares:='';
end;

procedure TFDataListPenjualan.dxBarLargeButton3Click(Sender: TObject);
var
  WatermarkMemo: TfrxMemoView;
begin

  with QCetak do
  begin
    close;
    sql.clear;
    sql.add(' select a."trans_no", "no_inv_tax", "trans_date",a.po_order, a."code_cust", a."name_cust", '+
           ' d."address",COALESCE(e.no_npwp,'''') no_npwp, b."code_item", b."name_item", '+
           ' b."amount", b."code_unit", b."name_unit", a."no_reference", "unit_price", '+
           ' b."sub_total", b."ppn_account", "ppn_percent", b."ppn_value", b."pph_account", '+
           ' b."pph_name", b."pph_percent", b."pph_value", b."tot_piece_value", '+
           ' b."tot_piece_percent", b."grand_tot",  '+
           ' case when "piece_first" is null then 0 else "piece_first" end "piece_first", '+
           ' case when "piece_second" is null then 0 else "piece_second" end "piece_second", '+
           ' case when "piece_third" is null then 0 else "piece_third" end "piece_third", '+
           ' case when "piece_fourth" is null then 0 else "piece_fourth" end "piece_fourth", '+
           ' e.customer_name_pkp,a.deleted_at '+
           ' from "public"."t_selling" a '+
           ' LEFT JOIN "public"."t_selling_det" b ON a.trans_no=b.trans_no '+
           ' LEFT JOIN "public"."t_selling_piece" c ON b.trans_no=c.trans_no and b.code_item=c.code_item '+
           ' LEFT JOIN (SELECT "customer_code", "address" from "public"."t_customer_address" where "code_details"=''001'') d on a.code_cust=d.customer_code '+
           ' LEFT JOIN t_customer e on e.customer_code=a.code_cust '+
           ' LEFT JOIN t_item f ON f.item_code=b.code_item '+
           ' where '+
           ' a.trans_no='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+' '+
           ' order by f.group_id,b.code_item ASC');
    open;
  end;

//  WatermarkMemo := Report.FindObject('WatermarkBatalMemo') as TfrxMemoView;
//
//  if Assigned(WatermarkMemo) then
//  begin
//    if (QCetak.FieldByName('deleted_at') <> nil) and
//     (not QCetak.FieldByName('deleted_at').IsNull) then
//  begin
//      WatermarkMemo.Text := 'BATAL';
//      WatermarkMemo.Visible := True;
//      WatermarkMemo.Font.Color := clRed;
//    end
//    else
//    begin
//      WatermarkMemo.Visible := False;
//    end;
//  end;


  if QCetak.RecordCount=0 then
  begin
    showmessage('Tidak ada data yang bisa dicetak !');
    exit;
  end;

   if QCetak.RecordCount<>0 then
   begin
     // Dapetin Grand Total
      with dm.Qtemp do
      begin
       close;
       sql.clear;
       sql.add('select a.*,COALESCE(b.company_code_bank,'''') company_code_bank,COALESCE(b.number_va,'''') number_va,COALESCE(b.va_name,'''') va_name,COALESCE(c.bank_name,'''') bank_name  from "public"."t_selling" a '+
              'LEFT JOIN t_selling_customer b on b.trans_no=a.trans_no and b.deleted_at IS NULL '+
              'LEFT JOIN t_bank c on c.company_code=b.company_code_bank  where '+
              ' a.trans_no='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+' ');
       open;
      end;

      with dm.Qtemp2 do
      begin
       close;
       sql.clear;
       sql.Text:='select * from get_user_signature(2) ';
       open;
      end;

//      if (dm.Qtemp.FieldValues['company_code_bank']=NULL) OR
//        (dm.Qtemp.FieldValues['company_code_bank']='') OR (dm.Qtemp.FieldValues['number_va']=NULL) OR
//        (dm.Qtemp.FieldValues['number_va']='') OR (dm.Qtemp.FieldValues['va_name']=NULL) OR (dm.Qtemp.FieldValues['va_name']='') then
//      begin
//        TfrxMemoView(Report.FindObject('MemVA1')).Visible:=False;
//        TfrxMemoView(Report.FindObject('MemVA2')).Visible:=False;
//        TfrxMemoView(Report.FindObject('MemVA3')).Visible:=False;
//        TfrxMemoView(Report.FindObject('MemVA4')).Visible:=False;
//        TfrxMemoView(Report.FindObject('MemVA5')).Visible:=False;
//        TfrxMemoView(Report.FindObject('MemVA6')).Visible:=False;
//        TfrxMemoView(Report.FindObject('MemVA7')).Visible:=False;
//      end else begin
//        TfrxMemoView(Report.FindObject('MemVA1')).Visible:=True;
//        TfrxMemoView(Report.FindObject('MemVA2')).Visible:=True;
//        TfrxMemoView(Report.FindObject('MemVA3')).Visible:=True;
//        TfrxMemoView(Report.FindObject('MemVA4')).Visible:=True;
//        TfrxMemoView(Report.FindObject('MemVA5')).Visible:=True;
//        TfrxMemoView(Report.FindObject('MemVA6')).Visible:=True;
//        TfrxMemoView(Report.FindObject('MemVA7')).Visible:=True;
//      end;

//     ShowMessage(QCetak.FieldValues['po_order']);
     cLocation := ExtractFilePath(Application.ExeName);

     //ShowMessage(cLocation);
     Report.LoadFromFile(cLocation +'report/rpt_penjualan'+ '.fr3');
     SetMemo(Report,'nama_pt',FHomeLogin.vNamaPRSH);
     SetMemo(Report,'kota',FHomeLogin.vKotaPRSH);
     SetMemo(Report,'alamat',FHomeLogin.vAlamatPRSH);
     SetMemo(Report,'telp','Phone : '+FHomeLogin.vTelpPRSH);
     SetMemo(Report,'signature_name',dm.Qtemp2.FieldValues['full_name']);
     SetMemo(Report,'memTanggal',FormatDateTime('dd mmmm yyyy',QCetak.FieldValues['trans_date']));
     if (dm.Qtemp.FieldValues['po_order']<>NULL) OR (dm.Qtemp.FieldValues['po_order']<>'') then
     begin
      SetMemo(Report,'memPO',dm.Qtemp.FieldValues['po_order']);
      Report.FindObject('memPO').Visible := True;
      Report.FindObject('memo51').Visible := True;
      Report.FindObject('memo52').Visible := True;
      Report.FindObject('Line25').Visible:=True;
      Report.FindObject('Line26').Visible:=True;
      Report.FindObject('Line27').Visible:=True;
     end else begin
      Report.FindObject('memPO').Visible := False;
      Report.FindObject('memo51').Visible := False;
      Report.FindObject('memo52').Visible := False;
      Report.FindObject('Line25').Visible:=False;
      Report.FindObject('Line26').Visible:=False;
      Report.FindObject('Line27').Visible:=False;
     end;

     if (QCetak.FieldByName('deleted_at') <> nil) and (not QCetak.FieldByName('deleted_at').IsNull) then
     begin
        Report.FindObject('PictureBatal').Visible:=True;
     end else begin
       Report.FindObject('PictureBatal').Visible:=False;
     end;

     SetMemo(Report,'terbilang',UraikanAngka(floattostr(dm.Qtemp.FieldByName('grand_tot').AsFloat)));
     //Report.DesignReport();
     //Report.ShowReport();

    if (dm.Qtemp.FieldValues['company_code_bank']<>'') AND (dm.Qtemp.FieldValues['company_code_bank']<>'0') AND (dm.Qtemp.FieldValues['number_va']<>'')
    AND (dm.Qtemp.FieldValues['va_name']<>'') AND (dm.Qtemp.FieldValues['va_name']<>'0') AND (dm.Qtemp.FieldValues['bank_name']<>'') then
    begin
      SetMemo(Report,'MemVA3',': '+dm.Qtemp.FieldValues['bank_name']);
      SetMemo(Report,'MemVA5',': '+dm.Qtemp.FieldValues['company_code_bank']+'-'+dm.Qtemp.FieldValues['number_va']);
      SetMemo(Report,'MemVA7',': '+dm.Qtemp.FieldValues['va_name']);

      Report.FindObject('MemVA1').Visible := True;
      Report.FindObject('MemVA2').Visible := True;
      Report.FindObject('MemVA3').Visible := True;
      Report.FindObject('MemVA4').Visible := True;
      Report.FindObject('MemVA5').Visible := True;
      Report.FindObject('MemVA6').Visible := True;
      Report.FindObject('MemVA7').Visible := True;
    end else begin
      SetMemo(Report,'MemVA3','');
      SetMemo(Report,'MemVA5','');
      SetMemo(Report,'MemVA7','');
      Report.FindObject('MemVA1').Visible := False;
      Report.FindObject('MemVA2').Visible := False;
      Report.FindObject('MemVA3').Visible := False;
      Report.FindObject('MemVA4').Visible := False;
      Report.FindObject('MemVA5').Visible := False;
      Report.FindObject('MemVA6').Visible := False;
      Report.FindObject('MemVA7').Visible := False;
    end;


      with dm.Qtemp3 do
      begin
        Close;
        SQl.Clear;
        SQl.Text:='CALL "InsertSPLogActivity" ('+QuotedStr(Nm)+',''Penjualan'',''M13002'', '+
                  ' ''1.0'','+QuotedStr(GetLocalIP)+',False,False,False, False, '+
                  ' ''Cetak Nota Tagihan untuk pelanggan '+
                  QPenjualan.FieldByName('name_cust').AsString+' dengan nomor transaksi '+
                  QPenjualan.FieldByName('trans_no').AsString+' '', '+
                  'True,'+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+');';
        ExecSQL;
      end;

//     if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')= 'dev' then
//      begin
//       Report.DesignReport();
//      end else
//      begin
        Report.ShowReport();
//   end;
 end;
end;

procedure TFDataListPenjualan.dxBarLargeButton4Click(Sender: TObject);
var tanggal,bulan,tahun,berat_isi,berat_kosong,code_unit,vehicles:String;
begin
  with QCetakSJ do
  begin
    close;
    sql.clear;
    sql.add(' select a."trans_no", "no_traveldoc", "trans_date", a."code_cust", '+
         ' a."name_cust",  d."address",e."address" AS address2, b."code_item", b."name_item",  b."amount", '+
         ' b."code_unit", b."name_unit", a."no_reference", b."code_unit" as ket, '+
         '(SELECT SUM(gross_weight) FROM t_selling_det WHERE trans_no=a.trans_no AND '+
         'code_unit=b.code_unit)  gross_weight, (SELECT SUM(tare_weight) FROM t_selling_det '+
         'WHERE trans_no=a.trans_no AND code_unit=b.code_unit) tare_weight, '+
         'COALESCE((SELECT vehicles FROM t_delivery_order_services '+
         'WHERE notrans=(SELECT DISTINCT notrans '+
         'from t_delivery_order_load WHERE notrans_load=a.trans_no )),'''')::VARCHAR vehicles '+
         ' from "public"."t_selling" a  '+
         ' LEFT JOIN "public"."t_selling_det" b ON a.trans_no=b.trans_no  '+
    //             ' LEFT JOIN "public"."t_selling_piece" c ON a.trans_no=c.trans_no  '+
         ' LEFT JOIN (SELECT "customer_code", "address" from "public"."t_customer_address" '+
         ' where "code_details"=''003'') d on a.code_cust=d.customer_code  '+
          ' LEFT JOIN (SELECT "customer_code", "address" from "public"."t_customer_address" '+
         ' where "code_details"=''002'') e on a.code_cust=e.customer_code  '+
         ' where a.deleted_at is null and  '+
         ' a.trans_no='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+'  '+
         ' order by b.created_at Desc');
    open;
  end;


  if QCetakSJ.RecordCount=0 then
  begin
    showmessage('Tidak ada data yang bisa dicetak !');
    exit;
  end;

  if QCetakSJ.RecordCount<>0 then
  begin
    tanggal:=FormatDateTime('dd',QCetakSJ.FieldValues['trans_date']);
    bulan:=convbulanInd(strtoint(FormatDateTime('mm',QCetakSJ.FieldValues['trans_date'])));
    tahun:=FormatDateTime('yyyy',QCetakSJ.FieldValues['trans_date']);
  //  ShowMessage(QCetakSJ.FieldValues['gross_weight']);
    berat_isi:=FormatFloat('#,##0.##', QCetakSJ.FieldValues['gross_weight']);
    berat_kosong:=FormatFloat('#,##0.##', QCetakSJ.FieldValues['tare_weight']);
    code_unit:=QCetakSJ.FieldValues['code_unit'];
    vehicles:=QCetakSJ.FieldByName('vehicles').AsString;

    with dm.Qtemp3 do
    begin
      Close;
      SQl.Clear;
      SQl.Text:='CALL "InsertSPLogActivity" ('+QuotedStr(Nm)+',''Penjualan'',''M13002'', '+
                ' ''1.0'','+QuotedStr(GetLocalIP)+',False,False,False, False, '+
                ' ''Cetak Surat Jalan Untuk Pelanggan '+
                QPenjualan.FieldByName('name_cust').AsString+' dengan nomor transaksi '+
                QPenjualan.FieldByName('trans_no').AsString+' '', '+
                'True,'+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+');';
      ExecSQL;
    end;
    cLocation := ExtractFilePath(Application.ExeName);

    //ShowMessage(cLocation);
    Report.LoadFromFile(cLocation +'report/rpt_suratjalan2'+ '.fr3');
    SetMemo(Report,'nama_pt','PT '+FHomeLogin.vKodePRSH);
//    SetMemo(Report,'kota_tanggal',FHomeLogin.vKotaPRSH+', '+formatdatetime('dd mmmm yyyy',NOW()));
    SetMemo(Report,'alamat_pt',FHomeLogin.vAlamatPRSH);
    SetMemo(Report,'tanggal',tanggal+' '+bulan+' '+tahun);

    SetMemo(Report,'nopol',vehicles);
    SetMemo(Report, 'labelberatkosong', 'Berat Kosong ('+code_unit+')');
    SetMemo(Report, 'labelberatisi', 'Berat Isi ('+code_unit+')');
    SetMemo(Report, 'beratkosong', berat_kosong);
    SetMemo(Report, 'beratisi', berat_isi);

    if berat_kosong = '0' then
    begin
      Report.FindObject('beratkosong').Visible := False;
      Report.FindObject('labelberatkosong').Visible := False;
      Report.FindObject('beratisi').Visible := False;
      Report.FindObject('labelberatisi').Visible := False;
      Report.FindObject('Memo25').Visible := False;
      Report.FindObject('Memo26').Visible := False;
    end
    else
    begin
      Report.FindObject('beratkosong').Visible := True;
      Report.FindObject('labelberatkosong').Visible := True;
      Report.FindObject('beratisi').Visible := True;
      Report.FindObject('labelberatisi').Visible := True;
      Report.FindObject('Memo25').Visible := True;
      Report.FindObject('Memo26').Visible := True;
    end;

    //Report.DesignReport();
    Report.ShowReport();
  end;

end;

procedure TFDataListPenjualan.dxBarLargeButton5Click(Sender: TObject);
begin
  with QJurnal do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * FROM "public"."VTrans_Journal"  '+
           ' where "trans_no"='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+' '+
           'AND ((status_dk = ''D'' AND (db <> 0 OR account_code = ''1104.01'')) '+
           'OR (status_dk = ''K'' AND kd <> 0));');
    open;
  end;

  if QJurnal.RecordCount=0 then
  begin
    showmessage('Tidak ada data yang bisa dicetak !');
    exit;
  end;

  if QJurnal.RecordCount<>0 then
  begin
    with dm.Qtemp3 do
    begin
      Close;
      SQl.Clear;
      SQl.Text:='CALL "InsertSPLogActivity" ('+QuotedStr(Nm)+',''Penjualan'',''M13002'', '+
                ' ''1.0'','+QuotedStr(GetLocalIP)+',False,False,False, False, '+
                ' ''Cetak Jurnal Penjualan Untuk Pelanggan '+
                QPenjualan.FieldByName('name_cust').AsString+' dengan nomor transaksi '+
                QPenjualan.FieldByName('trans_no').AsString+' '', '+
                'True,'+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+');';
      ExecSQL;
    end;

   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   ReportJurnal.LoadFromFile(cLocation +'report/rpt_trans_jurnal'+ '.fr3');
   SetMemo(ReportJurnal,'nm_judul','DAFTAR JURNAL PENJUALAN');
   SetMemo(ReportJurnal,'nama_pt',FHomeLogin.vNamaPRSH);
   //Report.DesignReport();
   ReportJurnal.ShowReport();
 end;

end;

procedure TFDataListPenjualan.dxBarLargeButton6Click(Sender: TObject);
begin
  Refresh;
end;

procedure TFDataListPenjualan.dxBarLargeButton7Click(Sender: TObject);
begin
  FExportFaktur.Clear;
  FExportFaktur.ShowModal;
end;

procedure TFDataListPenjualan.dxBarLargeButton8Click(Sender: TObject);
begin
  FAmplopPelanggan.Show;
end;

procedure TFDataListPenjualan.dxBarLargeButton9Click(Sender: TObject);
begin
  FPenyesuaianPenjualan.ShowModal;
end;

procedure TFDataListPenjualan.FormCreate(Sender: TObject);
begin
  realfdatalistpenjualan:=self;
end;

procedure TFDataListPenjualan.FormDestroy(Sender: TObject);
begin
  realfdatalistpenjualan:=nil;
end;

procedure TFDataListPenjualan.FormShow(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edKaresidenan.EditValue:='';
  vkd_kares:='';
  ActROExecute(sender);
end;

procedure TFDataListPenjualan.ReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'vTerbilang_qty') = 0 then
  begin
    status_pakai_terbilang:= 2;
    Value := '(  '+terbilang(FloatToStr(QCetakSJ.FieldByName('amount').AsFloat))+'  )  '+ QCetakSJ.FieldByName('code_unit').Asstring;
  end;
//  if (dm.Qtemp.FieldValues['company_code_bank']=NULL) OR
//    (dm.Qtemp.FieldValues['company_code_bank']='') OR (dm.Qtemp.FieldValues['number_va']=NULL) OR
//    (dm.Qtemp.FieldValues['number_va']='') OR (dm.Qtemp.FieldValues['va_name']=NULL) OR (dm.Qtemp.FieldValues['va_name']='') then
//  begin
//    if CompareText(VarName, 'VANamaBank') = 0 then
//    Value := dm.Qtemp.FieldValues['bank_name'];
//    if CompareText(VarName, 'VANO') = 0 then
//    Value := dm.Qtemp.FieldValues['number_va'];
//    if CompareText(VarName, 'VAATASNAMA') = 0 then
//    Value := dm.Qtemp.FieldValues['va_name'];
//  end else begin
//    if CompareText(VarName, 'VANamaBank') = 0 then
//    Value := '';
//    if CompareText(VarName, 'VANO') = 0 then
//    Value := '';
//    if CompareText(VarName, 'VAATASNAMA') = 0 then
//    Value := '';
//  end;

  if CompareText(VarName, 'parSubTotal') = 0 then
  Value := dm.Qtemp.FieldValues['sub_total'];
  if CompareText(VarName, 'HargaJual') = 0 then
  Value := dm.Qtemp.FieldValues['tot_before_piece'];
  if CompareText(VarName, 'TotalSebelumPajak') = 0 then
  Value := dm.Qtemp.FieldValues['sub_total'];
  if CompareText(VarName, 'TotPotongan') = 0 then
  Value := dm.Qtemp.FieldValues['tot_piece_value'];
  if CompareText(VarName, 'parPPN') = 0 then
  Value := dm.Qtemp.FieldValues['ppn_value'];
  if CompareText(VarName, 'parPembulatan') = 0 then
  Value := dm.Qtemp.FieldValues['pembulatan_value'];
  if CompareText(VarName, 'parGrandTotal') = 0 then
  Value := dm.Qtemp.FieldValues['grand_tot'];
end;

initialization
  RegisterClass(TFDataListPenjualan);

end.
