unit UNew_DataPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.Samples.Spin, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.StdCtrls, Vcl.ExtCtrls, DateUtils,
  Vcl.Buttons, RzPanel, RzLabel;

type
  TFNew_Penjualan = class(TForm)
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    edNama_Pelanggan: TRzButtonEdit;
    edKode_Pelanggan: TEdit;
    spJatuhTempo: TSpinEdit;
    edNamaSumber: TRzButtonEdit;
    edKodeSumber: TEdit;
    dtTanggal: TRzDateTimePicker;
    btAddDetail: TRzBitBtn;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    RzPageControl1: TRzPageControl;
    TabSDetailPel: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    DSDetail: TDataSource;
    MemDetail: TMemTableEh;
    Label12: TLabel;
    edNomorTrans: TEdit;
    edKode_Trans: TRzButtonEdit;
    Label1: TLabel;
    Label2: TLabel;
    edSuratJalanTrans: TEdit;
    Label15: TLabel;
    edNoReff: TEdit;
    Label16: TLabel;
    MemDetailNO_SUMBER: TStringField;
    MemDetailKD_ITEM: TStringField;
    MemDetailNM_ITEM: TStringField;
    MemDetailJUMLAH: TFloatField;
    MemDetailKD_SATUAN: TStringField;
    MemDetailSUB_TOTAL: TCurrencyField;
    MemDetailPPN_PERSEN: TFloatField;
    MemDetailPPN_NILAI: TCurrencyField;
    MemDetailPPH_AKUN: TStringField;
    MemDetailNAMA_PPH: TStringField;
    MemDetailPPH_PERSEN: TFloatField;
    MemDetailPPH_NILAI: TCurrencyField;
    MemDetailPOTONGAN_NILAI: TCurrencyField;
    MemDetailPOTONGAN_PERSEN: TFloatField;
    MemDetailGRAND_TOTAL: TCurrencyField;
    btHitungPotongan: TRzBitBtn;
    btMasterSumber: TSpeedButton;
    MemDetailPPN_AKUN: TStringField;
    MemDetailHARGA_SATUAN: TCurrencyField;
    MemDetailNM_SATUAN: TStringField;
    MemDetailAKUN_PERK_ITEM: TStringField;
    MemDetailMENEJ_FEE_PERSEN: TFloatField;
    MemDetailMENEJ_FEE_NILAI: TFloatField;
    bt_re_calculate: TRzBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    edNomorFaktur: TEdit;
    edNama_Trans: TEdit;
    MemDetailGROUP_ID: TSmallintField;
    SpeedButton1: TSpeedButton;
    MemDetailPOTONGAN1: TCurrencyField;
    MemDetailPOTONGAN2: TCurrencyField;
    MemDetailPOTONGAN3: TCurrencyField;
    MemDetailPOTONGAN4: TCurrencyField;
    MemDetailJUMLAH_HARGA: TCurrencyField;
    MemDetailPPN_NILAI_CORTEX: TCurrencyField;
    BCorrection: TRzBitBtn;
    RzPanel1: TRzPanel;
    edTotSebelumPot: TRzNumericEdit;
    edTotPot: TRzNumericEdit;
    edTotPembulatan: TRzNumericEdit;
    edTotSebelumPajak: TRzNumericEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    edTotPPN: TRzNumericEdit;
    edTotBersih: TRzNumericEdit;
    RzLabel6: TRzLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    procedure edNama_PelangganButtonClick(Sender: TObject);
    procedure edNamaSumberButtonClick(Sender: TObject);
    procedure edKode_TransButtonClick(Sender: TObject);
    procedure btHitungPotonganClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btMasterSumberClick(Sender: TObject);
    procedure dtTanggalChange(Sender: TObject);
    procedure btAddDetailClick(Sender: TObject);
    procedure DBGridDetailColumns11EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridDetailColEnter(Sender: TObject);
    procedure DBGridDetailColExit(Sender: TObject);
    procedure DBGridDetailCellClick(Column: TColumnEh);
    procedure DBGridDetailEnter(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure DBGridDetailExit(Sender: TObject);
    procedure DBGridDetailColumns3EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure bt_re_calculateClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridDetailKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edNamaSumberChange(Sender: TObject);
    procedure BCorrectionClick(Sender: TObject);
    procedure edTotSebelumPotExit(Sender: TObject);
    procedure edTotPotExit(Sender: TObject);
    procedure edTotPembulatanExit(Sender: TObject);
    procedure edTotSebelumPajakExit(Sender: TObject);
    procedure edTotPPNExit(Sender: TObject);
    procedure edTotBersihExit(Sender: TObject);
  private
    { Private declarations }
  tot_dpp, tot_ppn, tot_pph, tot_pot, tot_menej_fee, tot_grand, tot_jumlah, tot_harga_sblm_pot : real;
  public
    { Public declarations }
    stat_menej_fee_jual, stat_proses : Boolean;
    vFormSumber,vHasilGetFakturPajak, kd_kares, kd_perkiraan_pel, get_uuid: string;
    strtgl, strbulan, strtahun, trans_id_link, trans_id_link_det,StrAccPPN,Str: string;
    Year, Month, Day: Word;
    status,StatusCekKasifikasi,IntStatusKoreksi,iserror: integer;
    procedure Clear;
    procedure Save;
    procedure SimpanTempDetail;
    procedure Update;
    procedure InsertDetailJU;
    procedure RefreshGrid;
    procedure Autonumber;
    procedure HitungGrid;
    procedure UpdateDataMenejFee;
    procedure reset_stock;
    procedure check_stock;
    procedure proses_stock;
    procedure SavePotongan;
    procedure HitungTotal;
    procedure CheckPembayaran;
    procedure CheckJurnalPosting;
    procedure HitungDetail;
  end;

var
  FNew_Penjualan: TFNew_Penjualan;
  AClass: TPersistentClass;
  AFormClass: TFormClass;
  AForm: TForm;
  AForm1: TForm;

implementation

{$R *.dfm}

uses Ubrowse_pelanggan, UMasterData, URincianPot_Penjualan,
  Ubrowse_faktur_pajak, UDataModule, USetMasterPenjulan,
  UListPenjualan, UTemplate_Temp, UTambah_Barang, UListSalesOrder,
  UCari_DaftarPerk, UHomeLogin, UMy_Function, UListStockBarang, UDaftarKontrak,
  UKoreksi, UMainMenu;

function GetFakturPajak(vtahun:string): string;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT no_invoice_tax from t_invoicetax_det '+
            ' where status=false and years='+QuotedStr(vtahun)+' '+
            ' ORDER BY no_invoice_tax asc '+
            ' LIMIT 1');
    open;
  end;
  FNew_Penjualan.edNomorFaktur.Text:=Dm.Qtemp.FieldByName('no_invoice_tax').AsString;
end;

function UpdateFakturPajak(vtahun:string): string;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT no_invoice_tax from t_invoicetax_det '+
            ' where status=false and years='+QuotedStr(vtahun)+' '+
            ' ORDER BY no_invoice_tax asc '+
            ' LIMIT 1');
    open;
  end;
  FNew_Penjualan.vHasilGetFakturPajak:=Dm.Qtemp1.FieldByName('no_invoice_tax').AsString;
  FNew_Penjualan.edNomorFaktur.Text:=Dm.Qtemp1.FieldByName('no_invoice_tax').AsString;

  with dm.Qtemp2 do
  begin
    close;
    sql.clear;
    sql.Text:=' UPDATE t_invoicetax_det'+
              ' SET status=true, code_trans='+QuotedStr(FNew_Penjualan.edKode_Trans.text)+' '+
              ' WHERE "no_invoice_tax"='+QuotedStr(FNew_Penjualan.vHasilGetFakturPajak)+';';
    ExecSQL;
  end;
end;

