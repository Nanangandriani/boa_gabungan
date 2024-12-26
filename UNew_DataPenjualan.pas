unit UNew_DataPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.Samples.Spin, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.StdCtrls, Vcl.ExtCtrls, DateUtils,
  Vcl.Buttons;

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
    edNomorFaktur: TRzButtonEdit;
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
    procedure edNama_PelangganButtonClick(Sender: TObject);
    procedure edNamaSumberButtonClick(Sender: TObject);
    procedure edKode_TransButtonClick(Sender: TObject);
    procedure btHitungPotonganClick(Sender: TObject);
    procedure edNomorFakturButtonClick(Sender: TObject);
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
  private
    { Private declarations }
  tot_dpp, tot_ppn, tot_pph, tot_pot, tot_menej_fee, tot_grand : real;
  public
    { Public declarations }
    stat_menej_fee_jual : Boolean;
    vFormSumber,vHasilGetFakturPajak, kd_kares, kd_perkiraan_pel, get_uuid: string;
    strtgl, strbulan, strtahun: string;
    Year, Month, Day: Word;
    procedure Clear;
    procedure Save;
    procedure SimpanTempDetail;
    procedure Update;
    procedure InsertDetailJU;
    procedure RefreshGrid;
    procedure Autonumber;
    procedure HitungGrid;
    procedure UpdateDataMenejFee;
  end;

var
  FNew_Penjualan: TFNew_Penjualan;
  status: integer;
  AClass: TPersistentClass;
  AFormClass: TFormClass;
  AForm: TForm;
  AForm1: TForm;

implementation

{$R *.dfm}

uses Ubrowse_pelanggan, UMasterData, URincianPot_Penjualan,
  Ubrowse_faktur_pajak, UDataModule, USetMasterPenjulan,
  UListPenjualan, UTemplate_Temp, UTambah_Barang, UListSalesOrder,
  UCari_DaftarPerk, UHomeLogin, UMy_Function, UListStockBarang, UDaftarKontrak;

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

procedure TFNew_Penjualan.UpdateDataMenejFee;
begin
  //refresh grid
  tot_menej_fee:=0;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    HitungGrid;
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

procedure TFNew_Penjualan.InsertDetailJU;
begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "public"."t_selling_det" '+
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
    sql.Text:=' INSERT INTO "public"."t_selling_det" ("trans_no", "code_item", "name_item", "account_code", '+
              ' "amount", "code_unit", "name_unit", "no_reference", "unit_price", "sub_total", '+
              ' "ppn_percent", "ppn_account", "ppn_value", "pph_account", "pph_name", "pph_percent", '+
              ' "pph_value", "tot_piece_value", "tot_piece_percent", "menejmen_fee", "menejmen_fee_value", "grand_tot") '+
              ' Values( '+
              ' '+QuotedStr(edNomorTrans.Text)+', '+
              ' '+QuotedStr(MemDetail['KD_ITEM'])+', '+
              ' '+QuotedStr(MemDetail['NM_ITEM'])+', '+
              ' '+QuotedStr(MemDetail['AKUN_PERK_ITEM'])+', '+
              ' '+QuotedStr(MemDetail['JUMLAH'])+', '+
              ' '+QuotedStr(MemDetail['KD_SATUAN'])+', '+
              ' '+QuotedStr(MemDetail['NM_SATUAN'])+', '+
              //' '+QuotedStr(edNoReff.Text)+', '+
              ' '+QuotedStr('0')+', '+
              ' '+QuotedStr(MemDetail['HARGA_SATUAN'])+', '+
              ' '+QuotedStr(MemDetail['SUB_TOTAL'])+', '+
              ' '+QuotedStr(MemDetail['PPN_PERSEN'])+', '+
              ' '+QuotedStr(MemDetail['PPN_AKUN'])+', '+
              ' '+QuotedStr(MemDetail['PPN_NILAI'])+', '+
              ' '+QuotedStr(MemDetail['PPH_AKUN'])+', '+
              ' '+QuotedStr(MemDetail['NAMA_PPH'])+', '+
              ' '+QuotedStr(MemDetail['PPH_PERSEN'])+', '+
              ' '+QuotedStr(MemDetail['PPH_NILAI'])+', '+
              ' '+QuotedStr(MemDetail['POTONGAN_NILAI'])+', '+
              ' '+QuotedStr(MemDetail['POTONGAN_PERSEN'])+', '+
              ' '+QuotedStr(MemDetail['MENEJ_FEE_PERSEN'])+', '+
              ' '+QuotedStr(MemDetail['MENEJ_FEE_NILAI'])+', '+
              ' '+QuotedStr(MemDetail['GRAND_TOTAL'])+' );';
    ExecSQL;
    end;
  MemDetail.Next;
  end;
