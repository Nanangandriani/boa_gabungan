unit UListReturPenjualan;

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
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, frxClass, frxDBSet, dxBarExtItems;

type
  TFListReturPenjualan = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridList: TDBGridEh;
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
    QReturJual: TUniQuery;
    DsReturJual: TDataSource;
    QReturJualid: TGuidField;
    QReturJualcreated_at: TDateTimeField;
    QReturJualcreated_by: TStringField;
    QReturJualupdated_at: TDateTimeField;
    QReturJualupdated_by: TStringField;
    QReturJualdeleted_at: TDateTimeField;
    QReturJualdeleted_by: TStringField;
    QReturJualcode_cust: TStringField;
    QReturJualname_cust: TStringField;
    QReturJualcode_type_return: TStringField;
    QReturJualname_type_return: TStringField;
    QReturJualdescription: TMemoField;
    QReturJualorder_no: TIntegerField;
    QReturJualtrans_day: TStringField;
    QReturJualtrans_month: TStringField;
    QReturJualtrans_year: TStringField;
    QReturJualsub_total: TFloatField;
    QReturJualppn_value: TFloatField;
    QReturJualpph_value: TFloatField;
    QReturJualgrand_tot: TFloatField;
    QReturJualtrans_no: TStringField;
    QReturJualtrans_date: TDateField;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    QCetak: TUniQuery;
    frxDBDRetPenjualan: TfrxDBDataset;
    Report: TfrxReport;
    QCetaktrans_no: TStringField;
    QCetakcode_item: TStringField;
    QCetakname_item: TStringField;
    QCetakamount: TFloatField;
    QCetakamount_sale: TFloatField;
    QCetakcode_unit: TStringField;
    QCetakname_unit: TStringField;
    QCetakunit_price: TFloatField;
    QCetakunit_price_sale: TFloatField;
    QCetaksub_total: TFloatField;
    QCetakppn_account: TStringField;
    QCetakppn_percent: TFloatField;
    QCetakppn_value: TFloatField;
    QCetakpph_account: TStringField;
    QCetakpph_value: TFloatField;
    QCetakpph_name: TStringField;
    QCetakpph_percent: TFloatField;
    QCetakgrand_tot: TFloatField;
    QCetakaccount_code: TStringField;
    QCetakcode_cust: TStringField;
    QCetakname_cust: TStringField;
    QCetakno_trans_sale: TStringField;
    QCetaktrans_date: TDateField;
    QCetakaddress: TMemoField;
    dxBarLargeButton2: TdxBarLargeButton;
    QJurnal: TUniQuery;
    frxDBDJurnal: TfrxDBDataset;
    dxBarManager1Bar3: TdxBar;
    cbBulan: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    dxBarLargeButton3: TdxBarLargeButton;
    DBGridEh1: TDBGridEh;
    DSdetail: TDataSource;
    Qdetail: TUniQuery;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure QReturJualdescriptionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
  end;

var
  FListReturPenjualan: TFListReturPenjualan;
  Status: Integer;

implementation

{$R *.dfm}

uses UDataReturPenjualan, UDataModule, UHomeLogin, UMy_Function, UMainMenu;

procedure TFListReturPenjualan.Refresh;
var mm: Integer;
begin
  mm:=cbBulan.ItemIndex+1;
  DBGridList.StartLoadingStatus();
  try
   with QReturJual do
   begin
       close;
       sql.Clear;
       sql.Text:= 'select * from "public"."t_sales_returns"   '+
                  'where EXTRACT(YEAR FROM trans_date)='+edTahun.Text+' AND '+
                  'EXTRACT(MONTH FROM trans_date)='+(IntToStr(mm))+' AND '+
                  'deleted_at is null order by created_at Desc ';
       open;
   end;
   Qdetail.Close;
   Qdetail.Open;
  finally
  DBGridList.FinishLoadingStatus();
  end;
end;

procedure TFListReturPenjualan.ReportGetValue(const VarName: string;
  var Value: Variant);
begin

  if CompareText(VarName, 'parSubTotal') = 0 then
  Value := dm.Qtemp.FieldValues['sub_total'];
  if CompareText(VarName, 'parDPPNilaiLain') = 0 then
  Value := dm.Qtemp.FieldValues['dpp_nilai_lain'];
  if CompareText(VarName, 'parPPN') = 0 then
  Value := dm.Qtemp.FieldValues['ppn_value'];
  if CompareText(VarName, 'parGrandTotal') = 0 then
  Value := dm.Qtemp.FieldValues['grand_tot'];
