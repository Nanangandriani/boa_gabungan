unit UDataPengeluaranKasBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, Vcl.StdCtrls, RzButton, RzEdit,
  Vcl.ComCtrls, RzDTP, Vcl.Mask, RzBtnEdt, Vcl.ExtCtrls, MemTableEh, Vcl.Buttons;

type
  TFDataPengeluaranKasBank = class(TForm)
    MemDetailAkun: TMemTableEh;
    MemDetailAkunkd_akun: TStringField;
    MemDetailAkunnm_akun: TStringField;
    MemDetailAkunketerangan: TStringField;
    MemDetailAkundebit: TCurrencyField;
    MemDetailAkunkredit: TCurrencyField;
    MemDetailAkunkd_header_akun: TStringField;
    MemDetailHutang: TMemTableEh;
    MemDetailHutangno_tagihan: TStringField;
    MemDetailHutangtgl_faktur: TDateField;
    MemDetailHutangketerangan: TStringField;
    MemDetailHutangno_faktur: TStringField;
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    edNoTrans: TEdit;
    edNamaJenisTrans: TRzButtonEdit;
    edKodeJenisTrans: TEdit;
    dtTrans: TRzDateTimePicker;
    MemKeterangan: TMemo;
    dtPeriode1: TRzDateTimePicker;
    dtPeriode2: TRzDateTimePicker;
    edNamaMataUang: TRzButtonEdit;
    edKodeMataUang: TEdit;
    edKurs: TRzNumericEdit;
    edJumlah: TRzNumericEdit;
    edUntukPengeluaran: TMemo;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    Panel5: TPanel;
    gbDataHutang: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    edKode_supplier: TRzButtonEdit;
    edNama_Supplier: TEdit;
    gbDataBank: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbJenisBayarr: TLabel;
    lbSumberHutangn: TLabel;
    lbJenisBayar: TLabel;
    lbSumberHutang: TLabel;
    edNamaBank: TRzButtonEdit;
    edNoRek: TEdit;
    edNMSumberHutang: TRzButtonEdit;
    edNMJenisBayar: TRzButtonEdit;
    edKodeSumberTagihan: TEdit;
    edKodeJenisBayar: TEdit;
    RzPageControl1: TRzPageControl;
    TabDetailAkun: TRzTabSheet;
    DBGridAkun: TDBGridEh;
    TabDetailFaktur: TRzTabSheet;
    DBGridTagihan: TDBGridEh;
    dsDetailHutang: TDataSource;
    DSDetailAkun: TDataSource;
    Ed_kepada: TEdit;
    Label55: TLabel;
    Label54: TLabel;
    Edth: TEdit;
    Edbln: TEdit;
    Edhari: TEdit;
    EdNo: TEdit;
    Ed_id_modul: TEdit;
    code_trans: TEdit;
    Ed_Additional: TEdit;
    cbsumberdata: TComboBox;
    Label24: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    Label23: TLabel;
    Cb_jenis_trans: TComboBox;
    CbRencana: TComboBox;
    Label30: TLabel;
    edKodeSumberPengeluaran: TEdit;
    Cb_debt_source: TComboBox;
    Label25: TLabel;
    Label29: TLabel;
    Label26: TLabel;
    MemDetailHutangno_sj: TStringField;
    MemDetailHutangjum_hutang: TCurrencyField;
    MemDetailHutangjum_hutang_real: TCurrencyField;
    RzBitBtn1: TRzBitBtn;
    Ed_voucher_ajuan: TEdit;
    MemKKasBank: TMemTableEh;
    DSKKasBank: TDataSource;
    TabSheet1: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    ak_account: TEdit;
    MemDetailAkunjumlah_hasil_kurs: TCurrencyField;
    MemDetailAkunmodul_id: TStringField;
    procedure edNamaJenisTransButtonClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure DBGridAkunColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridTagihanColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure edNMJenisBayarButtonClick(Sender: TObject);
    procedure edNamaMataUangButtonClick(Sender: TObject);
    procedure edKode_supplierButtonClick(Sender: TObject);
    procedure edNamaBankButtonClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Ed_AdditionalChange(Sender: TObject);
    procedure code_transChange(Sender: TObject);
    procedure cbsumberdataSelect(Sender: TObject);
    procedure Cb_jenis_transSelect(Sender: TObject);
    procedure edKodeMataUangChange(Sender: TObject);
    procedure edKodeSumberPengeluaranChange(Sender: TObject);
    procedure Ed_voucher_ajuanChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edKode_supplierChange(Sender: TObject);
    procedure DBGridAkunColumns0CellButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Ed_id_modulChange(Sender: TObject);
    procedure dtTransChange(Sender: TObject);
  private
    { Private declarations }
    vtotal_debit, vtotal_kredit, vtotal_hutang : real;
  public
    { Public declarations }
    Status,KetemuCekPosisiDK : Integer;
    akun_d, akun_k,kd_ak_supplier,vid_modul : String;
    additional_code1, additional_code2, additional_code3, additional_code4, additional_code5,nobk_tmp,no_bon : String;
    { Public declarations }
    procedure Clear;
    procedure RefreshGridDetailAkun;
    procedure RefreshGridDetailHutang;
    procedure VCekBalance;
    procedure load_sumber_data;
    procedure load_source_debt;
    procedure load_trans_type;
    procedure load_trans_type2;
    procedure HitungKurs;
    procedure CekPosisiDK;
    procedure save;
    procedure update;
    procedure Autonumber;
    procedure InsertDetailAkun;
    procedure InsertDetailHutang;
    procedure refresh_form;
  end;

var
  FDataPengeluaranKasBank: TFDataPengeluaranKasBank;

implementation

{$R *.dfm}

uses UDataModule, UCari_DaftarPerk, UMasterData, USearch_Supplier,
  udafajuankeluarkasbank, UMy_Function, u_daf_keluar_kas_bank, UHomeLogin;


