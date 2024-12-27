unit udafajuankeluarkasbank;

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
  TFdafajuankeluarkasbank = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DBGridPengajuanKeluarKasBank: TDBGridEh;
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
    Qdaf_PengajuanKasBank: TUniQuery;
    DS_Pengajuan: TDataSource;
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
    QDetail_akun_ajuan: TUniQuery;
    DSDetail_Akun_Ajun: TDataSource;
    Qdaf_PengajuanKasBanktgup: TDateField;
    Qdaf_PengajuanKasBanksource_name: TStringField;
    QDetail_Hutang_Ajuan: TUniQuery;
    DSDetail_Hutang_Ajuan: TDataSource;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    QBukti_Ajuan_Keluar: TUniQuery;
    frxDBDBukti_Ajuan_Keluar: TfrxDBDataset;
    procedure ActBaruExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BCariClick(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure DBGridPengajuanKeluarKasBankDblClick(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall:string;
  end;

var
  Fdafajuankeluarkasbank: TFdafajuankeluarkasbank;

implementation

{$R *.dfm}

uses U_keluarkasbank_ajuan, UDataPengajuanPengeluaranKasBank, UDataModule,
  UDataPengeluaranKasBank;

procedure TFdafajuankeluarkasbank.ActBaruExecute(Sender: TObject);
begin
   FDataPengajuanPengeluaranKasBank.show;
   //FKeluarKasBank_Ajuan.show;
end;

procedure TFdafajuankeluarkasbank.ActROExecute(Sender: TObject);
begin
   DBGridPengajuanKeluarKasBank.StartLoadingStatus();
   try
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
              'a."trans_type_name",a."bank_number_account",a."bank_name_account",a."additional_code",a."id" '+
              ',b."code_module",b."name_module",b."name_trans",c."code",c."name",d."currency_name",e."source_name"  FROM t_cash_bank_expenditure_submission a '+
              'LEFT JOIN t_master_trans_account b on a."trans_type_code"=b.code_trans '+
              'LEFT JOIN t_source_payment c on a."additional_code"=c.code '+
              'LEFT JOIN t_currency d on a."currency"=d."currency_code" '+
              'LEFT JOIN t_settlement_data_source e on a."ref_no"=e."code" '+
              'GROUP BY a."voucher_no",a."subvoucher",a."remark",a."entry_date",a."trans_date",a."periode1",a."periode2",a."amount",a."account_code", '+
              'a."account_name",a."dk",a."debit",a."kredit",a."header_code",a."ref_no",a."posting",a."customer_code",a.supplier_code,a."cash_type",a."job_no", '+
              'a."company_code",a."tp_code",a."trans_year",a."trans_month",a."trans_day",a."order_no",a."giro_no",a."bank_giro_name",a."giro_due_date",a."customer_name", '+
              'a."supplier_name",a."to_",a."deposit",a."deposit_date",a."tgup",a."voucher_code",a."to_getout",a."status",a."approve_status",a."approval_date",a."approval", '+
              'a."app_stat",a."currency",a."kurs",a."plan_to",a."bon_no",a."bank_norek",a."bank_name",a."amount_origin",a."debit_amount_origin",a."credit_amount_origin", '+
              'a."created_at",a."created_by",a."updated_at",a."updated_by",a."deleted_at",a."deleted_by",a."trans_type_code",a."trans_type_name",a."bank_number_account", '+
              'a."bank_name_account",a."additional_code",a."id" '+
              ',b."code_module",b."name_module",b."name_trans",c."code",c."name",d."currency_code",d."currency_name",e."source_name"  '+
              'ORDER BY entry_date,voucher_no,trans_date,order_no ASC');
        open;
     end;
   finally
   DBGridPengajuanKeluarKasBank.FinishLoadingStatus();
   end;
end;

procedure TFdafajuankeluarkasbank.ActUpdateExecute(Sender: TObject);
begin

      with FDataPengajuanPengeluaranKasBank do
      begin
        MemDetailAkun.Close;
        MemDetailAkun.Open;
        MemDetailHutang.Close;
        MemDetailHutang.Open;
        show;
        code_trans.Text:=Qdaf_PengajuanKasBank.fieldbyname('trans_type_code').AsString;
        Ed_id_modul.Text:=Qdaf_PengajuanKasBank.fieldbyname('code_module').AsString;
        if Ed_id_modul.Text='5' then
           cbsumberdata.Text:='BANK';
        if Ed_id_modul.Text='6' then
           cbsumberdata.Text:='KAS';

        edNoTrans.Text:=Qdaf_PengajuanKasBank.fieldbyname('voucher_no').AsString;
        dtTrans.Date:=Qdaf_PengajuanKasBank.fieldbyname('trans_date').asdatetime;
        dtperiode1.Date:=Qdaf_PengajuanKasBank.fieldbyname('periode1').asdatetime;
        dtperiode2.Date:=Qdaf_PengajuanKasBank.fieldbyname('periode2').asdatetime;
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
        edJumlah.Value:=Qdaf_PengajuanKasBank.FieldByName('amount').Value;
        CbRencana.Text:=Qdaf_PengajuanKasBank.fieldbyname('plan_to').Value;
        edKodeSumberPengeluaran.Text:=Qdaf_PengajuanKasBank.fieldbyname('ref_no').Asstring;
        ednamabank.Text:=Qdaf_PengajuanKasBank.fieldbyname('bank_name').AsString;
        edNoRek.Text:=Qdaf_PengajuanKasBank.fieldbyname('bank_norek').AsString;
        FDataPengeluaranKasBank.code_trans.Text:=Qdaf_PengajuanKasBank.fieldbyname('trans_type_code').AsString;
        Ed_id_modul.Text:=Qdaf_PengajuanKasBank.fieldbyname('code_module').AsString;
        Edhari.Text:=Qdaf_PengajuanKasBank.fieldbyname('trans_day').AsString;
        Edbln.Text:=Qdaf_PengajuanKasBank.fieldbyname('trans_month').AsString;
        Edth.Text:=Qdaf_PengajuanKasBank.fieldbyname('trans_year').AsString;


        //detail akun
        with QDetail_akun_ajuan do
        begin
          close;
          sql.clear;
          sql.add(' SELECT * from ('+
                  ' SELECT * from "public"."t_cash_bank_expenditure_submission_det"'+
                  ' WHERE "no_voucher"='+Quotedstr(DBGridPengajuanKeluarKasBank.Fields[0].Asstring)+' ) a '+
                  ' Order By position asc');
          open;
        end;

        with FDataPengajuanPengeluaranKasBank do
        begin
          MemDetailAkun.EmptyTable;
          QDetail_akun_ajuan.First;
          while not QDetail_akun_ajuan.Eof do
          begin
              MemDetailAkun.Insert;
              MemDetailAkun['kd_akun']:=QDetail_akun_ajuan.fieldbyname('code_account').AsString;
              MemDetailAkun['nm_akun']:=QDetail_akun_ajuan.FieldByName('name_account').AsString;
              if QDetail_akun_ajuan.FieldByName('position').AsString='D' then
              begin
                MemDetailAkun['debit']:=QDetail_akun_ajuan.FieldByName('paid_amount').Value;
                MemDetailAkun['kredit']:='0';
              end;
              if QDetail_akun_ajuan.FieldByName('position').AsString='K' then
              begin
                MemDetailAkun['kredit']:=QDetail_akun_ajuan.FieldByName('paid_amount').Value;
                MemDetailAkun['debit']:='0';
              end;
              MemDetailAkun['keterangan']:=QDetail_akun_ajuan.FieldByName('description').AsString;
              MemDetailAkun['kd_header_akun']:=QDetail_akun_ajuan.FieldByName('code_account_header').AsString;
              //MemDetailAkun['modul_id']:=QDetail_akun_ajuan.FieldByName('module_id').AsString;
              MemDetailAkun.post;
              QDetail_Akun_Ajuan.Next;
          end;
        end;

        //detail faktur
        with QDetail_Hutang_Ajuan do
        begin
          close;
          sql.clear;
          sql.add(' SELECT * from ('+
                  ' SELECT * from "public"."t_cash_bank_expenditure_submission_payable" '+
                  //' WHERE "voucher_no"='+QuotedStr(QDetail_Hutang_Ajuan.FieldByName('voucher_no').AsString)+' ) a '+
                  'WHERE voucher_no='+Quotedstr(DBGridPengajuanKeluarKasBank.Fields[0].Asstring)+' ) a '+
                  ' Order By voucher_no desc');
          open;
        end;

        with FDataPengajuanPengeluaranKasBank do
        begin
          QDetail_Hutang_Ajuan.First;
          while not QDetail_Hutang_Ajuan.Eof do
          begin
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

        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='SELECT * from t_master_trans_account where code_module='+Quotedstr(FDataPengajuanPengeluaranKasBank.Ed_id_modul.Text)+' '+
                    ' and code_trans='+Quotedstr(FDataPengajuanPengeluaranKasBank.code_trans.Text)+' ';
          open;
          Cb_jenis_trans.text:=fieldbyname('name_trans').AsString;
        end;

        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='SELECT * from  t_currency where currency_code='+Quotedstr(FDataPengajuanPengeluaranKasBank.Edkodematauang.Text)+' ';
          open;
          edNamaMataUang.text:=fieldbyname('currency_name').AsString;
        end;


        Fdafajuankeluarkasbank.Close;
      end;
end;



procedure TFdafajuankeluarkasbank.BCariClick(Sender: TObject);
begin
  if vcall='keluar_kas' then
  begin
    with Qdaf_PengajuanKasBank do
    begin
      close;
      sql.clear;
      //sql.add('SELECT * FROM cash_banks.t_cash_bank_expenditure_submission WHERE trans_date between '+QuotedStr(formatdatetime('yyyy=mm-dd',DateTimePicker1.DateTime))+' and '+ QuotedStr(formatdatetime('yyyy=mm-dd',DateTimePicker2.DateTime)) +'and( app_stat=true) ');
      sql.add('SELECT a."voucher_no",a."subvoucher",a."remark",a."entry_date",a."trans_date",a."periode1",a."periode2",a."amount", '+
              'a."account_code",a."account_name",a."dk",a."debit",a."kredit",a."header_code",a."ref_no",a."posting",a."customer_code", '+
              'a.supplier_code,a."cash_type",a."job_no",a."company_code",a."tp_code",a."trans_year",a."trans_month",a."trans_day", '+
              'a."order_no",a."giro_no",a."bank_giro_name",a."giro_due_date",a."customer_name",a."supplier_name",a."to_",a."deposit", '+
              'a."deposit_date",a."tgup",a."voucher_code",a."to_getout",a."status",a."approve_status",a."approval_date",a."approval", '+
              'a."app_stat",a."currency",a."kurs",a."plan_to",a."bon_no",a."bank_norek",a."bank_name",a."amount_origin",a."debit_amount_origin",'+
              'a."credit_amount_origin",a."created_at",a."created_by",a."updated_at",a."updated_by",a."deleted_at",a."deleted_by",a."trans_type_code", '+
              'a."trans_type_name",a."bank_number_account",a."bank_name_account",a."additional_code",a."id" '+
              ',b."code_module",b."name_module",b."name_trans",c."code",c."name",d."currency_name",e."source_name"  FROM t_cash_bank_expenditure_submission a '+
              'LEFT JOIN t_master_trans_account b on a."trans_type_code"=b.code_trans '+
              'LEFT JOIN t_source_payment c on a."additional_code"=c.code '+
              'LEFT JOIN t_currency d on a."currency"=d."currency_code" '+
              'LEFT JOIN t_settlement_data_source e on a."ref_no"=e."code" '+
              'WHERE trans_date between '+QuotedStr(formatdatetime('yyyy=mm-dd',DateTimePicker1.DateTime))+' and '+ QuotedStr(formatdatetime('yyyy=mm-dd',DateTimePicker2.DateTime)) +'and( app_stat=true) '+
              'GROUP BY a."voucher_no",a."subvoucher",a."remark",a."entry_date",a."trans_date",a."periode1",a."periode2",a."amount",a."account_code", '+
              'a."account_name",a."dk",a."debit",a."kredit",a."header_code",a."ref_no",a."posting",a."customer_code",a.supplier_code,a."cash_type",a."job_no", '+
              'a."company_code",a."tp_code",a."trans_year",a."trans_month",a."trans_day",a."order_no",a."giro_no",a."bank_giro_name",a."giro_due_date",a."customer_name", '+
              'a."supplier_name",a."to_",a."deposit",a."deposit_date",a."tgup",a."voucher_code",a."to_getout",a."status",a."approve_status",a."approval_date",a."approval", '+
              'a."app_stat",a."currency",a."kurs",a."plan_to",a."bon_no",a."bank_norek",a."bank_name",a."amount_origin",a."debit_amount_origin",a."credit_amount_origin", '+
              'a."created_at",a."created_by",a."updated_at",a."updated_by",a."deleted_at",a."deleted_by",a."trans_type_code",a."trans_type_name",a."bank_number_account", '+
              'a."bank_name_account",a."additional_code",a."id" '+
              ',b."code_module",b."name_module",b."name_trans",c."code",c."name",d."currency_code",d."currency_name",e."source_name"  '+
              'ORDER BY entry_date,voucher_no,trans_date,order_no ASC');
      open;
    end;

    with QDetail_akun_ajuan do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT code_account,name_account,position,paid_amount,description,code_account_header, '+
                'amount_rate_results,module_id FROM t_cash_bank_expenditure_submission_det '+
                'WHERE no_voucher='+QuotedStr(DBGridPengajuanKeluarKasBank.Fields[0].Asstring)+'';
      Open;
    end;

    with QDetail_Hutang_Ajuan do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM t_cash_bank_expenditure_submission_payable '+
                'WHERE voucher_no='+QuotedStr(DBGridPengajuanKeluarKasBank.Fields[0].Asstring)+'';
      Open;
    end;

  end
  else
  begin
    with Qdaf_PengajuanKasBank do
    begin
      close;
      sql.clear;
      //sql.add('SELECT * FROM cash_banks.t_cash_bank_expenditure_submission WHERE trans_date between '+QuotedStr(formatdatetime('yyyy=mm-dd',DateTimePicker1.DateTime))+' and '+ QuotedStr(formatdatetime('yyyy=mm-dd',DateTimePicker2.DateTime)) +' ');
      sql.add('SELECT a."voucher_no",a."subvoucher",a."remark",a."entry_date",a."trans_date",a."periode1",a."periode2",a."amount", '+
              'a."account_code",a."account_name",a."dk",a."debit",a."kredit",a."header_code",a."ref_no",a."posting",a."customer_code", '+
              'a.supplier_code,a."cash_type",a."job_no",a."company_code",a."tp_code",a."trans_year",a."trans_month",a."trans_day", '+
              'a."order_no",a."giro_no",a."bank_giro_name",a."giro_due_date",a."customer_name",a."supplier_name",a."to_",a."deposit", '+
              'a."deposit_date",a."tgup",a."voucher_code",a."to_getout",a."status",a."approve_status",a."approval_date",a."approval", '+
              'a."app_stat",a."currency",a."kurs",a."plan_to",a."bon_no",a."bank_norek",a."bank_name",a."amount_origin",a."debit_amount_origin",'+
              'a."credit_amount_origin",a."created_at",a."created_by",a."updated_at",a."updated_by",a."deleted_at",a."deleted_by",a."trans_type_code", '+
              'a."trans_type_name",a."bank_number_account",a."bank_name_account",a."additional_code",a."id" '+
              ',b."code_module",b."name_module",b."name_trans",c."code",c."name",d."currency_name",e."source_name"  FROM t_cash_bank_expenditure_submission a '+
              'LEFT JOIN t_master_trans_account b on a."trans_type_code"=b.code_trans '+
              'LEFT JOIN t_source_payment c on a."additional_code"=c.code '+
              'LEFT JOIN t_currency d on a."currency"=d."currency_code" '+
              'LEFT JOIN t_settlement_data_source e on a."ref_no"=e."code" '+
              'WHERE trans_date between '+QuotedStr(formatdatetime('yyyy=mm-dd',DateTimePicker1.DateTime))+' and '+ QuotedStr(formatdatetime('yyyy=mm-dd',DateTimePicker2.DateTime)) +' '+
              'GROUP BY a."voucher_no",a."subvoucher",a."remark",a."entry_date",a."trans_date",a."periode1",a."periode2",a."amount",a."account_code", '+
              'a."account_name",a."dk",a."debit",a."kredit",a."header_code",a."ref_no",a."posting",a."customer_code",a.supplier_code,a."cash_type",a."job_no", '+
              'a."company_code",a."tp_code",a."trans_year",a."trans_month",a."trans_day",a."order_no",a."giro_no",a."bank_giro_name",a."giro_due_date",a."customer_name", '+
              'a."supplier_name",a."to_",a."deposit",a."deposit_date",a."tgup",a."voucher_code",a."to_getout",a."status",a."approve_status",a."approval_date",a."approval", '+
              'a."app_stat",a."currency",a."kurs",a."plan_to",a."bon_no",a."bank_norek",a."bank_name",a."amount_origin",a."debit_amount_origin",a."credit_amount_origin", '+
              'a."created_at",a."created_by",a."updated_at",a."updated_by",a."deleted_at",a."deleted_by",a."trans_type_code",a."trans_type_name",a."bank_number_account", '+
              'a."bank_name_account",a."additional_code",a."id" '+
              ',b."code_module",b."name_module",b."name_trans",c."code",c."name",d."currency_code",d."currency_name",e."source_name"  '+
              'ORDER BY entry_date,voucher_no,trans_date,order_no ASC');
      open;
    end;
    with QDetail_akun_ajuan do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT code_account,name_account,position,paid_amount,description,code_account_header, '+
                'amount_rate_results,module_id FROM t_cash_bank_expenditure_submission_det '+
                'WHERE no_voucher='+QuotedStr(DBGridPengajuanKeluarKasBank.Fields[0].Asstring)+'';
      Open;
    end;
    with QDetail_Hutang_Ajuan do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM t_cash_bank_expenditure_submission_payable '+
                'WHERE voucher_no='+QuotedStr(DBGridPengajuanKeluarKasBank.Fields[0].Asstring)+'';
      Open;
    end;
  end;
end;

procedure TFdafajuankeluarkasbank.DBGridPengajuanKeluarKasBankDblClick(Sender: TObject);
begin
   //ActUpdateExecute(sender);
  if (vcall='keluar_kas')and(Qdaf_PengajuanKasBank.RecordCount<>0) then
  begin
      with FDataPengeluaranKasBank do
      begin
         Ed_voucher_ajuan.text:=Qdaf_PengajuanKasBank.fieldbyname('voucher_no').AsString;
         dtTrans.Date:=Qdaf_PengajuanKasBank.fieldbyname('trans_date').asdatetime;
         dtperiode1.Date:=Qdaf_PengajuanKasBank.fieldbyname('periode1').asdatetime;
         dtperiode2.Date:=Qdaf_PengajuanKasBank.fieldbyname('periode2').asdatetime;
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
         FDataPengeluaranKasBank.code_trans.Text:=Qdaf_PengajuanKasBank.fieldbyname('trans_type_code').AsString;
         Ed_id_modul.Text:=Qdaf_PengajuanKasBank.fieldbyname('code_module').AsString;
         Edhari.Text:=Qdaf_PengajuanKasBank.fieldbyname('trans_day').AsString;
         Edbln.Text:=Qdaf_PengajuanKasBank.fieldbyname('trans_month').AsString;
         Edth.Text:=Qdaf_PengajuanKasBank.fieldbyname('trans_year').AsString;
         //MemDetailHutang['tgl_faktur']:=Qdaf_PengajuanKasBank.fieldbyname('faktur_date').AsDateTime;
         //MemDetailHutang['no_faktur']:=Qdaf_PengajuanKasBank.fieldbyname('faktur_no').AsString;
         //MemDetailHutang['no_sj']:=Qdaf_PengajuanKasBank.fieldbyname('sj_no').AsString;
         //MemDetailHutang['no_tagihan']:=Qdaf_PengajuanKasBank.fieldbyname('invoice_no').AsString;
         //MemDetailHutang['jum_hutang']:=Qdaf_PengajuanKasBank.fieldbyname('amount').AsCurrency;
         //MemDetailHutang['jum_hutang_real']:=Qdaf_PengajuanKasBank.fieldbyname('amount').AsCurrency;
         //MemDetailHutang['keterangan']:=Qdaf_PengajuanKasBank.fieldbyname('remark').AsString;
      end;

      with QDetail_Akun_Ajuan do
      begin
         close;
         sql.Clear;
         sql.Text:='SELECT * FROM t_cash_bank_expenditure_submission_det WHERE no_voucher='+Quotedstr(DBGridPengajuanKeluarKasBank.Fields[0].Asstring)+' ';
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
         sql.Text:='SELECT * FROM t_cash_bank_expenditure_submission_payable WHERE voucher_no='+Quotedstr(DBGridPengajuanKeluarKasBank.Fields[0].Asstring)+' ';
         open;
      end;
      with FDataPengeluaranKasBank do
      begin
        QDetail_Hutang_Ajuan.First;
        while not QDetail_Hutang_Ajuan.Eof do
        begin
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
      Fdafajuankeluarkasbank.Close;
  end;
  FDataPengeluaranKasBank.cbsumberdataSelect(sender);
end;

procedure TFdafajuankeluarkasbank.FormShow(Sender: TObject);
begin
   if Qdaf_PengajuanKasBank.Active=false then
      Qdaf_PengajuanKasBank.Active:=true;
   if QDetail_akun_ajuan.Active=false then
      QDetail_akun_ajuan.Active:=true;
   if QDetail_Hutang_Ajuan.Active=false then
      QDetail_Hutang_Ajuan.Active:=true;
   DateTimePicker1.Date:=Now;
   DateTimePicker2.Date:=Now;
   //BCariClick(sender);
   ActROExecute(sender);
   QDetail_akun_ajuan.Close;
   QDetail_akun_ajuan.Open;
   QDetail_Hutang_Ajuan.Close;
   QDetail_Hutang_Ajuan.Open;
end;

initialization
RegisterClass(TFdafajuankeluarkasbank);

end.