end;

procedure TFListReturPenjualan.ActBaruExecute(Sender: TObject);
begin
  FDataReturPenjualan.Clear;
  FDataReturPenjualan.BCorrection.Visible:=False;
  FDataReturPenjualan.bSave.Enabled:=True;
  FDataReturPenjualan.MemDetail.EmptyTable;
  FDataReturPenjualan.Status:=0;
  FDataReturPenjualan.edNoTrans.Enabled:=true;
  FDataReturPenjualan.ShowModal;
end;

procedure TFListReturPenjualan.ActDelExecute(Sender: TObject);
begin
  MessageDlg('Buatkan Validasi Tagihan Sudah Dibuat Tahap Lanjut Belum...',mtInformation,[MBOK],0);
  if MessageDlg('Apakah anda yakin ingin Membatalkan Retur ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
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
                  ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                  ' WHERE "trans_no"='+QuotedStr(QReturJual.FieldByName('trans_no').AsString);
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

procedure TFListReturPenjualan.ActROExecute(Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun.Text:=(year);
  cbBulan.ItemIndex:=StrToInt(month)-1;
  Refresh;
end;

procedure TFListReturPenjualan.ActUpdateExecute(Sender: TObject);
begin
  FDataReturPenjualan.Clear;
  with Dm.Qtemp do
  begin
     close;
     sql.Clear;
     sql.Text:=' select b.no_inv_tax,a.* from "public"."t_sales_returns" a '+
                'LEFT JOIN get_selling(NULL) b on b.trans_no=a.no_inv '+
               ' WHERE a.trans_no='+QuotedSTr(QReturJual.FieldByName('trans_no').AsString)+' '+
               ' AND a.deleted_at is null order by a.created_at Desc ';
     open;
  end;
  if Dm.Qtemp.RecordCount=0 then
  begin
    ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
    exit;
  end;
  if Dm.Qtemp.RecordCount<>0 then
  begin
    with FDataReturPenjualan do
    begin
      edNoTrans.Text:=Dm.Qtemp.FieldByName('trans_no').AsString;
      dtTanggal.Date:=Dm.Qtemp.FieldByName('trans_date').AsDateTime;
      edKode_Pelanggan.Text:=Dm.Qtemp.FieldByName('code_cust').AsString;
      edNama_Pelanggan.Text:=Dm.Qtemp.FieldByName('name_cust').AsString;
      kd_perkiraan_pel:=Dm.Qtemp.FieldByName('account_code').AsString;
      edKodeJenis.Text:=Dm.Qtemp.FieldByName('code_type_return').AsString;
      edNamaJenis.Text:=Dm.Qtemp.FieldByName('name_type_return').AsString;
      MemKeterangan.Text:=Dm.Qtemp.FieldByName('description').AsString;
      order_no:=Dm.Qtemp.FieldByName('order_no').AsString;
      edNoFaktur.Text:=Dm.Qtemp.FieldByName('no_inv_tax').AsString;
      //kd_kares:=Dm.Qtemp.FieldByName('additional_code').AsString;
      strtgl:=Dm.Qtemp.FieldByName('trans_day').AsString;
      strbulan:=Dm.Qtemp.FieldByName('trans_month').AsString;
      strtahun:=Dm.Qtemp.FieldByName('trans_year').AsString;
      edDPP.Value:=dm.Qtemp.FieldValues['sub_total'];
      edDPPNilaiLain.Value:=dm.Qtemp.FieldValues['dpp_nilai_lain'];
      edTotPPN.Value:=dm.Qtemp.FieldValues['ppn_value'];
      edGrandTot.Value:=dm.Qtemp.FieldValues['grand_tot'];
      StrNoINV:=dm.Qtemp.FieldValues['no_inv'];
      IntStatusKoreksi:=Dm.Qtemp.FieldValues['status_correction'];
    end;
  end;

  FDataReturPenjualan.edNoTrans.Enabled:=false;
  FDataReturPenjualan.RefreshGrid;
  FDataReturPenjualan.Status := 1;
  FDataReturPenjualan.Show;

end;

procedure TFListReturPenjualan.dxBarLargeButton1Click(Sender: TObject);
begin
  with QCetak do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from '+
            ' ( SELECT "trans_no", "code_item", "name_item", "amount", "amount_sale", '+
            ' "code_unit",  "name_unit", "unit_price", "unit_price_sale", "sub_total", '+
            ' "ppn_account", "ppn_percent",  "ppn_value", "pph_account", "pph_value", '+
            ' "pph_name", "pph_percent", "grand_tot", "account_code", "no_trans_sale"  '+
            ' FROM  "public"."t_sales_returns_det") a  '+
            ' LEFT JOIN (SELECT "trans_no", "trans_date", "code_cust", "name_cust" '+
            ' from "public"."t_sales_returns") b  ON a.trans_no=b.trans_no '+
            ' LEFT JOIN (SELECT "customer_code", "address" from "public"."t_customer_address" where "code_details"=''001'') d on b.code_cust=d.customer_code '+
            ' WHERE a.trans_no='+QuotedStr(QReturJual.FieldByName('trans_no').AsString)+' '+
            ' Order By a.trans_no, code_item desc');
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
           ' from "public"."t_sales_returns" a '+
           ' where a.deleted_at is null and '+
           ' a.trans_no='+QuotedStr(QReturJual.FieldByName('trans_no').AsString)+' ');
    open;
    end;
    //

    with dm.Qtemp3 do
    begin
      Close;
      SQl.Clear;
      SQl.Text:='CALL "InsertSPLogActivity" ('+QuotedStr(Nm)+',''Retur Penjualan'',''M13004'', '+
                ' ''1.0'','+QuotedStr(GetLocalIP)+',False,False,False, False, '+
                ' ''Cetak Surat Retur Penjualan Untuk Pelanggan '+
                QReturJual.FieldByName('name_cust').AsString+' dengan nomor transaksi '+
                QReturJual.FieldByName('trans_no').AsString+' '', '+
                'True,'+QuotedStr(QReturJual.FieldByName('trans_no').AsString)+');';
      ExecSQL;
    end;

     cLocation := ExtractFilePath(Application.ExeName);

     //ShowMessage(cLocation);
     Report.LoadFromFile(cLocation +'report/rpt_retur_penjualan'+ '.fr3');
     SetMemo(Report,'nama_pt',FHomeLogin.vNamaPRSH);
     SetMemo(Report,'kota',FHomeLogin.vKotaPRSH);
     SetMemo(Report,'alamat',FHomeLogin.vAlamatPRSH);
     SetMemo(Report,'telp','Phone : '+FHomeLogin.vTelpPRSH);
     SetMemo(Report,'terbilang',UraikanAngka(floattostr(dm.Qtemp.FieldByName('grand_tot').AsFloat)));
     //Report.DesignReport();
     Report.ShowReport();
  end;