procedure TFDataPengeluaranKasBank.refresh_form;
begin
    with FDataPengeluaranKasBank do
    begin
      with Dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.add(' SELECT * from ('+
                ' SELECT * from t_master_trans_account  '+
                ' where name_trans='+QuotedStr(cb_jenis_trans.Text)+' '+
                ' and status_bill='+IntToStr(cb_jenis_trans.ItemIndex-1)+' ) a ');
        open;
      end;

      MemDetailAkun.EmptyTable;
      MemDetailHutang.EmptyTable;
      edNoTrans.Clear;
      dtTrans.date:=now();
      dtPeriode1.date:=now();
      dtPeriode2.date:=now();
      edKodeJenisTrans.Clear;
      edNamaJenisTrans.Clear;
      edNamaBank.Clear;
      edNoRek.Clear;
      edKode_supplier.Clear;
      edNama_supplier.Clear;
      edNoRek.Clear;
      edNamaBank.Clear;
      edKodeMataUang.Clear;
      edNamaMataUang.Clear;
      edUntukPengeluaran.Clear;
      edKurs.value:=0.00;
      edJumlah.value:=0.00;
      MemKeterangan.Clear;
      MemDetailAkun.Active:=true;
      MemDetailHutang.Active:=true;
      edKodeSumberPengeluaran.Clear;
      cb_debt_source.Clear;
      edKodeJenisBayar.Clear;
      edNMJenisBayar.Clear;

      edKodeJenisTrans.Text:=Dm.Qtemp1.FieldByName('code_trans').AsString;
      edNamaJenisTrans.Text:=Dm.Qtemp1.FieldByName('name_trans').AsString;
      additional_code1:=SelectRow('select initial_code from t_master_trans_account where code_trans='+QuotedStr(Dm.Qtemp1.FieldByName('code_trans').AsString));
      additional_code2:='0';
      additional_code3:='0';
      additional_code4:='0';
      additional_code5:='0';
    end;
    vid_modul:=SelectRow('select code_module from t_master_trans_account where code_trans='+QuotedStr(Dm.Qtemp1.FieldByName('code_trans').AsString)+' ');
    if vid_modul='5' then // Bank
    begin
      FDataPengeluaranKasBank.gbDataBank.Visible:=True;
    end;
    if vid_modul='6' then // Kas
    begin
      FDataPengeluaranKasBank.gbDataBank.Visible:=False;
    end;

    if SelectRow('select status_bill from t_master_trans_account where code_trans='+QuotedStr(code_trans.Text)+' ')='0' then
    begin
      with FDataPengeluaranKasBank do
      begin
        Panel5.Visible:=true;
        gbDataHutang.Visible:=false;
        TabDetailFaktur.TabVisible:=false;
      end;
    end;
    if SelectRow('select status_bill from t_master_trans_account where code_trans='+QuotedStr(code_trans.Text)+' ')= '1' then
    begin
      with FDataPengeluaranKasBank do
      begin
        Panel5.Visible:=true;
        gbDataHutang.Visible:=true;
        TabDetailFaktur.TabVisible:=true;
      end;

      if (FDataPengeluaranKasBank.gbDataHutang.Visible=false) and (FDataPengeluaranKasBank.gbDataBank.Visible=false) then
        FDataPengeluaranKasBank.Panel5.Visible:=false
      else
        FDataPengeluaranKasBank.Panel5.Visible:=true;
    end;


    FDataPengeluaranKasBank.RzPageControl1.ActivePage:=FDataPengeluaranKasBank.TabDetailAkun;
    RefreshGridDetailAkun;
    //FDataPengajuanPengeluaranKasBank.Autonumber;
    vid_modul:=SelectRow('select code_module from t_master_trans_account where code_trans='+QuotedStr(code_trans.Text)+' ');

end;

procedure TFDataPengeluaranKasBank.update;
begin
   with dm.Qtemp do
   begin
      close;
      sql.Clear;
      sql.Add('UPDATE "public"."t_cash_bank_expenditure" SET '+
              //' "voucher_no"='+QuotedStr(edNoTrans.Text)+','+
              ' "voucher_tmp"='+QuotedStr(Ed_voucher_ajuan.Text)+','+
              ' "subvoucher"=NULL,'+
              ' "remark"='+QuotedStr(MemKeterangan.Text)+','+
              ' "entry_date"=Now(),'+
              ' "trans_date"='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' "periode1"='+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriode1.Date))+','+
              ' "periode2"='+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriode2.Date))+','+
              ' "amount"='+QuotedStr(FloatToStr(edJumlah.value))+','+
              ' "account_code"=NULL,'+
              ' "group_code"=NULL,'+
              ' "group_name"=NULL,'+
              ' "tp_code"=NULL,'+
              ' "account_name"=NULL,'+
              ' "dk"=NULL,'+
              ' "perpetrator_id"=NULL,'+
              ' "debit"=NULL,'+
              ' "kredit"NULL,'+
              ' "header_code="NULL,'+
              ' "ref_no"='+QuotedStr(edKodeSumberPengeluaran.Text)+','+
              ' "posting"=NULL,'+
              ' "customer_code"=NULL,'+
              ' "supplier_code"='+QuotedStr(edKode_supplier.Text)+','+
              ' "cash_type"=NULL,'+
              ' "job_no"=NULL,'+
              ' "company_code"=NULL,'+
              ' "trans_year"='+QuotedStr(Edth.Text)+','+
              ' "trans_month"='+QuotedStr(Edbln.Text)+','+
              ' "trans_day"='+QuotedStr(Edhari.Text)+','+
              ' "order_no"='+QuotedStr(order_no)+','+
              ' "giro_no"=NULL,'+
              ' "bank_giro_name"=NULL,'+
              ' "giro_due_date"=NULL,'+
              ' "customer_name"=NULL,'+
              ' "supplier_name"='+QuotedStr(edNama_Supplier.Text)+','+
              ' "to_"='+QuotedStr(Ed_kepada.Text)+','+
              ' "deposit"=NULL,'+
              ' "deposit_date"=NULL,'+
              ' "tgup"=NULL,'+
              ' "voucher_code"=NULL,'+
              ' "to_getout"='+QuotedStr(edUntukPengeluaran.Text)+','+
              //' "stat"=0,'+
              ' "time_lock"=NULL,'+
              ' "update_time"=NULL,'+
              ' "stat_lock"=NULL,'+
              ' "currency"='+QuotedStr(edKodeMataUang.Text)+','+
              ' "kurs"='+QuotedStr(FloatToStr(edKurs.value))+','+
              //' "bon_no"=NULL,'+
              //' "post_status"=0,'+
              //' "created_at"=now(),'+
              ' "created_by"='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' "updated_at"=Now(),'+
              ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              //' "deleted_at"=NULL,'+
              //' "deleted_by"=NULL,'+
              ' "bank_norek"='+QuotedStr(edNoRek.Text)+','+
              ' "bank_name"='+QuotedStr(edNamaBank.Text)+','+
              //' "cek_no"=NULL,'+
              ' "trans_type_code"='+QuotedStr(code_Trans.Text)+','+
              ' "trans_type_name"='+QuotedStr(Cb_Jenis_Trans.Text)+','+
              //' "bank_number_account"=NULL,'+
              //' "bank_name_account"=NULL,'+
              ' "additional_code"='+QuotedStr(Ed_Additional.Text)+' '+
              ' WHERE voucher_no='+QuotedStr(edNoTrans.Text)+'');
      ExecSQL;
   end;
   if MemDetailAkun.RecordCount<>0 then
   begin
      InsertDetailAkun;
   end;

   if MemDetailHutang.RecordCount<>0 then
   begin
      InsertDetailHutang;
   end;
   MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
   Close;
   Fdaf_pengeluaran_kas_bank.Refresh;
end;

