unit UListAmbilPengajuan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, cxGraphics, cxControls, cxLookAndFeels,
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
  dxRibbonCustomizationForm, cxClasses, dxRibbon, RzButton, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel;

type
  TFListAmbilPengajuan = class(TForm)
    QListPengajuan: TUniQuery;
    DsListPengajuan: TDataSource;
    DBGrid: TDBGridEh;
    QListPengajuanvoucher_no: TStringField;
    QListPengajuantrans_date: TDateField;
    QListPengajuanremark: TStringField;
    QListPengajuanto_: TStringField;
    QListPengajuanamount: TFloatField;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DS_Pengajuan: TDataSource;
    Qdaf_PengajuanKasBank: TUniQuery;
    Qdaf_PengajuanKasBankvoucher_no: TStringField;
    Qdaf_PengajuanKasBanksubvoucher: TFloatField;
    Qdaf_PengajuanKasBankremark: TStringField;
    Qdaf_PengajuanKasBankentry_date: TDateField;
    Qdaf_PengajuanKasBanktrans_date: TDateField;
    Qdaf_PengajuanKasBankperiode1: TDateField;
    Qdaf_PengajuanKasBankperiode2: TDateField;
    Qdaf_PengajuanKasBankamount: TFloatField;
    Qdaf_PengajuanKasBankaccount_code: TStringField;
    Qdaf_PengajuanKasBankaccount_name: TStringField;
    Qdaf_PengajuanKasBankdk: TStringField;
    Qdaf_PengajuanKasBankdebit: TFloatField;
    Qdaf_PengajuanKasBankkredit: TFloatField;
    Qdaf_PengajuanKasBankheader_code: TStringField;
    Qdaf_PengajuanKasBankref_no: TStringField;
    Qdaf_PengajuanKasBankposting: TStringField;
    Qdaf_PengajuanKasBankcustomer_code: TStringField;
    Qdaf_PengajuanKasBanksupplier_code: TStringField;
    Qdaf_PengajuanKasBankcash_type: TStringField;
    Qdaf_PengajuanKasBankjob_no: TStringField;
    Qdaf_PengajuanKasBankcompany_code: TStringField;
    Qdaf_PengajuanKasBanktp_code: TStringField;
    Qdaf_PengajuanKasBanktrans_year: TSmallintField;
    Qdaf_PengajuanKasBanktrans_month: TSmallintField;
    Qdaf_PengajuanKasBanktrans_day: TSmallintField;
    Qdaf_PengajuanKasBankorder_no: TIntegerField;
    Qdaf_PengajuanKasBankgiro_no: TStringField;
    Qdaf_PengajuanKasBankbank_giro_name: TStringField;
    Qdaf_PengajuanKasBankgiro_due_date: TDateField;
    Qdaf_PengajuanKasBankcustomer_name: TStringField;
    Qdaf_PengajuanKasBanksupplier_name: TStringField;
    Qdaf_PengajuanKasBankto_: TStringField;
    Qdaf_PengajuanKasBankdeposit: TStringField;
    Qdaf_PengajuanKasBankdeposit_date: TDateField;
    Qdaf_PengajuanKasBankvoucher_code: TStringField;
    Qdaf_PengajuanKasBankto_getout: TStringField;
    Qdaf_PengajuanKasBankstatus: TSmallintField;
    Qdaf_PengajuanKasBankapprove_status: TSmallintField;
    Qdaf_PengajuanKasBankapproval_date: TDateField;
    Qdaf_PengajuanKasBankapproval: TStringField;
    Qdaf_PengajuanKasBankapp_stat: TBooleanField;
    Qdaf_PengajuanKasBankcurrency: TStringField;
    Qdaf_PengajuanKasBankkurs: TFloatField;
    Qdaf_PengajuanKasBankplan_to: TSmallintField;
    Qdaf_PengajuanKasBankbon_no: TStringField;
    Qdaf_PengajuanKasBankbank_norek: TStringField;
    Qdaf_PengajuanKasBankbank_name: TStringField;
    Qdaf_PengajuanKasBankamount_origin: TFloatField;
    Qdaf_PengajuanKasBankdebit_amount_origin: TFloatField;
    Qdaf_PengajuanKasBankcredit_amount_origin: TFloatField;
    Qdaf_PengajuanKasBankcreated_at: TDateTimeField;
    Qdaf_PengajuanKasBankcreated_by: TStringField;
    Qdaf_PengajuanKasBankupdated_at: TDateTimeField;
    Qdaf_PengajuanKasBankupdated_by: TStringField;
    Qdaf_PengajuanKasBankdeleted_at: TDateTimeField;
    Qdaf_PengajuanKasBankdeleted_by: TStringField;
    Qdaf_PengajuanKasBanktrans_type_code: TStringField;
    Qdaf_PengajuanKasBanktrans_type_name: TStringField;
    Qdaf_PengajuanKasBankbank_number_account: TStringField;
    Qdaf_PengajuanKasBankbank_name_account: TStringField;
    Qdaf_PengajuanKasBankadditional_code: TStringField;
    Qdaf_PengajuanKasBankid: TLargeintField;
    Qdaf_PengajuanKasBankcode_module: TStringField;
    Qdaf_PengajuanKasBankname_module: TStringField;
    Qdaf_PengajuanKasBankname_trans: TStringField;
    Qdaf_PengajuanKasBankcode: TStringField;
    Qdaf_PengajuanKasBankname: TStringField;
    Qdaf_PengajuanKasBankcurrency_name: TStringField;
    Qdaf_PengajuanKasBanktgup: TDateField;
    Qdaf_PengajuanKasBanksource_name: TStringField;
    Qdaf_PengajuanKasBankcheque_no: TStringField;
    Qdaf_PengajuanKasBankcheque_date: TDateField;
    Qdaf_PengajuanKasBankcheque_due_date: TDateField;
    DSDetail_Akun_Ajun: TDataSource;
    DSDetail_Hutang_Ajuan: TDataSource;
    QDetail_Hutang_Ajuan: TUniQuery;
    QDetail_akun_ajuan: TUniQuery;
    QTP_Ajuan: TUniQuery;
    DSTP_Ajuan: TDataSource;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    DateTimePicker2: TDateTimePicker;
    BCari: TRzBitBtn;
    DateTimePicker1: TDateTimePicker;
    procedure DBGridSortMarkingChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure BCariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall : string;
  end;

