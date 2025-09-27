unit UListPenjualanPromosi;

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
  DynVarsEh, frxClass, frxDBSet, Data.DB, MemDS, DBAccess, Uni, dxBarExtItems,
  dxBar, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFListPenjualanPromosi = class(TForm)
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
    dxBarManager1Bar3: TdxBar;
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
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    cbBulan: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    QPenjualan: TUniQuery;
    DsPenjualan: TDataSource;
    QCetak: TUniQuery;
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
    QCetaktrans_no: TStringField;
    QCetaktrans_date: TDateField;
    frxDBDPenjualan: TfrxDBDataset;
    Report: TfrxReport;
    QCetakSJ: TUniQuery;
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
    frxDBDCetakSJ: TfrxDBDataset;
    QJurnal: TUniQuery;
    frxDBDJurnal: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
  end;

  function FListPenjualanPromosi: TFListPenjualanPromosi;

//var
//  FListPenjualanPromosi: TFListPenjualanPromosi;

implementation

{$R *.dfm}

uses UNew_DataPenjualanPromosi, UMy_Function, UDataModule, UHomeLogin,
  UAmplopPelanggan, UMainMenu, UExportFaktur;

var
  listpenjualanpromosi : TFListPenjualanPromosi;

function FListPenjualanPromosi: TFListPenjualanPromosi;
begin
  if listpenjualanpromosi <> nil then
    FListPenjualanPromosi:= listpenjualanpromosi
  else
    Application.CreateForm(TFListPenjualanPromosi, Result);
end;

procedure TFListPenjualanPromosi.Refresh;
var mm: Integer;
begin
  mm:=cbBulan.ItemIndex+1;
  DBGridOrder.StartLoadingStatus();
  try
   with QPenjualan do
   begin
       close;
       sql.Clear;
       sql.Text:='select * from get_selling(TRUE) '+
              'where EXTRACT(YEAR FROM trans_date)='+edTahun.Text+' AND '+
              'EXTRACT(MONTH FROM trans_date)='+(IntToStr(mm))+' ORDER BY created_at DESC';
       open;
   end;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
end;

procedure TFListPenjualanPromosi.ReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'vTerbilang_qty') = 0 then
  begin
    status_pakai_terbilang:= 2;
    Value := '(  '+terbilang(FloatToStr(QCetakSJ.FieldByName('amount').AsFloat))+'  )  '+ QCetakSJ.FieldByName('code_unit').Asstring;
  end;
  if CompareText(VarName, 'parSubTotal') = 0 then
  Value := dm.Qtemp.FieldValues['sub_total'];
  if CompareText(VarName, 'parPPN') = 0 then
  Value := dm.Qtemp.FieldValues['ppn_value'];
  if CompareText(VarName, 'parGrandTotal') = 0 then
  Value := dm.Qtemp.FieldValues['grand_tot'];
end;

procedure TFListPenjualanPromosi.ActBaruExecute(Sender: TObject);
begin
  FNew_DataPenjualanPromosi.Clear;
  //FNew_Penjualan.Autonumber;
  //FNew_DataPenjualanPromosi.trans_id_link:=SelectRow('SELECT uuid_generate_v4()::VARCHAR AS uuid_as_varchar;');
  FNew_DataPenjualanPromosi.Status:=0;
  with FNew_DataPenjualanPromosi do
  begin
    edNomorTrans.ReadOnly:=False;
    edSuratJalanTrans.ReadOnly:=False;
    edNama_Pelanggan.ReadOnly:=False;
    dtTanggal.Enabled:=True;
    edNamaSumber.ReadOnly:=False;
    edNoReff.ReadOnly:=False;
  end;

  FNew_DataPenjualanPromosi.ShowModal;
end;