procedure TFDataPengeluaranKasBank.InsertDetailHutang;
begin
    with Dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * from ('+
              ' SELECT * from "t_cash_bank_expenditure_payable" '+
              ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+' ) a '+
              ' Order By voucher_no desc');
      open;
    end;

    if Dm.Qtemp1.RecordCount>0 then
    begin
    with dm.Qtemp do
      begin
      close;
      sql.clear;
      sql.Text:=' DELETE FROM  "t_cash_bank_expenditure_payable" '+
                ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+';';
      ExecSQL;
      end;
    end;

    MemDetailHutang.First;
    while not MemDetailHutang.Eof do
    begin
      with dm.Qtemp do
      begin
          close;
          sql.clear;
          sql.Add(' INSERT INTO "t_cash_bank_expenditure_payable" ("voucher_no", '+
                  ' "invoice_no", "sj_no", "faktur_no", "faktur_date", "trans_date", "supplier_code", '+
                  ' "supplier_name", "trans_type_code", "trans_type_name", "bank_number_account", '+
                  ' "bank_name_account", "paid_amount", "description","account_acc") '+
                  ' Values( '+
                  ' '+QuotedStr(edNoTrans.Text)+', '+
                  ' '+QuotedStr(MemDetailHutang['no_tagihan'])+', '+
                  ' '+QuotedStr(MemDetailHutang['no_sj'])+', '+
                  ' '+QuotedStr(MemDetailHutang['no_faktur'])+', '+
                  ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetailHutang['tgl_faktur']))+', '+
                  ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
                  ' '+QuotedStr(edKode_supplier.Text)+', '+
                  ' '+QuotedStr(edNama_supplier.Text)+', '+
                  ' '+QuotedStr(code_Trans.Text)+', '+
                  ' '+QuotedStr(cb_Jenis_Trans.Text)+', '+
                  ' '+QuotedStr(edNoRek.Text)+', '+
                  ' '+QuotedStr(edNamaBank.Text)+', '+
                  ' '+QuotedStr(FloatToStr(MemDetailHutang['jum_hutang']))+', '+
                  ' '+QuotedStr(MemDetailHutang['keterangan'])+', '+
                  ' '+QuotedStr(ak_account.Text)+') ');
          ExecSQL;
      end;
      MemDetailHutang.Next;
    end;
end;

procedure TFDataPengeluaranKasBank.InsertDetailAkun;
begin
    with Dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * from ('+
              ' SELECT * from "t_cash_bank_expenditure_det"'+
              ' WHERE "no_voucher"='+QuotedStr(edNoTrans.Text)+' ) a '+
              ' Order By no_voucher desc');
      open;
    end;
    if Dm.Qtemp1.RecordCount>0 then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:=' DELETE FROM  "t_cash_bank_expenditure_det" '+
                  ' WHERE "no_voucher"='+QuotedStr(edNoTrans.Text)+';';
        ExecSQL;
      end;
    end;

    MemDetailAkun.First;
    while not MemDetailAkun.Eof do
    begin
       with dm.Qtemp do
       begin
          Close;
          sql.Clear;
          sql.Text:='INSERT into t_cash_bank_expenditure_det("no_voucher","code_account","name_account",'+
                    '"position","paid_amount","description","code_account_header","amount_rate_results",'+
                    '"module_id","trans_date","no_voucher_sub") '+
                    'VALUES(:parno_voucher,:parcode_account,:parname_account,:parposition,:parpaid_amount,'+
                    ':pardescription,:parcode_account_header,:paramount_rate_results,:parmoduleid,'+
                    ':partrans_date,:parno_voucher_sub)';
                    ParamByName('parno_voucher').Value:=edNoTrans.Text;
                    ParamByName('parcode_account').Value:=MemDetailAkun['kd_akun'];
                    ParamByName('parname_account').Value:=MemDetailAkun['nm_akun'];

                    if MemDetailAkun['debit']<>0 then
                    begin
                       ParamByName('parposition').Value:='D';
                       ParamByName('parpaid_amount').Value:=MemDetailAkun['debit'];
                    end;
                    if MemDetailAkun['kredit']<>0 then
                    begin
                       ParamByName('parposition').Value:='K';
                       ParamByName('parpaid_amount').Value:=MemDetailAkun['kredit'];
                    end;
                    ParamByName('pardescription').Value:=MemDetailAkun['keterangan'];
                    ParamByName('parcode_account_header').Value:=MemDetailAkun['kd_header_akun'];
                    ParamByName('paramount_rate_results').Value:=MemDetailAkun['jumlah_hasil_kurs'];
                    //ParamByName('parmoduleid').Value:=MemDetailAkun['modul_id'];
                    ParamByName('parmoduleid').Value:=Ed_id_modul.Text;
                    ParamByName('partrans_date').Value:=formatdatetime('yyyy-mm-dd',dtTrans.Date);
                    ParamByName('parno_voucher_sub').Value:='';
          ExecSQL;
       end;
       MemDetailAkun.Next;
    end;
end;

procedure TFDataPengeluaranKasBank.Autonumber;
begin
     idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(Fdaf_pengeluaran_kas_bank.Name)+'');
     strday2:=dtTrans.Date;
     edNoTrans.Text:=getNourut(strday2,'t_cash_bank_expenditure',(Ed_Additional.Text));
     EdNo.Text:=Order_no;
