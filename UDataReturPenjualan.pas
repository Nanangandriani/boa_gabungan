unit UDataReturPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, Vcl.StdCtrls,
  MemTableEh, RzButton, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs,
  Vcl.ComCtrls, RzDTP, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFDataReturPenjualan = class(TForm)
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
  private
    { Private declarations }
  tot_dpp, tot_ppn, tot_pph, tot_grand : real;
  public
    { Public declarations }
    strtgl, strbulan, strtahun,kd_perkiraan_pel, kd_kares, StrNoINV: string;
    Year, Month, Day: Word;
    Status,iserror,IntStatusKoreksi: Integer;
    grand_tot_selling,grand_tot_returns: real;
    procedure Clear;
    procedure Autonumber;
    procedure HitungGrid;
    procedure Save;
    procedure Update;
    procedure InsertDetailRet;
    procedure RefreshGrid;
    procedure UpdateDPP;
  end;

var
  FDataReturPenjualan: TFDataReturPenjualan;

implementation

{$R *.dfm}

uses UListReturPenjualan, UMy_Function, USetMasterPenjulan, UMasterData,
  Ubrowse_pelanggan, UReturPenjualan_Sumber, UDataModule, UHomeLogin, UMainMenu,
  UTambah_Barang, UKoreksi;

procedure TFDataReturPenjualan.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "trans_no", "code_item", "name_item", "amount", "amount_sale", "code_unit", '+
            ' "name_unit", "unit_price", "unit_price_sale", "sub_total", "ppn_account", "ppn_percent", '+
            ' "ppn_value", "pph_account", "pph_value", "pph_name", "pph_percent", "grand_tot", "account_code" '+
            ' FROM  "public"."t_sales_returns_det") a '+
            ' WHERE trans_no='+QuotedStr(edNoTrans.Text)+' '+
            ' Order By trans_no, code_item desc');
    open;
  end;

    FDataReturPenjualan.MemDetail.active:=false;
    FDataReturPenjualan.MemDetail.active:=true;
    FDataReturPenjualan.MemDetail.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FDataReturPenjualan.MemDetail.active:=false;
      FDataReturPenjualan.MemDetail.active:=true;
      FDataReturPenjualan.MemDetail.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FDataReturPenjualan.MemDetail.insert;
     FDataReturPenjualan.MemDetail['NO_JUAL']:=Dm.Qtemp.FieldByName('trans_no').AsString;
     FDataReturPenjualan.MemDetail['KD_ITEM']:=Dm.Qtemp.FieldByName('code_item').AsString;
     FDataReturPenjualan.MemDetail['NM_ITEM']:=Dm.Qtemp.FieldByName('name_item').AsString;
     FDataReturPenjualan.MemDetail['JUMLAH']:=Dm.Qtemp.FieldByName('amount').AsFloat;
     FDataReturPenjualan.MemDetail['JUMLAH_JUAL']:=Dm.Qtemp.FieldByName('amount_sale').AsFloat;
     FDataReturPenjualan.MemDetail['HARGA_SATUAN']:=Dm.Qtemp.FieldByName('unit_price').AsFloat;
     FDataReturPenjualan.MemDetail['HARGA_SATUAN_JUAL']:=Dm.Qtemp.FieldByName('unit_price_sale').AsFloat;
     FDataReturPenjualan.MemDetail['KD_SATUAN']:=Dm.Qtemp.FieldByName('code_unit').AsString;
     FDataReturPenjualan.MemDetail['NM_SATUAN']:=Dm.Qtemp.FieldByName('name_unit').AsString;
     FDataReturPenjualan.MemDetail['SUB_TOTAL']:= Dm.Qtemp.FieldByName('sub_total').AsFloat*Dm.Qtemp.FieldByName('unit_price').AsFloat;
     FDataReturPenjualan.MemDetail['PPN_AKUN']:=Dm.Qtemp.fieldbyname('ppn_account').value;
     FDataReturPenjualan.MemDetail['PPN_PERSEN']:=Dm.Qtemp.fieldbyname('ppn_percent').value;
     FDataReturPenjualan.MemDetail['PPN_NILAI']:=Dm.Qtemp.fieldbyname('ppn_value').value;
     FDataReturPenjualan.MemDetail['PPH_AKUN']:=Dm.Qtemp.fieldbyname('pph_account').value;
     FDataReturPenjualan.MemDetail['NAMA_PPH']:=Dm.Qtemp.fieldbyname('pph_name').value;
     FDataReturPenjualan.MemDetail['PPH_PERSEN']:=Dm.Qtemp.fieldbyname('pph_percent').value;
     FDataReturPenjualan.MemDetail['PPH_NILAI']:=Dm.Qtemp.fieldbyname('pph_value').value;
     FDataReturPenjualan.MemDetail['GRAND_TOTAL']:=Dm.Qtemp.fieldbyname('grand_tot').value;
     FDataReturPenjualan.MemDetail['AKUN_PERK_ITEM']:=Dm.Qtemp.fieldbyname('account_code').value;
     FDataReturPenjualan.MemDetail.post;
     FDataReturPenjualan.HitungGrid;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFDataReturPenjualan.Save;