procedure TFNew_Penjualan.HitungDetail;
var ppn : real;
begin
try
    if Memdetail.RecordCount>0 then
    begin
      MemDetail.Edit;
      MemDetail['JUMLAH_HARGA']:=MemDetail['JUMLAH']*MemDetail['HARGA_SATUAN'];

      MemDetail['SUB_TOTAL']:=MemDetail['JUMLAH_HARGA']-MemDetail['POTONGAN_NILAI'];
      //Validasi PPN
      if MemDetail['PPN_PERSEN']=0 then
      begin
        MemDetail['PPN_NILAI']:=0;
        MemDetail['PPN_AKUN']:=0;
        MemDetail['PPN_PERSEN']:=0;
      end;
      if MemDetail['PPN_PERSEN']<>0 then
      begin
        MemDetail['PPN_NILAI']:=MemDetail['SUB_TOTAL']*(MemDetail['PPN_PERSEN']/100);
      end;
      //Validasi PPH
//      if (MemDetail['NAMA_PPH']='0') AND (MemDetail['PPH_PERSEN']=0) then
//      begin
//        MemDetail['PPH_NILAI']:=0;
//        MemDetail['PPH_AKUN']:=0;
//        MemDetail['NAMA_PPH']:=0;
//        MemDetail['PPH_PERSEN']:=0;
//      end;
//      if (MemDetail['PPH_PERSEN']<>0)  OR (MemDetail['PPH_PERSEN']<>'0')  then
//      begin
//        MemDetail['PPH_NILAI']:=(MemDetail['SUB_TOTAL']+MemDetail['PPN_NILAI'])*(MemDetail['PPH_PERSEN']/100);
//      end;
      //Validasi Menejmen Fee
//      if (MemDetail['MENEJ_FEE_PERSEN']<>0)  OR (MemDetail['MENEJ_FEE_PERSEN']<>'0')  then
//      begin
//        MemDetail['MENEJ_FEE_NILAI']:=(MemDetail['SUB_TOTAL']+MemDetail['PPN_NILAI']-MemDetail['PPH_NILAI'])*(MemDetail['MENEJ_FEE_PERSEN']/100);
//      end;
//      if ((MemDetail['MENEJ_FEE_PERSEN']<>0)  OR (MemDetail['MENEJ_FEE_PERSEN']<>'0')) AND (MemDetail['KD_ITEM']<>'MENFEE') then
//      begin
//        //UpdateDataMenejFee;
//      end;

//      MemDetail['GRAND_TOTAL']:=MemDetail['SUB_TOTAL']+MemDetail['PPN_NILAI']-MemDetail['PPH_NILAI']-MemDetail['POTONGAN_NILAI']+MemDetail['MENEJ_FEE_NILAI'];

      MemDetail.Post;

      tot_jumlah:=0;
      tot_harga_sblm_pot:=0;
      tot_dpp:=0;
      tot_ppn:=0;
      tot_pot:=0;
      MemDetail.First;
      while not MemDetail.Eof do
      begin
        tot_jumlah:=tot_jumlah+MemDetail['JUMLAH'];
        tot_harga_sblm_pot:=tot_harga_sblm_pot+MemDetail['JUMLAH_HARGA'];
        tot_dpp:=tot_dpp+MemDetail['SUB_TOTAL'];

    //    tot_pph:=tot_pph+MemDetail['PPH_NILAI'];
        tot_pot:=tot_pot+MemDetail['POTONGAN_NILAI'];
    //    tot_menej_fee:=tot_menej_fee+MemDetail['MENEJ_FEE_NILAI'];
    //    tot_grand:=tot_grand+MemDetail['GRAND_TOTAL'];
        MemDetail.Next;
      end;

    //  edTotSebelumPot.Text:=FloatToStr(tot_harga_sblm_pot);
    //  edTotPot.Text:=FloatToStr(tot_pot);
    //  edTotPembulatan.Text:=FloatToStr(tot_dpp-(tot_harga_sblm_pot-tot_pot));
    //  edTotSebelumPajak.Text:=FloatToStr(tot_dpp);
    //  edTotPPN.Text :=FloatToStr(ROUND(tot_dpp*(FRincianPot_Penjualan.ppn/100)));
    //  edTotBersih.Text:=FloatToStr(tot_dpp+(ROUND(tot_dpp*(FRincianPot_Penjualan.ppn/100))));
      ppn:=StrToFloat(Selectrow('select value_parameter from t_parameter where key_parameter=''persen_pajak_jual'' '));
      edTotSebelumPot.Value:=(tot_harga_sblm_pot);
      edTotPot.Value:=(tot_pot);
      edTotPembulatan.Value:=(tot_dpp-(tot_harga_sblm_pot-tot_pot));
      edTotSebelumPajak.Value:=(tot_dpp);
      edTotPPN.Value:=(ROUND(tot_dpp*(ppn/100)));
      edTotBersih.Value:=(tot_dpp+(ROUND(tot_dpp*(ppn/100))));
    end;
    Except;
  end;





end;

procedure TFNew_Penjualan.CheckPembayaran;
begin
  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='SELECT * FROM t_cash_bank_acceptance_receivable WHERE no_invoice='+QuotedStr(edNomorTrans.Text);
    Open;
  end;

  if dm.Qtemp.RecordCount>0 then
  begin
    MessageDlg('Nota sudah ada pembayaran tidak bisa melakukan koreksi..!!',mtInformation,[mbRetry],0);
    iserror:=1;
  end;
end;

procedure TFNew_Penjualan.CheckJurnalPosting;
begin
  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='SELECT * FROM t_general_ledger WHERE trans_no='+QuotedStr(edNomorTrans.Text)+' AND approved_status=True';
    Open;
  end;

  if dm.Qtemp.RecordCount>0 then
  begin
    MessageDlg('Nota sudah approve jurnal tidak bisa melakukan koreksi..!!',mtInformation,[mbRetry],0);
    iserror:=1;
  end;
end;

procedure TFNew_Penjualan.HitungTotal;
var totdpp,totnetto:real;
begin
  totdpp:=0;
  totnetto:=0;
  MemDetail.first;
  while not MemDetail.Eof do
  begin
    totdpp:=totdpp+MemDetail['SUB_TOTAL'];
    totnetto:=totnetto+MemDetail['GRAND_TOTAL'];
    MemDetail.Next;
  end;
//  DBGridDetail.Columns[9].Footer.Value:=Format(FloatToStr(ROUND(totdpp)));
//  DBGridDetail.Columns[19].Footer.Value:=FloatToStr(ROUND(totnetto));
//  DBGridDetail.Columns[9].Footer.DisplayFormat:='#,##0.##';
//  DBGridDetail.Columns[19].Footer.DisplayFormat:='#,##0.##';
end;

procedure TFNew_Penjualan.SavePotongan;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='DELETE FROM t_selling_piece WHERE trans_no='+QuotedStr(edNomorTrans.Text);
    ExecSQL;
  end;
  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:=' INSERT INTO "public"."t_selling_piece" ("trans_no", "code_cust", "name_cust", "code_item", '+
                ' "name_item", "code_unit", "name_unit", "piece_first", "piece_second", "piece_third", '+
                ' "piece_fourth") '+
                ' Values( '+
                ' '+QuotedStr(edNomorTrans.Text)+', '+
                ' '+QuotedStr(edKode_Pelanggan.Text)+', '+
                ' '+QuotedStr(edNama_Pelanggan.Text)+', '+
                ' '+QuotedStr(MemDetail['KD_ITEM'])+', '+
                ' '+QuotedStr(MemDetail['NM_ITEM'])+', '+
                ' '+QuotedStr(MemDetail['KD_SATUAN'])+', '+
                ' '+QuotedStr(MemDetail['NM_SATUAN'])+', '+
                ' '+QuotedStr(MemDetail['POTONGAN1'])+', '+
                ' '+QuotedStr(MemDetail['POTONGAN2'])+', '+
                ' '+QuotedStr(MemDetail['POTONGAN3'])+', '+
                ' '+QuotedStr(MemDetail['POTONGAN4'])+' );';
      ExecSQL;
    end;
    MemDetail.Next;
  end;
end;