end;
procedure TFDataPengeluaranKasBank.save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "t_cash_bank_expenditure" '+
            '("voucher_no","voucher_tmp","subvoucher","remark","entry_date","trans_date", '+
            ' "periode1", "periode2","amount","account_code","group_code","group_name", '+
            ' "tp_code","account_name","dk","perpetrator_id","debit","kredit", '+
            ' "header_code","ref_no","posting","customer_code","supplier_code","cash_type",'+
            ' "job_no","company_code","trans_year","trans_month","trans_day","order_no", '+
            ' "giro_no","bank_giro_name","giro_due_date","customer_name","supplier_name","to_", '+
            ' "deposit","deposit_date","tgup","voucher_code","to_getout","stat",'+
            ' "time_lock","update_time","stat_lock","currency","kurs","bon_no",'+
            ' "post_status","created_at","created_by","updated_at","updated_by","deleted_at", '+
            ' "deleted_by","bank_norek","bank_name","cek_no","trans_type_code","trans_type_name", '+
            ' "bank_number_account","bank_name_account","additional_code","module_id") '+
            ' VALUES ( '+
            ' '+QuotedStr(edNoTrans.Text)+','+QuotedStr(Ed_voucher_ajuan.Text)+',NULL,'+QuotedStr(MemKeterangan.Text)+',Now(),'+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriode1.Date))+','+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriode2.Date))+','+QuotedStr(FloatToStr(edJumlah.value))+',NULL, NULL,NULL, '+
            ' NULL,NULL,NULL,NULL,NULL,NULL, '+
            ' NULL,'+QuotedStr(edKodeSumberPengeluaran.Text)+', NULL, NULL,'+QuotedStr(edKode_supplier.Text)+',NULL, '+
            ' NULL,NULL,'+QuotedStr(Edth.Text)+','+QuotedStr(Edbln.Text)+','+QuotedStr(Edhari.Text)+','+QuotedStr(order_no)+', '+
            ' NULL,NULL,NULL,NULL,'+QuotedStr(edNama_Supplier.Text)+','+QuotedStr(Ed_kepada.Text)+', '+
            ' NULL,NULL,NULL,NULL,'+QuotedStr(edUntukPengeluaran.Text)+',0, '+
            ' NULL,NULL,NULL, '+QuotedStr(edKodeMataUang.Text)+','+QuotedStr(FloatToStr(edKurs.value))+',NULL,'+
            ' 0,NOW(),'+QuotedStr(FHomeLogin.Eduser.Text)+',NULL, NULL, NULL, '+
            ' NULL,'+QuotedStr(edNoRek.Text)+','+QuotedStr(edNamaBank.Text)+',NULL,'+QuotedStr(code_Trans.Text)+','+QuotedStr(Cb_Jenis_Trans.Text)+', '+
            ' NULL,NULL,'+QuotedStr(Ed_Additional.Text)+','+QuotedStr(Ed_id_modul.Text)+' );');
    ExecSQL;
  end;

  if MemDetailAkun.RecordCount<>0 then
  begin
    InsertDetailAkun;
  end;

  if MemDetailHutang.RecordCount<>0 then
  begin
    InsertDetailHutang;
  end;
  //MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  Fdaf_pengeluaran_kas_bank.Refresh;

  {MemDetailAkun.First;     //Ok
  while not MemDetailAkun.Eof do
  begin
     with dm.Qtemp2 do
     begin
        Close;
        sql.Clear;
        sql.Text:='INSERT into cash_banks.t_cash_bank_expenditure_det(no_voucher,code_account,name_account,'+
                  'position,paid_amount,description,code_account_header,amount_rate_results,module_id,trans_date,no_voucher_sub) '+
                  'VALUES(:no_voucher,:code_account,:name_account,:position,:paid_amount,'+
                  ':description,:code_account_header,:amount_rate_results,:module_id,:trans_date,:no_voucher_sub)';
                  ParamByName('no_voucher').Value:=edNoTrans.Text;
                  ParamByName('code_account').Value:=MemDetailAkun['kd_akun'];
                  ParamByName('name_account').Value:=MemDetailAkun['nm_akun'];

                  if MemDetailAkun['debit']<>0 then
                  begin
                     ParamByName('position').Value:='D';
                     ParamByName('paid_amount').Value:=MemDetailAkun['debit'];
                  end;
                  if MemDetailAkun['kredit']<>0 then
                  begin
                     ParamByName('position').Value:='K';
                     ParamByName('paid_amount').Value:=MemDetailAkun['kredit'];
                  end;

                  ParamByName('description').Value:=MemDetailAkun['keterangan'];
                  ParamByName('code_account_header').Value:=MemDetailAkun['kd_header_akun'];
                  ParamByName('amount_rate_results').Value:=MemDetailAkun['jumlah_hasil_kurs'];
                  ParamByName('module_id').Value:=Ed_id_modul.Text;
                  ParamByName('trans_date').Value:=formatdatetime('yyyy-mm-dd',dtTrans.Date);
                  ParamByName('no_voucher_sub').Value:='';
        ExecSQL;
     end;
     MemDetailAkun.Next;
  end;}
end;

procedure TFDataPengeluaranKasBank.CekPosisiDK;
begin
  try
    begin
      if MemDetailAkun['kd_header_akun']<>'0' then
      begin
        with Dm.Qtemp1 do
        begin
          close;
          sql.clear;
          sql.add(' SELECT * from ('+
                  ' SELECT position from "t_master_trans_account_det"'+
                  ' WHERE "code_trans"='+QuotedStr(code_Trans.Text)+' and '+
                  ' code_account='+QuotedStr(MemDetailAkun['kd_header_akun'])+') a ');
          open;
        end;

      if Dm.Qtemp1.RecordCount<>0 then
      begin
        if (Dm.Qtemp1.fieldbyname('position').AsString='D') and (MemDetailAkun['kredit']<>0)  then
        begin
          ShowMessage('Akun '+MemDetailAkun['nm_akun']+' Tersetting Sebagai Akun Debit');
          KetemuCekPosisiDK:=1;
        end;
        if (Dm.Qtemp1.fieldbyname('position').AsString='K') and (MemDetailAkun['Debit']<>0)  then
        begin
          ShowMessage('Akun '+MemDetailAkun['nm_akun']+' Tersetting Sebagai Akun Kredit');
          KetemuCekPosisiDK:=1;
        end;
      end;

      end;
    end;
   Except;
   end;
end;


procedure TFDataPengeluaranKasBank.HitungKurs;
begin
  try
    begin
      if MemDetailAkun['kd_akun']<>'0' then
      begin
        MemDetailAkun.Edit;
        MemDetailAkun['jumlah_hasil_kurs']:=(MemDetailAkun['debit']+MemDetailAkun['kredit'])*edKurs.Value;
        MemDetailAkun.Post;
      end;
    end;
    Except;
  end;
end;

procedure TFDataPengeluaranKasBank.load_trans_type;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT * from t_master_trans_account where code_module=''6'' ';
        Open;
      end;
      Dm.Qtemp.First;
      Cb_jenis_trans.Items.Clear;
      while not dm.Qtemp.Eof do
      begin
        Cb_jenis_trans.Items.Add(Dm.Qtemp.FieldByName('name_trans').AsString);
        Dm.Qtemp.Next;
      end;
end;

procedure TFDataPengeluaranKasBank.load_trans_type2;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT * from t_master_trans_account where code_module=''5'' ';
        Open;
      end;
      Dm.Qtemp.First;
      Cb_jenis_trans.Items.Clear;
      while not dm.Qtemp.Eof do
      begin
        Cb_jenis_trans.Items.Add(Dm.Qtemp.FieldByName('name_trans').AsString);
        Dm.Qtemp.Next;
      end;
end;

procedure TFDataPengeluaranKasBank.load_sumber_data;
begin
    with Dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * from t_source_payment where status=''true'' ';
      Open;
    end;
    Dm.Qtemp.First;
    cbsumberdata.Items.Clear;
    while not dm.Qtemp.Eof do
    begin
      cbsumberdata.Items.Add(Dm.Qtemp.FieldByName('name').AsString);
      Dm.Qtemp.Next;
    end;
end;

procedure TFDataPengeluaranKasBank.load_source_debt;
begin
    with Dm.Qtemp do
    begin
      close;
      sql.Text:='SELECT * from t_settlement_data_source where status=''true'' ';
      Open;
      edKodeSumberPengeluaran.Text:=fieldbyname('code').AsString;
    end;
    Dm.Qtemp.First;
    Cb_debt_source.Items.Clear;
    while not dm.Qtemp.Eof do
    begin
      Cb_debt_source.Items.Add(Dm.Qtemp.FieldByName('source_name').AsString);
      Dm.Qtemp.Next;
    end;