end;

procedure TFListReturPenjualan.dxBarLargeButton2Click(Sender: TObject);
begin
  with QJurnal do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * FROM "public"."VTrans_Journal"  '+
         ' where "trans_no"='+QuotedStr(QReturJual.FieldByName('trans_no').AsString)+'');
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
      SQl.Text:='CALL "InsertSPLogActivity" ('+QuotedStr(Nm)+',''Retur Penjualan'',''M13004'', '+
                ' ''1.0'','+QuotedStr(GetLocalIP)+',False,False,False, False, '+
                ' ''Cetak Jurnal Retur Penjualan Untuk Pelanggan '+
                QReturJual.FieldByName('name_cust').AsString+' dengan nomor transaksi '+
                QReturJual.FieldByName('trans_no').AsString+' '', '+
                'True,'+QuotedStr(QReturJual.FieldByName('trans_no').AsString)+');';
      ExecSQL;
    end;

    cLocation := ExtractFilePath(Application.ExeName);

    //ShowMessage(cLocation);
    Report.LoadFromFile(cLocation +'report/rpt_trans_jurnal'+ '.fr3');
    SetMemo(Report,'nama_pt',FHomeLogin.vNamaPRSH);
    SetMemo(Report,'nm_judul','DAFTAR JURNAL PENJUALAN');
    //Report.DesignReport();
    Report.ShowReport();
  end;

end;

procedure TFListReturPenjualan.dxBarLargeButton3Click(Sender: TObject);
begin
  Refresh;
end;

procedure TFListReturPenjualan.FormShow(Sender: TObject);
begin
  ActROExecute(sender);
end;

procedure TFListReturPenjualan.QReturJualdescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QReturJualdescription.AsString, 1, 255);
end;

initialization
  RegisterClass(TFListReturPenjualan);


end.
