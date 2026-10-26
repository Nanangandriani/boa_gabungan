unit UDataReturPenjualanCoretax;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, Vcl.StdCtrls,
  MemTableEh, RzButton, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs,
  Vcl.ComCtrls, RzDTP, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.Buttons, Vcl.ExtCtrls,
  RzLabel, RzPanel, RzRadChk, RzRadGrp;

type
  TFDataReturPenjualanCoretax = class(TForm)
    Panel1: TPanel;
    Label39: TLabel;
    Label38: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    btMasterJenisRetur: TSpeedButton;
    edKode_Pelanggan: TRzButtonEdit;
    edNama_Pelanggan: TEdit;
    edNamaJenis: TRzButtonEdit;
    edKodeJenis: TEdit;
    dtTanggal: TRzDateTimePicker;
    edNoTrans: TEdit;
    RzPageControl1: TRzPageControl;
    TabSDetailPel: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    DSDetail: TDataSource;
    MemDetail: TMemTableEh;
    MemKeterangan: TMemo;
    MemDetailNO_JUAL: TStringField;
    MemDetailKD_ITEM: TStringField;
    MemDetailNM_ITEM: TStringField;
    MemDetailJUMLAH: TFloatField;
    MemDetailHARGA_SATUAN: TFloatField;
    MemDetailKD_SATUAN: TStringField;
    MemDetailNM_SATUAN: TStringField;
    MemDetailSUB_TOTAL: TCurrencyField;
    MemDetailPPN_AKUN: TStringField;
    MemDetailPPN_PERSEN: TFloatField;
    MemDetailPPN_NILAI: TCurrencyField;
    MemDetailPPH_AKUN: TStringField;
    MemDetailNAMA_PPH: TStringField;
    MemDetailPPH_PERSEN: TFloatField;
    MemDetailPPH_NILAI: TCurrencyField;
    MemDetailJUMLAH_JUAL: TCurrencyField;
    MemDetailHARGA_SATUAN_JUAL: TFloatField;
    MemDetailGRAND_TOTAL: TCurrencyField;
    MemDetailAKUN_PERK_ITEM: TStringField;
    edNoFaktur: TRzButtonEdit;
    Label1: TLabel;
    Label2: TLabel;
    btAddDetail: TRzBitBtn;
    BCorrection: TRzBitBtn;
    RzPanel1: TRzPanel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edDPP: TRzNumericEdit;
    edDPPNilaiLain: TRzNumericEdit;
    edTotPPN: TRzNumericEdit;
    edGrandTot: TRzNumericEdit;
    chkNomorPengganti: TRzCheckBox;
    btnNoTransaksi: TRzBitBtn;
    rgJenisRetur: TRadioGroup;
    MemDetailPOTONGAN: TFloatField;
    MemDetailSUBTOTAL_GROSS: TFloatField;
    RzLabel1: TRzLabel;
    Label3: TLabel;
    edTotHarga: TRzNumericEdit;
    edPotongan: TRzNumericEdit;
    Label4: TLabel;
    RzLabel4: TRzLabel;
    edNoRef: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    edNoRetur: TEdit;
    BtnRetur: TRzBitBtn;
    MemDetailNO_FAKTUR: TStringField;
    procedure btMasterJenisReturClick(Sender: TObject);
    procedure edNamaJenisButtonClick(Sender: TObject);
    procedure edKode_PelangganButtonClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure DBGridDetailCellClick(Column: TColumnEh);
    procedure DBGridDetailColEnter(Sender: TObject);
    procedure DBGridDetailColExit(Sender: TObject);
    procedure DBGridDetailEnter(Sender: TObject);
    procedure DBGridDetailExit(Sender: TObject);
    procedure DBGridDetailMouseEnter(Sender: TObject);
    procedure DBGridDetailColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure edNoFakturButtonClick(Sender: TObject);
    procedure DBGridDetailColumns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btAddDetailClick(Sender: TObject);
    procedure BCorrectionClick(Sender: TObject);
    procedure DBGridDetailKeyPress(Sender: TObject; var Key: Char);
    procedure MemDetailAfterPost(DataSet: TDataSet);
    procedure btnNoTransaksiClick(Sender: TObject);
    procedure chkNomorPenggantiClick(Sender: TObject);
    procedure edTotHargaKeyPress(Sender: TObject; var Key: Char);
    procedure edPotonganKeyPress(Sender: TObject; var Key: Char);
    procedure edDPPKeyPress(Sender: TObject; var Key: Char);
    procedure edDPPNilaiLainKeyPress(Sender: TObject; var Key: Char);
    procedure edTotPPNKeyPress(Sender: TObject; var Key: Char);
    procedure edGrandTotKeyPress(Sender: TObject; var Key: Char);
    procedure edKode_PelangganChange(Sender: TObject);
    procedure BtnReturClick(Sender: TObject);
    procedure dtTanggalChange(Sender: TObject);
  private
    { Private declarations }
  tot_sebelum_pot, tot_potongan, tot_dpp, tot_ppn, tot_pph, tot_grand,tot_dpp_lain : Currency;
  public
    { Public declarations }
    strtgl, strbulan, strtahun,kd_perkiraan_pel, kd_kares, StrNoINV,StrTglFaktur,strNoTransaksiDiGanti: string;
    Year, Month, Day: Word;
    Status,iserror,IntStatusKoreksi,isCancel: Integer;
    grand_tot_selling,grand_tot_returns,biaya_pembulatan,pendapatan_pembulatan: real;
    procedure Clear;
    procedure Clear2;
    procedure Autonumber;
    procedure HitungGrid;
    procedure HitungGrid2;
    procedure Save;
    procedure Update;
    procedure InsertDetailRet;
    procedure RefreshGrid;
    procedure UpdateDPP;
    procedure SimpanPelanggan;
  end;

var
  FDataReturPenjualanCoretax: TFDataReturPenjualanCoretax;

implementation

{$R *.dfm}

uses UListReturPenjualan, UMy_Function, USetMasterPenjulan, UMasterData,
  Ubrowse_pelanggan, UReturPenjualan_Sumber, UDataModule, UHomeLogin, UMainMenu,
  UTambah_Barang, UKoreksi, System.Math, UListNoTransaksi,
  UListReturPenjualanCoretax, UbrowseListReturPenjualan;