procedure TFNew_Penjualan.check_stock;
begin
  if FNew_Penjualan.Status = 0  then //kondisi baru
  begin
    with dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.Text:=' select  case when sum(qty) is null then 0 else sum(qty) end '+
                ' total_stock from "public"."t_selling_stock_details" '+
                ' WHERE "trans_id"='+QuotedStr(FNew_Penjualan.trans_id_link)+'; ';
      ExecSQL;
    end;
  end;

  if FNew_Penjualan.Status = 1  then //kondisi update
  begin
    with dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.Text:=' select  case when sum(qty) is null then 0 else sum(qty) end '+
                ' total_stock from "public"."t_selling_stock_details" '+
                ' WHERE "trans_no"='+QuotedStr(edNomorTrans.Text)+' ; ';
      ExecSQL;
    end;
  end;
end;

procedure TFNew_Penjualan.proses_stock;
begin
  if FNew_Penjualan.Status = 0  then //kondisi baru
  begin
    with dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.Text:=' update "public"."t_selling_stock_details" set '+
                ' "trans_no"='+QuotedStr(edNomorTrans.Text)+' '+
                ' WHERE "trans_id"='+QuotedStr(FNew_Penjualan.trans_id_link)+' ; ';
      ExecSQL;
    end;
  end;
end;

procedure TFNew_Penjualan.reset_stock;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT *  '+
            ' FROM "public"."t_selling_stock_details"  a '+
            ' WHERE "trans_no"=''0'' '+
            ' and "trans_id"='+QuotedStr(FNew_Penjualan.trans_id_link)+' ' );
    open;
  end;

  if  Dm.Qtemp.RecordCount<>0 then
  begin
  Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
      //update qty_booking t_item_stock_det  kembalikan stock booking
      with dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.Text:=' UPDATE "public"."t_item_stock_det" SET '+
                  ' "qty_booking"=qty_booking-'+(FloatToStr(Dm.Qtemp.FieldByName('qty').Value))+' '+
                  ' WHERE "stock_code"='+QuotedStr(Dm.Qtemp.FieldByName('stock_code').Value)+'; ';
        ExecSQL;
      end;
      with dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.Text:=' delete from "public"."t_selling_stock_details" '+
                  ' WHERE "trans_id"='+QuotedStr(Dm.Qtemp.FieldByName('trans_id').Value)+' ; ';
        ExecSQL;
      end;
      Dm.Qtemp.next;
    end;
  end;
end;

procedure TFNew_Penjualan.BCorrectionClick(Sender: TObject);
begin
  CheckPembayaran;
  CheckJurnalPosting;
  if iserror=0 then
  begin
    FKoreksi.vcall:=SelectRow('select Upper(a.menu) menu from t_menu a '+
                    'left join t_menu_sub b on b.menu_code=a.menu_code '+
                    'where link='+QuotedStr(FDataListPenjualan.Name)); //Mendapatkan nama Menu
    FKoreksi.Status:=0;
    FKoreksi.vnotransaksi:=edNomorTrans.Text; //Mendapatkan Nomor Transaksi
    FKoreksi.ShowModal;
  end;
end;

procedure TFNew_Penjualan.UpdateDataMenejFee;
begin
  //refresh grid
  tot_menej_fee:=0;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
//    HitungGrid;
      tot_menej_fee:=tot_menej_fee+MemDetail['MENEJ_FEE_NILAI'];
    MemDetail.Next;
  end;
  //ShowMessage(FloatToStr(tot_menej_fee));

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with FNew_Penjualan do
    begin
      if (tot_menej_fee<>0) AND (MemDetail['KD_ITEM'] = 'MENFEE') then
      begin
        MemDetail.Edit;
        MemDetail['JUMLAH']:=1;
        MemDetail['HARGA_SATUAN']:=tot_menej_fee;
        MemDetail.post;
      end;
    end;
    MemDetail.Next;
  end;
end;

procedure TFNew_Penjualan.SimpanTempDetail;
begin
  //Insert ke t_selling_temp Untuk dapetin Detail Penjualan yang Akan di Proses
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:=' DELETE FROM  "public"."t_selling_temp" '+
              ' WHERE "id_master"='+QuotedStr(get_uuid)+';';
    ExecSQL;
  end;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:=' INSERT INTO "public"."t_selling_temp" ("trans_no", "id_master", "cust_code", '+
                ' "code_item", "name_item", "amount", "code_unit", "name_unit" '+
                //' "unit_price", "sub_total", '+
                //' "pot_value_1", "pot_value_2", "pot_value_3", "pot_value_4", '+
                //' "ppn_value", "grand_tot"'+
                ' ) '+
                ' Values( '+
                ' '+QuotedStr(edNomorTrans.Text)+', '+
                ' '+QuotedStr(get_uuid)+', '+
                ' '+QuotedStr(edKode_Pelanggan.Text)+', '+
                ' '+QuotedStr(MemDetail['KD_ITEM'])+', '+
                ' '+QuotedStr(MemDetail['NM_ITEM'])+', '+
                ' '+QuotedStr(MemDetail['JUMLAH'])+', '+
                ' '+QuotedStr(MemDetail['KD_SATUAN'])+', '+
                ' '+QuotedStr(MemDetail['NM_SATUAN'])+');';
      ExecSQL;
    end;
    MemDetail.Next;
  end;
end;

procedure TFNew_Penjualan.SpeedButton1Click(Sender: TObject);
begin
  edNama_Pelanggan.Text:='';
  edKode_Pelanggan.Text:='';
end;

procedure TFNew_Penjualan.InsertDetailJU;
var ppncortex:real;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:=' DELETE FROM  "public"."t_selling_det" '+
              ' WHERE "trans_no"='+QuotedStr(edNomorTrans.Text)+';';
    ExecSQL;
  end;

  ppncortex:=StrToFloat(Selectrow('select value_parameter from t_parameter where key_parameter=''persen_ppn_cortex'' '));

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:=' INSERT INTO "public"."t_selling_det" ("trans_no", "code_item", "name_item", "account_code", '+
                ' "amount", "code_unit", "name_unit", "no_reference", "unit_price", "sub_total", '+
                ' "ppn_percent", "ppn_account", "ppn_value", "pph_account", "pph_name", "pph_percent", '+
                ' "pph_value", "tot_piece_value", "tot_piece_percent", "menejmen_fee", '+
                '"menejmen_fee_value", "grand_tot",dpp_lain_lain,ppn_value_cortex,ppn_percent_cortex) '+
                ' Values( '+
                ':partrans_no, :parcode_item,:parname_item, :paraccount_code, '+
                ' :paramount, :parcode_unit, :parname_unit, :parno_reference, :parunit_price, :parsub_total, '+
                ' :parppn_percent, :parppn_account, :parppn_value, :parpph_account, :parpph_name, :parpph_percent, '+
                ' :parpph_value, :partot_piece_value, :partot_piece_percent, :parmenejmen_fee,'+
                ' :parmenejmen_fee_value, :pargrand_tot,:pardpp_lain_lain,:parppn_value_cortex,:parppn_percent_cortex)';
                parambyname('partrans_no').Value:=edNomorTrans.Text;
                parambyname('parcode_item').Value:=MemDetail['KD_ITEM'];
                parambyname('parname_item').Value:=MemDetail['NM_ITEM'];
                parambyname('paraccount_code').Value:=MemDetail['AKUN_PERK_ITEM'];
                parambyname('paramount').Value:=MemDetail['JUMLAH'];
                parambyname('parcode_unit').Value:=MemDetail['KD_SATUAN'];
                parambyname('parname_unit').Value:=MemDetail['NM_SATUAN'];
                parambyname('parno_reference').Value:=edNoReff.Text;
                parambyname('parunit_price').Value:=MemDetail['HARGA_SATUAN'];
                parambyname('parsub_total').Value:=MemDetail['SUB_TOTAL'];
                parambyname('parppn_percent').Value:=MemDetail['PPN_PERSEN'];
                parambyname('parppn_account').Value:=MemDetail['PPN_AKUN'];
                parambyname('parppn_value').Value:=MemDetail['PPN_NILAI'];
                parambyname('parpph_account').Value:=MemDetail['PPH_AKUN'];
                parambyname('parpph_name').Value:=MemDetail['NAMA_PPH'];
                parambyname('parpph_percent').Value:=MemDetail['PPH_PERSEN'];
                parambyname('parpph_value').Value:=MemDetail['PPH_NILAI'];
                parambyname('partot_piece_value').Value:=MemDetail['POTONGAN_NILAI'];
                parambyname('partot_piece_percent').Value:=MemDetail['POTONGAN_PERSEN'];
                parambyname('parmenejmen_fee').Value:=MemDetail['MENEJ_FEE_PERSEN'];
                parambyname('parmenejmen_fee_value').Value:=MemDetail['MENEJ_FEE_NILAI'];
                parambyname('pargrand_tot').Value:=MemDetail['GRAND_TOTAL'];
                parambyname('pardpp_lain_lain').Value:=MemDetail['SUB_TOTAL']*11/12;
                parambyname('parppn_value_cortex').Value:=(MemDetail['SUB_TOTAL']*11/12)*(ppncortex/100);
                parambyname('parppn_percent_cortex').Value:=ppncortex;