var Stradditional_code: String;
begin
  if (kd_kares='') OR (kd_kares='0') then
    Stradditional_code:='NULL'
  else Stradditional_code:=QuotedStr(kd_kares);

  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_sales_returns" ("created_at", "created_by", '+
            ' "trans_no", "trans_date", "code_cust", "name_cust", "account_code", "code_type_return", '+
            ' "name_type_return", "description", "order_no", "additional_code", '+
            ' "trans_day", "trans_month", "trans_year", "sub_total", "ppn_value", '+
            ' "pph_value", "grand_tot",no_inv_tax,no_inv,sbu_code) '+
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
            ' '+QuotedStr(StringReplace(FloatToStr(tot_dpp),',','.',[]))+', '+

            ' '+QuotedStr(FloatToStr(tot_ppn))+', '+
            ' '+QuotedStr(FloatToStr(tot_pph))+', '+
            ' '+QuotedStr(FloatToStr(tot_grand))+', '+
            ' '+QuotedStr(edNoFaktur.Text)+','+
            ' '+QuotedStr(StrNoINV)+','+QuotedStr(FHomeLogin.vKodePRSH)+'  );');
    ExecSQL;
  end;
  InsertDetailRet;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
//  FDataReturPenjualan.Refresh;

end;

procedure TFDataReturPenjualan.Update;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' UPDATE "public"."t_sales_returns" SET '+
            ' updated_at=NOW(),'+
            ' updated_by='+QuotedStr(Nm)+','+
            ' trans_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal.Date))+','+
            ' code_cust='+QuotedStr(edKode_Pelanggan.Text)+','+
            ' name_cust='+QuotedStr(edNama_Pelanggan.Text)+','+
            ' account_code='+QuotedStr(kd_perkiraan_pel)+','+
            ' code_type_return='+QuotedStr(edKodeJenis.Text)+','+
            ' name_type_return='+QuotedStr(edNamaJenis.Text)+','+
            ' description='+QuotedStr(MemKeterangan.Text)+','+
            ' sub_total='+QuotedStr(FloatToStr(ROUND(tot_dpp)))+', '+
            ' ppn_value='+QuotedStr(FloatToStr(ROUND(tot_ppn)))+', '+
            ' pph_value='+QuotedStr(FloatToStr(ROUND(tot_pph)))+', '+
            ' grand_tot='+QuotedStr(FloatToStr(ROUND(tot_grand)))+', '+
            ' order_no='+QuotedStr(order_no)+','+
            ' additional_code='+QuotedStr('0')+','+
            ' trans_day='+QuotedStr(strtgl)+','+
            ' trans_month='+QuotedStr(strbulan)+','+
            ' trans_year='+QuotedStr(strtahun)+' '+
            ' Where trans_no='+QuotedStr(edNoTrans.Text)+'');
    ExecSQL;
  end;
  InsertDetailRet;
  MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
