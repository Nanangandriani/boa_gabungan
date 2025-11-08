unit UListPenerimaanBank;

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
  TFListPenerimaanBank = class(TForm)
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
    QPenerimaanBank: TUniQuery;
    DsPenerimaanBank: TDataSource;
    QPenerimaanBankvoucher_no: TStringField;
    QPenerimaanBanktrans_date: TDateField;
    QPenerimaanBankcode_type_trans: TStringField;
    QPenerimaanBankname_type_trans: TStringField;
    QPenerimaanBankaccount_number_bank: TStringField;
    QPenerimaanBankaccount_name_bank: TStringField;
    QPenerimaanBankpaid_amount: TFloatField;
    QPenerimaanBankdescription: TMemoField;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    QBukti_Terima: TUniQuery;
    frxDBDQBukti_Terima: TfrxDBDataset;
    Report: TfrxReport;
    QBukti_Terimavoucher_no: TStringField;
    QBukti_Terimatrans_date: TDateField;
    QBukti_Terimacode_cust: TStringField;
    QBukti_Terimaname_cust: TStringField;
    QBukti_Terimaaccount_number_bank: TStringField;
    QBukti_Terimaaccount_name_bank: TStringField;
    QBukti_Terimafor_acceptance: TStringField;
    QBukti_Terimadescription: TMemoField;
    QBukti_Terimamodule_id: TIntegerField;
    QBukti_Terimacode_account_header: TStringField;
    QBukti_Terimaaccount_name: TStringField;
    QBukti_Terimapaid_amount: TFloatField;
    QBukti_Terimadesc_akun: TMemoField;
    dxBarLargeButton2: TdxBarLargeButton;
    frxDBDJurnal: TfrxDBDataset;
    QJurnal: TUniQuery;
    QBukti_Terima_det: TUniQuery;
    frxDBDQBukti_Terima_det: TfrxDBDataset;
    QBukti_Terima_detvoucher_no: TStringField;
    QBukti_Terima_dettrans_date: TDateField;
    QBukti_Terima_detcode_cust: TStringField;
    QBukti_Terima_detname_cust: TStringField;
    QBukti_Terima_detaccount_number_bank: TStringField;
    QBukti_Terima_detaccount_name_bank: TStringField;
    QBukti_Terima_detcode_account_header: TStringField;
    QBukti_Terima_detname_account: TStringField;
    QBukti_Terima_detpaid_amount: TFloatField;
    QBukti_Terima_detfor_acceptance: TStringField;
    QBukti_Terima_detdescription: TMemoField;
    dsBukti_Terima: TDataSource;
    dsBukti_Terima_det: TDataSource;
    QBukti_Terima_detket: TMemoField;
    dxBarManager1Bar3: TdxBar;
    cbBulan: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    dxBarLargeButton3: TdxBarLargeButton;
    cbTransaksi: TdxBarCombo;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure QPenerimaanBankdescriptionGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Refresh;
  end;

var
  FListPenerimaanBank: TFListPenerimaanBank;

implementation

{$R *.dfm}

uses UDataPenerimaanBank, UDataModule, UMy_Function, UHomeLogin;

procedure TFListPenerimaanBank.Refresh;
var mm: Integer;
    strTransaksi: String;
begin
  if cbTransaksi.Text='SEMUA' then
  begin
    strTransaksi:='';
  end else begin
    strTransaksi:=' AND b.name_module='+QuotedStr(cbTransaksi.Text)+' ';
  end;
  mm:=cbBulan.ItemIndex+1;
  DBGridOrder.StartLoadingStatus();
  try
   with QPenerimaanBank do
   begin
       close;
       sql.Clear;
       sql.Text:= 'select a.* from "public"."t_cash_bank_acceptance" a  '+
                  'left join t_master_trans_account b on b.code_trans=a.code_type_trans '+
                  'where EXTRACT(YEAR FROM a.trans_date)='+edTahun.Text+' AND '+
                  'EXTRACT(MONTH FROM a.trans_date)='+(IntToStr(mm))+' AND '+
                  'a.deleted_at is null'+ strTransaksi+' order by a.created_at Desc ';
       open;
   end;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