procedure TFDataReturPenjualanCoretax.SimpanPelanggan;
begin

  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='UPDATE t_sales_returns_customer_coretax SET deleted_at=NOW() where trans_no ='+QuotedStr(edNoTrans.Text) ;
    try
      ExecSQL;
    except
      Connection.Close;
      Connection.Open;
      ExecSQL;
    end;
  end;

  with dm.Qtemp1 do
  begin
    close;
    sql.Clear;
    sql.Text := 'INSERT INTO t_sales_returns_customer_coretax (' +
                'trans_no, customer_code, customer_name, email, payment_term, npwp, stat_pkp, ' +
                'customer_name_pkp, no_npwp, no_nik, number_va, code_region, name_region, postal_code, ' +
                'code_type, name_type, code_selling_type, name_selling_type, code_group, name_group, ' +
                'idprospek, code_head_office, name_head_office, code_type_business, name_type_business, ' +
                'cust_type_code_tax, cust_type_name_tax, country_code_tax, country_name_tax, no_nitku, no_passport,va_name,company_code_bank ' +
                ') ' +
                'SELECT '+QuotedStr(edNoTrans.Text)+', ' +
               'customer_code, customer_name, email, payment_term, npwp, stat_pkp, ' +
               'customer_name_pkp, no_npwp, no_nik, number_va, code_region, name_region, postal_code, ' +
               'code_type, name_type, code_selling_type, name_selling_type, code_group, name_group, ' +
               'idprospek, code_head_office, name_head_office, code_type_business, name_type_business, ' +
               'cust_type_code_tax, cust_type_name_tax, country_code_tax, country_name_tax, no_nitku, no_passport,va_name,company_code_bank ' +
                'FROM t_customer ' +
                'WHERE customer_code = '+QuotedStr(edKode_Pelanggan.Text)+' ';
    try
      ExecSQL;
    except
      Connection.Close;
      Connection.Open;
      ExecSQL;
    end;
  end;
end;

procedure TFDataReturPenjualanCoretax.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "trans_no", "code_item", "name_item", "amount", "amount_sale", "code_unit", '+
            ' "name_unit", "unit_price", "unit_price_sale",subtotal_gross,piece_value, "sub_total", "ppn_account", "ppn_percent", '+
            ' "ppn_value", "pph_account", "pph_value", "pph_name", "pph_percent", "grand_tot", "account_code", no_inv,no_inv_tax '+
            ' FROM  "public"."t_sales_returns_det_coretax") a '+
            ' WHERE trans_no='+QuotedStr(edNoTrans.Text)+' '+
            ' Order By trans_no, code_item desc');
    try
      Open;
    except
      Connection.Close;
      Connection.Open;
      Open;
    end;
  end;

    MemDetail.active:=false;
    MemDetail.active:=true;
    MemDetail.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      MemDetail.active:=false;
      MemDetail.active:=true;
      MemDetail.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
      Dm.Qtemp.first;
      while not Dm.Qtemp.Eof do
      begin
       MemDetail.insert;
       MemDetail['NO_JUAL']:=Dm.Qtemp.FieldByName('trans_no').AsString;
       MemDetail['KD_ITEM']:=Dm.Qtemp.FieldByName('code_item').AsString;
       MemDetail['NM_ITEM']:=Dm.Qtemp.FieldByName('name_item').AsString;

       MemDetail['NO_JUAL']:=Dm.Qtemp.FieldByName('no_inv').AsString;
       MemDetail['NO_FAKTUR']:=Dm.Qtemp.FieldByName('no_inv_tax').AsString;

       MemDetail['JUMLAH']:=Dm.Qtemp.FieldByName('amount').AsFloat;
       MemDetail['JUMLAH_JUAL']:=Dm.Qtemp.FieldByName('amount_sale').AsFloat;
       MemDetail['HARGA_SATUAN']:=Dm.Qtemp.FieldByName('unit_price').AsFloat;
       MemDetail['HARGA_SATUAN_JUAL']:=Dm.Qtemp.FieldByName('unit_price_sale').AsFloat;
       MemDetail['KD_SATUAN']:=Dm.Qtemp.FieldByName('code_unit').AsString;
       MemDetail['NM_SATUAN']:=Dm.Qtemp.FieldByName('name_unit').AsString;
       MemDetail['SUB_TOTAL']:= Dm.Qtemp.FieldByName('sub_total').AsFloat;
       MemDetail['PPN_AKUN']:=Dm.Qtemp.fieldbyname('ppn_account').value;
       MemDetail['PPN_PERSEN']:=Dm.Qtemp.fieldbyname('ppn_percent').value;
       MemDetail['PPN_NILAI']:=Dm.Qtemp.fieldbyname('ppn_value').value;
       MemDetail['PPH_AKUN']:=Dm.Qtemp.fieldbyname('pph_account').value;
       MemDetail['NAMA_PPH']:=Dm.Qtemp.fieldbyname('pph_name').value;
       MemDetail['PPH_PERSEN']:=Dm.Qtemp.fieldbyname('pph_percent').value;
       MemDetail['PPH_NILAI']:=Dm.Qtemp.fieldbyname('pph_value').value;
       MemDetail['SUBTOTAL_GROSS']:=Dm.Qtemp.fieldbyname('subtotal_gross').value;
       MemDetail['POTONGAN']:=Dm.Qtemp.fieldbyname('piece_value').value;
       MemDetail['GRAND_TOTAL']:=Dm.Qtemp.fieldbyname('grand_tot').value;
       MemDetail['AKUN_PERK_ITEM']:=Dm.Qtemp.fieldbyname('account_code').value;
       MemDetail.post;
//       FDataReturPenjualan.HitungGrid;
       Dm.Qtemp.next;
      end;
    end;
end;

procedure TFDataReturPenjualanCoretax.BtnReturClick(Sender: TObject);
begin
  FbrowseListReturPenjualan.Caption:='Data Retur Penjualan';
  FbrowseListReturPenjualan.vcall:='returpenjualancoretax';

  with FbrowseListReturPenjualan do
  begin
    dtTgl1.Date:=dtTanggal.Date;
    dtTgl2.Date:=dtTanggal.Date;
    PanelFilter.Visible:=False;

    QListRetur.Close;
    QListRetur.Sql.Clear;
    QListRetur.Sql.Text:= 'SELECT a.* from t_sales_returns a '+
                          'LEFT JOIN t_sales_returns_coretax b on b.no_retur=a.trans_no AND b.deleted_at is NULL '+
                          'WHERE (a.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTgl1.Date))+' AND '+
                          ''+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTgl2.Date))+') AND b.trans_no is null and a.deleted_at is null';
    QListRetur.Open;
  end;
  FbrowseListReturPenjualan.ShowModal;
end;