end;

procedure TFNew_Penjualan.HitungGrid;
begin
   try
      begin
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
      end;
        Except;
   end;
end;

procedure TFNew_Penjualan.Autonumber;
begin
   idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FDataListPenjualan.Name)+'');
   strday2:=dtTanggal.Date;
   edNomorTrans.Text:=getNourut(strday2,'public.t_selling',FNew_Penjualan.kd_kares);
   edSuratJalanTrans.Text:=getNourut(strday2,'public.t_selling',FNew_Penjualan.kd_kares);
end;

procedure TFNew_Penjualan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNew_Penjualan.BSaveClick(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  DecodeDate(dtTanggal.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);
  //refresh grid
  tot_dpp:=0;
  tot_ppn:=0;
  tot_pph:=0;
  tot_pot:=0;
  tot_menej_fee:=0;
  tot_grand:=0;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    HitungGrid;
      tot_dpp:=tot_dpp+MemDetail['SUB_TOTAL'];
      tot_ppn:=tot_ppn+MemDetail['PPN_NILAI'];
      tot_pph:=tot_pph+MemDetail['PPH_NILAI'];
      tot_pot:=tot_pot+MemDetail['POTONGAN_NILAI'];
      tot_menej_fee:=tot_menej_fee+MemDetail['MENEJ_FEE_NILAI'];
      tot_grand:=tot_grand+MemDetail['GRAND_TOTAL'];
    MemDetail.Next;
  end;
  UpdateDataMenejFee;

  MessageDlg('Buatkan Validasi Cek Piutang Dengan Berbagai Jenis(Dengan SP)..!!',mtInformation,[MBOK],0);
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode_Pelanggan.Text='' then
      begin
        MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_Pelanggan.SetFocus;
      end
      else if edNomorFaktur.Text='' then
      begin
        MessageDlg('Data Faktur Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNomorFaktur.SetFocus;
      end
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
      else if Status = 0 then
      begin
      FNew_Penjualan.Autonumber;
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Order No. '+edNomorTrans.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        UpdateFakturPajak(IntToStr(Year));
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

procedure TFNew_Penjualan.btAddDetailClick(Sender: TObject);
begin
  if (vFormSumber='0') OR (vFormSumber='')  then
  begin
    ShowMessage('Silakan Setting Form Target Sumber..');
    exit;
  end;
  if (vFormSumber<>'0') AND (vFormSumber<>'') then
  begin
        AClass := FindClass('T'+vFormSumber);
        AFormClass := TFormClass(AClass);
        AForm := AFormClass.Create(Application.MainForm);
        AForm.Parent:=FTemplate_Temp.PanelParent;
        AForm.Align:=Alclient;
        AForm.BorderStyle:=BsNone;
        FTemplate_Temp.Height:=AForm.Height;
        FTemplate_Temp.Width:=AForm.Width;

        AForm.Show;
        FTemplate_Temp.Caption:='';
        FTemplate_Temp.TabForm.Caption:=AForm.Caption;
        vStatusTrans:='penjualan';
        FDaftarKontrak.vtanggalBA:=FNew_Penjualan.dtTanggal.Date;
        FTemplate_Temp.ShowModal;
        //FTambah_Barang.ShowModal;
  end;
end;

procedure TFNew_Penjualan.btHitungPotonganClick(Sender: TObject);
begin
  if MemDetail.RecordCount=0 then
  begin
    ShowMessage('Pastikan Anda Sudah Membuat Detail Penjualan..!!!');
    exit;
  end;

  if MemDetail.RecordCount<>0 then
  begin
  //ShowMessage('A');
  //insert Temp Angka potongmPenjualan
  //
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
  edNomorFaktur.Clear;
  edNomorTrans.Clear;
  edSuratJalanTrans.Clear;
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
end;

procedure TFNew_Penjualan.DBGridDetailCellClick(Column: TColumnEh);
begin
  HitungGrid;
end;

procedure TFNew_Penjualan.DBGridDetailColEnter(Sender: TObject);
begin
  HitungGrid;
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
  FListStockBarang.ShowModal;
end;

procedure TFNew_Penjualan.DBGridDetailEnter(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFNew_Penjualan.DBGridDetailExit(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFNew_Penjualan.dtTanggalChange(Sender: TObject);
begin
  DecodeDate(dtTanggal.Date, Year, Month, Day);
   strtgl:=IntToStr(Day);
   strbulan:=inttostr(Month);
   strtahun:=inttostr(Year);
   FNew_Penjualan.Autonumber;
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

procedure TFNew_Penjualan.edKode_TransButtonClick(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  DecodeDate(dtTanggal.Date, Year, Month, Day);
  FMasterData.Caption:='Master Data Sumber Kode Transaksi';
  FMasterData.vcall:='kode_trans_penjualan';
  FMasterData.update_grid('code','name','description','t_sales_transaction_source','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
  GetFakturPajak(IntToStr(Year));
end;

procedure TFNew_Penjualan.edNama_PelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='penjualan';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFNew_Penjualan.edNomorFakturButtonClick(Sender: TObject);
begin
  Fbrowse_faktur_pajak.Caption:='Master Data Faktur Pajak';
  Fbrowse_faktur_pajak.vcall:='penjualan';
  Fbrowse_faktur_pajak.ShowModal;
end;

procedure TFNew_Penjualan.FormShow(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  edKode_Trans.Text:=SelectRow('select value_parameter from t_parameter where key_parameter=''default_kode_tax'' ');
  DecodeDate(dtTanggal.Date, Year, Month, Day);
  dtTanggal.Date:=now();
  RefreshGrid;
  GetFakturPajak(IntToStr(Year));
  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')<> 'dev' then
  begin
    btMasterSumber.Visible:=false;
  end else begin
    btMasterSumber.Visible:=true;
  end;
  if SelectRow('select value_parameter from t_parameter where key_parameter=''stat_klasifikasi_jual'' ')<> '1' then
  begin
    btHitungPotongan.Visible:=false;
  end else begin
    btHitungPotongan.Visible:=true;
  end;
  if SelectRow('select value_parameter from t_parameter where key_parameter=''stat_pph_jual'' ')= '0' then
  begin
    DBGridDetail.Columns[11].Visible:=false;
    DBGridDetail.Columns[12].Visible:=false;
    DBGridDetail.Columns[13].Visible:=false;
  end else begin
    DBGridDetail.Columns[11].Visible:=true;
    DBGridDetail.Columns[12].Visible:=true;
    DBGridDetail.Columns[13].Visible:=true;
  end;
  if SelectRow('select value_parameter from t_parameter where key_parameter=''stat_menej_fee_jual'' ')= '0' then
  begin
    stat_menej_fee_jual:=false;
    DBGridDetail.Columns[16].Visible:=false;
    DBGridDetail.Columns[17].Visible:=false;
  end else begin
    stat_menej_fee_jual:=true;
    DBGridDetail.Columns[16].Visible:=true;
    DBGridDetail.Columns[17].Visible:=true;
  end;
end;

procedure TFNew_Penjualan.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_selling" ("created_at", "created_by", "code_trans", '+
            ' "no_inv_tax", "trans_no", "no_traveldoc", "trans_date", "code_cust", '+
            ' "name_cust", "account_code", "payment_term", "code_source", "name_source", "no_reference", '+
            ' "sub_total", "ppn_value", "pph_value", "tot_piece_value", "tot_menj_fee", "grand_tot", '+
            ' "order_no", "additional_code", "trans_day", "trans_month", "trans_year") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+QuotedStr(edKode_Trans.Text)+', '+
            ' '+QuotedStr(edNomorFaktur.Text)+', '+
            ' '+QuotedStr(edNomorTrans.Text)+', '+
            ' '+QuotedStr(edSuratJalanTrans.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal.Date))+', '+
            ' '+QuotedStr(edKode_Pelanggan.Text)+', '+
            ' '+QuotedStr(edNama_Pelanggan.Text)+', '+
            ' '+QuotedStr(kd_perkiraan_pel)+', '+
            ' '+QuotedStr(spJatuhTempo.Text)+', '+
            ' '+QuotedStr(edKodeSumber.Text)+', '+
            ' '+QuotedStr(edNamaSumber.Text)+', '+
            ' '+QuotedStr(edNoReff.Text)+', '+
            ' '+QuotedStr(FloatToStr(tot_dpp))+', '+
            ' '+QuotedStr(FloatToStr(tot_ppn))+', '+
            ' '+QuotedStr(FloatToStr(tot_pph))+', '+
            ' '+QuotedStr(FloatToStr(tot_pot))+', '+
            ' '+QuotedStr(FloatToStr(tot_menej_fee))+', '+
            ' '+QuotedStr(FloatToStr(tot_grand))+', '+
            ' '+QuotedStr(order_no)+', '+
            ' '+QuotedStr(kd_kares)+', '+
            ' '+QuotedStr(strtgl)+', '+
            ' '+QuotedStr(strbulan)+', '+
            ' '+QuotedStr(strtahun)+'  );');
    ExecSQL;
  end;
  InsertDetailJU;
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
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
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
              ' sub_total='+QuotedStr(FloatToStr(tot_dpp))+', '+
              ' ppn_value='+QuotedStr(FloatToStr(tot_ppn))+', '+
              ' pph_value='+QuotedStr(FloatToStr(tot_pph))+', '+
              ' tot_piece_value='+QuotedStr(FloatToStr(tot_pot))+', '+
              ' tot_menj_fee='+QuotedStr(FloatToStr(tot_menej_fee))+', '+
              ' grand_tot='+QuotedStr(FloatToStr(tot_grand))+', '+
              ' order_no='+QuotedStr(order_no)+','+
              ' additional_code='+QuotedStr(kd_kares)+','+
              ' trans_day='+QuotedStr(strtgl)+','+
              ' trans_month='+QuotedStr(strbulan)+','+
              ' trans_year='+QuotedStr(strtahun)+' '+
              ' Where trans_no='+QuotedStr(edNomorTrans.Text)+'');
      ExecSQL;
    end;
    InsertDetailJU;
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
    sql.add(' SELECT * from ('+
            ' SELECT "trans_no", "code_item", "name_item", "amount", "code_unit", '+
            ' "name_unit", "no_reference", "unit_price", "sub_total", "ppn_percent", '+
            ' "ppn_value", "pph_account", "pph_name", "pph_percent", "pph_value", '+
            ' "tot_piece_value", "tot_piece_percent", "grand_tot", "ppn_account", '+
            ' "account_code", "menejmen_fee", "menejmen_fee_value" '+
            ' FROM  "public"."t_selling_det" '+
            ' WHERE deleted_at IS NULL ) a '+
            ' WHERE trans_no='+QuotedStr(edNomorTrans.Text)+' '+
            ' Order By trans_no, code_item desc');
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
     FNew_Penjualan.MemDetail['GRAND_TOTAL']:=Dm.Qtemp.fieldbyname('grand_tot').value;
     FNew_Penjualan.MemDetail.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFNew_Penjualan.bt_re_calculateClick(Sender: TObject);
begin
  UpdateDataMenejFee;
end;

//Initialization
//  RegisterClasses([TFTambah_Barang,TFListSalesOrder,TFDaftarKontrak]);
Initialization
  RegisterClasses([TFNew_Penjualan]);

end.