end;

procedure TFDataPengeluaranKasBank.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataPengeluaranKasBank.BitBtn1Click(Sender: TObject);
begin
   Autonumber;
end;

procedure TFDataPengeluaranKasBank.BSaveClick(Sender: TObject);
var
  Year, Month, Day: Word;
begin
      //Rferesh hasil Kurs, cek posisi DK
    KetemuCekPosisiDK:=0;
    MemDetailAkun.First;
    while not MemDetailAkun.Eof do
    begin
      HitungKurs;
      CekPosisiDK;
      MemDetailAkun.Next;
    end;
    //Cek Posisi Akun DK
    if KetemuCekPosisiDK<>0 then
    begin
      Exit;
    end;

    VCekBalance;

    //if next_proses=true then
    //begin
       if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
       try
          if code_Trans.Text='' then
          begin
            MessageDlg('Pastikan Jenis Transaksi Anda Sudah Benar..!!',mtInformation,[mbRetry],0);
            edKodeJenisTrans.SetFocus;
          end
          else
          if cbsumberdata.Text='' then
          begin
            MessageDlg('Pastikan Sumber Data Anda Sudah Benar..!!',mtInformation,[mbRetry],0);
            cbsumberdata.SetFocus;
          end
          else
          if edKodeMataUang.Text='' then
          begin
            MessageDlg('Data Mata Uang Tidak Lengkap..!!',mtInformation,[mbRetry],0);
            edKodeMataUang.SetFocus;
          end
          else
          if (vid_modul='5')and (Length(edNoRek.Text)=0) then
          begin
            MessageDlg('Pastikan Data Bank Anda Sudah Lengkap..!!',mtInformation,[mbRetry],0);
            edNoRek.SetFocus;
          end
          else
          if MemDetailAkun.RecordCount=0 then
          begin
            MessageDlg('Pastikan Akun Anda Sudah Lengkap..!!',mtInformation,[mbRetry],0);
            edNoTrans.SetFocus;
          end
          else
          if (MemDetailHutang.RecordCount=0) and (Length(edKode_Supplier.Text)<>0) then
          begin
            MessageDlg('Pastikan Detail Hutang Sudah Lengkap..!!',mtInformation,[mbRetry],0);
            edNoTrans.SetFocus;
          end
          else
          if Status = 0 then
          begin
              Autonumber;
              if MessageDlg ('Anda Yakin Disimpan Order No. '+edNoTrans.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
              begin
                Save;
                Dm.Koneksi.Commit;
                MessageDlg('Data berhasil disimpan..!!',mtInformation,[MBOK],0);
              end;
              //MessageDlg('Data berhasil disimpan..!!',mtInformation,[MBOK],0);
          end
          else
          if Status = 1 then
          begin
              if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
              begin
                Update;
                Dm.Koneksi.Commit;
                MessageDlg('Data berhasil diupdate..!!',mtInformation,[MBOK],0);
              end;
              //MessageDlg('Data berhasil diupdate..!!',mtInformation,[MBOK],0);
          end;

       Except on E :Exception do
       begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
       end;

       end;
    //end;
end;

procedure TFDataPengeluaranKasBank.cbsumberdataSelect(Sender: TObject);
begin
   if cbsumberdata.Text='KAS' then
   begin
    load_trans_type;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select additional_code from t_additional_source_cash_bank where additional_name=''pengeluaran_kas'' and status=true ';
      open;
      Ed_Additional.Text:=fieldbyname('additional_code').AsString;
    end;
    //Ed_Additional.Text:='KK';
    gbDataBank.Visible:=false;
   end;
   if cbsumberdata.Text='BANK' then
   begin
    load_trans_type2;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select additional_code from t_additional_source_cash_bank where additional_name=''pengeluaran_bank'' and status=true ';
      open;
      Ed_Additional.Text:=fieldbyname('additional_code').AsString;
    end;
    //Ed_Additional.Text:='BK';
    gbDataBank.Visible:=true;
   end;
   //if cbsumberdata.Text='KAS KECIL' then
   //begin
    //load_trans_type2;
    //Ed_Additional.Text:='KC';
   //end;
end;

procedure TFDataPengeluaranKasBank.Cb_jenis_transSelect(Sender: TObject);
begin
     if cbsumberdata.Text='KAS' then
     begin
        with Dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='SELECT * from t_master_trans_account where name_trans='+QuotedStr(Cb_jenis_trans.Text)+' and code_module=''6'' ';
          Open;
        end;
        code_trans.Text:=dm.Qtemp.FieldByName('code_trans').AsString;
        edKodeJenisTrans.Text:=code_trans.Text;
        ed_id_modul.Text:='6';
        refresh_form;
     end;
     if cbsumberdata.Text='BANK' then
     begin
        with Dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='SELECT * from t_master_trans_account where name_trans='+QuotedStr(Cb_jenis_trans.Text)+' and code_module=''5'' ';
          Open;
        end;
        code_trans.Text:=dm.Qtemp.FieldByName('code_trans').AsString;
        edKodeJenisTrans.Text:=code_trans.Text;
        ed_id_modul.Text:='5';
        refresh_form;
     end;
end;

procedure TFDataPengeluaranKasBank.clear;
begin
  MemDetailAkun.EmptyTable;
  MemDetailHutang.EmptyTable;
  edNoTrans.Clear;
  dtTrans.date:=now();
  dtPeriode1.date:=now();
  dtPeriode2.date:=now();
  edKodeJenisTrans.Clear;
  edNamaJenisTrans.Clear;
  edNamaBank.Clear;
  edNoRek.Clear;
  edKode_supplier.Clear;
  edNama_supplier.Clear;
  edNoRek.Clear;
  edNamaBank.Clear;
  edKodeMataUang.Clear;
  edNamaMataUang.Clear;
  edUntukPengeluaran.Clear;
  edKurs.value:=0.00;
  edJumlah.value:=0.00;
  MemKeterangan.Clear;
  MemDetailAkun.Active:=true;
  MemDetailHutang.Active:=true;
  Cbsumberdata.Clear;
  Cb_jenis_trans.Clear;
  code_trans.Clear;
  Ed_id_modul.Clear;
  Ed_Additional.Clear;
  Edth.Clear;
  Edbln.Clear;
  Edhari.Clear;
  ak_account.Clear;
  Ed_voucher_ajuan.Clear;
  edKodeSumberPengeluaran.Clear;
  Cb_debt_source.Clear;
end;

procedure TFDataPengeluaranKasBank.code_transChange(Sender: TObject);
begin
   FMasterData.vcall:='KL_kasbank_jns_transaksi';
   FDataPengeluaranKasBank.RzPageControl1.ActivePage:=FDataPengeluaranKasBank.TabDetailAkun;
   RefreshGridDetailAkun;

   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='select * from t_master_trans_account where code_trans='+QuotedStr(code_trans.Text)+' ';
     Open;
     ed_id_modul.Text:=fieldbyname('code_module').AsString;
     cb_jenis_trans.Text:=fieldbyname('name_trans').AsString;
   end;
end;

procedure TFDataPengeluaranKasBank.DBGridAkunColumns0CellButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='keluar_kasbank_show_header';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT b.header_code,b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                ' left join t_ak_header c on b.header_code=c.header_code'+
                ' GROUP BY b.code,b.account_name,c.header_name '+
                ' ORDER BY b.code,b.account_name,c.header_name';
      Execute;
    end;
    DBGridDaftar_Perk.Columns[0].Visible:=true
  end;
end;

procedure TFDataPengeluaranKasBank.DBGridAkunColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='keluar_kasbank';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                ' left join t_ak_header c on b.header_code=c.header_code'+
                ' GROUP BY b.code,b.account_name,c.header_name '+
                ' ORDER BY b.code,b.account_name,c.header_name';
      Execute;
    end;
  end;
end;

procedure TFDataPengeluaranKasBank.DBGridTagihanColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  {if SelectRow('select value_parameter from t_parameter where key_parameter=''sumber_keluar_bank'' ')= '0' then
  begin
    if (edKodeSumberHutang.Text='0') OR (Length(edKodeSumberHutang.Text)=0) then
    begin
      ShowMessage('Silkan Pilih Sumber Hutang...!!!');
      Exit;
    end;
    if edKodeSumberHutang.Text='1' then
    begin
      FDaftarHutang.vcall:='keluar_kasbank';
      FDaftarHutang.kd_outlet:=edKode_Pelanggan.Text;
      FDaftarHutang.RefreshGrid;
      FDaftarHutang.show;
    end;
    if edKodeSumberPelunasan.Text='2' then
    begin
    FDaftarPelunasanHutang.vcall:='PelunasanHutang';
    FDaftarPelunasanHutang.kd_supp:=edKode_supplier.Text;
    FDaftarPelunasanHutang.tglPelunasan:=dtPeriode1.Date;
    FDaftarPelunasanHutang.edKode_supplier.Text:=edKode_supplier.Text;
    FDaftarPelunasanHutang.edNama_supplier.Text:=edNama_supplier.Text;
    FDaftarPelunasanHutang.dtPeriode1.Date:=dtPeriode1.Date;
    FDaftarPelunasanHutang.RefreshGrid;
    FDaftarPelunasanHutang.show;
    end;
  end;
  if SelectRow('select value_parameter from t_parameter where key_parameter=''sumber_keluar_kas_bank'' ')= '1' then
  begin
      FDaftarRencanaLunasHutang.vcall:='rencana_lunas_piutang';
      FDaftarRencanaLunasHutang.kd_outlet:=edKode_Pelanggan.Text;
      FDaftarRencanaLunasHutang.periode1:=dtPeriode1.Date;
      FDaftarRencanaLunasHutang.periode2:=dtPeriode2.Date;
      FDaftarRencanaLunasHutang.edKode_Pelanggan.Text:=edKode_Pelanggan.Text;
      FDaftarRencanaLunasHutang.edNama_Pelanggan.Text:=edNama_Pelanggan.Text;
      FDaftarRencanaLunasHutang.dtPeriode1.Date:=dtPeriode1.Date;
      FDaftarRencanaLunasHutang.dtPeriode2.Date:=dtPeriode2.Date;
      FDaftarRencanaLunasHutang.RefreshGrid;
      FDaftarRencanaLunasHutang.show;
  end; }

end;

procedure TFDataPengeluaranKasBank.dtTransChange(Sender: TObject);
var
    SelectedDate: TRzDateTimeEdit;
    year, month, day: word;
begin
   with dm.Qtemp2 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dttrans.Date))+' :: DATE, ''dd'') hari ';
     Open;
   end;
   Edhari.Text:=dm.Qtemp2.FieldByName('hari').AsString;

   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dttrans.Date))+' :: DATE, ''yyyy'') tahun ';
     Open;
   end;
   Edth.Text:=dm.Qtemp.FieldByName('tahun').AsString;

   with dm.Qtemp1 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dttrans.Date))+' :: DATE, ''mm'') bulan ';
     Open;
   end;
   Edbln.Text:=dm.Qtemp1.FieldByName('bulan').AsString;
