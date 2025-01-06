unit u_daf_keluar_kas_bank;

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
  RzButton, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel, dxRibbon, dxBar,
  cxClasses, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Data.DB, MemDS,
  DBAccess, Uni, frxClass, frxDBSet;

type
  TFdaf_pengeluaran_kas_bank = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DBGridKasBank: TDBGridEh;
    DBGridEh1: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    DateTimePicker2: TDateTimePicker;
    BCari: TRzBitBtn;
    DateTimePicker1: TDateTimePicker;
    QDaf_Pengeluaran_Kas_Bank: TUniQuery;
    DSKeluarKasBank: TDataSource;
    QDaf_Pengeluaran_Kas_Bankid: TLargeintField;
    QDaf_Pengeluaran_Kas_Bankvoucher_no: TStringField;
    QDaf_Pengeluaran_Kas_Bankvoucher_tmp: TStringField;
    QDaf_Pengeluaran_Kas_Banksubvoucher: TFloatField;
    QDaf_Pengeluaran_Kas_Bankremark: TStringField;
    QDaf_Pengeluaran_Kas_Bankentry_date: TDateField;
    QDaf_Pengeluaran_Kas_Banktrans_date: TDateField;
    QDaf_Pengeluaran_Kas_Bankperiode1: TDateField;
    QDaf_Pengeluaran_Kas_Bankperiode2: TDateField;
    QDaf_Pengeluaran_Kas_Bankamount: TFloatField;
    QDaf_Pengeluaran_Kas_Bankaccount_code: TStringField;
    QDaf_Pengeluaran_Kas_Bankgroup_code: TStringField;
    QDaf_Pengeluaran_Kas_Bankgroup_name: TStringField;
    QDaf_Pengeluaran_Kas_Banktp_code: TStringField;
    QDaf_Pengeluaran_Kas_Bankaccount_name: TStringField;
    QDaf_Pengeluaran_Kas_Bankdk: TStringField;
    QDaf_Pengeluaran_Kas_Bankperpetrator_id: TIntegerField;
    QDaf_Pengeluaran_Kas_Bankdebit: TFloatField;
    QDaf_Pengeluaran_Kas_Bankkredit: TFloatField;
    QDaf_Pengeluaran_Kas_Bankheader_code: TStringField;
    QDaf_Pengeluaran_Kas_Bankref_no: TStringField;
    QDaf_Pengeluaran_Kas_Bankposting: TStringField;
    QDaf_Pengeluaran_Kas_Bankcustomer_code: TStringField;
    QDaf_Pengeluaran_Kas_Banksupplier_code: TStringField;
    QDaf_Pengeluaran_Kas_Bankcash_type: TStringField;
    QDaf_Pengeluaran_Kas_Bankjob_no: TStringField;
    QDaf_Pengeluaran_Kas_Bankcompany_code: TStringField;
    QDaf_Pengeluaran_Kas_Banktrans_year: TSmallintField;
    QDaf_Pengeluaran_Kas_Banktrans_month: TSmallintField;
    QDaf_Pengeluaran_Kas_Banktrans_day: TSmallintField;
    QDaf_Pengeluaran_Kas_Bankorder_no: TIntegerField;
    QDaf_Pengeluaran_Kas_Bankgiro_no: TStringField;
    QDaf_Pengeluaran_Kas_Bankbank_giro_name: TStringField;
    QDaf_Pengeluaran_Kas_Bankgiro_due_date: TDateField;
    QDaf_Pengeluaran_Kas_Bankcustomer_name: TStringField;
    QDaf_Pengeluaran_Kas_Banksupplier_name: TStringField;
    QDaf_Pengeluaran_Kas_Bankto_: TStringField;
    QDaf_Pengeluaran_Kas_Bankdeposit: TStringField;
    QDaf_Pengeluaran_Kas_Bankdeposit_date: TDateField;
    QDaf_Pengeluaran_Kas_Banktgup: TDateField;
    QDaf_Pengeluaran_Kas_Bankvoucher_code: TStringField;
    QDaf_Pengeluaran_Kas_Bankto_getout: TStringField;
    QDaf_Pengeluaran_Kas_Bankstat: TSmallintField;
    QDaf_Pengeluaran_Kas_Banktime_lock: TDateTimeField;
    QDaf_Pengeluaran_Kas_Bankupdate_time: TDateTimeField;
    QDaf_Pengeluaran_Kas_Bankstat_lock: TBooleanField;
    QDaf_Pengeluaran_Kas_Bankcurrency: TStringField;
    QDaf_Pengeluaran_Kas_Bankkurs: TFloatField;
    QDaf_Pengeluaran_Kas_Bankbon_no: TStringField;
    QDaf_Pengeluaran_Kas_Bankpost_status: TSmallintField;
    QDaf_Pengeluaran_Kas_Bankcreated_at: TDateTimeField;
    QDaf_Pengeluaran_Kas_Bankcreated_by: TStringField;
    QDaf_Pengeluaran_Kas_Bankupdated_at: TDateTimeField;
    QDaf_Pengeluaran_Kas_Bankupdated_by: TStringField;
    QDaf_Pengeluaran_Kas_Bankdeleted_at: TDateTimeField;
    QDaf_Pengeluaran_Kas_Bankdeleted_by: TStringField;
    QDaf_Pengeluaran_Kas_Bankbank_norek: TStringField;
    QDaf_Pengeluaran_Kas_Bankbank_name: TStringField;
    QDaf_Pengeluaran_Kas_Bankcek_no: TStringField;
    QDaf_Pengeluaran_Kas_Banktrans_type_code: TStringField;
    QDaf_Pengeluaran_Kas_Banktrans_type_name: TStringField;
    QDaf_Pengeluaran_Kas_Bankbank_number_account: TStringField;
    QDaf_Pengeluaran_Kas_Bankbank_name_account: TStringField;
    QDaf_Pengeluaran_Kas_Bankadditional_code: TStringField;
    frxDBDBukti_Keluar: TfrxDBDataset;
    QBukti_Keluar: TUniQuery;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    Report: TfrxReport;
    frxDBDJurnal: TfrxDBDataset;
    QJurnal: TUniQuery;
    DSDetail_Hutang: TDataSource;
    DSDetail_Akun: TDataSource;
    QDetail_Hutang: TUniQuery;
    QDetail_akun: TUniQuery;
    QDaf_Pengeluaran_Kas_Bankmodule_id: TIntegerField;
    QBukti_Keluar_det: TUniQuery;
    frxDBDBukti_Keluar_det: TfrxDBDataset;
    procedure ActBaruExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdaf_pengeluaran_kas_bank: TFdaf_pengeluaran_kas_bank;

