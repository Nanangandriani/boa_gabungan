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
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, frxClass, frxDBSet;

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
    QPenjualancode_cust: TStringField;
    QPenjualanname_cust: TStringField;
    QPenjualanpayment_term: TSmallintField;
    QPenjualanno_purchase: TStringField;
    QPenjualancode_source: TStringField;
    QPenjualanname_source: TStringField;
    DsPenjualan: TDataSource;
    QPenjualandate_trans: TDateField;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton3: TdxBarLargeButton;
    QCetak: TUniQuery;
    frxDBDPenjualan: TfrxDBDataset;
    Report: TfrxReport;
    QCetakno_inv_tax: TStringField;
    QCetakcode_cust: TStringField;
    QCetakname_cust: TStringField;
    QCetakaddress: TMemoField;
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
    QPenjualantrans_no: TStringField;
    QCetakSJtrans_no: TStringField;
    QCetaktrans_no: TStringField;
    QCetaktrans_date: TDateField;
    QCetakSJtrans_date: TDateField;
    QJurnal: TUniQuery;
    frxDBDJurnal: TfrxDBDataset;
    dxBarLargeButton5: TdxBarLargeButton;
    QJurnaltrans_no: TStringField;
    QJurnalaccount_code: TStringField;
    QJurnalmodule_id: TSmallintField;
    QJurnalmodule_name: TStringField;
    QJurnalstatus_dk: TStringField;
    QJurnalaccount_name: TStringField;
    QJurnaldb: TFloatField;
    QJurnalkd: TFloatField;
    QJurnaltrans_date: TDateField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
    procedure dxBarLargeButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataListPenjualan: TFDataListPenjualan;

implementation

{$R *.dfm}

uses UNew_DataPenjualan, UDataModule, UMy_Function, UHomeLogin;

procedure TFDataListPenjualan.ActBaruExecute(Sender: TObject);
begin
  FNew_Penjualan.Clear;
  //FNew_Penjualan.Autonumber;
  FNew_Penjualan.MemDetail.EmptyTable;
  Status:=0;
  FNew_Penjualan.edKode_Trans.Enabled:=true;
  FNew_Penjualan.edSuratJalanTrans.Enabled:=true;
  FNew_Penjualan.ShowModal;
end;

procedure TFDataListPenjualan.ActDelExecute(Sender: TObject);
begin
   {with dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_selling"   '+
                 ' where no_reference='+QuotedStr(QPenjualan.FieldByName('notrans').AsString)+' '+
                 ' AND deleted_at is null order by created_at Desc ';
       open;
   end;
   if dm.Qtemp.RecordCount<>0 then
   begin
     ShowMessage('Maaf, Proses Tidak Dapat Dilanjutkan Dikarenakan Sudah Di Buat Tagihan...!!!');
     exit;
   end;}

  MessageDlg('Buatkan Validasi Tagihan Sudah Dibuat Tahap Lanjut Belum...',mtInformation,[MBOK],0);

  if MessageDlg('Apakah anda yakin ingin Membatalkan Tagihan ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "sale"."t_selling"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "trans_no"='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString);
          ExecSQL;
        end;
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "sale"."t_selling_det"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "trans_no"='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString);
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

procedure TFDataListPenjualan.ActROExecute(Sender: TObject);
begin
  DBGridOrder.StartLoadingStatus();
  try
   with QPenjualan do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_selling"   '+
                 ' where deleted_at is null order by created_at Desc ';
       open;
   end;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
end;

procedure TFDataListPenjualan.ActUpdateExecute(Sender: TObject);
begin
   FNew_Penjualan.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_selling" a '+
                 ' WHERE "trans_no"='+QuotedSTr(QPenjualan.FieldByName('trans_no').AsString)+' '+
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
  with FNew_Penjualan do
  begin
    edKode_Trans.Text:=Dm.Qtemp.FieldByName('code_trans').AsString;
    edNomorFaktur.Text:=Dm.Qtemp.FieldByName('no_inv_tax').AsString;
    edNomorTrans.Text:=Dm.Qtemp.FieldByName('trans_no').AsString;
    edSuratJalanTrans.Text:=Dm.Qtemp.FieldByName('no_traveldoc').AsString;
    dtTanggal.Date:=Dm.Qtemp.FieldByName('trans_date').AsDateTime;
    edKode_Pelanggan.Text:=Dm.Qtemp.FieldByName('code_cust').AsString;
    edNama_Pelanggan.Text:=Dm.Qtemp.FieldByName('name_cust').AsString;
    edKodeSumber.Text:=Dm.Qtemp.FieldByName('code_source').AsString;
    edNamaSumber.Text:=Dm.Qtemp.FieldByName('name_source').AsString;
    spJatuhTempo.Text:=Dm.Qtemp.FieldByName('payment_term').AsString;
    edNoReff.Text:=Dm.Qtemp.FieldByName('no_reference').AsString;
    vFormSumber:=SelectRow('SELECT form_target from t_selling_source where code='+QuotedStr(Dm.Qtemp.FieldByName('code_source').AsString)+' ');
    order_no:=Dm.Qtemp.FieldByName('order_no').AsString;
    kd_kares:=Dm.Qtemp.FieldByName('additional_code').AsString;
    strtgl:=Dm.Qtemp.FieldByName('trans_day').AsString;
    strbulan:=Dm.Qtemp.FieldByName('trans_month').AsString;
    strtahun:=Dm.Qtemp.FieldByName('trans_year').AsString;
  end;
  end;
  FNew_Penjualan.edNomorTrans.Enabled:=false;
  FNew_Penjualan.edSuratJalanTrans.Enabled:=false;
  FNew_Penjualan.Show;
  Status := 1;