//              ' '+QuotedStr(edNomorTrans.Text)+', '+
//              ' '+QuotedStr(MemDetail['KD_ITEM'])+', '+
//              ' '+QuotedStr(MemDetail['NM_ITEM'])+', '+
//              ' '+QuotedStr(MemDetail['AKUN_PERK_ITEM'])+', '+
//              ' '+QuotedStr(MemDetail['JUMLAH'])+', '+
//              ' '+QuotedStr(MemDetail['KD_SATUAN'])+', '+
//              ' '+QuotedStr(MemDetail['NM_SATUAN'])+', '+
//              //' '+QuotedStr(edNoReff.Text)+', '+
//              ' '+QuotedStr('0')+', '+
//              ' '+QuotedStr(MemDetail['HARGA_SATUAN'])+', '+
//              ' '+QuotedStr(MemDetail['SUB_TOTAL'])+', '+
//              ' '+QuotedStr(MemDetail['PPN_PERSEN'])+', '+
//              ' '+QuotedStr(MemDetail['PPN_AKUN'])+', '+
//              ' '+QuotedStr(MemDetail['PPN_NILAI'])+', '+
//              ' '+QuotedStr(MemDetail['PPH_AKUN'])+', '+
//              ' '+QuotedStr(MemDetail['NAMA_PPH'])+', '+
//              ' '+QuotedStr(MemDetail['PPH_PERSEN'])+', '+
//              ' '+QuotedStr(MemDetail['PPH_NILAI'])+', '+
//              ' '+QuotedStr(MemDetail['POTONGAN_NILAI'])+', '+
//              ' '+QuotedStr(MemDetail['POTONGAN_PERSEN'])+', '+
//              ' '+QuotedStr(MemDetail['MENEJ_FEE_PERSEN'])+', '+
//              ' '+QuotedStr(MemDetail['MENEJ_FEE_NILAI'])+', '+
//              ' '+QuotedStr(MemDetail['GRAND_TOTAL'])+' );';
    ExecSQL;
    end;
    MemDetail.Next;
  end;
end;

procedure TFNew_Penjualan.HitungGrid;
begin
  try
    if Memdetail.RecordCount>0 then
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
        MemDetail['PPH_NILAI']:=(MemDetail['SUB_TOTAL']+MemDetail['PPN_NILAI'])*(MemDetail['PPH_PERSEN']/100);
      end;
      //Validasi Menejmen Fee
      if (MemDetail['MENEJ_FEE_PERSEN']<>0)  OR (MemDetail['MENEJ_FEE_PERSEN']<>'0')  then
      begin
        MemDetail['MENEJ_FEE_NILAI']:=(MemDetail['SUB_TOTAL']+MemDetail['PPN_NILAI']-MemDetail['PPH_NILAI'])*(MemDetail['MENEJ_FEE_PERSEN']/100);
      end;
      if ((MemDetail['MENEJ_FEE_PERSEN']<>0)  OR (MemDetail['MENEJ_FEE_PERSEN']<>'0')) AND (MemDetail['KD_ITEM']<>'MENFEE') then
      begin
        //UpdateDataMenejFee;
      end;

      MemDetail['GRAND_TOTAL']:=MemDetail['SUB_TOTAL']+MemDetail['PPN_NILAI']-MemDetail['PPH_NILAI']-MemDetail['POTONGAN_NILAI']+MemDetail['MENEJ_FEE_NILAI'];

      MemDetail.Post;
    end;
    Except;
  end;
end;

procedure TFNew_Penjualan.Autonumber;
var strSuratJalanNo,strKodeAwalInvoice :String;
begin
  idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FDataListPenjualan.Name)+'');
  strday2:=dtTanggal.Date;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.id,b.additional_status from t_numb_type a inner join t_numb b on a.id=b.reset_type where numb_type='+QuotedStr(idmenu);
    open;
  end;
  if dm.Qtemp['additional_status']='0' then kd_kares:='' else kd_kares:=kd_kares;
  edNomorTrans.Text:=getNourut(strday2,'public.t_selling',FNew_Penjualan.kd_kares);
  strKodeAwalInvoice:=SelectRow('select param_name from t_numb_det a inner join t_numb b on b.trans_no=a.trans_no WHERE b.numb_type='+QuotedStr(idmenu)+'  AND a.urutan=1');
  StrSuratJalanNo:=getNourut(strday2,'public.t_selling',FNew_Penjualan.kd_kares);

  edSuratJalanTrans.Text:=StringReplace(StrSuratJalanNo, strKodeAwalInvoice, 'SJ', [rfReplaceAll, rfIgnoreCase]);

//  edKodeOrder.Text:=getNourut(strday2,'public.t_sales_order',kd_kares);
end;