procedure TFListPenjualanPromosi.ActROExecute(Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun.Text:=(year);
  cbBulan.ItemIndex:=StrToInt(month)-1;
  Refresh;
end;

procedure TFListPenjualanPromosi.ActUpdateExecute(Sender: TObject);
begin
  FNew_DataPenjualanPromosi.Clear;
  with FNew_DataPenjualanPromosi do
  begin
    edKode_Trans.Text:=QPenjualan.FieldByName('code_trans').AsString;
    edNama_Trans.Text:=SelectRow('select name from t_sales_transaction_source where code='+QuotedStr(QPenjualan.FieldByName('code_trans').AsString)+' ');
    edNomorFaktur.Text:=QPenjualan.FieldByName('no_inv_tax').AsString;
    edNomorTrans.Text:=QPenjualan.FieldByName('trans_no').AsString;
    edSuratJalanTrans.Text:=QPenjualan.FieldByName('no_traveldoc').AsString;
    dtTanggal.Date:=QPenjualan.FieldByName('trans_date').AsDateTime;
    edKode_Pelanggan.Text:=QPenjualan.FieldByName('code_cust').AsString;
    edNama_Pelanggan.Text:=QPenjualan.FieldByName('name_cust').AsString;
    edKodeSumber.Text:=QPenjualan.FieldByName('code_source').AsString;
    edNamaSumber.Text:=QPenjualan.FieldByName('name_source').AsString;
    spJatuhTempo.Text:=QPenjualan.FieldByName('payment_term').AsString;
    edNoReff.Text:=QPenjualan.FieldByName('no_reference').AsString;
    vFormSumber:=SelectRow('SELECT form_target from t_selling_source where code='+QuotedStr(QPenjualan.FieldByName('code_source').AsString)+' ');
    order_no:=QPenjualan.FieldByName('order_no').AsString;
    kd_kares:=QPenjualan.FieldByName('additional_code').AsString;
    strtgl:=QPenjualan.FieldByName('trans_day').AsString;
    strbulan:=QPenjualan.FieldByName('trans_month').AsString;
    strtahun:=QPenjualan.FieldByName('trans_year').AsString;
    kd_perkiraan_pel:=QPenjualan.FieldByName('account_code').AsString;
    IntStatusKoreksi:=QPenjualan.FieldValues['status_correction'];
  end;
  FNew_DataPenjualanPromosi.Status := 1;
  FNew_DataPenjualanPromosi.ShowModal;
end;

procedure TFListPenjualanPromosi.dxBarLargeButton3Click(Sender: TObject);
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
           ' from "public"."t_selling" a '+
           ' LEFT JOIN "public"."t_selling_det" b ON a.trans_no=b.trans_no '+
           ' LEFT JOIN "public"."t_selling_piece" c ON b.trans_no=c.trans_no and b.code_item=c.code_item '+
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
               ' from "public"."t_selling" a '+
               ' where a.deleted_at is null and '+
               ' a.trans_no='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+' ');
       open;
      end;




     cLocation := ExtractFilePath(Application.ExeName);

     //ShowMessage(cLocation);
     Report.LoadFromFile(cLocation +'report/rpt_penjualan'+ '.fr3');
     SetMemo(Report,'nama_pt',FHomeLogin.vNamaPRSH);
     SetMemo(Report,'kota',FHomeLogin.vKotaPRSH);
     SetMemo(Report,'alamat',FHomeLogin.vAlamatPRSH);
     SetMemo(Report,'telp','Phone : '+FHomeLogin.vTelpPRSH);
     SetMemo(Report,'terbilang',UraikanAngka(floattostr(dm.Qtemp.FieldByName('grand_tot').AsFloat)));
     //Report.DesignReport();
     //Report.ShowReport();

      with dm.Qtemp3 do
      begin
        Close;
        SQl.Clear;
        SQl.Text:='CALL "InsertSPLogActivity" ('+QuotedStr(FHomeLogin.Eduser.Text)+',''Penjualan'',''M13002'', '+
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