procedure TFDataReturPenjualanCoretax.Save;
var Stradditional_code,strKeterangan, strIsNoReplacement: String;
begin
  if (kd_kares='') OR (kd_kares='0') then
    Stradditional_code:='NULL'
  else Stradditional_code:=QuotedStr(kd_kares);
  strKeterangan:='Retur Penjualan Tgl Faktur. '+StrTglFaktur;

  if chkNomorPengganti.Checked=True then strIsNoReplacement:='True' else strIsNoReplacement:='False';

  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_sales_returns_coretax" ("created_at", "created_by", '+
            ' "trans_no", "trans_date", "code_cust", "name_cust", "account_code", "code_type_return", '+
            ' "name_type_return", "description", "order_no", "additional_code", '+
            ' "trans_day", "trans_month", "trans_year",subtotal_gross,piece_value, "sub_total", "ppn_value", '+
            ' "pph_value", "grand_tot",no_inv_tax,no_inv,sbu_code,description2,'+
            'dpp_nilai_lain,is_no_replacement,no_reference,return_type,rounding_expense,rounding_income,no_retur) '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(Nm)+', '+
            ' '+QuotedStr(edNoTrans.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal.Date))+', '+
            ' '+QuotedStr(edKode_Pelanggan.Text)+', '+
            ' '+QuotedStr(edNama_Pelanggan.Text)+', '+
            ' '+QuotedStr(kd_perkiraan_pel)+', '+
            ' '+QuotedStr(edKodeJenis.Text)+', '+
            ' '+QuotedStr(edNamaJenis.Text)+', '+
            ' '+QuotedStr(MemKeterangan.Text)+', '+
            ' '+QuotedStr(order_no)+', '+
            ' '+Stradditional_code+', '+
            ' '+QuotedStr(strtgl)+', '+
            ' '+QuotedStr(strbulan)+', '+
            ' '+QuotedStr(strtahun)+', '+
            ' '+QuotedStr(StringReplace(FloatToStr(edTotHarga.Value),',','.',[]))+','+
            ' '+QuotedStr(StringReplace(FloatToStr(edPotongan.Value),',','.',[]))+','+
            ' '+QuotedStr(StringReplace(FloatToStr(edDPP.Value),',','.',[]))+','+
            ' '+QuotedStr(StringReplace(FloatToStr(edTotPPN.Value),',','.',[]))+','+
            ' '+QuotedStr(StringReplace(FloatToStr(tot_pph),',','.',[]))+','+
            ' '+QuotedStr(StringReplace(FloatToStr(edGrandTot.Value),',','.',[]))+','+
            ' '+QuotedStr(edNoFaktur.Text)+','+
            ' '+QuotedStr(StrNoINV)+','+QuotedStr(FHomeLogin.vKodePRSH)+','+
            ' '+QuotedStr(strKeterangan)+','+
            ' '+QuotedStr(StringReplace(FloatToStr(edDPPNilaiLain.Value),',','.',[]))+','+
            ' '+QuotedStr(strIsNoReplacement)+','+QuotedStr(edNoRef.Text)+','+IntToStr(rgJenisRetur.ItemIndex)+','+
            ' '+QuotedStr(StringReplace(FloatToStr(biaya_pembulatan),',','.',[]))+','+
            ' '+QuotedStr(StringReplace(FloatToStr(pendapatan_pembulatan),',','.',[]))+','+
             ' '+QuotedStr(edNoRetur.Text)+''+
            ');');
//            ' '+QuotedStr(FloatToStr(edDPPNilaiLain.Value))+'  );');
    try
      ExecSQL;
    except
      Connection.Close;
      Connection.Open;
      ExecSQL;
    end;
  end;

  if chkNomorPengganti.Checked=True then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:=' UPDATE "public"."t_sales_returns_coretax" SET'+
                ' trans_no_replacement='+QuotedStr(edNoTrans.Text)+
                ' Where trans_no='+QuotedStr(strNoTransaksiDiGanti);
      try
        ExecSQL;
      except
        Connection.Close;
        Connection.Open;
        ExecSQL;
      end;
    end;
  end;

  InsertDetailRet;
  SimpanPelanggan;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
//  FDataReturPenjualan.Refresh;
end;

procedure TFDataReturPenjualanCoretax.Update;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' UPDATE "public"."t_sales_returns_coretax" SET '+
            ' updated_at=NOW(),'+
            ' updated_by='+QuotedStr(Nm)+','+
            ' trans_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal.Date))+','+
            ' code_cust='+QuotedStr(edKode_Pelanggan.Text)+','+
            ' name_cust='+QuotedStr(edNama_Pelanggan.Text)+','+
            ' account_code='+QuotedStr(kd_perkiraan_pel)+','+
            ' code_type_return='+QuotedStr(edKodeJenis.Text)+','+
            ' name_type_return='+QuotedStr(edNamaJenis.Text)+','+
            ' description='+QuotedStr(MemKeterangan.Text)+','+
            'subtotal_gross='+QuotedStr(StringReplace(FloatToStr(edTotHarga.Value),',','.',[]))+','+
            'piece_value='+QuotedStr(StringReplace(FloatToStr(edPotongan.Value),',','.',[]))+','+
            ' sub_total='+QuotedStr(StringReplace(FloatToStr(edDPP.Value),',','.',[]))+','+
            ' ppn_value='+QuotedStr(StringReplace(FloatToStr(edTotPPN.Value),',','.',[]))+','+
            ' pph_value='+QuotedStr(StringReplace(FloatToStr(tot_pph),',','.',[]))+','+
//            ' pph_value='+QuotedStr(FloatToStr(ROUND(tot_pph)))+', '+
            ' dpp_nilai_lain='+QuotedStr(StringReplace(FloatToStr(edDPPNilaiLain.Value),',','.',[]))+','+
            ' grand_tot='+QuotedStr(StringReplace(FloatToStr(edGrandTot.Value),',','.',[]))+','+
            ' order_no='+QuotedStr(order_no)+','+
            ' additional_code='+QuotedStr('0')+','+
            ' trans_day='+QuotedStr(strtgl)+','+
            ' trans_month='+QuotedStr(strbulan)+','+
            ' trans_year='+QuotedStr(strtahun)+', '+
            ' status_correction=0, '+
            ' return_type='+IntToStr(rgJenisRetur.ItemIndex)+', '+
            ' no_reference='+QuotedStr(edNoRef.Text)+', '+
            ' rounding_expense='+QuotedStr(StringReplace(FloatToStr(biaya_pembulatan),',','.',[]))+','+
            ' rounding_income='+QuotedStr(StringReplace(FloatToStr(pendapatan_pembulatan),',','.',[]))+' '+
            ' Where trans_no='+QuotedStr(edNoTrans.Text)+'');
    try
      ExecSQL;
    except
      Connection.Close;
      Connection.Open;
      ExecSQL;
    end;
  end;
  InsertDetailRet;
  SimpanPelanggan;
  MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
//    FDataReturPenjualan.Refresh;
  FMainMenu.TampilTabForm2;
end;