end;

procedure TFListPenerimaanBank.ActBaruExecute(Sender: TObject);
begin
  FDataPenerimaanBank.Clear;
  //FDataPenerimaanBank.Autocode;
  FDataPenerimaanBank.Status:=0;
  FDataPenerimaanBank.cbTransaksi.Enabled:=true;
  FDataPenerimaanBank.cbJenisTransaksi.Enabled:=true;
  FDataPenerimaanBank.edNoTrans.Enabled:=true;
  FDataPenerimaanBank.Enable;
  FDataPenerimaanBank.ShowModal;
end;

procedure TFListPenerimaanBank.ActDelExecute(Sender: TObject);
begin
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
          sql.Text:=' UPDATE "public"."t_cash_bank_acceptance" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "voucher_no"='+QuotedStr(QPenerimaanBank.FieldByName('voucher_no').AsString);
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

procedure TFListPenerimaanBank.ActROExecute(Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun.Text:=(year);
  cbBulan.ItemIndex:=StrToInt(month)-1;
  cbTransaksi.ItemIndex:=0;
  Refresh;
end;

procedure TFListPenerimaanBank.ActUpdateExecute(Sender: TObject);
var strPaymentCode:String;
begin
  strPaymentCode:='';
  FDataPenerimaanBank.Clear;
  with Dm.Qtemp do
  begin
     close;
     sql.Clear;
     sql.Text:=' select * from "public"."t_cash_bank_acceptance"  a '+
               ' WHERE "voucher_no"='+QuotedSTr(QPenerimaanBank.FieldByName('voucher_no').AsString)+' '+
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
    if dm.Qtemp.FieldValues['payment_code']<>NULL then
    strPaymentCode:=dm.Qtemp.FieldValues['payment_code'];

    with FDataPenerimaanBank do
    begin
      //Master
      with dm.Qtemp3 do
      begin
        close;
        sql.clear;
        sql.add('SELECT * from "public"."t_ak_module" where id IN (''3'',''4'')  ORDER BY id asc');
        open;
        first;
      end;

      FDataPenerimaanBank.cbTransaksi.clear;
      FDataPenerimaanBank.cbTransaksi.items.Add('');
      while not dm.Qtemp3.eof do
      begin
        FDataPenerimaanBank.cbTransaksi.Items.add(dm.Qtemp3.fieldbyname('module_name').asstring);
        dm.Qtemp3.next;
      end;

      edNoTrans.Text:=Dm.Qtemp.FieldByName('voucher_no').AsString;
      dtTrans.date:=Dm.Qtemp.FieldByName('trans_date').AsDateTime;
      dtPeriode1.date:=Dm.Qtemp.FieldByName('period_date1').AsDateTime;
      dtPeriode2.date:=Dm.Qtemp.FieldByName('period_date2').AsDateTime;
      edKodeJenisTrans.Text:=Dm.Qtemp.FieldByName('code_type_trans').AsString;
      edNamaJenisTrans.Text:=Dm.Qtemp.FieldByName('name_type_trans').AsString;
      IntStatusKoreksi:=Dm.Qtemp.FieldValues['status_correction'];

      with Dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.add(' SELECT * from ('+
                ' SELECT * from t_master_trans_account  '+
                ' where code_trans='+QuotedStr(Dm.Qtemp.FieldByName('code_type_trans').AsString)+') a ');
        open;
      end;
      cbTransaksi.Text:=Dm.Qtemp1.FieldByName('name_module').AsString;
      cbJenisTransaksi.ItemIndex:=Dm.Qtemp1.FieldByName('status_bill').AsInteger+1;

      edKode_Pelanggan.Text:=Dm.Qtemp.FieldByName('code_cust').AsString;
      edNama_Pelanggan.Text:=Dm.Qtemp.FieldByName('name_cust').AsString;
      edNoRek.Text:=Dm.Qtemp.FieldByName('account_number_bank').AsString;
      edNamaBank.Text:=Dm.Qtemp.FieldByName('account_name_bank').AsString;
      edKodeMataUang.Text:=Dm.Qtemp.FieldByName('code_currency').AsString;
      edNamaMataUang.Text:=Dm.Qtemp.FieldByName('name_currency').AsString;
      edUntukPengiriman.Text:=Dm.Qtemp.FieldByName('for_acceptance').AsString;
      edKurs.value:=Dm.Qtemp.FieldByName('kurs').Value;
      edJumlah.value:=Dm.Qtemp.FieldByName('paid_amount').Value;
      MemKeterangan.Text:=Dm.Qtemp.FieldByName('description').AsString;
      edKodeSumberTagihan.Text:=Dm.Qtemp.FieldByName('payment_code').AsString;
      edNMSumberTagihan.Text:=Dm.Qtemp.FieldByName('payment_name').AsString;
      edKodeJenisBayar.Text:=Dm.Qtemp.FieldByName('bill_code').AsString;
      edNMJenisBayar.Text:=Dm.Qtemp.FieldByName('bill_name').AsString;
      FDataPenerimaanBank.vid_modul:=Dm.Qtemp.FieldByName('module_id').Value;
      order_no:=Dm.Qtemp.FieldByName('order_no').AsString;
      strtgl:=Dm.Qtemp.FieldByName('trans_day').AsString;
      strbulan:=Dm.Qtemp.FieldByName('trans_month').AsString;
      strtahun:=Dm.Qtemp.FieldByName('trans_year').AsString;
      additional_code1:=Dm.Qtemp.FieldByName('additional_code').AsString;
      additional_code2:='0';
      additional_code3:='0';
      additional_code4:='0';
      additional_code5:='0';

      //Refresh Form
      if FDataPenerimaanBank.vid_modul='3' then // Bank
      begin
        FDataPenerimaanBank.gbDataBank.Visible:=True;
      end;
      if FDataPenerimaanBank.vid_modul='4' then // Kas
      begin
        FDataPenerimaanBank.gbDataBank.Visible:=False;
      end;


      if SelectRow('select value_parameter from t_parameter where key_parameter='+QuotedStr('sumber_terima_bank')+' ')= '0' then
      begin
        with FDataPenerimaanBank do
        begin
          //ShowMessage('0');
          //edKodeSumberTagihan.Visible:=true;
          //edKodeJenisBayar.Visible:=true;
          lbSumberTagihan.Visible:=true;
          lbSumberTagihann.Visible:=true;
          lbJenisBayar.Visible:=true;
          lbJenisBayarr.Visible:=true;
          edNMSumberTagihan.Visible:=true;
          edNMJenisBayar.Visible:=true;
        end;
      end;
      if SelectRow('select value_parameter from t_parameter where key_parameter='+QuotedStr('sumber_terima_bank')+' ')= '1' then
      begin
        with FDataPenerimaanBank do
        begin
          //ShowMessage('1');
          //edKodeSumberTagihan.Visible:=false;
          //edKodeJenisBayar.Visible:=false;
          lbSumberTagihan.Visible:=false;
          lbSumberTagihann.Visible:=false;
          lbJenisBayar.Visible:=false;
          lbJenisBayarr.Visible:=false;
          edNMSumberTagihan.Visible:=false;
          edNMJenisBayar.Visible:=false;
        end;
      end;

      if SelectRow('select status_bill from t_master_trans_account where code_trans='+QuotedStr(Dm.Qtemp.FieldByName('code_type_trans').AsString)+' ')= '0' then
      begin
        with FDataPenerimaanBank do
        begin
          Panel5.Visible:=true;
          gbDataPiutang.Visible:=false;
          TabDetailFaktur.TabVisible:=false;
        end;
      end;
      if SelectRow('select status_bill from t_master_trans_account where code_trans='+QuotedStr(Dm.Qtemp.FieldByName('code_type_trans').AsString)+' ')= '1' then
      begin
        with FDataPenerimaanBank do
        begin
          Panel5.Visible:=true;
          gbDataPiutang.Visible:=true;
          TabDetailFaktur.TabVisible:=true;
        end;

        if (FDataPenerimaanBank.gbDataPiutang.Visible=false) and (FDataPenerimaanBank.gbDataBank.Visible=false) then
          FDataPenerimaanBank.Panel5.Visible:=false
        else
          FDataPenerimaanBank.Panel5.Visible:=true;
      end;

      if (vid_modul='3') AND (cbJenisTransaksi.Text='NON PIUTANG') then
      begin
        lbSumberTagihan.Visible:=False;
        lbSumberTagihann.Visible:=False;
        lbJenisBayar.Visible:=False;
        lbJenisBayarr.Visible:=False;
        edNMSumberTagihan.Visible:=False;
        edNMJenisBayar.Visible:=False;
      end;


      //detailakun
      with Dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.add(' SELECT * from ('+
                ' SELECT * from "public"."t_cash_bank_acceptance_det"'+
                ' WHERE "voucher_no"='+QuotedStr(Dm.Qtemp.FieldByName('voucher_no').AsString)+' ) a '+
                ' Order By position asc');
        open;
      end;

      MemDetailAkun.EmptyTable;
      Dm.Qtemp1.First;
      while not Dm.Qtemp1.Eof do
      begin
        FDataPenerimaanBank.MemDetailAkun.Insert;
        FDataPenerimaanBank.MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('code_account').AsString;
        FDataPenerimaanBank.MemDetailAkun['nm_akun']:=Dm.Qtemp1.fieldbyname('name_account').AsString;
        if Dm.Qtemp1.fieldbyname('position').AsString='D' then
        begin
          FDataPenerimaanBank.MemDetailAkun['kredit']:=0;
          FDataPenerimaanBank.MemDetailAkun['debit']:=Dm.Qtemp1.fieldbyname('paid_amount').Value;
        end;
        if Dm.Qtemp1.fieldbyname('position').AsString='K' then
        begin
          FDataPenerimaanBank.MemDetailAkun['kredit']:=Dm.Qtemp1.fieldbyname('paid_amount').Value;
          FDataPenerimaanBank.MemDetailAkun['debit']:=0;
        end;
        FDataPenerimaanBank.MemDetailAkun['jumlah_hasil_kurs']:=Dm.Qtemp1.fieldbyname('amount_rate_results').Value;
        FDataPenerimaanBank.MemDetailAkun['keterangan']:=Dm.Qtemp1.fieldbyname('description').AsString;
        FDataPenerimaanBank.MemDetailAkun['kd_header_akun']:=Dm.Qtemp1.fieldbyname('code_account_header').AsString;
        FDataPenerimaanBank.MemDetailAkun.post;
        Dm.Qtemp1.Next;
      end;

      //detail faktur
      with Dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.add(' SELECT b.no_inv_tax no_invoice_tax ,a.* from ('+
                ' SELECT * from "public"."t_cash_bank_acceptance_receivable" '+
                ' WHERE "voucher_no"='+QuotedStr(Dm.Qtemp.FieldByName('voucher_no').AsString)+' ) a '+
                ' LEFT JOIN get_selling(NULL) b ON b.trans_no=a.no_invoice '+
                ' Order By a.voucher_no desc');
        open;
      end;

      MemDetailPiutang.EmptyTable;
      if Dm.Qtemp1.RecordCount>0 then
      begin
        Dm.Qtemp1.First;
        while not Dm.Qtemp1.Eof do
        begin
          FDataPenerimaanBank.kd_ak_pelanggan:=Dm.Qtemp1.fieldbyname('account_acc').AsString;
          FDataPenerimaanBank.MemDetailPiutang.insert;
          if strPaymentCode='2' then
          begin
            FDataPenerimaanBank.MemDetailPiutang['id_dpp']:=Dm.Qtemp1.fieldbyname('id_dpp').AsString;
          end;

          FDataPenerimaanBank.MemDetailPiutang['no_faktur']:=Dm.Qtemp1.fieldbyname('no_invoice_tax').AsString;
          FDataPenerimaanBank.MemDetailPiutang['tgl_faktur']:=Dm.Qtemp1.fieldbyname('date_invoice_tax').AsDateTime;
          FDataPenerimaanBank.MemDetailPiutang['no_faktur']:=Dm.Qtemp1.fieldbyname('no_invoice_tax').AsString;
          FDataPenerimaanBank.MemDetailPiutang['no_tagihan']:=Dm.Qtemp1.fieldbyname('no_invoice').AsString;
          FDataPenerimaanBank.MemDetailPiutang['jum_piutang']:=Dm.Qtemp1.fieldbyname('paid_amount').Value;
          FDataPenerimaanBank.MemDetailPiutang['jum_piutang_real']:=Dm.Qtemp1.fieldbyname('ar_balance').Value;
          FDataPenerimaanBank.MemDetailPiutang['keterangan']:=Dm.Qtemp1.fieldbyname('description').AsString;
          FDataPenerimaanBank.MemDetailPiutang.post;
          Dm.Qtemp1.Next;
        end;
      end;

      with Dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.Text:='select a.* from t_cash_bank_acceptance_down_payment a where a.voucher_no='+QuotedStr(Dm.Qtemp.FieldByName('voucher_no').AsString);
        open;
      end;

      if dm.Qtemp1.RecordCount>0 then
      begin
        edJumlah.Enabled:=False;
        gbDataSumberPenerimaan.Visible:=True;
        edKodePelangganSumber.Text:=Dm.Qtemp1.FieldValues['code_cust'];
        edNamaPelangganSumber.Text:=Dm.Qtemp1.FieldValues['name_cust'];
        edNoRefSumberPenerimaan.Text:=Dm.Qtemp1.FieldValues['no_trans_down_payment'];;
        cbSumberPenerimaan.Text:=SelectRow('select name from t_cash_bank_acceptance_source where code=''CB001'' ');
      end else begin
        gbDataSumberPenerimaan.Visible:=False;
        edJumlah.Enabled:=True;
      end;


    end;
  end;
  FDataPenerimaanBank.RzPageControl1.ActivePage:=FDataPenerimaanBank.TabDetailAkun;
  FDataPenerimaanBank.Status := 1;
  FDataPenerimaanBank.Disable;
  FDataPenerimaanBank.Show;
end;

procedure TFListPenerimaanBank.dxBarLargeButton1Click(Sender: TObject);
begin
   with QBukti_Terima do
    begin
     close;
     sql.clear;
     sql.add(' SELECT a.*, "code_account_header", "account_name", "paid_amount", "desc_akun" from ('+
             ' select "voucher_no", "trans_date", "code_cust", "name_cust", "account_number_bank", '+
             ' "account_name_bank", "for_acceptance", "description", "module_id" '+
             ' from "public"."t_cash_bank_acceptance"  a  '+
             ' WHERE "voucher_no"='+QuotedStr(QPenerimaanBank.FieldByName('voucher_no').AsString)+' '+
             ' AND deleted_at is null) a '+
             ' LEFT JOIN (SELECT  "voucher_no", "code_account", "name_account", "position", '+
             ' "paid_amount", "description" as desc_akun, "code_account_header", "account_name" , '+
             ' "amount_rate_results" from "public"."t_cash_bank_acceptance_det" aa '+
             ' LEFT JOIN t_ak_account bb ON aa."code_account_header"=bb.code) b ON a."voucher_no"=b."voucher_no" '+
             ' where  a."voucher_no"='+QuotedStr(QPenerimaanBank.FieldByName('voucher_no').AsString)+'  '+
             ' and "position"=''K'' '+
             ' order by position asc');
     open;
    end;


 if QBukti_Terima.RecordCount=0 then
 begin
  showmessage('Tidak ada data yang bisa dicetak !');
  exit;
 end;

 if QBukti_Terima.RecordCount<>0 then
 begin
   // Dapetin Grand Total
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' select * '+
           ' from "public"."t_cash_bank_acceptance" a '+
           ' where a.deleted_at is null and '+
           ' a.voucher_no='+QuotedStr(QPenerimaanBank.FieldByName('voucher_no').AsString)+' ');
    open;
  end;
  //
  //Bikin Detail vbuktipenerimaan
  with QBukti_Terima_det do
  begin
    close;
    sql.clear;
    sql.add(' SELECT aa.*,ket from "public"."vbuktipenerimaan" aa '+
           ' LEFT JOIN (SELECT voucher_no , STRING_AGG("description", E'+QuotedStr(', \n')+') as ket '+
           ' from "public"."vbuktipenerimaan" where "voucher_no"= '+
           ' '+QuotedStr(QPenerimaanBank.FieldByName('voucher_no').AsString)+' GROUP BY voucher_no) bb '+
           ' ON aa."voucher_no"=bb."voucher_no" '+
           ' where aa."voucher_no"='+QuotedStr(QPenerimaanBank.FieldByName('voucher_no').AsString)+' ');
    open;
  end;

   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   Report.LoadFromFile(cLocation +'report/rpt_buktipenerimaan'+ '.fr3');
   SetMemo(Report,'nama_pt',FHomeLogin.vKodePRSH);
   SetMemo(Report,'kota_tanggal',FHomeLogin.vKotaPRSH+', '+formatdatetime('dd mmmm yyyy',NOW()));
   SetMemo(Report,'terbilang',UraikanAngka(floattostr(dm.Qtemp.FieldByName('paid_amount').AsFloat)));
   if QBukti_Terima.FieldByName('module_id').AsString='4' then//kas
   begin
    SetMemo(Report,'vkas','X');
    SetMemo(Report,'vbank','');
   end;
   if QBukti_Terima.FieldByName('module_id').AsString='3' then//bank
   begin
    SetMemo(Report,'vkas','');
    SetMemo(Report,'vbank','X');
   end;

   //Report.DesignReport();
   Report.ShowReport();
 end;