end;

procedure TFDataPengeluaranKasBank.edKodeMataUangChange(Sender: TObject);
begin
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='select * from t_currency where currency_code='+QuotedStr(edKodeMataUang.Text)+' ';
     open;
     edNamaMataUang.Text:=fieldbyname('currency_name').AsString;
   end;
end;

procedure TFDataPengeluaranKasBank.edKodeSumberPengeluaranChange(
  Sender: TObject);
begin
    with Dm.Qtemp do
    begin
      close;
      sql.Text:='SELECT * from t_settlement_data_source where code='+QuotedStr(edKodeSumberPengeluaran.text)+' and status=''true'' ';
      Open;
      cb_debt_source.Text:=fieldbyname('source_name').AsString;
    end;
end;

procedure TFDataPengeluaranKasBank.edKode_supplierButtonClick(Sender: TObject);
begin
  with FSearch_Supplier do
  begin
      QSupplier.Close;
      QSupplier.Open;
  end;
  FSearch_Supplier.Caption:='Master Data Supplier';
  FSearch_Supplier.vcall:='keluar_kas_bank';
  FSearch_Supplier.ShowModal;
end;

procedure TFDataPengeluaranKasBank.edKode_supplierChange(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT code,account_name,supplier_code from t_ak_account a '+
              'LEFT JOIN t_supplier b ON a.code=b.account_code where supplier_code='+QuotedStr(edKode_supplier.Text);
    open;
    ak_account.Text:=fieldbyname('code').AsString;
  end;
end;

procedure TFDataPengeluaranKasBank.edNamaBankButtonClick(Sender: TObject);
begin
  //if Length(edKodeJenisTrans.Text)=0 then
  if Length(code_trans.Text)=0 then
  begin
    ShowMessage('Silakan Pilih Modul');
  end;

  //if Length(edKodeJenisTrans.Text)<>0 then
  if Length(code_trans.Text)<>0 then
  begin
  FMasterData.Caption:='Master Data Bank';
  FMasterData.vcall:='KL_kasbank_jns_transaksi';
  FMasterData.update_grid('rekening_no','bank_name','currency','t_Bank','WHERE	deleted_at IS NULL ORDER BY id desc');
  FMasterData.ShowModal;
  end;
end;

procedure TFDataPengeluaranKasBank.edNamaJenisTransButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Transaksi';
  FMasterData.vcall:='KL_kasbank_jns_transaksi';
  FMasterData.update_grid('code_trans','CONCAT(name_module,'+QuotedStr(' - ')+',name_trans)','description','t_master_trans_account','WHERE code_module IN (''5'',''6'') and deleted_at IS NULL ORDER BY name_trans desc');
  FMasterData.ShowModal;
  FDataPengeluaranKasBank.RzPageControl1.ActivePage:=FDataPengeluaranKasBank.TabDetailAkun;
  RefreshGridDetailAkun;
end;

procedure TFDataPengeluaranKasBank.edNamaMataUangButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Mata Uang';
  FMasterData.vcall:='klkas_mata_uang';
  FMasterData.update_grid('currency_code','currency_name','country','"t_currency"','WHERE	status=''t'' ORDER BY currency_name desc');
  FMasterData.ShowModal;
end;

procedure TFDataPengeluaranKasBank.edNMJenisBayarButtonClick(Sender: TObject);
begin
  if Length(edKodeJenisTrans.Text)=0 then
  begin
    ShowMessage('Silakan Pilih Modul');
  end;

  if Length(edKodeJenisTrans.Text)<>0 then
  begin
    FMasterData.Caption:='Master Jenis Pembayaran';
    FMasterData.vcall:='jenis_pengeluaran';
    FMasterData.update_grid('code','name','description','"t_payment_source"','WHERE	deleted_at IS NULL ORDER BY id desc');
    FMasterData.ShowModal;
    //Autocode;
  end;
end;

procedure TFDataPengeluaranKasBank.Ed_AdditionalChange(Sender: TObject);
begin
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='select * from t_source_payment where status=true and code='+QuotedStr(Ed_Additional.Text)+' ';
     Open;
     cbsumberdata.Text:=fieldbyname('name').AsString;
   end;
end;

procedure TFDataPengeluaranKasBank.Ed_id_modulChange(Sender: TObject);
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT * from t_master_trans_account where code_module='+Quotedstr(Ed_id_modul.Text)+' ';
        Open;
      end;
      if Ed_id_modul.Text='5' then
      begin
        cbsumberdata.Text:='BANK';
      end
      else
      if Ed_id_modul.Text='6' then
      begin
        cbsumberdata.Text:='KAS';
      end;

end;

procedure TFDataPengeluaranKasBank.Ed_voucher_ajuanChange(Sender: TObject);
begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT code_account,name_account,position,paid_amount,description,code_account_header, '+
                  'amount_rate_results,module_id FROM t_cash_bank_expenditure_submission_det '+
                  'WHERE no_voucher='+QuotedStr(FDataPengeluaranKasBank.Ed_voucher_ajuan.text)+'';
        Open;
      end;
      with FDataPengeluaranKasBank do
      begin
         MemDetailAkun.First;
         while not MemDetailAkun.Eof do
         begin
           MemDetailAkun.insert;
           MemDetailAkun['kd_akun']:=dm.Qtemp.FieldByName('code_account').AsString;
           MemDetailAkun['nm_akun']:=dm.Qtemp.FieldByName('name_account').AsString;
           if dm.Qtemp.FieldByName('position').AsString='D' then
           begin
              MemDetailAkun['debit']:=dm.Qtemp.FieldByName('paid_amount').Value;
           end;
           if dm.Qtemp.FieldByName('position').AsString='K' then
           begin
              MemDetailAkun['kredit']:=dm.Qtemp.FieldByName('paid_amount').Value;
           end;
           MemDetailAkun['keterangan']:=dm.Qtemp.FieldByName('description').AsString;
           MemDetailAkun['kd_header_akun']:=dm.Qtemp.FieldByName('code_account_header').AsString;
           MemDetailAkun.post;
           MemDetailAkun.Next;
         end;
      end;

end;

procedure TFDataPengeluaranKasBank.FormShow(Sender: TObject);
begin
   self.load_sumber_data;
   load_source_debt;
   dtTrans.Date:=Now;
   dtPeriode1.Date:=Now;
   dtPeriode2.Date:=Now;
   cbsumberdata.OnSelect(sender);
   if MemKKasBank.Active=false then
      MemKKasBank.Active:=true;
   if MemDetailAkun.Active=false then
      MemDetailAkun.Active:=true;
   if MemDetailHutang.Active=false then
      MemDetailHutang.Active:=true;

end;

procedure TFDataPengeluaranKasBank.RefreshGridDetailAkun;
var
   URUTAN_KE : Integer;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ( SELECT "code_module", "code_trans", "code_account",  '+
            ' "name_account",  "position", "account_number_bank"  '+
            ' FROM  "public"."t_master_trans_account_det") a  '+
            ' WHERE code_trans='+QuotedStr(code_Trans.Text)+'  '+
            ' Order By "code_account", "name_account" desc');
    open;
  end;
  MemDetailAkun.active:=false;
  MemDetailAkun.active:=true;
  MemDetailAkun.EmptyTable;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
    //Showmessage('Maaf, Data Tidak Ditemukan..');
      URUTAN_KE:=0;
      Dm.Qtemp1.first;
      while not Dm.Qtemp1.Eof do
      begin
        URUTAN_KE:=URUTAN_KE+1;
        with Dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.add('SELECT a."no_voucher", "account_number_bank", "code_account", '+
                  ' "name_account", "position", b."paid_amount", b."description" from '+
                  '(SELECT "voucher_no" as no_voucher, trans_date as "date_trans", periode1 as "period_date1", '+
                  ' periode2 as "period_date2", trans_type_code as"code_type_trans",trans_type_name  as "name_type_trans",'+
                  ' bank_number_account as "account_number_bank", bank_name_account as "account_name_bank", currency, "kurs",'+
                  ' "amount", "to_", "remark", customer_code as  "code_cust",customer_name as "name_cust"  from "t_cash_bank_expenditure") a '+
                  'LEFT JOIN '+
                  '(SELECT no_voucher, "code_account", "name_account", "position", "paid_amount", "description" from "t_cash_bank_expenditure_det") b  ON a."no_voucher"=b."no_voucher" '+
                  'WHERE a."no_voucher"='+QuotedStr(edNoTrans.Text)+' '+
                  'AND a."no_voucher"='+QuotedStr(Dm.Qtemp1.fieldbyname('code_account').value)+''+
                  'ORDER BY "position" desc ');
          open;
        end;

      //ShowMessage(Dm.Qtemp1.fieldbyname('position').Value);
      if  Dm.Qtemp.RecordCount=0 then
      begin
        FDataPengeluaranKasBank.MemDetailAkun.insert;
        FDataPengeluaranKasBank.MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('code_account').value;
        FDataPengeluaranKasBank.MemDetailAkun['kd_header_akun']:=Dm.Qtemp1.fieldbyname('code_account').value;
        FDataPengeluaranKasBank.MemDetailAkun['nm_akun']:=Dm.Qtemp1.fieldbyname('name_account').value;
        if Dm.Qtemp1.fieldbyname('position').Value='D' then
        begin
          FDataPengeluaranKasBank.akun_d:=Dm.Qtemp1.fieldbyname('code_account').value;
          FDataPengeluaranKasBank.MemDetailAkun['debit']:=edJumlah.Value;
          FDataPengeluaranKasBank.MemDetailAkun['kredit']:=0;
        end;
        if Dm.Qtemp1.fieldbyname('position').Value='K' then
        begin
          FDataPengeluaranKasBank.akun_k:=Dm.Qtemp1.fieldbyname('code_account').value;
          FDataPengeluaranKasBank.MemDetailAkun['kredit']:=edJumlah.Value;
          FDataPengeluaranKasBank.MemDetailAkun['debit']:=0;
        end;
       FDataPengeluaranKasBank.MemDetailAkun['keterangan']:='-';
       FDataPengeluaranKasBank.MemDetailAkun.post;
      end;

      if  Dm.Qtemp.RecordCount<>0 then
      begin
       FDataPengeluaranKasBank.MemDetailAkun.insert;
       FDataPengeluaranKasBank.MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('code_account').value;
       FDataPengeluaranKasBank.MemDetailAkun['kd_header_akun']:=Dm.Qtemp1.fieldbyname('code_account').value;
       FDataPengeluaranKasBank.MemDetailAkun['nm_akun']:=Dm.Qtemp1.fieldbyname('name_account').value;
        if Dm.Qtemp1.fieldbyname('position').Value='D' then
        begin
          FDataPengeluaranKasBank.akun_d:=Dm.Qtemp1.fieldbyname('code_account').value;
          FDataPengeluaranKasBank.MemDetailAkun['debit']:=Dm.Qtemp.fieldbyname('paid_amount').value;
          FDataPengeluaranKasBank.MemDetailAkun['kredit']:=0;
        end;
        if Dm.Qtemp1.fieldbyname('position').Value='K' then
        begin
          FDataPengeluaranKasBank.akun_k:=Dm.Qtemp1.fieldbyname('code_account').value;
          FDataPengeluaranKasBank.MemDetailAkun['kredit']:=Dm.Qtemp.fieldbyname('paid_amount').value;
          FDataPengeluaranKasBank.MemDetailAkun['debit']:=0;
        end;
       FDataPengeluaranKasBank.MemDetailAkun['keterangan']:=Dm.Qtemp.fieldbyname('description').value;
       FDataPengeluaranKasBank.MemDetailAkun.post;
      end;
       Dm.Qtemp1.next;
      end;
  end;
end;

procedure TFDataPengeluaranKasBank.RefreshGridDetailHutang;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT "no_voucher", "no_invoice", "no_invoice_tax", "code_cust", '+
            ' "name_cust", "date_trans", "code_type_trans", "name_type_trans", '+
            ' "account_number_bank", "account_name_bank", "paid_amount", "description", "account_acc" '+
            ' from "t_cash_bank_acceptance_receivable" '+
            ' WHERE "no_voucher"='+QuotedStr(edNoTrans.Text)+' '+
            ' Order BY no_invoice_tax asc');
    open;
  end;
  MemDetailHutang.active:=false;
  MemDetailHutang.active:=true;
  MemDetailHutang.EmptyTable;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
    //Showmessage('Maaf, Data Tidak Ditemukan..');
    URUTAN_KE:=0;
      Dm.Qtemp1.first;
      while not Dm.Qtemp1.Eof do
      begin
        FDataPengeluaranKasBank.MemDetailHutang.insert;
        FDataPengeluaranKasBank.MemDetailHutang['tgl_faktur']:=Dm.Qtemp1.fieldbyname('date_trans').value;
        FDataPengeluaranKasBank.MemDetailHutang['no_faktur']:=Dm.Qtemp1.fieldbyname('no_invoice_tax').value;
        FDataPengeluaranKasBank.MemDetailHutang['no_tagihan']:=Dm.Qtemp1.fieldbyname('no_invoice').value;
        FDataPengeluaranKasBank.MemDetailHutang['jum_piutang']:=Dm.Qtemp1.fieldbyname('paid_amount').value;
        FDataPengeluaranKasBank.MemDetailHutang['jum_piutang_real']:=Dm.Qtemp1.fieldbyname('paid_amount').value;
        FDataPengeluaranKasBank.MemDetailHutang['keterangan']:=Dm.Qtemp1.fieldbyname('description').value;
        FDataPengeluaranKasBank.MemDetailHutang.post;
       Dm.Qtemp1.next;
      end;
    FDataPengeluaranKasBank.MemDetailHutang.SortByFields('no_faktur asc');
  end;