procedure TFDataReturPenjualanCoretax.InsertDetailRet;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:=' DELETE FROM  "public"."t_sales_returns_det_coretax" '+
              ' WHERE "trans_no"='+QuotedStr(edNoTrans.Text)+';';
    try
      ExecSQL;
    except
      Connection.Close;
      Connection.Open;
      ExecSQL;
    end;
  end;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    if TRIM(MemDetail['KD_ITEM'])<>'' then
    begin
      with dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.Text:=' INSERT INTO "public"."t_sales_returns_det_coretax" (trans_no, no_trans_sale, code_item, '+
                  ' name_item,no_inv,no_inv_tax, account_code, amount, code_unit, name_unit, unit_price, '+
                  ' piece_value,subtotal_gross, '+
                  ' sub_total, ppn_account, ppn_percent, ppn_value, pph_account, '+
                  ' pph_value, pph_name, pph_percent, amount_sale, unit_price_sale, grand_tot) '+
                  ' Values('+
                  ' '+QuotedStr(edNoTrans.Text)+','+
                  ' '+QuotedStr(MemDetail['NO_JUAL'])+','+
                  ' '+QuotedStr(MemDetail['KD_ITEM'])+','+
                  ' '+QuotedStr(MemDetail['NM_ITEM'])+','+

                  ' '+QuotedStr(MemDetail['NO_JUAL'])+','+
                  ' '+QuotedStr(MemDetail['NO_FAKTUR'])+','+

                  ' '+QuotedStr(MemDetail['AKUN_PERK_ITEM'])+','+
                  ' '+QuotedStr(StringReplace(MemDetail['JUMLAH'],',','.',[]))+','+
  //                ' '+QuotedStr(MemDetail['JUMLAH'])+','+
                  ' '+QuotedStr(MemDetail['KD_SATUAN'])+','+
                  ' '+QuotedStr(MemDetail['NM_SATUAN'])+','+
                  ' '+QuotedStr(StringReplace(MemDetail['HARGA_SATUAN'],',','.',[]))+','+
                  ' '+QuotedStr(StringReplace(MemDetail['POTONGAN'],',','.',[]))+','+
                  ' '+QuotedStr(StringReplace(MemDetail['SUBTOTAL_GROSS'],',','.',[]))+','+
                  ' '+QuotedStr(StringReplace(MemDetail['SUB_TOTAL'],',','.',[]))+','+
                  ' '+QuotedStr(MemDetail['PPN_AKUN'])+','+
                  ' '+QuotedStr(MemDetail['PPN_PERSEN'])+','+
                  ' '+QuotedStr(StringReplace(MemDetail['PPN_NILAI'],',','.',[]))+','+
                  ' '+QuotedStr(MemDetail['PPH_AKUN'])+','+
                  ' '+QuotedStr(StringReplace(MemDetail['PPH_NILAI'],',','.',[]))+','+
                  ' '+QuotedStr(MemDetail['NAMA_PPH'])+','+
                  ' '+QuotedStr(MemDetail['PPH_PERSEN'])+','+
                  ' '+QuotedStr(StringReplace(MemDetail['JUMLAH_JUAL'],',','.',[]))+','+
                  ' '+QuotedStr(StringReplace(MemDetail['HARGA_SATUAN_JUAL'],',','.',[]))+','+
                  ' '+QuotedStr(StringReplace(MemDetail['GRAND_TOTAL'],',','.',[]))+' );';
        try
          ExecSQL;
        except
          Connection.Close;
          Connection.Open;
          ExecSQL;
        end;
      end;
    end;
    MemDetail.Next;
  end;
end;

procedure TFDataReturPenjualanCoretax.MemDetailAfterPost(DataSet: TDataSet);
begin
//  HitungGrid;
end;

procedure TFDataReturPenjualanCoretax.UpdateDPP;
var curCash,curReceipt,curChequeAmount1: Currency;
begin
  with dm.Qtemp3 do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT id,COALESCE(cash,0) cash,COALESCE(receipt,0) receipt, '+
              'COALESCE(cheque_amount1,0) cheque_amount1 '+
              'FROM t_dpp WHERE no_invoice='+QuotedStr(StrNoINV)+' ORDER BY id DESC LIMIT 1';
    try
      Open;
    except
      Connection.Close;
      Connection.Open;
      Open;
    end;
  end;
  curCash:=tot_grand+dm.Qtemp3.FieldValues['cash'];
  if dm.Qtemp3.RecordCount>0 then
  begin
    with dm.Qtemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='UPDATE t_dpp SET cash='+FloatToStr(curCash)+' '+
                'WHERE id='+QuotedStr(dm.Qtemp3.FieldValues['id']);
      try
        ExecSQL;
      except
        Connection.Close;
        Connection.Open;
        ExecSQL;
      end;
    end;
  end;
end;

procedure TFDataReturPenjualanCoretax.HitungGrid;
var ppn : real;
begin
   try
      begin
        ppn:=0;
        tot_sebelum_pot:=0;
        tot_dpp:=0;
        tot_ppn:=0;
        tot_dpp_lain:=0;
        tot_potongan:=0;
        if MemDetail['JUMLAH']>MemDetail['JUMLAH_JUAL'] then
        begin
          ShowMessage('Jumlah Quantum Retur Melebihi Jumlah Penjualan...!!!');
          MemDetail.Edit;
          MemDetail['JUMLAH']:=MemDetail['JUMLAH_JUAL'];
          MemDetail.Post;
          exit;
        end;
//        if MemDetail['HARGA_SATUAN']>MemDetail['HARGA_SATUAN_JUAL'] then
//        begin
//          ShowMessage('Harga Satuan Retur Melebihi Harga Satuan Penjualan...!!!');
//          MemDetail.Edit;
//          MemDetail['HARGA_SATUAN']:=MemDetail['HARGA_SATUAN_JUAL'];
//          MemDetail.Post;
//          exit;
//        end;
        if MemDetail['KD_ITEM']<>'0' then
        begin
          MemDetail.Edit;
          MemDetail['SUBTOTAL_GROSS']:=MemDetail['JUMLAH']*MemDetail['HARGA_SATUAN'];
          MemDetail['SUB_TOTAL']:=(MemDetail['JUMLAH']*MemDetail['HARGA_SATUAN'])-MemDetail['POTONGAN'];
          //Validasi PPN
          if MemDetail['PPN_PERSEN']=0 then
          begin
            MemDetail['PPN_NILAI']:=0;
            MemDetail['PPN_AKUN']:=0;
            MemDetail['PPN_PERSEN']:=0;
          end else begin
            MemDetail['PPN_NILAI']:=MemDetail['SUB_TOTAL']*(MemDetail['PPN_PERSEN']/100);
          end;


//          if MemDetail['PPN_PERSEN']<>0 then
//          begin
//            MemDetail['PPN_NILAI']:=MemDetail['SUB_TOTAL']*(MemDetail['PPN_PERSEN']/100);
//          end;
//          if (MemDetail['PPN_PERSEN']='') OR (MemDetail['PPN_PERSEN']=NULL) then
//          begin
//            MemDetail['PPN_NILAI']:=MemDetail['SUB_TOTAL']*(MemDetail['PPN_PERSEN']/100);
//              MemDetail['PPN_NILAI']:=0;
//          end;
          //Validasi PPH
          if (MemDetail['NAMA_PPH']='0') AND (MemDetail['PPH_PERSEN']=0) then
          begin
            MemDetail['PPH_NILAI']:=0;
            MemDetail['PPH_AKUN']:=0;
            MemDetail['NAMA_PPH']:=0;
            MemDetail['PPH_PERSEN']:=0;
          end;
//          if (MemDetail['PPH_PERSEN']<>0)  OR (MemDetail['PPH_PERSEN']<>'0')  then
//          begin
//            MemDetail['PPH_NILAI']:=ROUND((MemDetail['SUB_TOTAL']+MemDetail['PPN_NILAI'])*(MemDetail['PPH_PERSEN']/100));
//          end;
//          MemDetail['GRAND_TOTAL']:=ROUND(MemDetail['SUB_TOTAL']+ROUND(MemDetail['PPN_NILAI'])-ROUND(MemDetail['PPH_NILAI']));
//          ShowMessage('subtotal'+FloatToStr(MemDetail['SUB_TOTAL']));

          if (MemDetail['PPN_NILAI'] <> 0) then
          begin
            MemDetail['GRAND_TOTAL'] := MemDetail['SUB_TOTAL'] + MemDetail['PPN_NILAI'];
          end
          else
          begin
            MemDetail['GRAND_TOTAL'] := MemDetail['SUB_TOTAL'];
          end;