end;

procedure TFListPenerimaanBank.dxBarLargeButton2Click(Sender: TObject);
begin
   with QJurnal do
    begin
     close;
     sql.clear;
     sql.add(' SELECT * FROM "public"."VTrans_Journal"  '+
             ' where "trans_no"='+QuotedStr(QPenerimaanBank.FieldByName('voucher_no').AsString)+'');
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
   SetMemo(Report,'nm_judul','DAFTAR JURNAL PENERIMAAN');
   SetMemo(Report,'nama_pt',FHomeLogin.vNamaPRSH);
   //Report.DesignReport();
   Report.ShowReport();
 end;

end;

procedure TFListPenerimaanBank.dxBarLargeButton3Click(Sender: TObject);
begin
  Refresh;
end;

procedure TFListPenerimaanBank.FormShow(Sender: TObject);
begin
  with dm.Qtemp3 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * from "public"."t_ak_module" where id IN (''3'',''4'')  ORDER BY id asc');
    open;
    first;
  end;

  cbTransaksi.Items.Clear;
  cbTransaksi.items.Add('SEMUA');
  while not dm.Qtemp3.eof do
  begin
   cbTransaksi.Items.add(dm.Qtemp3.fieldbyname('module_name').asstring);
   dm.Qtemp3.next;
  end;
  ActROExecute(sender);
end;

procedure TFListPenerimaanBank.QPenerimaanBankdescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QPenerimaanBankdescription.AsString, 1, 255);
end;

Initialization
  RegisterClasses([TFListPenerimaanBank]);

end.