//    FDataReturPenjualan.Refresh;
  FMainMenu.TampilTabForm2;
end;

procedure TFDataReturPenjualan.InsertDetailRet;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:=' DELETE FROM  "public"."t_sales_returns_det" '+
              ' WHERE "trans_no"='+QuotedStr(edNoTrans.Text)+';';
    ExecSQL;
  end;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.Text:=' INSERT INTO "public"."t_sales_returns_det" (trans_no, no_trans_sale, code_item, '+
                ' name_item, account_code, amount, code_unit, name_unit, unit_price, '+
                ' sub_total, ppn_account, ppn_percent, ppn_value, pph_account, '+
                ' pph_value, pph_name, pph_percent, amount_sale, unit_price_sale, grand_tot) '+
                ' Values('+
                ' '+QuotedStr(edNoTrans.Text)+','+
                ' '+QuotedStr(MemDetail['NO_JUAL'])+','+
                ' '+QuotedStr(MemDetail['KD_ITEM'])+','+
                ' '+QuotedStr(MemDetail['NM_ITEM'])+','+
                ' '+QuotedStr(MemDetail['AKUN_PERK_ITEM'])+','+
                ' '+QuotedStr(MemDetail['JUMLAH'])+','+
                ' '+QuotedStr(MemDetail['KD_SATUAN'])+','+
                ' '+QuotedStr(MemDetail['NM_SATUAN'])+','+
                ' '+QuotedStr(StringReplace(MemDetail['HARGA_SATUAN'],',','.',[]))+','+
                ' '+QuotedStr(StringReplace(MemDetail['SUB_TOTAL'],',','.',[]))+','+
                ' '+QuotedStr(MemDetail['PPN_AKUN'])+','+
                ' '+QuotedStr(MemDetail['PPN_PERSEN'])+','+
                ' '+QuotedStr(StringReplace(MemDetail['PPN_NILAI'],',','.',[]))+','+
                ' '+QuotedStr(MemDetail['PPH_AKUN'])+','+
                ' '+QuotedStr(MemDetail['PPH_NILAI'])+','+
                ' '+QuotedStr(MemDetail['NAMA_PPH'])+','+
                ' '+QuotedStr(MemDetail['PPH_PERSEN'])+','+
                ' '+QuotedStr(StringReplace(MemDetail['JUMLAH_JUAL'],',','.',[]))+','+
                ' '+QuotedStr(StringReplace(MemDetail['HARGA_SATUAN_JUAL'],',','.',[]))+','+
                ' '+QuotedStr(StringReplace(MemDetail['GRAND_TOTAL'],',','.',[]))+' );';
      ExecSQL;
    end;
    MemDetail.Next;
  end;
end;

procedure TFDataReturPenjualan.UpdateDPP;
var curCash,curReceipt,curChequeAmount1: Currency;
begin
  with dm.Qtemp3 do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT id,COALESCE(cash,0) cash,COALESCE(receipt,0) receipt, '+
              'COALESCE(cheque_amount1,0) cheque_amount1 '+
              'FROM t_dpp WHERE no_invoice='+QuotedStr(StrNoINV)+' ORDER BY id DESC LIMIT 1';
    open;
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
      ExecSQL;
    end;
  end;
end;