implementation

{$R *.dfm}

uses UDataPengeluaranKasBank, UDataModule,UMy_Function,UHomeLogin;


procedure TFdaf_pengeluaran_kas_bank.ActBaruExecute(Sender: TObject);
begin
   FDataPengeluaranKasBank.Show;
end;

procedure TFdaf_pengeluaran_kas_bank.ActDelExecute(Sender: TObject);
begin
  //MessageDlg('Cek Apakah sudah dilakukan tahap pelunasan apa belum...',mtInformation,[MBOK],0);

  if MessageDlg('Apakah anda yakin ingin membatalkan pelunasan ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "public"."t_cash_bank_expenditure" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "voucher_no"='+QuotedStr(QDaf_Pengeluaran_Kas_Bank.FieldByName('voucher_no').AsString);
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

procedure TFdaf_pengeluaran_kas_bank.ActROExecute(Sender: TObject);
begin
  DBGridKasBank.StartLoadingStatus();
  try
   with QDaf_Pengeluaran_Kas_Bank do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_cash_bank_expenditure" '+
                 ' where deleted_at is null order by created_at Desc ';
       open;
   end;
  finally
  DBGridKasBank.FinishLoadingStatus();
  end;
end;

procedure TFdaf_pengeluaran_kas_bank.ActUpdateExecute(Sender: TObject);
begin
      with FDataPengeluaranKasBank do
      begin
        MemDetailAkun.Close;
        MemDetailAkun.Open;
        MemDetailHutang.Close;
        MemDetailHutang.Open;
        show;
        code_trans.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('trans_type_code').AsString;
        Ed_id_modul.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('module_id').AsString;
        if Ed_id_modul.Text='5' then
           cbsumberdata.Text:='BANK';
        if Ed_id_modul.Text='6' then
           cbsumberdata.Text:='KAS';

        edNoTrans.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('voucher_no').AsString;
        dtTrans.Date:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('trans_date').asdatetime;
        dtperiode1.Date:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('periode1').asdatetime;
        dtperiode2.Date:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('periode2').asdatetime;
        FDataPengeluaranKasBank.no_bon:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('bon_no').AsString;
        no_bon:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('bon_no').AsString;
        edUntukPengeluaran.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('to_getout').AsString;
        Ed_kepada.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('to_').AsString;
        MemKeterangan.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('remark').AsString;
        Ed_Additional.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('additional_code').AsString;
        FDataPengeluaranKasBank.edJumlah.value:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('amount').Value;
        edKode_supplier.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('supplier_code').AsString;
        edNama_Supplier.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('supplier_name').AsString;
        edKodeMataUang.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('currency').AsString;
        Edkurs.Value:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('kurs').Value;
        edJumlah.Value:=QDaf_Pengeluaran_Kas_Bank.FieldByName('amount').Value;
        edKodeSumberPengeluaran.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('ref_no').Asstring;
        ednamabank.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('bank_name').AsString;
        edNoRek.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('bank_norek').AsString;
        FDataPengeluaranKasBank.code_trans.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('trans_type_code').AsString;
        Ed_id_modul.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('module_id').AsString;
        Edhari.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('trans_day').AsString;
        Edbln.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('trans_month').AsString;
        Edth.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('trans_year').AsString;
        Ed_voucher_ajuan.Text:=QDaf_Pengeluaran_Kas_Bank.fieldbyname('voucher_tmp').AsString;

        //detail akun
        with QDetail_akun do
        begin
          close;
          sql.clear;
          sql.add(' SELECT * from ('+
                  ' SELECT * from "public"."t_cash_bank_expenditure_det"'+
                  ' WHERE "no_voucher"='+Quotedstr(DBGridKasBank.Fields[0].Asstring)+' ) a '+
                  ' Order By position asc');
          open;
        end;

        with FDataPengeluaranKasBank do
        begin
          MemDetailAkun.EmptyTable;
          QDetail_akun.First;
          while not QDetail_akun.Eof do
          begin
              MemDetailAkun.Insert;
              MemDetailAkun['kd_akun']:=QDetail_akun.fieldbyname('code_account').AsString;
              MemDetailAkun['nm_akun']:=QDetail_akun.FieldByName('name_account').AsString;
              if QDetail_akun.FieldByName('position').AsString='D' then
              begin
                MemDetailAkun['debit']:=QDetail_akun.FieldByName('paid_amount').Value;
                MemDetailAkun['kredit']:='0';
              end;
              if QDetail_akun.FieldByName('position').AsString='K' then
              begin
                MemDetailAkun['kredit']:=QDetail_akun.FieldByName('paid_amount').Value;
                MemDetailAkun['debit']:='0';
              end;
              MemDetailAkun['keterangan']:=QDetail_akun.FieldByName('description').AsString;
              MemDetailAkun['kd_header_akun']:=QDetail_akun.FieldByName('code_account_header').AsString;
              //MemDetailAkun['modul_id']:=QDetail_akun.FieldByName('module_id').AsString;
              MemDetailAkun.post;
              QDetail_akun.Next;
          end;
        end;

        //detail faktur
        with QDetail_Hutang do
        begin
          close;
          sql.clear;
          sql.add(' SELECT * from ('+
                  ' SELECT * from "public"."t_cash_bank_expenditure_payable" '+
                  //' WHERE "voucher_no"='+QuotedStr(QDetail_Hutang_Ajuan.FieldByName('voucher_no').AsString)+' ) a '+
                  'WHERE voucher_no='+Quotedstr(DBGridKasBank.Fields[0].Asstring)+' ) a '+
                  ' Order By voucher_no desc');
          open;
        end;

        with FDataPengeluaranKasBank do
        begin
          MemDetailHutang.EmptyTable;
          QDetail_Hutang.First;
          while not QDetail_Hutang.Eof do
          begin
              MemDetailHutang.Insert;
              MemDetailHutang['no_tagihan']:=QDetail_Hutang.fieldbyname('invoice_no').AsString;
              MemDetailHutang['no_faktur']:=QDetail_Hutang.fieldbyname('faktur_no').AsString;
              MemDetailHutang['tgl_faktur']:=QDetail_Hutang.fieldbyname('faktur_date').AsString;
              MemDetailHutang['no_sj']:=QDetail_Hutang.fieldbyname('sj_no').AsString;
              MemDetailHutang['jum_hutang']:=QDetail_Hutang.fieldbyname('paid_amount').Value;
              MemDetailHutang['keterangan']:=QDetail_Hutang.FieldByName('description').AsString;
              MemDetailHutang.post;
              QDetail_Hutang.Next;
          end;
        end;

        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='SELECT * from t_master_trans_account where code_module='+Quotedstr(FDataPengeluaranKasBank.Ed_id_modul.Text)+' '+
                    ' and code_trans='+Quotedstr(FDataPengeluaranKasBank.code_trans.Text)+' ';
          open;
          Cb_jenis_trans.text:=fieldbyname('name_trans').AsString;
        end;

        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='SELECT * from  t_currency where currency_code='+Quotedstr(FDataPengeluaranKasBank.Edkodematauang.Text)+' ';
          open;
          edNamaMataUang.text:=fieldbyname('currency_name').AsString;
        end;
        Fdaf_pengeluaran_kas_bank.Close;
      end;
end;

procedure TFdaf_pengeluaran_kas_bank.dxBarLargeButton1Click(Sender: TObject);
begin
  with QBukti_Keluar do
  begin
     close;
     sql.clear;
     sql.Add('SELECT A.*,"code_account_header","name_account","paid_amount","ket","module_id" FROM '+
             '(SELECT voucher_no,voucher_tmp,subvoucher,remark,	entry_date,	trans_date,	periode1,	periode2, '+
             'amount,account_code, group_code, group_name,tp_code,account_name,dk, perpetrator_id,debit,kredit, '+
             'header_code,ref_no,posting,customer_code,supplier_code,cash_type,job_no,company_code,trans_year,'+
             'trans_month,trans_day,order_no,giro_no,bank_giro_name,giro_due_date,customer_name,supplier_name,to_,'+
             'deposit,deposit_date,tgup,voucher_code,to_getout,stat,time_lock,update_time,stat_lock,currency,'+
             'kurs,bon_no,post_status,created_at,created_by,updated_at,updated_by,deleted_at,deleted_by,bank_norek,'+
             'bank_name,cek_no,trans_type_code,trans_type_name,bank_number_account,bank_name_account,additional_code '+
             'FROM "public"."t_cash_bank_expenditure" A WHERE "voucher_no"='+QuotedStr(QDaf_Pengeluaran_Kas_Bank.FieldByName('voucher_no').AsString)+' '+
             'AND deleted_at IS NULL) A '+
             'LEFT JOIN '+
             '(SELECT no_voucher,code_account,name_account,position,paid_amount,description as ket,code_account_header, '+
             'amount_rate_results,module_id,trans_date,no_voucher_sub FROM "public"."t_cash_bank_expenditure_det" aa '+
             'LEFT JOIN t_ak_account bb ON aa."code_account_header" = bb.code) b ON A."voucher_no" = b."no_voucher" '+
             'WHERE A."voucher_no"='+QuotedStr(QDaf_Pengeluaran_Kas_Bank.FieldByName('voucher_no').AsString)+' '+
             'AND "position" = ''D'' ');
     open;
  end;

  if QBukti_Keluar.RecordCount=0 then
  begin
    showmessage('Tidak ada data yang bisa dicetak !');
    exit;
  end;
  if QBukti_Keluar.RecordCount<>0 then
  begin
     // Dapetin Grand Total
     with dm.Qtemp do
     begin
       close;
       sql.clear;
       sql.add(' select * '+
               ' from "public"."t_cash_bank_expenditure" a '+
               ' where a.deleted_at is null and '+
               ' a.voucher_no='+QuotedStr(QDaf_Pengeluaran_Kas_Bank.FieldByName('voucher_no').AsString)+' ');
       open;
     end;
     //
     //keterangan
     with QBukti_Keluar_det do
     begin
       close;
       sql.clear;
       sql.add(' SELECT aa.*,ket from "public"."v_buktipengeluaran" aa '+
               ' LEFT JOIN (SELECT voucher_no , STRING_AGG("keterangan", E'+QuotedStr(', \n')+') as ket '+
               ' from "public"."v_buktipengeluaran" where "voucher_no"= '+
               ' '+QuotedStr(QDaf_Pengeluaran_Kas_Bank.FieldByName('voucher_no').AsString)+' GROUP BY voucher_no) bb '+
               ' ON aa."voucher_no"=bb."voucher_no" '+
               ' where aa."voucher_no"='+QuotedStr(QDaf_Pengeluaran_Kas_Bank.FieldByName('voucher_no').AsString)+' ');
       open;
     end;


     cLocation := ExtractFilePath(Application.ExeName);

     //ShowMessage(cLocation);
     Report.LoadFromFile(cLocation +'report/Bukti_Pengeluaran'+'.fr3');
     SetMemo(Report,'nama_pt',FHomeLogin.vKodePRSH);
     SetMemo(Report,'kota_tanggal',FHomeLogin.vKotaPRSH+', '+formatdatetime('dd mmmm yyyy',NOW()));
     SetMemo(Report,'terbilang',UraikanAngka(floattostr(dm.Qtemp.FieldByName('amount').AsFloat)));
     if QBukti_Keluar.FieldByName('module_id').AsString='6' then//kas
     begin
      SetMemo(Report,'vkas','X');
      SetMemo(Report,'vbank','');
     end;
     if QBukti_Keluar.FieldByName('module_id').AsString='5' then//bank
     begin
      SetMemo(Report,'vkas','');
      SetMemo(Report,'vbank','X');
     end;

     //Report.DesignReport();
     Report.ShowReport();
   end;
end;

procedure TFdaf_pengeluaran_kas_bank.dxBarLargeButton2Click(Sender: TObject);
begin
    with QJurnal do
    begin
     close;
     sql.clear;
     sql.add(' SELECT * FROM "public"."VTrans_Journal"  '+
             ' where "trans_no"='+QuotedStr(QDaf_Pengeluaran_Kas_Bank.FieldByName('voucher_no').AsString)+'');
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
   SetMemo(Report,'nm_judul','DAFTAR JURNAL PENGELUARAN');
   SetMemo(Report,'nama_pt',FHomeLogin.vNamaPRSH);
   //Report.DesignReport();
   Report.ShowReport();
 end;
end;

procedure TFdaf_pengeluaran_kas_bank.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date:=Now;
  DateTimePicker2.Date:=Now;
  if QDaf_Pengeluaran_Kas_Bank.Active=false then
     QDaf_Pengeluaran_Kas_Bank.Active:=true;
  if QDetail_akun.Active=false then
     QDetail_akun.Active:=true;
  if QDetail_akun.Active=false then
     QDetail_akun.Active:=true;
   ActROExecute(sender);
   QDetail_akun.Close;
   QDetail_akun.Open;
   QDetail_akun.Close;
   QDetail_akun.Open;
end;

initialization
RegisterClass(TFdaf_pengeluaran_kas_bank);

end.