end;

procedure TFDataPengeluaranKasBank.RzBitBtn1Click(Sender: TObject);
begin
   MemDetailAkun.EmptyTable;
   MemDetailHutang.EmptyTable;
   Fdafajuankeluarkasbank.vcall:='keluar_kas';
   Fdafajuankeluarkasbank.Show;

end;

procedure TFDataPengeluaranKasBank. VCekBalance;
begin
    //Cek Balance Debit Kredit
  vtotal_debit:=0;
  vtotal_kredit:=0;
  MemDetailAkun.First;
  while not MemDetailAkun.Eof do
  begin
    vtotal_debit:=vtotal_debit+MemDetailAkun['debit'];
    vtotal_kredit:=vtotal_kredit+MemDetailAkun['kredit'];
    MemDetailAkun.Next;
  end;

  if vtotal_debit <> vtotal_kredit then
  begin
    ShowMessage('Nominal Pengeluaran Tidak Balance, Pastikan Debit Kredit Anda Sudah Benar...!!!');
    //ShowMessage(FloatToStr(Grand_Tot)+'0'+FloatToStr(edTotalBiaya.Value));
    exit;
  end;

  if vtotal_debit <> edJumlah.Value then
  begin
    ShowMessage('Nominal Pengeluaran Tidak Balance, Pastikan Debit Kredit Dengan Total Penerimaan Anda Sudah Benar...!!!');
    //ShowMessage(FloatToStr(Grand_Tot)+'0'+FloatToStr(edTotalBiaya.Value));
    exit;
  end;


  //Cek Hutang Dengan Pengeluaran Balance
  if MemDetailHutang.RecordCount<>0 then
  begin
    vtotal_Hutang:=0;
    MemDetailHutang.First;
    while not MemDetailHutang.Eof do
    begin
      vtotal_hutang:=vtotal_hutang+MemDetailHutang['jum_hutang'];
      MemDetailHutang.Next;
    end;

    if vtotal_kredit <> vtotal_hutang then
    begin
      ShowMessage('Nominal Pengeluaran Tidak Balance, Pastikan Debit Kredit Dengan Total Hutang Anda Sudah Benar...!!!');
      //ShowMessage(FloatToStr(Grand_Tot)+'0'+FloatToStr(edTotalBiaya.Value));
      exit;
    end;
  end;
end;

end.