procedure TFListPenjualanPromosi.dxBarLargeButton4Click(Sender: TObject);
begin
  with QCetakSJ do
  begin
   close;
   sql.clear;
   sql.add(' select a."trans_no", "no_traveldoc", "trans_date", a."code_cust", '+
           ' a."name_cust",  d."address", b."code_item", b."name_item",  b."amount", '+
           ' b."code_unit", b."name_unit", a."no_reference", b."code_unit" as ket from "public"."t_selling" a  '+
           ' LEFT JOIN "public"."t_selling_det" b ON a.trans_no=b.trans_no  '+
//             ' LEFT JOIN "public"."t_selling_piece" c ON a.trans_no=c.trans_no  '+
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
    with dm.Qtemp3 do
      begin
        Close;
        SQl.Clear;
        SQl.Text:='CALL "InsertSPLogActivity" ('+QuotedStr(FHomeLogin.Eduser.Text)+',''Penjualan'',''M13002'', '+
                  ' ''1.0'','+QuotedStr(GetLocalIP)+',False,False,False, False, '+
                  ' ''Cetak Surat Jalan untuk pelanggan '+
                  QPenjualan.FieldByName('name_cust').AsString+' dengan nomor transaksi '+
                  QPenjualan.FieldByName('trans_no').AsString+' '', '+
                  'True,'+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+');';
        ExecSQL;
      end;
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

procedure TFListPenjualanPromosi.dxBarLargeButton5Click(Sender: TObject);
begin
   with fmainmenu.QJurnal do
    begin
     close;
     sql.clear;
     sql.add(' SELECT * FROM "public"."VTrans_Journal"  '+
             ' where "trans_no"='+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+'');
     open;
    end;


 if fmainmenu.QJurnal.RecordCount=0 then
 begin
  showmessage('Tidak ada data yang bisa dicetak !');
  exit;
 end;

 if fmainmenu.QJurnal.RecordCount<>0 then
 begin
    with dm.Qtemp3 do
    begin
      Close;
      SQl.Clear;
      SQl.Text:='CALL "InsertSPLogActivity" ('+QuotedStr(FHomeLogin.Eduser.Text)+',''Penjualan'',''M13002'', '+
                ' ''1.0'','+QuotedStr(GetLocalIP)+',False,False,False, False, '+
                ' ''Cetak Jurnal untuk pelanggan '+
                QPenjualan.FieldByName('name_cust').AsString+' dengan nomor transaksi '+
                QPenjualan.FieldByName('trans_no').AsString+' '', '+
                'True,'+QuotedStr(QPenjualan.FieldByName('trans_no').AsString)+');';
      ExecSQL;
    end;

   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   Report.LoadFromFile(cLocation +'report/rpt_trans_jurnal'+ '.fr3');
   SetMemo(Report,'nm_judul','DAFTAR JURNAL PENJUALAN');
   SetMemo(Report,'nama_pt',FHomeLogin.vNamaPRSH);
   //Report.DesignReport();
   Report.ShowReport();
 end;
end;

procedure TFListPenjualanPromosi.dxBarLargeButton6Click(Sender: TObject);
begin
  Refresh;
end;

procedure TFListPenjualanPromosi.dxBarLargeButton7Click(Sender: TObject);
begin
  FExportFaktur.Clear;
  FExportFaktur.ShowModal;
end;

procedure TFListPenjualanPromosi.dxBarLargeButton8Click(Sender: TObject);
begin
  FAmplopPelanggan.Show;
end;

procedure TFListPenjualanPromosi.FormCreate(Sender: TObject);
begin
  listpenjualanpromosi := Self;
end;

procedure TFListPenjualanPromosi.FormDestroy(Sender: TObject);
begin
  listpenjualanpromosi := nil;
end;

procedure TFListPenjualanPromosi.FormShow(Sender: TObject);
begin
  ActROExecute(sender);
end;

initialization
  RegisterClass(TFListPenjualanPromosi);

end.