procedure TFNew_Penjualan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNew_Penjualan.BSaveClick(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:='select value_parameter from t_parameter where key_parameter=''stat_klasifikasi_jual''';
    Open;
  end;

  if (FNew_Penjualan.Status=0) AND (StatusCekKasifikasi=0) and (dm.Qtemp.FieldValues['value_parameter']=1) then
  begin
    MessageDlg('Belum Calculate Discount ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    DecodeDate(dtTanggal.Date, Year, Month, Day);
    strtgl:=IntToStr(Day);
    strbulan:=inttostr(Month);
    strtahun:=inttostr(Year);
    stat_proses:=true;
    //refresh grid
//    tot_jumlah:=0;
//    tot_dpp:=Round(DBGridDetail.Columns[9].Footer.SumValue);
//    tot_ppn:=Round(DBGridDetail.Columns[11].Footer.SumValue);
//    tot_pph:=Round(DBGridDetail.Columns[15].Footer.SumValue);
//    tot_pot:=Round(DBGridDetail.Columns[8].Footer.SumValue);
//    tot_menej_fee:=Round(DBGridDetail.Columns[18].Footer.SumValue);
//    tot_grand:=Round(DBGridDetail.Columns[19].Footer.SumValue);

//    tot_jumlah:=0;
//    tot_dpp:=0;
//    tot_ppn:=0;
//    tot_pph:=0;
//    tot_pot:=0;
//    tot_menej_fee:=0;
//    tot_grand:=0;
//
//    MemDetail.First;
//    while not MemDetail.Eof do
//    begin
//      tot_jumlah:=tot_jumlah+MemDetail['JUMLAH'];
//      tot_dpp:=tot_dpp+MemDetail['SUB_TOTAL'];
//      tot_ppn:=tot_ppn+MemDetail['PPN_NILAI'];
//      tot_pph:=tot_pph+MemDetail['PPH_NILAI'];
//      tot_pot:=tot_pot+MemDetail['POTONGAN_NILAI'];
//      tot_menej_fee:=tot_menej_fee+MemDetail['MENEJ_FEE_NILAI'];
//      tot_grand:=tot_grand+MemDetail['GRAND_TOTAL'];
//      MemDetail.Next;
//    end;
//    UpdateDataMenejFee; //refresh kalkulasi jika ada menajmenfee
//
    //cek balancestock
//    check_stock;
//    if tot_jumlah<>dm.Qtemp1.FieldByName('total_stock').Value then
//    begin
//      ShowMessage('Maaf, Stock Barang Dengan Jumlah(Qty) Penjualan Tidak Balance !!!');
//      //ShowMessage(FloatToStr(tot_jumlah)+'ASA'+FloatToStr(dm.Qtemp1.FieldByName('total_stock').Value));
//      stat_proses:=false;
//      Exit;
//    end;
    //

    //MessageDlg('Buatkan Validasi Cek Piutang Dengan Berbagai Jenis(Dengan SP)..!!',mtInformation,[MBOK],0);
    if stat_proses=true then
    begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
        if edKode_Pelanggan.Text='' then
        begin
          MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
          edNomorTrans.SetFocus;
        end
        {else if edNomorFaktur.Text='' then
        begin
          MessageDlg('Data Faktur Wajib Diisi..!!',mtInformation,[mbRetry],0);
          edNomorTrans.SetFocus;
        end }
        else if spJatuhTempo.Value=0 then
        begin
          MessageDlg('Jumlah Tempo Tidak Boleh Kosong..!!',mtInformation,[mbRetry],0);
          spJatuhTempo.SetFocus;
        end
        else if (edNoReff.Text='') or (edNoReff.Text='0' )then
        begin
          //MessageDlg('Nama Kabupaten Wajib Diisi..!!',mtInformation,[mbRetry],0);
          edNoReff.Text:='-';
        end
        else if FNew_Penjualan.Status = 0 then
        begin
  //      FNew_Penjualan.Autonumber;
        //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
        if MessageDlg ('Anda Yakin Disimpan Order No. '+edNomorTrans.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
        begin
          FNew_Penjualan.Autonumber;
          //UpdateFakturPajak(IntToStr(Year));
          Save;
          Dm.Koneksi.Commit;
        end;
      end
      else if FNew_Penjualan.Status = 1 then
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
  end;
end;

procedure TFNew_Penjualan.btAddDetailClick(Sender: TObject);
var FForm: TFormClass;
begin
  if (vFormSumber='0') OR (vFormSumber='')  then
  begin
    ShowMessage('Silakan Setting Form Target Sumber..');
    exit;
  end;
  if (vFormSumber<>'0') AND (vFormSumber<>'') then
  begin
//    AClass := FindClass('T'+vFormSumber);
//    AFormClass := TFormClass(AClass);
//    AForm := AFormClass.Create(Application.MainForm);
//    AForm.Parent:=FTemplate_Temp.PanelParent;
//    AForm.Align:=Alclient;
//    AForm.BorderStyle:=BsNone;
//    FTemplate_Temp.Height:=AForm.Height;
//    FTemplate_Temp.Width:=AForm.Width;
//
//    AForm.Show;
//    FTemplate_Temp.Caption:='';
//    FTemplate_Temp.TabForm.Caption:=AForm.Caption;
    vStatusTrans:='penjualan';
//    FDaftarKontrak.vtanggalBA:=FNew_Penjualan.dtTanggal.Date;
//    FTemplate_Temp.ShowModal;
    AClass:=FindClass('T'+vFormSumber);
    AFormClass := TFormClass(AClass);
    AForm := AFormClass.Create(Application.MainForm);
    AForm.ShowModal;
  end;
end;

procedure TFNew_Penjualan.btHitungPotonganClick(Sender: TObject);
var IntTotGroup,IntGroupID : Integer;
begin

  if MemDetail.RecordCount=0 then
  begin
    ShowMessage('Pastikan Anda Sudah Membuat Detail Penjualan..!!!');
    exit;
  end else if edKode_Pelanggan.Text='' then
  begin
    MessageDlg('Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else if MemDetail.RecordCount<>0 then
  begin
  //ShowMessage('A');
  //insert Temp Angka potongmPenjualan
    get_uuid:=SelectRow('SELECT gen_random_uuid()::TEXT AS clean_uuid;');
    SimpanTempDetail;
    with FRincianPot_Penjualan do
    begin
      get_uuid:=FNew_Penjualan.get_uuid;
      kd_cust:='';
      kd_item:='';
      satuan:='';
      stat_fp:=0;
      stat_bayar:=0;
      stat_promo:=0;
      jumlah_item:=0;
      kd_JenisOutlet:='';
      kd_Kategori:='';
      edNomorTrans.Text:=FNew_Penjualan.edNomorTrans.Text;
      edKode_Pelanggan.Text:=FNew_Penjualan.edKode_Pelanggan.Text;
      edNama_Pelanggan.Text:=FNew_Penjualan.edNama_Pelanggan.Text;
    end;
    IntTotGroup:=1;
    MemDetail.First;
    while not MemDetail.Eof do
    begin
      IntGroupID:=MemDetail['GROUP_ID'];
      MemDetail.First;
      while not MemDetail.Eof do
      begin
        if MemDetail['GROUP_ID']<>IntGroupID then
        IntTotGroup:=IntTotGroup+1;
        MemDetail.Next;
      end;
      MemDetail.Next;
    end;

//    ShowMessage('Total Group '+IntToStr(IntTotGroup));
    if IntTotGroup>1 then FRincianPot_Penjualan.jenis_jual:='T002'
    else
    FRincianPot_Penjualan.jenis_jual:='T001';

    FRincianPot_Penjualan.HitungKlasifikasi;
    FRincianPot_Penjualan.ShowModal;
  end;
end;

procedure TFNew_Penjualan.btMasterSumberClick(Sender: TObject);
begin
  FSetMasterPenjulan.TabSetJenisReturJual.TabVisible:=false;
  FSetMasterPenjulan.TabSetSumberOrder.TabVisible:=false;
  FSetMasterPenjulan.TabSetSumberJual.TabVisible:=true;
  FSetMasterPenjulan.TabParameter.TabVisible:=false;
  FSetMasterPenjulan.QSumberPenjualan.Close;
  FSetMasterPenjulan.QSumberPenjualan.Open;
  FSetMasterPenjulan.RzPageControl1.ActivePage:=FSetMasterPenjulan.TabSetSumberJual;
  FSetMasterPenjulan.ShowModal;
end;

procedure TFNew_Penjualan.Clear;
begin
  edKode_Trans.Clear;
  edNama_Trans.Clear;
  edNomorFaktur.Clear;
  edNomorTrans.Clear;
  edSuratJalanTrans.Clear;
  edNomorFaktur.Clear;
  dtTanggal.Date:=Now();
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  spJatuhTempo.Value:=0;
  edKodeSumber.Clear;
  edNamaSumber.Clear;
  edNoReff.Text:='-';
  vFormSumber:='0';
  kd_kares:='0';
  kd_perkiraan_pel:='0';
  edTotSebelumPot.Value:=0;
  edTotPot.Value:=0;
  edTotPembulatan.Value:=0;
  edTotSebelumPajak.Value:=0;
  edTotPPN.Value:=0;
  edTotBersih.Value:=0;
end;

procedure TFNew_Penjualan.DBGridDetailCellClick(Column: TColumnEh);
begin
//  HitungGrid;
end;

procedure TFNew_Penjualan.DBGridDetailColEnter(Sender: TObject);
begin
//  HitungGrid;
//  HitungDetail;
end;

procedure TFNew_Penjualan.DBGridDetailColExit(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFNew_Penjualan.DBGridDetailColumns11EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='penjualan';
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

procedure TFNew_Penjualan.DBGridDetailColumns3EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FListStockBarang.vcall:='penjualan';
  FListStockBarang.kd_barang_request:=MemDetail['KD_ITEM'];
  FListStockBarang.qty_request:=MemDetail['JUMLAH'];
  if FNew_Penjualan.Status = 0  then //kondisi baru
  begin                           
    FListStockBarang.Clear;
    FListStockBarang.RefreshGrid_Update;  
    FListStockBarang.btReset.Visible:=false;
  end;
  if FNew_Penjualan.Status = 1  then //kondisi update
  begin                        
    FListStockBarang.Clear;
    FListStockBarang.RefreshGrid_Update;
    FListStockBarang.btReset.Visible:=true;
  end;
  FListStockBarang.ShowModal;
end;

procedure TFNew_Penjualan.DBGridDetailEnter(Sender: TObject);
begin
//  HitungGrid;
  HitungDetail;
end;

procedure TFNew_Penjualan.DBGridDetailExit(Sender: TObject);
begin
//  HitungGrid;
  HitungDetail;
end;

procedure TFNew_Penjualan.DBGridDetailKeyPress(Sender: TObject; var Key: Char);
begin
  if Key =#27 then Close;
end;

procedure TFNew_Penjualan.dtTanggalChange(Sender: TObject);
begin
  DecodeDate(dtTanggal.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);
//   FNew_Penjualan.Autonumber;
end;

procedure TFNew_Penjualan.edNamaSumberButtonClick(Sender: TObject);
begin
  vFormSumber:='0';
  FMasterData.Caption:='Master Data Sumber Penjualan';
  FMasterData.vcall:='penjualan';
  FMasterData.update_grid('code','name','description','t_selling_source','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
  MemDetail.EmptyTable;
end;

procedure TFNew_Penjualan.edNamaSumberChange(Sender: TObject);
begin
  if edNamaSumber.Text='SALES ORDER' then
  begin
    DBGridDetail.ReadOnly:=True;
  end else begin
    DBGridDetail.ReadOnly:=False;
  end;
end;

procedure TFNew_Penjualan.edKode_TransButtonClick(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  DecodeDate(dtTanggal.Date, Year, Month, Day);
  FMasterData.Caption:='Master Data Sumber Kode Transaksi';
  FMasterData.vcall:='kode_trans_penjualan';
  FMasterData.update_grid('code','name','description','t_sales_transaction_source','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
  //GetFakturPajak(IntToStr(Year));
end;

procedure TFNew_Penjualan.edNama_PelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='penjualan';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFNew_Penjualan.edTotBersihExit(Sender: TObject);
begin
//  edTotBersih.Text := FormatFloat('#,##0.##', edTotBersih.Value);
end;

procedure TFNew_Penjualan.edTotPembulatanExit(Sender: TObject);
begin
//  edTotPembulatan.Text := FormatFloat('#,##0.##', edTotPembulatan.Value);
end;

procedure TFNew_Penjualan.edTotPotExit(Sender: TObject);
begin
//  edTotPot.Text := FormatFloat('#,##0.##', edTotPot.Value);
end;

procedure TFNew_Penjualan.edTotPPNExit(Sender: TObject);
begin
//  edTotPPN.Text := FormatFloat('#,##0.##', edTotPPN.Value);
end;

procedure TFNew_Penjualan.edTotSebelumPajakExit(Sender: TObject);
begin
//  edTotSebelumPajak.Text := FormatFloat('#,##0.##', edTotSebelumPajak.Value);
end;

procedure TFNew_Penjualan.edTotSebelumPotExit(Sender: TObject);
begin
//  edTotSebelumPot.Text := FormatFloat('#,##0.##', edTotSebelumPot.Value);
end;

procedure TFNew_Penjualan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Hapus stock booking jika batal simpan
  reset_stock;
end;

procedure TFNew_Penjualan.FormShow(Sender: TObject);
var
  Year, Month, Day: Word;
begin
//  Autonumber;
  if Status=1 then
  begin
    RefreshGrid;
    edNomorFaktur.ReadOnly:=False;
    btAddDetail.Visible:=False;
    btMasterSumber.Visible:=False;
    SpeedButton1.Visible:=False;
  end else begin
    SpeedButton1.Visible:=True;
    btMasterSumber.Visible:=True;
    btAddDetail.Visible:=True;
    edNomorFaktur.ReadOnly:=True;
    dtTanggal.Date:=NOW;
    edKode_Trans.Text:=SelectRow('select value_parameter from t_parameter where key_parameter=''default_kode_tax'' ');
    edNama_Trans.Text:=SelectRow('select name from t_sales_transaction_source where code='+QuotedStr(edKode_Trans.Text)+' ');
  end;

  DecodeDate(dtTanggal.Date, Year, Month, Day);



  MemDetail.Close;
  MemDetail.Open;
  iserror:=0;



  //GetFakturPajak(IntToStr(Year));
  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')<> 'dev' then
  begin
    btMasterSumber.Visible:=false;
  end else begin
    btMasterSumber.Visible:=true;
  end;
  if (SelectRow('select value_parameter from t_parameter where key_parameter=''stat_klasifikasi_jual'' ')= '1') AND (Status=0) then
  begin
    btHitungPotongan.Visible:=True;
    bt_re_calculate.Visible:=False;
  end else if (SelectRow('select value_parameter from t_parameter where key_parameter=''stat_klasifikasi_jual'' ')= '1') AND (Status=1) then
  begin
    btHitungPotongan.Visible:=False;
    bt_re_calculate.Visible:=True;
  end else begin
    btHitungPotongan.Visible:=False;
    bt_re_calculate.Visible:=False;
  end;
//  if SelectRow('select value_parameter from t_parameter where key_parameter=''stat_pph_jual'' ')= '0' then
//  begin
//    DBGridDetail.Columns[13].Visible:=false;
//    DBGridDetail.Columns[14].Visible:=false;
//    DBGridDetail.Columns[15].Visible:=false;
//  end else begin
//    DBGridDetail.Columns[13].Visible:=true;
//    DBGridDetail.Columns[14].Visible:=true;
//    DBGridDetail.Columns[15].Visible:=true;
//  end;
//  if SelectRow('select value_parameter from t_parameter where key_parameter=''stat_menej_fee_jual'' ')= '0' then
//  begin
//    stat_menej_fee_jual:=false;
//    DBGridDetail.Columns[16].Visible:=false;
//    DBGridDetail.Columns[17].Visible:=false;
//  end else begin
//    stat_menej_fee_jual:=true;
//    DBGridDetail.Columns[16].Visible:=true;
//    DBGridDetail.Columns[17].Visible:=true;
//  end;

  reset_stock;

  if (Status=1) AND (IntStatusKoreksi=2) then
  begin
    BSave.Enabled:=True;
    BCorrection.Visible:=True;
    BCorrection.Enabled:=False;
  end else if Status=0 then
  begin
    BSave.Enabled:=True;
    BCorrection.Visible:=False;
  end else if (Status=1) AND (IntStatusKoreksi<>2) then
  begin
    BSave.Enabled:=False;
    BCorrection.Visible:=True;
    BCorrection.Enabled:=True;
  end;

  edNomorTrans.ReadOnly:=True;
  edSuratJalanTrans.ReadOnly:=True;
end;

procedure TFNew_Penjualan.Save;
var
dpp,ppn,pph,netto: Real;
Stradditional_code: String;
begin
  if (kd_kares='') OR (kd_kares='0') then
    Stradditional_code:='NULL'
  else Stradditional_code:=QuotedStr(kd_kares);

  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:=' Insert into "public"."t_selling" ("created_at", "created_by", "code_trans", '+
            ' "no_inv_tax", "trans_no", "no_traveldoc", "trans_date", "code_cust", '+
            ' "name_cust", "account_code", "payment_term", "code_source", "name_source", "no_reference", '+
            ' "sub_total", "ppn_value", "pph_value", "tot_piece_value", "tot_menj_fee", "grand_tot", '+
            ' "order_no", "additional_code", "trans_day", "trans_month", "trans_year",pembulatan_value,tot_before_piece) '+
            ' VALUES (  '+
            ' NOW(), :parcreated_by, :parcode_trans, '+
            ' :parno_inv_tax, :partrans_no, :parno_traveldoc, :partrans_date, :parcode_cust, '+
            ' :parname_cust, :paraccount_code, :parpayment_term, :parcode_source, :parname_source, :parno_reference, '+
            ' :parsub_total, :parppn_value, :parpph_value, :partot_piece_value, :partot_menj_fee, :pargrand_tot, '+
            ' :parorder_no, :paradditional_code, :partrans_day, :partrans_month, :partrans_year, :parpembulatan_value,:partot_before_piece)';
            parambyname('parcreated_by').Value:=Nm;
            parambyname('parcode_trans').Value:=edKode_Trans.Text;
            parambyname('parno_inv_tax').Value:=edNomorFaktur.Text;
            parambyname('partrans_no').Value:=edNomorTrans.Text;
            parambyname('parno_traveldoc').Value:=edSuratJalanTrans.Text;
            parambyname('partrans_date').Value:=formatdatetime('yyyy-mm-dd',dtTanggal.Date);
            parambyname('parcode_cust').Value:=edKode_Pelanggan.Text;
            parambyname('parname_cust').Value:=edNama_Pelanggan.Text;
            parambyname('paraccount_code').Value:=kd_perkiraan_pel;
            parambyname('parpayment_term').Value:=spJatuhTempo.Text;
            parambyname('parcode_source').Value:=edKodeSumber.Text;
            parambyname('parname_source').Value:=edNamaSumber.Text;
            parambyname('parno_reference').Value:=edNoReff.Text;
//            parambyname('parsub_total').Value:=ROUND(tot_dpp);
//            parambyname('parppn_value').Value:=ROUND(tot_ppn);
//            parambyname('parpph_value').Value:=ROUND(tot_pph);
//            parambyname('partot_piece_value').Value:=ROUND(tot_pot);
//            parambyname('partot_menj_fee').Value:=ROUND(tot_menej_fee);
//            parambyname('pargrand_tot').Value:=ROUND(tot_grand);
            parambyname('parsub_total').Value:=edTotSebelumPajak.Value;
            parambyname('parppn_value').Value:=edTotPPN.Value;
            parambyname('parpph_value').Value:=0;
            parambyname('partot_piece_value').Value:=edTotPot.Value;
            parambyname('partot_menj_fee').Value:=0;
            parambyname('pargrand_tot').Value:=edTotBersih.Value;
            parambyname('parorder_no').Value:=order_no;
            if (kd_kares='') OR (kd_kares='0') then
            parambyname('paradditional_code').Value:=NULL
            else parambyname('paradditional_code').Value:=kd_kares;
            parambyname('partrans_day').Value:=strtgl;
            parambyname('partrans_month').Value:=strbulan;
            parambyname('partrans_year').Value:=strtahun;
            parambyname('parpembulatan_value').Value:=edTotPembulatan.Value;
            parambyname('partot_before_piece').Value:=edTotSebelumPot.Value;

//            ' NOW(), '+
//            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
//            ' '+QuotedStr(edKode_Trans.Text)+', '+
//            ' '+QuotedStr(edNomorFaktur.Text)+', '+
//            ' '+QuotedStr(edNomorTrans.Text)+', '+
//            ' '+QuotedStr(edSuratJalanTrans.Text)+', '+
//            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal.Date))+', '+
//            ' '+QuotedStr(edKode_Pelanggan.Text)+', '+
//            ' '+QuotedStr(edNama_Pelanggan.Text)+', '+
//            ' '+QuotedStr(kd_perkiraan_pel)+', '+
//            ' '+QuotedStr(spJatuhTempo.Text)+', '+
//            ' '+QuotedStr(edKodeSumber.Text)+', '+
//            ' '+QuotedStr(edNamaSumber.Text)+', '+
//            ' '+QuotedStr(edNoReff.Text)+', '+
//            ' '+FloatToStr(tot_dpp)+', '+
//            ' '+FloatToStr(tot_ppn)+', '+
//            ' '+FloatToStr(tot_pph)+', '+
//            ' '+FloatToStr(tot_pot)+', '+
//            ' '+FloatToStr(tot_menej_fee)+', '+
//            ' '+FloatToStr(tot_grand)+', '+
//            ' '+QuotedStr(FloatToStr(tot_dpp))+', '+
//            ' '+QuotedStr(FloatToStr(tot_ppn))+', '+
//            ' '+QuotedStr(FloatToStr(tot_pph))+', '+
//            ' '+QuotedStr(FloatToStr(tot_pot))+', '+
//            ' '+QuotedStr(FloatToStr(tot_menej_fee))+', '+
//            ' '+QuotedStr(FloatToStr(tot_grand))+', '+
//            ' '+QuotedStr(order_no)+', '+
//            ' '+QuotedStr(kd_kares)+', '+
//            ' '+QuotedStr(strtgl)+', '+
//            ' '+QuotedStr(strbulan)+', '+
//            ' '+QuotedStr(strtahun)+'  );';
    ExecSQL;
  end;
  InsertDetailJU;
  SavePotongan;
  proses_stock;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FNew_Penjualan.Refresh;
end;

procedure TFNew_Penjualan.Update;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' UPDATE "public"."t_selling" SET '+
            ' updated_at=NOW(),'+
            ' updated_by='+QuotedStr(Nm)+','+
            ' trans_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal.Date))+','+
            ' code_cust='+QuotedStr(edKode_Pelanggan.Text)+','+
            ' name_cust='+QuotedStr(edNama_Pelanggan.Text)+','+
            ' account_code='+QuotedStr(kd_perkiraan_pel)+','+
            ' code_trans='+QuotedStr(edKode_Trans.Text)+','+
            ' no_inv_tax='+QuotedStr(edNomorFaktur.Text)+','+
            ' no_traveldoc='+QuotedStr(edSuratJalanTrans.Text)+','+
            ' payment_term='+QuotedStr(spJatuhTempo.Text)+','+
            ' no_reference='+QuotedStr(edNoReff.Text)+','+
            ' code_source='+QuotedStr(edKodeSumber.Text)+','+
            ' name_source='+QuotedStr(edNamaSumber.Text)+','+
//            ' sub_total='+QuotedStr(FloatToStr(ROUND(tot_dpp)))+', '+
//            ' ppn_value='+QuotedStr(FloatToStr(ROUND(tot_ppn)))+', '+
//            ' pph_value='+QuotedStr(FloatToStr(ROUND(tot_pph)))+', '+
//            ' tot_piece_value='+QuotedStr(FloatToStr(ROUND(tot_pot)))+', '+
//            ' tot_menj_fee='+QuotedStr(FloatToStr(ROUND(tot_menej_fee)))+', '+
//            ' grand_tot='+QuotedStr(FloatToStr(ROUND(tot_grand)))+', '+
            ' sub_total='+QuotedStr(FloatToStr(edTotSebelumPajak.Value))+', '+
            ' ppn_value='+QuotedStr(FloatToStr(edTotPPN.Value))+', '+
            ' pph_value=0, '+
            ' tot_piece_value='+QuotedStr(FloatToStr(edTotPot.Value))+', '+
            ' tot_menj_fee=0, '+
            ' grand_tot='+QuotedStr(FloatToStr(edTotBersih.Value))+', '+
            ' order_no='+QuotedStr(order_no)+','+
            ' additional_code='+QuotedStr(kd_kares)+','+
            ' trans_day='+QuotedStr(strtgl)+','+
            ' trans_month='+QuotedStr(strbulan)+','+
            ' trans_year='+QuotedStr(strtahun)+', '+
            ' status_correction=0 ,'+
            ' pembulatan_value='+QuotedStr(FloatToStr(edTotPembulatan.Value))+', '+
            ' tot_before_piece='+QuotedStr(FloatToStr(edTotSebelumPot.Value))+' '+
            ' Where trans_no='+QuotedStr(edNomorTrans.Text)+'');
    ExecSQL;
  end;
  InsertDetailJU;
  SavePotongan;
  proses_stock;
  MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
  Close;
  FNew_Penjualan.Refresh;
end;

procedure TFNew_Penjualan.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Add('SELECT * from ( SELECT b.piece_first,b.piece_second,b.piece_third,b.piece_fourth,'+
            'a.trans_no, a.code_item, a.name_item,c.group_id, a.amount, a.code_unit, a.name_unit, '+
            'a.no_reference, a.unit_price, a.sub_total, a.ppn_percent, a.ppn_value, a.pph_account, '+
            'a.pph_name, a.pph_percent, a.pph_value,  a.tot_piece_value,a.tot_piece_percent, '+
            'a.grand_tot, a.ppn_account,  a.account_code, a.menejmen_fee, a.menejmen_fee_value  '+
            'FROM  public.t_selling_det  a left join t_selling_piece b on b.trans_no=a.trans_no '+
            'AND b.code_item=a.code_item '+
            'LEFT JOIN t_item c on c.item_code=a.code_item '+
            'WHERE a.deleted_at IS NULL ) aa  '+
            'WHERE aa.trans_no='+QuotedStr(edNomorTrans.Text)+' Order By aa.trans_no, aa.code_item desc;');

    open;
  end;

  FNew_Penjualan.MemDetail.active:=false;
  FNew_Penjualan.MemDetail.active:=true;
  FNew_Penjualan.MemDetail.EmptyTable;

  if  Dm.Qtemp.RecordCount=0 then
  begin
    FNew_Penjualan.MemDetail.active:=false;
    FNew_Penjualan.MemDetail.active:=true;
    FNew_Penjualan.MemDetail.EmptyTable;
  end;

  if  Dm.Qtemp.RecordCount<>0 then
  begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
      FNew_Penjualan.MemDetail.insert;
      FNew_Penjualan.MemDetail['NO_SUMBER']:=Dm.Qtemp.fieldbyname('no_reference').value;
      FNew_Penjualan.MemDetail['KD_ITEM']:=Dm.Qtemp.fieldbyname('code_item').value;
      FNew_Penjualan.MemDetail['NM_ITEM']:=Dm.Qtemp.fieldbyname('name_item').value;
      FNew_Penjualan.MemDetail['JUMLAH']:=Dm.Qtemp.fieldbyname('amount').value;
      FNew_Penjualan.MemDetail['HARGA_SATUAN']:=Dm.Qtemp.fieldbyname('unit_price').value;
      FNew_Penjualan.MemDetail['JUMLAH_HARGA']:=Dm.Qtemp.fieldbyname('unit_price').value*Dm.Qtemp.fieldbyname('amount').value;
      FNew_Penjualan.MemDetail['AKUN_PERK_ITEM']:=Dm.Qtemp.fieldbyname('account_code').value;
      FNew_Penjualan.MemDetail['KD_SATUAN']:=Dm.Qtemp.fieldbyname('code_unit').value;
      FNew_Penjualan.MemDetail['NM_SATUAN']:=Dm.Qtemp.fieldbyname('name_unit').value;
      FNew_Penjualan.MemDetail['SUB_TOTAL']:= Dm.Qtemp.fieldbyname('sub_total').value;
      FNew_Penjualan.MemDetail['PPN_AKUN']:=Dm.Qtemp.fieldbyname('ppn_account').value;
      FNew_Penjualan.MemDetail['PPN_PERSEN']:=Dm.Qtemp.fieldbyname('ppn_percent').value;
      FNew_Penjualan.MemDetail['PPN_NILAI']:=Dm.Qtemp.fieldbyname('ppn_value').value;
      FNew_Penjualan.MemDetail['PPH_AKUN']:=Dm.Qtemp.fieldbyname('pph_account').value;
      FNew_Penjualan.MemDetail['NAMA_PPH']:=Dm.Qtemp.fieldbyname('pph_name').value;
      FNew_Penjualan.MemDetail['PPH_PERSEN']:=Dm.Qtemp.fieldbyname('pph_percent').value;
      FNew_Penjualan.MemDetail['PPH_NILAI']:=Dm.Qtemp.fieldbyname('pph_value').value;
      FNew_Penjualan.MemDetail['POTONGAN_NILAI']:=Dm.Qtemp.fieldbyname('tot_piece_value').value;
      FNew_Penjualan.MemDetail['POTONGAN_PERSEN']:=Dm.Qtemp.fieldbyname('tot_piece_percent').value;
      FNew_Penjualan.MemDetail['MENEJ_FEE_PERSEN']:=Dm.Qtemp.fieldbyname('menejmen_fee').value;
      FNew_Penjualan.MemDetail['MENEJ_FEE_NILAI']:=Dm.Qtemp.fieldbyname('menejmen_fee_value').value;
      FNew_Penjualan.MemDetail['POTONGAN1']:=Dm.Qtemp.fieldbyname('piece_first').value;
      FNew_Penjualan.MemDetail['POTONGAN2']:=Dm.Qtemp.fieldbyname('piece_second').value;
      FNew_Penjualan.MemDetail['POTONGAN3']:=Dm.Qtemp.fieldbyname('piece_third').value;
      FNew_Penjualan.MemDetail['POTONGAN4']:=Dm.Qtemp.fieldbyname('piece_fourth').value;
      FNew_Penjualan.MemDetail['GRAND_TOTAL']:=Dm.Qtemp.fieldbyname('grand_tot').value;
      FNew_Penjualan.MemDetail['GROUP_ID']:=Dm.Qtemp.fieldbyname('group_id').value;
      FNew_Penjualan.MemDetail.post;
      Dm.Qtemp.next;
    end;
    HitungDetail;
  end;
end;

procedure TFNew_Penjualan.bt_re_calculateClick(Sender: TObject);
var IntTotGroup,IntGroupID : Integer;
begin
//  UpdateDataMenejFee;
  get_uuid:=SelectRow('SELECT gen_random_uuid()::TEXT AS clean_uuid;');
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:=' DELETE FROM  "public"."t_selling_temp" '+
              ' WHERE "trans_no"='+QuotedStr(edNomorTrans.Text)+';';
    ExecSQL;
  end;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:=' INSERT INTO "public"."t_selling_temp" ("trans_no", "cust_code", '+
                ' "code_item", "name_item", "amount", "code_unit", "name_unit" '+
                //' "unit_price", "sub_total", '+
                //' "pot_value_1", "pot_value_2", "pot_value_3", "pot_value_4", '+
                //' "ppn_value", "grand_tot"'+
                ' ) '+
                ' Values( '+
                ' '+QuotedStr(edNomorTrans.Text)+', '+
                ' '+QuotedStr(edKode_Pelanggan.Text)+', '+
                ' '+QuotedStr(MemDetail['KD_ITEM'])+', '+
                ' '+QuotedStr(MemDetail['NM_ITEM'])+', '+
                ' '+QuotedStr(MemDetail['JUMLAH'])+', '+
                ' '+QuotedStr(MemDetail['KD_SATUAN'])+', '+
                ' '+QuotedStr(MemDetail['NM_SATUAN'])+');';
      ExecSQL;
    end;
    MemDetail.Next;
  end;

  with FRincianPot_Penjualan do
  begin
    get_uuid:=FNew_Penjualan.get_uuid;
//    ShowMessage(get_uuid);
    kd_cust:='';
    kd_item:='';
    satuan:='';
    stat_fp:=0;
    stat_bayar:=0;
    stat_promo:=0;
    jumlah_item:=0;
    kd_JenisOutlet:='';
    kd_Kategori:='';
    edNomorTrans.Text:=FNew_Penjualan.edNomorTrans.Text;
    edKode_Pelanggan.Text:=FNew_Penjualan.edKode_Pelanggan.Text;
    edNama_Pelanggan.Text:=FNew_Penjualan.edNama_Pelanggan.Text;
  end;
  IntTotGroup:=1;
  MemDetail.First;
  while not MemDetail.Eof do
  begin
//    ShowMessage('tes');
    IntGroupID:=MemDetail['GROUP_ID'];
    MemDetail.First;
    while not MemDetail.Eof do
    begin
      if MemDetail['GROUP_ID']<>IntGroupID then
      IntTotGroup:=IntTotGroup+1;
      MemDetail.Next;
    end;
    MemDetail.Next;
  end;

//    ShowMessage('Total Group '+IntToStr(IntTotGroup));
  if IntTotGroup>1 then FRincianPot_Penjualan.jenis_jual:='T002'
  else
  FRincianPot_Penjualan.jenis_jual:='T001';

  FRincianPot_Penjualan.HitungKlasifikasi;
  FRincianPot_Penjualan.ShowModal;
end;

//Initialization
//  RegisterClasses([TFTambah_Barang,TFListSalesOrder,TFDaftarKontrak]);
Initialization
  RegisterClasses([TFNew_Penjualan]);

end.