end;

procedure TFDataListPenjualan.dxBarLargeButton3Click(Sender: TObject);
begin
   with QCetak do
    begin
     close;
     sql.clear;
     sql.add(' select a."trans_no", "no_inv_tax", "trans_date", a."code_cust", a."name_cust", '+
             ' d."address", b."code_item", b."name_item", '+
             ' b."amount", b."code_unit", b."name_unit", a."no_reference", "unit_price", '+
             ' b."sub_total", b."ppn_account", "ppn_percent", b."ppn_value", b."pph_account", '+
             ' b."pph_name", b."pph_percent", b."pph_value", b."tot_piece_value", '+
             ' b."tot_piece_percent", b."grand_tot",  '+
             ' case when "piece_first" is null then 0 else "piece_first" end "piece_first", '+
             ' case when "piece_second" is null then 0 else "piece_second" end "piece_second", '+
             ' case when "piece_third" is null then 0 else "piece_third" end "piece_third", '+
             ' case when "piece_fourth" is null then 0 else "piece_fourth" end "piece_fourth" '+
             ' from "sale"."t_selling" a '+
             ' LEFT JOIN "sale"."t_selling_det" b ON a.trans_no=b.trans_no '+
             ' LEFT JOIN "sale"."t_selling_piece" c ON a.trans_no=c.trans_no '+
             ' LEFT JOIN (SELECT "customer_code", "address" from "public"."t_customer_address" where "code_details"=''001'') d on a.code_cust=d.customer_code '+
             ' where a.deleted_at is null and '+
             ' a.trans_no='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+' '+
             ' order by b.created_at Desc');
     open;
    end;


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
     sql.add(' select * '+
             ' from "sale"."t_selling" a '+
             ' where a.deleted_at is null and '+
             ' a.trans_no='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+' ');
     open;
    end;
    //

   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   Report.LoadFromFile(cLocation +'report/rpt_penjualan'+ '.fr3');
   SetMemo(Report,'nama_pt',FHomeLogin.vNamaPRSH);
   SetMemo(Report,'kota',FHomeLogin.vKotaPRSH);
   SetMemo(Report,'alamat',FHomeLogin.vAlamatPRSH);
   SetMemo(Report,'telp','Phone : '+FHomeLogin.vTelpPRSH);
   SetMemo(Report,'terbilang',UraikanAngka(floattostr(dm.Qtemp.FieldByName('grand_tot').AsFloat)));
   //Report.DesignReport();
   Report.ShowReport();
 end;

end;

procedure TFDataListPenjualan.dxBarLargeButton4Click(Sender: TObject);
begin
   with QCetakSJ do
    begin
     close;
     sql.clear;
     sql.add(' select a."trans_no", "no_traveldoc", "trans_date", a."code_cust", '+
             ' a."name_cust",  d."address", b."code_item", b."name_item",  b."amount", '+
             ' b."code_unit", b."name_unit", a."no_reference", b."code_unit" as ket from "sale"."t_selling" a  '+
             ' LEFT JOIN "sale"."t_selling_det" b ON a.trans_no=b.trans_no  '+
             ' LEFT JOIN "sale"."t_selling_piece" c ON a.trans_no=c.trans_no  '+
             ' LEFT JOIN (SELECT "customer_code", "address" from "public"."t_customer_address" '+
             ' where "code_details"=''001'') d on a.code_cust=d.customer_code  '+
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
   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   Report.LoadFromFile(cLocation +'report/rpt_suratjalan'+ '.fr3');
   SetMemo(Report,'nama_pt',FHomeLogin.vNamaPRSH);
   SetMemo(Report,'kota_tanggal',FHomeLogin.vKotaPRSH+', '+formatdatetime('dd mmmm yyyy',NOW()));
   SetMemo(Report,'alamat_pt',FHomeLogin.vAlamatPRSH);
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
             ' where "trans_no"='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+'');
     open;
    end;


 if QJurnal.RecordCount=0 then
 begin
  showmessage('Tidak ada data yang bisa dicetak !');
  exit;
 end;

 if QJurnal.RecordCount<>0 then
 begin
   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   Report.LoadFromFile(cLocation +'report/rpt_trans_jurnal'+ '.fr3');
   SetMemo(Report,'nama_pt',FHomeLogin.vNamaPRSH);
   //Report.DesignReport();
   Report.ShowReport();
 end;

end;

procedure TFDataListPenjualan.ReportGetValue(const VarName: string;
  var Value: Variant);
begin
if CompareText(VarName, 'vTerbilang_qty') = 0 then
  begin
    status_pakai_terbilang:= 2;
    Value := '(  '+terbilang(FloatToStr(QCetakSJ.FieldByName('amount').AsFloat))+'  )  '+ QCetakSJ.FieldByName('code_unit').Asstring;
  end;
end;

initialization
  RegisterClass(TFDataListPenjualan);

end.