var
  FListAmbilPengajuan: TFListAmbilPengajuan;

implementation

{$R *.dfm}

uses UDataPengeluaranKasBank, UMy_Function, Udaftar_TP;

procedure TFListAmbilPengajuan.BCariClick(Sender: TObject);
begin
   DBGrid.StartLoadingStatus();
   try
     with QListPengajuan do
     begin
        close;
        sql.clear;
        sql.add(' SELECT a.voucher_no, a.trans_date, a.remark, '+
                ' a.to_ , a.amount  from t_cash_bank_expenditure_submission a '+
                ' left join (select * from t_cash_bank_expenditure where deleted_at is null) b '+
                ' on a.voucher_no=b.voucher_tmp '+
                ' where a.deleted_at is null and b.voucher_no is null and '+
                ' (a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.DateTime))+' and '+
                ' '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.DateTime))+' or '+
                ' a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.DateTime))+' and '+
                ' a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.DateTime))+') '+
                ' order by a.trans_date, a.voucher_no asc');
        open;
     end;
   finally
   DBGrid.FinishLoadingStatus();
   end;
end;

procedure TFListAmbilPengajuan.DBGridDblClick(Sender: TObject);
begin
  if (vcall='keluar_kas_bank')and(QListPengajuan.RecordCount<>0) then
  begin
      with FDataPengeluaranKasBank do
      begin
         with Qdaf_PengajuanKasBank do
         begin
            close;
            sql.clear;
            sql.add('SELECT a."voucher_no",a."subvoucher",a."remark",a."entry_date",a."trans_date",a."periode1",a."periode2",a."amount", '+
                  'a."account_code",a."account_name",a."dk",a."debit",a."kredit",a."header_code",a."ref_no",a."posting",a."customer_code", '+
                  'a.supplier_code,a."cash_type",a."job_no",a."company_code",a."tp_code",a."trans_year",a."trans_month",a."trans_day", '+
                  'a."order_no",a."giro_no",a."bank_giro_name",a."giro_due_date",a."customer_name",a."supplier_name",a."to_",a."deposit", '+
                  'a."deposit_date",a."tgup",a."voucher_code",a."to_getout",a."status",a."approve_status",a."approval_date",a."approval", '+
                  'a."app_stat",a."currency",a."kurs",a."plan_to",a."bon_no",a."bank_norek",a."bank_name",a."amount_origin",a."debit_amount_origin",'+
                  'a."credit_amount_origin",a."created_at",a."created_by",a."updated_at",a."updated_by",a."deleted_at",a."deleted_by",a."trans_type_code", '+
                  'a."trans_type_name",a."bank_number_account",a."bank_name_account",a."additional_code",a."id",a.cheque_no,a.cheque_date,a.cheque_due_date '+
                  ',b."code_module",b."name_module",b."name_trans",c."code",c."name",d."currency_name",e."source_name"  FROM t_cash_bank_expenditure_submission a '+
                  'LEFT JOIN t_master_trans_account b on a."trans_type_code"=b.code_trans '+
                  'LEFT JOIN t_source_payment c on a."additional_code"=c.code '+
                  'LEFT JOIN t_currency d on a."currency"=d."currency_code" '+
                  'LEFT JOIN t_settlement_data_source e on a."ref_no"=e."code" '+
                  'where a."voucher_no"='+QuotedStr(QListPengajuan.fieldbyname('voucher_no').AsString)+' '+
                  'GROUP BY a."voucher_no",a."subvoucher",a."remark",a."entry_date",a."trans_date",a."periode1",a."periode2",a."amount",a."account_code", '+
                  'a."account_name",a."dk",a."debit",a."kredit",a."header_code",a."ref_no",a."posting",a."customer_code",a.supplier_code,a."cash_type",a."job_no", '+
                  'a."company_code",a."tp_code",a."trans_year",a."trans_month",a."trans_day",a."order_no",a."giro_no",a."bank_giro_name",a."giro_due_date",a."customer_name", '+
                  'a."supplier_name",a."to_",a."deposit",a."deposit_date",a."tgup",a."voucher_code",a."to_getout",a."status",a."approve_status",a."approval_date",a."approval", '+
                  'a."app_stat",a."currency",a."kurs",a."plan_to",a."bon_no",a."bank_norek",a."bank_name",a."amount_origin",a."debit_amount_origin",a."credit_amount_origin", '+
                  'a."created_at",a."created_by",a."updated_at",a."updated_by",a."deleted_at",a."deleted_by",a."trans_type_code",a."trans_type_name",a."bank_number_account", '+
                  'a."bank_name_account",a."additional_code",a."id",a.cheque_no,a.cheque_date,a.cheque_due_date '+
                  ',b."code_module",b."name_module",b."name_trans",c."code",c."name",d."currency_code",d."currency_name",e."source_name"  '+
                  'ORDER BY entry_date,voucher_no,trans_date,order_no ASC');
            open;
         end;

         Ed_voucher_ajuan.text:=Qdaf_PengajuanKasBank.fieldbyname('voucher_no').AsString;
         dtperiode1.Date:=Qdaf_PengajuanKasBank.fieldbyname('periode1').asdatetime;
         dtperiode2.Date:=Qdaf_PengajuanKasBank.fieldbyname('periode2').asdatetime;
         dtperiode1.Enabled:=false;
         dtperiode2.Enabled:=false;
         FDataPengeluaranKasBank.no_bon:=Qdaf_PengajuanKasBank.fieldbyname('bon_no').AsString;
         no_bon:=Qdaf_PengajuanKasBank.fieldbyname('bon_no').AsString;
         edUntukPengeluaran.Text:=Qdaf_PengajuanKasBank.fieldbyname('to_getout').AsString;
         Ed_kepada.Text:=Qdaf_PengajuanKasBank.fieldbyname('to_').AsString;
         MemKeterangan.Text:=Qdaf_PengajuanKasBank.fieldbyname('remark').AsString;
         Ed_Additional.Text:=Qdaf_PengajuanKasBank.fieldbyname('additional_code').AsString;
         FDataPengeluaranKasBank.edJumlah.value:=Qdaf_PengajuanKasBank.fieldbyname('amount').Value;
         edKode_supplier.Text:=Qdaf_PengajuanKasBank.fieldbyname('supplier_code').AsString;
         edNama_Supplier.Text:=Qdaf_PengajuanKasBank.fieldbyname('supplier_name').AsString;
         edKodeMataUang.Text:=Qdaf_PengajuanKasBank.fieldbyname('currency').AsString;
         Edkurs.Value:=Qdaf_PengajuanKasBank.fieldbyname('kurs').Value;
         CbRencana.Text:=Qdaf_PengajuanKasBank.fieldbyname('plan_to').Value;
         edKodeSumberPengeluaran.Text:=Qdaf_PengajuanKasBank.fieldbyname('ref_no').Asstring;
         ednamabank.Text:=Qdaf_PengajuanKasBank.fieldbyname('bank_name').AsString;
         edNoRek.Text:=Qdaf_PengajuanKasBank.fieldbyname('bank_norek').AsString;
         Edhari.Text:=Qdaf_PengajuanKasBank.fieldbyname('trans_day').AsString;
         Edbln.Text:=Qdaf_PengajuanKasBank.fieldbyname('trans_month').AsString;
         Edth.Text:=Qdaf_PengajuanKasBank.fieldbyname('trans_year').AsString;
         Ed_nocek.Text:=Qdaf_PengajuanKasBank.fieldbyname('cheque_no').AsString;
         tgl_cek.Date:=Qdaf_PengajuanKasBank.fieldbyname('cheque_date').AsDatetime;
         tgl_tempo_cek.Date:=Qdaf_PengajuanKasBank.fieldbyname('cheque_due_date').AsDatetime;

         //Dapetin Refresh Form
         FDataPengeluaranKasBank.code_trans.Text:=Qdaf_PengajuanKasBank.fieldbyname('trans_type_code').AsString;
         Ed_id_modul.Text:=Qdaf_PengajuanKasBank.fieldbyname('code_module').AsString;

          if Ed_id_modul.Text='5' then
          begin
             cbsumberdata.Text:='BANK';
             id_module:='5';
          end;
          if Ed_id_modul.Text='6' then
          begin
             cbsumberdata.Text:='KAS';
             id_module:='6';
          end;
          Cb_jenis_trans.Text:=SelectRow('SELECT name_trans from t_master_trans_account '+
           ' where code_trans='+QuotedStr(Qdaf_PengajuanKasBank.fieldbyname('trans_type_code').AsString)+' ');
         //

      end;

      FDataPengeluaranKasBank.cbsumberdataSelect(sender);
      FDataPengeluaranKasBank.Cb_jenis_transSelect(sender);
      with QDetail_Akun_Ajuan do
      begin
         close;
         sql.Clear;
         sql.Text:='SELECT * FROM t_cash_bank_expenditure_submission_det WHERE no_voucher='+Quotedstr(DBGrid.Fields[0].Asstring)+' ';
         open;
      end;
      with FDataPengeluaranKasBank do
      begin
        MemDetailAkun.EmptyTable;
        QDetail_Akun_Ajuan.First;
        while not QDetail_Akun_Ajuan.Eof do
        begin
            MemDetailAkun.Insert;
            MemDetailAkun['kd_akun']:=QDetail_Akun_Ajuan.fieldbyname('code_account').AsString;
            MemDetailAkun['nm_akun']:=QDetail_Akun_Ajuan.FieldByName('name_account').AsString;
            if QDetail_Akun_Ajuan.FieldByName('position').AsString='D' then
            begin
              MemDetailAkun['debit']:=QDetail_Akun_Ajuan.FieldByName('paid_amount').Value;
              MemDetailAkun['kredit']:='0';
            end;
            if QDetail_Akun_Ajuan.FieldByName('position').AsString='K' then
            begin
              MemDetailAkun['kredit']:=QDetail_Akun_Ajuan.FieldByName('paid_amount').Value;
              MemDetailAkun['debit']:='0';
            end;
            MemDetailAkun['keterangan']:=QDetail_Akun_Ajuan.FieldByName('description').AsString;
            MemDetailAkun['kd_header_akun']:=QDetail_Akun_Ajuan.FieldByName('code_account_header').AsString;
            //MemDetailAkun['modul_id']:=QDetail_Akun_Ajuan.FieldByName('module_id').AsString;
            MemDetailAkun.post;
            QDetail_Akun_Ajuan.Next;
        end;
      end;

      with QDetail_Hutang_Ajuan do
      begin
         close;
         sql.Clear;
         sql.Text:='SELECT * FROM t_cash_bank_expenditure_submission_payable WHERE voucher_no='+Quotedstr(DBGrid.Fields[0].Asstring)+' ';
         open;
      end;
      with FDataPengeluaranKasBank do
      begin
        MemDetailHutang.EmptyTable;
        QDetail_Hutang_Ajuan.First;
        while not QDetail_Hutang_Ajuan.Eof do
        begin
            //showmessage(QDetail_Hutang_Ajuan.FieldByName('description').AsString);
            MemDetailHutang.Insert;
            MemDetailHutang['no_tagihan']:=QDetail_Hutang_Ajuan.fieldbyname('invoice_no').AsString;
            MemDetailHutang['no_faktur']:=QDetail_Hutang_Ajuan.fieldbyname('faktur_no').AsString;
            MemDetailHutang['tgl_faktur']:=QDetail_Hutang_Ajuan.fieldbyname('faktur_date').AsString;
            MemDetailHutang['no_sj']:=QDetail_Hutang_Ajuan.fieldbyname('sj_no').AsString;
            MemDetailHutang['jum_hutang']:=QDetail_Hutang_Ajuan.fieldbyname('paid_amount').Value;
            MemDetailHutang['keterangan']:=QDetail_Hutang_Ajuan.FieldByName('description').AsString;
            MemDetailHutang.post;
            QDetail_Hutang_Ajuan.Next;
        end;
      end;

      with QTP_Ajuan do
      begin
         close;
         sql.Clear;
         sql.Text:='SELECT * FROM t_cost_detail_submission WHERE voucher_no='+Quotedstr(DBGrid.Fields[0].Asstring)+' ';
         open;
      end;
      with FDataPengeluaranKasBank do
      begin
        Fdaftar_TP.MemTP_Real.EmptyTable;
        QTP_Ajuan.First;
        while not QTP_Ajuan.Eof do
        begin
            Fdaftar_TP.MemTP_Real.Insert;
            Fdaftar_TP.MemTP_Real['tp_code']:=QTP_Ajuan.fieldbyname('tp_code').AsString;
            Fdaftar_TP.MemTP_Real['tp_name']:=QTP_Ajuan.fieldbyname('tp_name').AsString;
            Fdaftar_TP.MemTP_Real['description']:=QTP_Ajuan.fieldbyname('description').AsString;
            Fdaftar_TP.MemTP_Real['amount']:=QTP_Ajuan.fieldbyname('amount').Value;
            Fdaftar_TP.MemTP_Real['voucher_tmp']:=QTP_Ajuan.fieldbyname('voucher_no').AsString;
            Fdaftar_TP.MemTP_Real['voucher_No']:=edNoTrans.Text;
            Fdaftar_TP.MemTP_Real.post;
            QTP_Ajuan.Next;
        end;
      end;
      FDataPengeluaranKasBank.SetReadOnly(1);
      FListAmbilPengajuan.Close;
  end;