//          ShowMessage('total'+FloatToStr(MemDetail['GRAND_TOTAL']));
          MemDetail.Post;
        end;


//        MemDetail.First;
//        while not MemDetail.Eof do
//        begin
//
//          tot_dpp:=tot_dpp+MemDetail['SUB_TOTAL'];
//          if (MemDetail['KD_ITEM'] <> '') then
//          begin
//            if (MemDetail['PPN_NILAI'] <> NULL) and (MemDetail['PPN_NILAI'] <> 0) then
//            begin
//              tot_ppn := tot_ppn + MemDetail['PPN_NILAI'];
//            end;
//          end;
//          MemDetail.Next;
//        end;

        MemDetail.First;
        while not MemDetail.Eof do
        begin
          if (MemDetail['KD_ITEM'] <> '') and (MemDetail['KD_ITEM'] <> '0') then
          begin
            // Akumulasi Subtotal Gross
            if not VarIsNull(MemDetail['SUBTOTAL_GROSS']) then
              tot_sebelum_pot := tot_sebelum_pot + MemDetail['SUBTOTAL_GROSS'];
            if not VarIsNull(MemDetail['POTONGAN']) then
              tot_potongan := tot_potongan + MemDetail['POTONGAN'];
            // Akumulasi Subtotal Net / DPP
            if not VarIsNull(MemDetail['SUB_TOTAL']) then
              tot_dpp := tot_dpp + MemDetail['SUB_TOTAL'];
            // Akumulasi PPN
            if (not VarIsNull(MemDetail['PPN_NILAI'])) and (MemDetail['PPN_NILAI'] <> 0) then
              tot_ppn := tot_ppn + MemDetail['PPN_NILAI'];
          end;
          MemDetail.Next;
        end;
        tot_dpp_lain:=(tot_dpp*11/12);