procedure TFDataReturPenjualan.HitungGrid;
begin
   try
      begin
        if MemDetail['JUMLAH']>MemDetail['JUMLAH_JUAL'] then
        begin
          ShowMessage('Jumlah Quantum Retur Melebihi Jumlah Penjualan...!!!');
          MemDetail.Edit;
          MemDetail['JUMLAH']:=MemDetail['JUMLAH_JUAL'];
          MemDetail.Post;
          exit;
        end;
        if MemDetail['HARGA_SATUAN']>MemDetail['HARGA_SATUAN_JUAL'] then
        begin
          ShowMessage('Harga Satuan Retur Melebihi Harga Satuan Penjualan...!!!');
          MemDetail.Edit;
          MemDetail['HARGA_SATUAN']:=MemDetail['HARGA_SATUAN_JUAL'];
          MemDetail.Post;
          exit;
        end;
        if MemDetail['KD_ITEM']<>'0' then
        begin
          MemDetail.Edit;
          MemDetail['SUB_TOTAL']:=MemDetail['JUMLAH']*MemDetail['HARGA_SATUAN'];
          //Validasi PPN
          if MemDetail['PPN_PERSEN']=0 then
          begin
            MemDetail['PPN_NILAI']:=0;
            MemDetail['PPN_AKUN']:=0;
            MemDetail['PPN_PERSEN']:=0;
          end;
          if MemDetail['PPN_PERSEN']<>0 then
          begin
//            MemDetail['PPN_NILAI']:=ROUND(MemDetail['SUB_TOTAL']*(MemDetail['PPN_PERSEN']/100));
            MemDetail['PPN_NILAI']:=MemDetail['SUB_TOTAL']*(MemDetail['PPN_PERSEN']/100);
          end;
          //Validasi PPH
          if (MemDetail['NAMA_PPH']='0') AND (MemDetail['PPH_PERSEN']=0) then
          begin
            MemDetail['PPH_NILAI']:=0;
            MemDetail['PPH_AKUN']:=0;
            MemDetail['NAMA_PPH']:=0;
            MemDetail['PPH_PERSEN']:=0;
          end;
          if (MemDetail['PPH_PERSEN']<>0)  OR (MemDetail['PPH_PERSEN']<>'0')  then
          begin
            MemDetail['PPH_NILAI']:=ROUND((MemDetail['SUB_TOTAL']+MemDetail['PPN_NILAI'])*(MemDetail['PPH_PERSEN']/100));
          end;
//          MemDetail['GRAND_TOTAL']:=ROUND(MemDetail['SUB_TOTAL']+ROUND(MemDetail['PPN_NILAI'])-ROUND(MemDetail['PPH_NILAI']));
          MemDetail['GRAND_TOTAL']:=(MemDetail['SUB_TOTAL']+(MemDetail['PPN_NILAI'])-(MemDetail['PPH_NILAI']));
          MemDetail.Post;
        end;
     end;
     Except;
   end;
end;

procedure TFDataReturPenjualan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataReturPenjualan.BCorrectionClick(Sender: TObject);
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
                'where link='+QuotedStr(FListReturPenjualan.Name)); //Mendapatkan nama Menu
    FKoreksi.Status:=0;
    FKoreksi.vnotransaksi:=edNoTrans.Text; //Mendapatkan Nomor Transaksi
    FKoreksi.ShowModal;
  end;
end;