end;

procedure TFListAmbilPengajuan.DBGridSortMarkingChanged(Sender: TObject);
var
  I: Integer;
  FieldSorting: string;
begin
  FieldSorting := '';

  // Membaca kolom yang ditandai untuk sorting
  for I := 0 to DBGrid.SortMarkedColumns.Count - 1 do
  begin
    if FieldSorting <> '' then
      FieldSorting := FieldSorting + ', '; // Gunakan KOMA (,) bukan titik koma (;)

    FieldSorting := FieldSorting + DBGrid.SortMarkedColumns[I].FieldName;

    // Gunakan kata ASC atau DESC untuk UniDAC
    if DBGrid.SortMarkedColumns[I].Title.SortMarker = smDownEh then
      FieldSorting := FieldSorting + ' DESC'
    else
      FieldSorting := FieldSorting + ' ASC';
  end;

  // Terapkan ke UniQuery
  try
    QListPengajuan.IndexFieldNames := FieldSorting;
  except
    on E: Exception do
      ShowMessage('Gagal melakukan sorting: ' + E.Message);
  end;
end;

procedure TFListAmbilPengajuan.FormShow(Sender: TObject);
begin
   DateTimePicker1.Date:=Now;
   DateTimePicker2.Date:=Now;
   BCariClick(Sender);
end;

end.