//        edTotHarga.Value := StrToFloat(SelectRow('SELECT round(CAST('+StringReplace(StringReplace(formatfloat('##0.00',tot_sebelum_pot), '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll])+' AS DECIMAL(20,2)))'));
//        edPotongan.Value := StrToFloat(SelectRow('SELECT round(CAST('+StringReplace(StringReplace(formatfloat('##0.00',tot_potongan), '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll])+' AS DECIMAL(20,2)))'));
        edTotHarga.Value := tot_sebelum_pot;
        edPotongan.Value := tot_potongan;
        edDPP.Value := StrToFloat(SelectRow('SELECT round(CAST('+StringReplace(StringReplace(formatfloat('##0.00',tot_dpp), '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll])+' AS DECIMAL(20,2)))'));
        edDPPNilaiLain.Value := StrToFloat(SelectRow('SELECT round(CAST('+StringReplace(StringReplace(formatfloat('##0.00',tot_dpp_lain), '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll])+' AS DECIMAL(20,2)))'));
        edTotPPN.Value := StrToFloat(SelectRow('SELECT round(CAST('+StringReplace(StringReplace(formatfloat('##0.00',tot_ppn), '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll])+' AS DECIMAL(20,2)))'));
        edGrandTot.Value := edDPP.Value+edTotPPN.Value;
        biaya_pembulatan:=0;
        pendapatan_pembulatan:=0;
        if ((edTotHarga.Value+edTotPPN.Value)-(edPotongan.Value+edGrandTot.Value))< 0 then
        begin
          biaya_pembulatan := Abs((edTotHarga.Value+edTotPPN.Value)-(edPotongan.Value+edGrandTot.Value));
        end else if ((edTotHarga.Value+edTotPPN.Value)-(edPotongan.Value+edGrandTot.Value)) > 0 then
        begin
          // Jika plus (positif), masuk ke pendapatan_pembulatan
          pendapatan_pembulatan := ((edTotHarga.Value+edTotPPN.Value)-(edPotongan.Value+edGrandTot.Value));
        end;




//        ppn:=StrToFloat(Selectrow('select value_parameter from t_parameter where key_parameter=''persen_pajak_jual'' '));

//        edDPP.Value:=StrToFloat(SelectRow('SELECT round(CAST('+StringReplace(StringReplace(formatfloat('##0.00',tot_dpp), '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll])+' AS DECIMAL(20,2)))'));

//        edDPPNilaiLain.Value:=StrToFloat(SelectRow('SELECT round(CAST('+StringReplace(StringReplace(formatfloat('##0.00',tot_dpp_lain), '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll])+' AS DECIMAL(20,2)))'));
//        tot_ppn:=(tot_dpp*(ppn/100));
//        edTotPPN.Value:=StrToFloat(SelectRow('SELECT round(CAST('+StringReplace(StringReplace(formatfloat('##0.00',tot_ppn), '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll])+' AS DECIMAL(20,2)))'));
//        edTotPPN.Value:=tot_ppn;
//        edGrandTot.Value:=edDPP.Value+edTotPPN.Value;
     end;
     Except;
   end;
end;

procedure TFDataReturPenjualanCoretax.HitungGrid2;
var ppn : real;
begin
   try
      begin
        ppn:=0;
        tot_sebelum_pot:=0;
        tot_dpp:=0;
        tot_ppn:=0;
        tot_dpp_lain:=0;
        tot_potongan:=0;
        {if MemDetail['JUMLAH']>MemDetail['JUMLAH_JUAL'] then
        begin
          ShowMessage('Jumlah Quantum Retur Melebihi Jumlah Penjualan...!!!');
          MemDetail.Edit;
          MemDetail['JUMLAH']:=MemDetail['JUMLAH_JUAL'];
          MemDetail.Post;
          exit;
        end;
//        if MemDetail['HARGA_SATUAN']>MemDetail['HARGA_SATUAN_JUAL'] then
//        begin
//          ShowMessage('Harga Satuan Retur Melebihi Harga Satuan Penjualan...!!!');
//          MemDetail.Edit;
//          MemDetail['HARGA_SATUAN']:=MemDetail['HARGA_SATUAN_JUAL'];
//          MemDetail.Post;
//          exit;
//        end;
        if MemDetail['KD_ITEM']<>'0' then
        begin
          MemDetail.Edit;
//          MemDetail['SUBTOTAL_GROSS']:=MemDetail['JUMLAH']*MemDetail['HARGA_SATUAN'];
//          MemDetail['SUB_TOTAL']:=(MemDetail['JUMLAH']*MemDetail['HARGA_SATUAN'])-MemDetail['POTONGAN'];
          //Validasi PPN
          if MemDetail['PPN_PERSEN']=0 then
          begin
            MemDetail['PPN_NILAI']:=0;
            MemDetail['PPN_AKUN']:=0;
            MemDetail['PPN_PERSEN']:=0;
          end else begin
            MemDetail['PPN_NILAI']:=MemDetail['SUB_TOTAL']*(MemDetail['PPN_PERSEN']/100);
          end;

          if (MemDetail['NAMA_PPH']='0') AND (MemDetail['PPH_PERSEN']=0) then
          begin
            MemDetail['PPH_NILAI']:=0;
            MemDetail['PPH_AKUN']:=0;
            MemDetail['NAMA_PPH']:=0;
            MemDetail['PPH_PERSEN']:=0;
          end;

//          if (MemDetail['PPN_NILAI'] <> 0) then
//          begin
//            MemDetail['GRAND_TOTAL'] := MemDetail['SUB_TOTAL'] + MemDetail['PPN_NILAI'];
//          end
//          else
//          begin
//            MemDetail['GRAND_TOTAL'] := MemDetail['SUB_TOTAL'];
//          end;

          MemDetail.Post;
        end; }

        MemDetail.First;
        while not MemDetail.Eof do
        begin
          if (MemDetail['KD_ITEM'] <> '') and (MemDetail['KD_ITEM'] <> '0') then
          begin
            // Akumulasi Subtotal Gross
            if not VarIsNull(MemDetail['SUBTOTAL_GROSS']) then
              tot_sebelum_pot := tot_sebelum_pot + MemDetail['SUBTOTAL_GROSS'];
            if not VarIsNull(MemDetail['POTONGAN']) then
              tot_potongan := tot_potongan + MemDetail['POTONGAN'];
            // Akumulasi Subtotal Net / DPP
            if not VarIsNull(MemDetail['SUB_TOTAL']) then
              tot_dpp := tot_dpp + MemDetail['SUB_TOTAL'];
            // Akumulasi PPN
            if (not VarIsNull(MemDetail['PPN_NILAI'])) and (MemDetail['PPN_NILAI'] <> 0) then
              tot_ppn := tot_ppn + MemDetail['PPN_NILAI'];
          end;
          MemDetail.Next;
        end;
        tot_dpp_lain:=(tot_dpp*11/12);

        edTotHarga.Value := tot_sebelum_pot;
        edPotongan.Value := tot_potongan;
//        edDPP.Value := StrToFloat(SelectRow('SELECT round(CAST('+StringReplace(StringReplace(formatfloat('##0.00',tot_dpp), '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll])+' AS DECIMAL(20,2)))'));
        edDPPNilaiLain.Value := StrToFloat(SelectRow('SELECT round(CAST('+StringReplace(StringReplace(formatfloat('##0.00',tot_dpp_lain), '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll])+' AS DECIMAL(20,2)))'));
//        edTotPPN.Value := StrToFloat(SelectRow('SELECT round(CAST('+StringReplace(StringReplace(formatfloat('##0.00',tot_ppn), '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll])+' AS DECIMAL(20,2)))'));
//        edGrandTot.Value := edDPP.Value+edTotPPN.Value;
        biaya_pembulatan:=0;
        pendapatan_pembulatan:=0;
        if ((edTotHarga.Value+edTotPPN.Value)-(edPotongan.Value+edGrandTot.Value))< 0 then
        begin
          biaya_pembulatan := Abs((edTotHarga.Value+edTotPPN.Value)-(edPotongan.Value+edGrandTot.Value));
        end else if ((edTotHarga.Value+edTotPPN.Value)-(edPotongan.Value+edGrandTot.Value)) > 0 then
        begin
          pendapatan_pembulatan := ((edTotHarga.Value+edTotPPN.Value)-(edPotongan.Value+edGrandTot.Value));
        end;

     end;
     Except;
   end;
end;

procedure TFDataReturPenjualanCoretax.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataReturPenjualanCoretax.BCorrectionClick(Sender: TObject);
begin
  iserror:=0;
  if CheckJurnalPosting(edNoTrans.Text)>0 then
  begin
    MessageDlg('Nota sudah approve jurnal tidak bisa melakukan koreksi..!!',mtInformation,[mbRetry],0);
    iserror:=1;
  end;
  if iserror=0 then
  begin
    FKoreksi.vcall:=SelectRow('select Upper(submenu) menu from t_menu_sub '+
                'where link=''FListReturPenjualanCoretax'' '); //Mendapatkan nama Menu
    FKoreksi.Status:=0;
    FKoreksi.vnotransaksi:=edNoTrans.Text; //Mendapatkan Nomor Transaksi
    FKoreksi.ShowModal;
  end;
end;

procedure TFDataReturPenjualanCoretax.BSaveClick(Sender: TObject);
begin
//  HitungGrid;
  DecodeDate(dtTanggal.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);
  //refresh grid
  tot_dpp:=0;
  tot_ppn:=0;
  tot_pph:=0;
  tot_grand:=0;

//  MemDetail.First;
//  while not MemDetail.Eof do
//  begin
//    HitungGrid;
//      tot_dpp:=tot_dpp+MemDetail['SUB_TOTAL'];
//      tot_ppn:=tot_ppn+MemDetail['PPN_NILAI'];
//      tot_pph:=tot_pph+MemDetail['PPH_NILAI'];
//      tot_grand:=tot_grand+MemDetail['GRAND_TOTAL'];
//    MemDetail.Next;
//  end;
//  tot_dpp:=ROUND(tot_dpp);
//  tot_ppn:=ROUND(tot_ppn);
  tot_pph:=0;
//  tot_grand:=ROUND(tot_grand);

//  grand_tot_selling:=StrToCurr(SelectRow('select amount_receivable from get_piutang_invoice(NOW()::date) where trans_no='+QuotedStr(StrNoINV)));
//  ShowMessage(FloatToStr(grand_tot_selling));
  if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
  if (chkNomorPengganti.Checked=True) AND (edNoTrans.Text='') then
  begin
    MessageDlg('No Transaksi Wajib Diisi..!!',mtInformation,[mbRetry],0);
    Exit;
  end else
  if edNoRetur.Text='' then
  begin
    MessageDlg('No Retur Wajib Diisi..!!',mtInformation,[mbRetry],0);
    Exit;
  end else
  if edKode_Pelanggan.Text='' then
  begin
    MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    edKode_Pelanggan.SetFocus;
  end
//  else if tot_grand>(grand_tot_selling) then
//  begin
//    MessageDlg('Nilai Retur lebih besar dari Piutang ..!!',mtInformation,[mbRetry],0);
//  end
  {else if edKodeJenis.Text='' then
  begin
    MessageDlg('Data Jenis Retur Wajib Diisi..!!',mtInformation,[mbRetry],0);
    edKodeJenis.SetFocus;
  end}
  else if Status = 0 then
  begin

  //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
    if MessageDlg('Anda Yakin Ingin Menyimpan Data Ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if chkNomorPengganti.Checked=False then Autonumber;

      Save;
      Dm.Koneksi.Commit;
    end;
  end
  else if Status = 1 then
  begin
    if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
    begin
      Update;
      Dm.Koneksi.Commit;
    end;
  end;
  Except on E :Exception do
    begin
      begin
        MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
        Dm.koneksi.Rollback ;
      end;
    end;
  end;
end;

procedure TFDataReturPenjualanCoretax.btAddDetailClick(Sender: TObject);
begin
  if edNoFaktur.Text='' then
  begin
    MessageDlg('No Faktur Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else begin
    vStatusTrans:='returpenjualan';
    FTambah_Barang.ShowModal;
  end;
end;

procedure TFDataReturPenjualanCoretax.btMasterJenisReturClick(Sender: TObject);
begin
  FSetMasterPenjulan.TabSetJenisReturJual.TabVisible:=true;
  FSetMasterPenjulan.TabSetSumberOrder.TabVisible:=false;
  FSetMasterPenjulan.TabSetSumberJual.TabVisible:=false;
  FSetMasterPenjulan.TabParameter.TabVisible:=false;
  FSetMasterPenjulan.QJenisRetur.Close;
  FSetMasterPenjulan.QJenisRetur.Open;
  FSetMasterPenjulan.RzPageControl1.ActivePage:=FSetMasterPenjulan.TabSetJenisReturJual;
  FSetMasterPenjulan.ShowModal;
end;

procedure TFDataReturPenjualanCoretax.btnNoTransaksiClick(Sender: TObject);
begin
  FListNoTransaksi.vcall:='retur_penjualan';
  FListNoTransaksi.update_grid('trans_no','order_no','t_sales_returns_coretax','WHERE trans_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal.Date))+' and deleted_at is NOT NULL '+
  'AND (trans_no_replacement is NULL OR trans_no_replacement='''') ORDER BY trans_no ASC');
  FListNoTransaksi.ShowModal;
end;

procedure TFDataReturPenjualanCoretax.chkNomorPenggantiClick(Sender: TObject);
begin
  if chkNomorPengganti.Checked=True then btnNoTransaksi.Visible:=True
  else btnNoTransaksi.Visible:=False;
  edNoTrans.Clear;
//  MemDetail.Active:=False;
//  MemDetail.Active:=True;
//  MemDetail.EmptyTable;
end;

procedure TFDataReturPenjualanCoretax.Clear;
begin
  edNoRetur.Clear;
  edNoTrans.Clear;
  dtTanggal.Date:=Now();
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  kd_perkiraan_pel:='0';
  edKodeJenis.Clear;
  edNamaJenis.Clear;
  edNoFaktur.Clear;
  edNoRef.Clear;
  StrTglFaktur:='';
  StrNoINV:='';
  edGrandTot.Value:=0;
  edDPP.Value:=0;
  edTotPPN.Value:=0;
  edDPPNilaiLain.Value:=0;
  edPotongan.Value:=0;
  edTotHarga.Value:=0;
  MemKeterangan.Clear;
  MemDetail.EmptyTable;
  MemDetail.active:=false;
  MemDetail.active:=true;
  chkNomorPengganti.Checked:=False;
  btnNoTransaksi.Visible:=False;
  strNoTransaksiDiGanti:='';
  rgJenisRetur.ItemIndex:=0;
end;

procedure TFDataReturPenjualanCoretax.Clear2;
begin
  edNoRetur.Clear;
  edNoTrans.Clear;
//  dtTanggal.Date:=Now();
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  kd_perkiraan_pel:='0';
  edKodeJenis.Clear;
  edNamaJenis.Clear;
  edNoFaktur.Clear;
  edNoRef.Clear;
  StrTglFaktur:='';
  StrNoINV:='';
  edGrandTot.Value:=0;
  edDPP.Value:=0;
  edTotPPN.Value:=0;
  edDPPNilaiLain.Value:=0;
  edPotongan.Value:=0;
  edTotHarga.Value:=0;
  MemKeterangan.Clear;
  MemDetail.EmptyTable;
  MemDetail.active:=false;
  MemDetail.active:=true;
  chkNomorPengganti.Checked:=False;
  btnNoTransaksi.Visible:=False;
  strNoTransaksiDiGanti:='';
  rgJenisRetur.ItemIndex:=0;
end;

procedure TFDataReturPenjualanCoretax.DBGridDetailCellClick(Column: TColumnEh);
begin
//  HitungGrid2;
end;

procedure TFDataReturPenjualanCoretax.DBGridDetailColEnter(Sender: TObject);
begin
//  HitungGrid;
end;

procedure TFDataReturPenjualanCoretax.DBGridDetailColExit(Sender: TObject);
begin
//  HitungGrid;
end;

procedure TFDataReturPenjualanCoretax.DBGridDetailColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
//  if edKode_Pelanggan.Text<>'' then
//  begin
//    FReturPenjualan_Sumber.Clear;
//    FReturPenjualan_Sumber.edKode_Pelanggan.Text:=edKode_Pelanggan.Text;
//    FReturPenjualan_Sumber.edNama_Pelanggan.Text:=edNama_Pelanggan.Text;
//    FReturPenjualan_Sumber.edKode_Pelanggan.ReadOnly:=True;
//    FReturPenjualan_Sumber.edNama_Pelanggan.ReadOnly:=True;
//    FReturPenjualan_Sumber.ShowModal;
//  end else begin
//     MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
//  end;
end;

procedure TFDataReturPenjualanCoretax.DBGridDetailColumns2EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
 if edNoFaktur.Text<>'' then
  begin
    FReturPenjualan_Sumber.Clear;
    FReturPenjualan_Sumber.edKode_Pelanggan.Text:=edKode_Pelanggan.Text;
    FReturPenjualan_Sumber.edNama_Pelanggan.Text:=edNama_Pelanggan.Text;
    FReturPenjualan_Sumber.edNoFaktur.Text:=edNoFaktur.Text;
    FReturPenjualan_Sumber.edKode_Pelanggan.ReadOnly:=True;
    FReturPenjualan_Sumber.edNama_Pelanggan.ReadOnly:=True;
    FReturPenjualan_Sumber.DBGrid_SumberOrder.Visible:=False;
    FReturPenjualan_Sumber.edNoFaktur.Visible:=True;
    FReturPenjualan_Sumber.DBGridBarang.Visible:=True;
    FReturPenjualan_Sumber.DBGridBarang.Align:=alClient;
    FReturPenjualan_Sumber.Label12.Visible:=False;
    FReturPenjualan_Sumber.Label13.Visible:=False;
    FReturPenjualan_Sumber.Label1.Visible:=False;
    FReturPenjualan_Sumber.dtTanggal1.Visible:=False;
    FReturPenjualan_Sumber.dtTanggal2.Visible:=False;
    FReturPenjualan_Sumber.Label4.Visible:=False;
    FReturPenjualan_Sumber.Label5.Visible:=False;
    FReturPenjualan_Sumber.Label4.Top:=66;
    FReturPenjualan_Sumber.Label5.Top:=66;
    FReturPenjualan_Sumber.edNoFaktur.Top:=63;
    FReturPenjualan_Sumber.ckTandai.Top:=63;
    FReturPenjualan_Sumber.Panel5.Height:=90;
    FReturPenjualan_Sumber.vcall:='getbarang';
    FReturPenjualan_Sumber.RefreshGridBarang;
    FReturPenjualan_Sumber.ShowModal;
  end else begin
     MessageDlg('No Faktur Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFDataReturPenjualanCoretax.DBGridDetailEnter(Sender: TObject);
begin
//  HitungGrid2;
end;

procedure TFDataReturPenjualanCoretax.DBGridDetailExit(Sender: TObject);
begin
//  HitungGrid2;
end;

procedure TFDataReturPenjualanCoretax.DBGridDetailKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
    if DBGridDetail.SelectedIndex < DBGridDetail.Columns.Count - 1 then
      DBGridDetail.SelectedIndex := DBGridDetail.SelectedIndex + 1
    else
    begin
      DBGridDetail.DataSource.DataSet.Next;
      DBGridDetail.SelectedIndex := 0;
    end;
//    HitungGrid2;
    Key := #0;
  end;
end;

procedure TFDataReturPenjualanCoretax.DBGridDetailMouseEnter(Sender: TObject);
begin
//  ShowMessage('mouseenter');
//  HitungGrid;
end;

procedure TFDataReturPenjualanCoretax.dtTanggalChange(Sender: TObject);
begin
  Clear2;
end;

procedure TFDataReturPenjualanCoretax.edDPPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    edDPPNilaiLain.SetFocus;
  end;
end;

procedure TFDataReturPenjualanCoretax.edDPPNilaiLainKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    edTotPPN.SetFocus;
  end;
end;

procedure TFDataReturPenjualanCoretax.edGrandTotKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    BSave.SetFocus;
  end;
end;

procedure TFDataReturPenjualanCoretax.edKode_PelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='retur_penjualan';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFDataReturPenjualanCoretax.edKode_PelangganChange(Sender: TObject);
begin
  MemDetail.EmptyTable;
end;

procedure TFDataReturPenjualanCoretax.edNamaJenisButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Retur';
  FMasterData.vcall:='jenis_retur';
  FMasterData.update_grid('code','name','description','t_type_sales_return','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
end;

procedure TFDataReturPenjualanCoretax.edNoFakturButtonClick(Sender: TObject);
begin
  if edKode_Pelanggan.Text<>'' then
  begin
    FReturPenjualan_Sumber.Clear;
    FReturPenjualan_Sumber.edKode_Pelanggan.Text:=edKode_Pelanggan.Text;
    FReturPenjualan_Sumber.edNama_Pelanggan.Text:=edNama_Pelanggan.Text;
    FReturPenjualan_Sumber.edKode_Pelanggan.ReadOnly:=True;
    FReturPenjualan_Sumber.edNama_Pelanggan.ReadOnly:=True;
    FReturPenjualan_Sumber.edNoFaktur.Visible:=False;
    FReturPenjualan_Sumber.vcall:='getfaktur';
    FReturPenjualan_Sumber.DBGrid_SumberOrder.Visible:=True;
    FReturPenjualan_Sumber.DBGrid_SumberOrder.Align:=alClient;
    FReturPenjualan_Sumber.DBGridBarang.Visible:=False;
    FReturPenjualan_Sumber.Label12.Visible:=True;
    FReturPenjualan_Sumber.Label13.Visible:=True;
    FReturPenjualan_Sumber.Label1.Visible:=True;
    FReturPenjualan_Sumber.dtTanggal1.Visible:=True;
    FReturPenjualan_Sumber.dtTanggal2.Visible:=True;
    FReturPenjualan_Sumber.Label4.Visible:=False;
    FReturPenjualan_Sumber.Label5.Visible:=False;
    FReturPenjualan_Sumber.Label4.Top:=95;
    FReturPenjualan_Sumber.Label5.Top:=95;
    FReturPenjualan_Sumber.edNoFaktur.Top:=92;
    FReturPenjualan_Sumber.ckTandai.Top:=95;
    FReturPenjualan_Sumber.Panel5.Height:=90;
    FReturPenjualan_Sumber.ShowModal;
  end else begin
     MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFDataReturPenjualanCoretax.edPotonganKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    edDPP.SetFocus;
  end;
end;

procedure TFDataReturPenjualanCoretax.edTotHargaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    edPotongan.SetFocus;
  end;
end;

procedure TFDataReturPenjualanCoretax.edTotPPNKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    edGrandTot.SetFocus;
  end;
end;

procedure TFDataReturPenjualanCoretax.FormShow(Sender: TObject);
begin
//  FDataReturPenjualan.Autonumber;
  if isCancel=1 then
  begin
    BCorrection.Visible:=False;
    BSave.Enabled:=False;
    btnNoTransaksi.Visible:=False;
    chkNomorPengganti.Enabled:=False;
  end else
  begin
    if (Status=1) AND (IntStatusKoreksi=2) then
    begin
      BSave.Enabled:=True;
      BCorrection.Visible:=True;
      BCorrection.Enabled:=False;
      btnNoTransaksi.Visible:=False;
      chkNomorPengganti.Enabled:=False;
    end else if Status=0 then
    begin
      BSave.Enabled:=True;
      BCorrection.Visible:=False;
      btnNoTransaksi.Visible:=False;
      chkNomorPengganti.Enabled:=True;
      BtnRetur.Visible:=True;
      dtTanggal.Enabled:=True;
    end else begin
      BSave.Enabled:=False;
      BCorrection.Visible:=True;
      BCorrection.Enabled:=True;
      btnNoTransaksi.Visible:=False;
      chkNomorPengganti.Enabled:=False;
      BtnRetur.Visible:=False;
      dtTanggal.Enabled:=False;
    end;
  end;
  edDPP.Enabled:=True;
  edDPPNilaiLain.Enabled:=True;
  edTotPPN.Enabled:=True;
  edGrandTot.Enabled:=True;
end;

procedure TFDataReturPenjualanCoretax.Autonumber;
var LOriginalName: string;
    LBaseName: string;
    LLastUnderscorePos: Integer;
    LSuffix: string;
    LDummyInt: Integer;
begin
//  LOriginalName := FListReturPenjualan.Name;
//  LBaseName := LOriginalName;
//  LLastUnderscorePos := LastDelimiter('_', LBaseName);
//  if (LLastUnderscorePos > 0) and (LLastUnderscorePos < Length(LBaseName)) then
//  begin
//    LSuffix := Copy(LBaseName, LLastUnderscorePos + 1, MaxInt);
//    if TryStrToInt(LSuffix, LDummyInt) then
//    begin
//      LBaseName := Copy(LBaseName, 1, LLastUnderscorePos - 1);
//    end;
//  end;
//
//  idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(LBaseName)+'');
//  strday2:=dtTanggal.Date;
//  with dm.Qtemp do
//  begin
//    close;
//    sql.Clear;
//    sql.Text:='select a.id,b.additional_status from t_numb_type a inner join t_numb b on a.id=b.reset_type where numb_type='+QuotedStr(idmenu);
//    try
//      Open;
//    except
//      Connection.Close;
//      Connection.Open;
//      Open;
//    end;
//  end;
//  if dm.Qtemp['additional_status']='0' then kd_kares:='' else kd_kares:=kd_kares;
//  edNoTrans.Text:=getNourut(strday2,'public.t_sales_returns_coretax',kd_kares);
  edNoTrans.Text:=edNoRetur.Text+'-CORETAX';
end;

end.