procedure TFDataReturPenjualan.BSaveClick(Sender: TObject);
begin
  DecodeDate(dtTanggal.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);
  //refresh grid
  tot_dpp:=0;
  tot_ppn:=0;
  tot_pph:=0;
  tot_grand:=0;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    HitungGrid;
      tot_dpp:=tot_dpp+MemDetail['SUB_TOTAL'];
      tot_ppn:=tot_ppn+MemDetail['PPN_NILAI'];
      tot_pph:=tot_pph+MemDetail['PPH_NILAI'];
      tot_grand:=tot_grand+MemDetail['GRAND_TOTAL'];
    MemDetail.Next;
  end;
  tot_dpp:=ROUND(tot_dpp);
  tot_ppn:=ROUND(tot_ppn);
  tot_pph:=ROUND(tot_pph);
  tot_grand:=ROUND(tot_grand);

  grand_tot_selling:=StrToCurr(SelectRow('select sisa_piutang from get_piutang_invoice(NOW()::date) where trans_no='+QuotedStr(StrNoINV)));
  ShowMessage(FloatToStr(grand_tot_selling));
  if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
  if edKode_Pelanggan.Text='' then
  begin
    MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    edKode_Pelanggan.SetFocus;
  end
  else if tot_grand>(grand_tot_selling) then
  begin
    MessageDlg('Nilai Retur lebih besar dari Sisa Piutang ..!!',mtInformation,[mbRetry],0);
  end
  {else if edKodeJenis.Text='' then
  begin
    MessageDlg('Data Jenis Retur Wajib Diisi..!!',mtInformation,[mbRetry],0);
    edKodeJenis.SetFocus;
  end}
  else if Status = 0 then
  begin
  FDataReturPenjualan.Autonumber;
  //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
    if MessageDlg ('Anda Yakin Disimpan Order No. '+edNoTrans.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
    begin
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

procedure TFDataReturPenjualan.btAddDetailClick(Sender: TObject);
begin
  if edNoFaktur.Text='' then
  begin
    MessageDlg('No Faktur Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else begin
    vStatusTrans:='returpenjualan';
    FTambah_Barang.ShowModal;
  end;
end;

procedure TFDataReturPenjualan.btMasterJenisReturClick(Sender: TObject);
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

procedure TFDataReturPenjualan.Clear;
begin
  edNoTrans.Clear;
  dtTanggal.Date:=Now();
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  kd_perkiraan_pel:='0';
  edKodeJenis.Clear;
  edNamaJenis.Clear;
  edNoFaktur.Clear;
  MemKeterangan.Clear;
  MemDetail.EmptyTable;
  MemDetail.active:=false;
  MemDetail.active:=true;
end;

procedure TFDataReturPenjualan.DBGridDetailCellClick(Column: TColumnEh);
begin
//  HitungGrid;
end;

procedure TFDataReturPenjualan.DBGridDetailColEnter(Sender: TObject);
begin
//  HitungGrid;
end;

procedure TFDataReturPenjualan.DBGridDetailColExit(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFDataReturPenjualan.DBGridDetailColumns0EditButtons0Click(
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

procedure TFDataReturPenjualan.DBGridDetailColumns2EditButtons0Click(
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

procedure TFDataReturPenjualan.DBGridDetailEnter(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFDataReturPenjualan.DBGridDetailExit(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFDataReturPenjualan.DBGridDetailMouseEnter(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFDataReturPenjualan.edKode_PelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='retur_penjualan';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFDataReturPenjualan.edNamaJenisButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Retur';
  FMasterData.vcall:='jenis_retur';
  FMasterData.update_grid('code','name','description','t_type_sales_return','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
end;

procedure TFDataReturPenjualan.edNoFakturButtonClick(Sender: TObject);
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

procedure TFDataReturPenjualan.FormShow(Sender: TObject);
begin
//  FDataReturPenjualan.Autonumber;
  if (Status=1) AND (IntStatusKoreksi=2) then
  begin
    BSave.Enabled:=True;
    BCorrection.Visible:=True;
    BCorrection.Enabled:=False;
  end else if Status=0 then
  begin
    BSave.Enabled:=True;
    BCorrection.Visible:=False;
  end else begin
    BSave.Enabled:=False;
    BCorrection.Visible:=True;
    BCorrection.Enabled:=True;
  end;
end;

procedure TFDataReturPenjualan.Autonumber;
begin
  idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FListReturPenjualan.Name)+'');
  strday2:=dtTanggal.Date;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.id,b.additional_status from t_numb_type a inner join t_numb b on a.id=b.reset_type where numb_type='+QuotedStr(idmenu);
    open;
  end;
  if dm.Qtemp['additional_status']='0' then kd_kares:='' else kd_kares:=kd_kares;
  edNoTrans.Text:=getNourut(strday2,'public.t_sales_returns',kd_kares);
end;

end.
