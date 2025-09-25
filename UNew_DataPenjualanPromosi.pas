unit UNew_DataPenjualanPromosi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.Samples.Spin, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TFNew_DataPenjualanPromosi = class(TForm)
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
    Label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    btMasterSumber: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    edNama_Pelanggan: TRzButtonEdit;
    edKode_Pelanggan: TEdit;
    spJatuhTempo: TSpinEdit;
    edNamaSumber: TRzButtonEdit;
    edKodeSumber: TEdit;
    dtTanggal: TRzDateTimePicker;
    btAddDetail: TRzBitBtn;
    edNomorTrans: TEdit;
    edKode_Trans: TRzButtonEdit;
    edSuratJalanTrans: TEdit;
    edNoReff: TEdit;
    edNomorFaktur: TEdit;
    edNama_Trans: TEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    BCorrection: TRzBitBtn;
    RzPageControl1: TRzPageControl;
    TabSDetailPel: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    DSDetail: TDataSource;
    MemDetail: TMemTableEh;
    MemDetailNO_SUMBER: TStringField;
    MemDetailKD_ITEM: TStringField;
    MemDetailNM_ITEM: TStringField;
    MemDetailJUMLAH: TFloatField;
    MemDetailKD_SATUAN: TStringField;
    MemDetailSUB_TOTAL: TCurrencyField;
    MemDetailJUMLAH_HARGA: TCurrencyField;
    MemDetailPPN_PERSEN: TFloatField;
    MemDetailPPN_NILAI: TCurrencyField;
    MemDetailPPH_AKUN: TStringField;
    MemDetailNAMA_PPH: TStringField;
    MemDetailPPH_PERSEN: TFloatField;
    MemDetailPPH_NILAI: TCurrencyField;
    MemDetailPOTONGAN_NILAI: TCurrencyField;
    MemDetailPOTONGAN_PERSEN: TFloatField;
    MemDetailGRAND_TOTAL: TCurrencyField;
    MemDetailPPN_AKUN: TStringField;
    MemDetailHARGA_SATUAN: TCurrencyField;
    MemDetailNM_SATUAN: TStringField;
    MemDetailAKUN_PERK_ITEM: TStringField;
    MemDetailMENEJ_FEE_PERSEN: TFloatField;
    MemDetailMENEJ_FEE_NILAI: TFloatField;
    MemDetailGROUP_ID: TSmallintField;
    MemDetailPOTONGAN1: TCurrencyField;
    MemDetailPOTONGAN2: TCurrencyField;
    MemDetailPOTONGAN3: TCurrencyField;
    MemDetailPOTONGAN4: TCurrencyField;
    MemDetailPPN_NILAI_CORTEX: TCurrencyField;
    procedure btAddDetailClick(Sender: TObject);
    procedure edNama_PelangganButtonClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BCorrectionClick(Sender: TObject);
  private
    { Private declarations }
    tot_dpp, tot_ppn, tot_pph, tot_pot, tot_menej_fee, tot_grand, tot_jumlah : real;
  public
    { Public declarations }
    Status,IntStatusKoreksi: Integer;
    kd_kares,strtgl,strbulan,strtahun,kd_perkiraan_pel,vFormSumber :String;
    procedure Autonumber;
    procedure Clear;
    procedure Save;
    procedure InsertDetailJU;
    procedure RefreshGrid;
    procedure Update;
  end;

var
  FNew_DataPenjualanPromosi: TFNew_DataPenjualanPromosi;
  AClass: TPersistentClass;
  AFormClass: TFormClass;
  AForm: TForm;
  AForm1: TForm;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UMy_Function, UMasterData, UTemplate_Temp,
  UListPenjualan, UListPenjualanPromosi, Ubrowse_pelanggan, UMainMenu, UKoreksi;

procedure TFNew_DataPenjualanPromosi.Autonumber;
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
  edNomorTrans.Text:=getNourut(strday2,'public.t_selling',FNew_DataPenjualanPromosi.kd_kares);
  edSuratJalanTrans.Text:=getNourut(strday2,'public.t_selling',FNew_DataPenjualanPromosi.kd_kares);
//  edKodeOrder.Text:=getNourut(strday2,'public.t_sales_order',kd_kares);
end;

procedure TFNew_DataPenjualanPromosi.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Add('SELECT * from ( SELECT b.piece_first,b.piece_second,b.piece_third,'+
            'b.piece_fourth,a.trans_no, a.code_item, a.name_item, a.amount, a.code_unit, '+
            'a.name_unit, a.no_reference, a.unit_price, a.sub_total, a.ppn_percent, '+
            'a.ppn_value, a.pph_account, a.pph_name, a.pph_percent, a.pph_value,  '+
            'a.tot_piece_value,a.tot_piece_percent, a.grand_tot, a.ppn_account,  '+
            'account_code, a.menejmen_fee, a.menejmen_fee_value  '+
            'FROM  public.t_selling_det  a '+
            'left join t_selling_piece b on b.trans_no=a.trans_no AND b.code_item=a.code_item '+
            'WHERE deleted_at IS NULL ) aa  '+
            'WHERE aa.trans_no='+QuotedStr(edNomorTrans.Text)+' Order By aa.trans_no, aa.code_item desc;');

    open;
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
      MemDetail['NO_SUMBER']:=Dm.Qtemp.fieldbyname('no_reference').value;
      MemDetail['KD_ITEM']:=Dm.Qtemp.fieldbyname('code_item').value;
      MemDetail['NM_ITEM']:=Dm.Qtemp.fieldbyname('name_item').value;
      MemDetail['JUMLAH']:=Dm.Qtemp.fieldbyname('amount').value;
      MemDetail['HARGA_SATUAN']:=Dm.Qtemp.fieldbyname('unit_price').value;
      MemDetail['JUMLAH_HARGA']:=Dm.Qtemp.fieldbyname('unit_price').value*Dm.Qtemp.fieldbyname('amount').value;
      MemDetail['AKUN_PERK_ITEM']:=Dm.Qtemp.fieldbyname('account_code').value;
      MemDetail['KD_SATUAN']:=Dm.Qtemp.fieldbyname('code_unit').value;
      MemDetail['NM_SATUAN']:=Dm.Qtemp.fieldbyname('name_unit').value;
      MemDetail['SUB_TOTAL']:= Dm.Qtemp.fieldbyname('sub_total').value;
      MemDetail['PPN_AKUN']:=Dm.Qtemp.fieldbyname('ppn_account').value;
      MemDetail['PPN_PERSEN']:=Dm.Qtemp.fieldbyname('ppn_percent').value;
      MemDetail['PPN_NILAI']:=Dm.Qtemp.fieldbyname('ppn_value').value;
      MemDetail['PPH_AKUN']:=Dm.Qtemp.fieldbyname('pph_account').value;
      MemDetail['NAMA_PPH']:=Dm.Qtemp.fieldbyname('pph_name').value;
      MemDetail['PPH_PERSEN']:=Dm.Qtemp.fieldbyname('pph_percent').value;
      MemDetail['PPH_NILAI']:=Dm.Qtemp.fieldbyname('pph_value').value;
      MemDetail['POTONGAN_NILAI']:=Dm.Qtemp.fieldbyname('tot_piece_value').value;
      MemDetail['POTONGAN_PERSEN']:=Dm.Qtemp.fieldbyname('tot_piece_percent').value;
      MemDetail['MENEJ_FEE_PERSEN']:=Dm.Qtemp.fieldbyname('menejmen_fee').value;
      MemDetail['MENEJ_FEE_NILAI']:=Dm.Qtemp.fieldbyname('menejmen_fee_value').value;
      MemDetail['POTONGAN1']:=Dm.Qtemp.fieldbyname('piece_first').value;
      MemDetail['POTONGAN2']:=Dm.Qtemp.fieldbyname('piece_second').value;
      MemDetail['POTONGAN3']:=Dm.Qtemp.fieldbyname('piece_third').value;
      MemDetail['POTONGAN4']:=Dm.Qtemp.fieldbyname('piece_fourth').value;
      MemDetail['GRAND_TOTAL']:=Dm.Qtemp.fieldbyname('grand_tot').value;
      MemDetail.post;
      Dm.Qtemp.next;
    end;
  end;
end;

procedure TFNew_DataPenjualanPromosi.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNew_DataPenjualanPromosi.BCorrectionClick(Sender: TObject);
begin
  FKoreksi.vcall:=SelectRow('select Upper(a.menu) menu from t_menu a '+
                  'left join t_menu_sub b on b.menu_code=a.menu_code '+
                  'where link='+QuotedStr(FListPenjualanPromosi.Name)); //Mendapatkan nama Menu
  FKoreksi.Status:=0;
  FKoreksi.vnotransaksi:=edNomorTrans.Text; //Mendapatkan Nomor Transaksi
  FKoreksi.ShowModal;
end;

procedure TFNew_DataPenjualanPromosi.BSaveClick(Sender: TObject);
var
  Year, Month, Day: Word;
  stat_proses: Boolean;
begin

  DecodeDate(dtTanggal.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);

  tot_jumlah:=0;
  tot_dpp:=0;
  tot_ppn:=0;
  tot_pph:=0;
  tot_pot:=0;
  tot_menej_fee:=0;
  tot_grand:=0;
  stat_proses:=True;

  //cek balancestock
  //check_stock;

  if stat_proses=true then
  begin
    if not dm.Koneksi.InTransaction then
     dm.Koneksi.StartTransaction;
    try
    if edKode_Pelanggan.Text='' then
    begin
      MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end else if MemDetail.RecordCount=0 then
    begin
      MessageDlg('Detail Order Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end
    else if Status = 0 then
    begin
      if MessageDlg ('Anda Yakin Disimpan Order No. '+edNomorTrans.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        Autonumber;
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
end;

procedure TFNew_DataPenjualanPromosi.btAddDetailClick(Sender: TObject);
begin
  vFormSumber:=SelectRow('SELECT form_target from t_selling_source where code='+QuotedStr(edKodeSumber.Text)+' ');

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
  vStatusTrans:='penjualanpromosi';
  FTemplate_Temp.ShowModal;
end;

procedure TFNew_DataPenjualanPromosi.Clear;
begin
  Autonumber;
  edNama_Pelanggan.Text:='';
  edKode_Pelanggan.Text:='';
  dtTanggal.Date:=NOW;
  edNomorTrans.Text:='';
  edSuratJalanTrans.Text:='';
  edNomorFaktur.Text:='';
  edNoReff.Text:='';
  spJatuhTempo.Text:='0';
  MemDetail.EmptyTable;
  edKodeSumber.Text:='SEL001';
  edNamaSumber.Text:='PENJUALAN OFFLINE';
  edKode_Trans.Text:=SelectRow('select value_parameter from t_parameter where key_parameter=''default_kode_tax'' ');
  edNama_Trans.Text:=SelectRow('select name from t_sales_transaction_source where code='+QuotedStr(edKode_Trans.Text)+' ');
end;

procedure TFNew_DataPenjualanPromosi.edNama_PelangganButtonClick(
  Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='penjualanpromosi';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFNew_DataPenjualanPromosi.FormShow(Sender: TObject);
begin
  if Status=1 then
  RefreshGrid;

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
end;

procedure TFNew_DataPenjualanPromosi.InsertDetailJU;
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
                ' "pph_value", "tot_piece_value", "tot_piece_percent", "menejmen_fee", '+
                '"menejmen_fee_value", "grand_tot",dpp_lain_lain,ppn_value_cortex,ppn_percent_cortex) '+
                ' Values( '+
                ' :partrans_no, :parcode_item,:parname_item, :paraccount_code, '+
                ' :paramount, :parcode_unit, :parname_unit, :parno_reference, :parunit_price, :parsub_total, '+
                ' :parppn_percent, :parppn_account, :parppn_value, :parpph_account, :parpph_name, :parpph_percent, '+
                ' :parpph_value, :partot_piece_value, :partot_piece_percent, :parmenejmen_fee,'+
                ' :parmenejmen_fee_value, :pargrand_tot,:pardpp_lain_lain,:parppn_value_cortex,:parppn_percent_cortex)';
                parambyname('partrans_no').Value:=edNomorTrans.Text;
                parambyname('parcode_item').Value:=MemDetail['KD_ITEM'];
                parambyname('parname_item').Value:=MemDetail['NM_ITEM'];
                parambyname('paraccount_code').Value:=NULL;
                parambyname('paramount').Value:=MemDetail['JUMLAH'];
                parambyname('parcode_unit').Value:=MemDetail['KD_SATUAN'];
                parambyname('parname_unit').Value:=MemDetail['NM_SATUAN'];
                parambyname('parno_reference').Value:=edNoReff.Text;
                parambyname('parunit_price').Value:=0;
                parambyname('parsub_total').Value:=0;
                parambyname('parppn_percent').Value:=0;
                parambyname('parppn_account').Value:=NULL;
                parambyname('parppn_value').Value:=0;
                parambyname('parpph_account').Value:=NULL;
                parambyname('parpph_name').Value:=NULL;
                parambyname('parpph_percent').Value:=0;
                parambyname('parpph_value').Value:=0;
                parambyname('partot_piece_value').Value:=0;
                parambyname('partot_piece_percent').Value:=0;
                parambyname('parmenejmen_fee').Value:=0;
                parambyname('parmenejmen_fee_value').Value:=0;
                parambyname('pargrand_tot').Value:=0;
                parambyname('pardpp_lain_lain').Value:=0;
                parambyname('parppn_value_cortex').Value:=0;
                parambyname('parppn_percent_cortex').Value:=0;
    ExecSQL;
    end;
    MemDetail.Next;
  end;
end;

procedure TFNew_DataPenjualanPromosi.Save;
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
    sql.Text:='Insert into "public"."t_selling" ("created_at", "created_by", "code_trans", '+
            ' "no_inv_tax", "trans_no", "no_traveldoc", "trans_date", "code_cust", '+
            ' "name_cust", "account_code", "payment_term", "code_source", "name_source", "no_reference", '+
            ' "sub_total", "ppn_value", "pph_value", "tot_piece_value", "tot_menj_fee", "grand_tot", '+
            ' "order_no", "additional_code", "trans_day", "trans_month", "trans_year",is_promosi) '+
            ' VALUES (  '+
            ' NOW(), :parcreated_by, :parcode_trans, '+
            ' :parno_inv_tax, :partrans_no, :parno_traveldoc, :partrans_date, :parcode_cust, '+
            ' :parname_cust, :paraccount_code, :parpayment_term, :parcode_source, :parname_source, :parno_reference, '+
            ' :parsub_total, :parppn_value, :parpph_value, :partot_piece_value, :partot_menj_fee, :pargrand_tot, '+
            ' :parorder_no, :paradditional_code, :partrans_day, :partrans_month, :partrans_year,True)';
            parambyname('parcreated_by').Value:=FHomeLogin.Eduser.Text;
            parambyname('parcode_trans').Value:=edKode_Trans.Text;
            parambyname('parno_inv_tax').Value:=edNomorFaktur.Text;
            parambyname('partrans_no').Value:=edNomorTrans.Text;
            parambyname('parno_traveldoc').Value:=edSuratJalanTrans.Text;
            parambyname('partrans_date').Value:=formatdatetime('yyyy-mm-dd',dtTanggal.Date);
            parambyname('parcode_cust').Value:=edKode_Pelanggan.Text;
            parambyname('parname_cust').Value:=edNama_Pelanggan.Text;
            parambyname('paraccount_code').Value:=NULL;
            parambyname('parpayment_term').Value:=spJatuhTempo.Text;
            parambyname('parcode_source').Value:=edKodeSumber.Text;
            parambyname('parname_source').Value:=edNamaSumber.Text;
            parambyname('parno_reference').Value:=edNoReff.Text;
            parambyname('parsub_total').Value:=0;
            parambyname('parppn_value').Value:=0;
            parambyname('parpph_value').Value:=0;
            parambyname('partot_piece_value').Value:=0;
            parambyname('partot_menj_fee').Value:=0;
            parambyname('pargrand_tot').Value:=0;
            parambyname('parorder_no').Value:=order_no;
            if (kd_kares='') OR (kd_kares='0') then
            parambyname('paradditional_code').Value:=NULL
            else parambyname('paradditional_code').Value:=kd_kares;
            parambyname('partrans_day').Value:=strtgl;
            parambyname('partrans_month').Value:=strbulan;
            parambyname('partrans_year').Value:=strtahun;
    ExecSQL;
  end;
  InsertDetailJU;
//  SavePotongan;
//  proses_stock;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  FMainMenu.TampilTabForm2;
//  Clear;
//  Close;
//  FNew_Penjualan.Refresh;
end;

procedure TFNew_DataPenjualanPromosi.Update;
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
//            ' account_code='+QuotedStr(kd_perkiraan_pel)+','+
            ' code_trans='+QuotedStr(edKode_Trans.Text)+','+
            ' no_inv_tax='+QuotedStr(edNomorFaktur.Text)+','+
            ' no_traveldoc='+QuotedStr(edSuratJalanTrans.Text)+','+
            ' payment_term='+QuotedStr(spJatuhTempo.Text)+','+
            ' no_reference='+QuotedStr(edNoReff.Text)+','+
            ' code_source='+QuotedStr(edKodeSumber.Text)+','+
            ' name_source='+QuotedStr(edNamaSumber.Text)+','+
            ' status_correction=0 '+
            ' Where trans_no='+QuotedStr(edNomorTrans.Text)+'');
    ExecSQL;
  end;
  InsertDetailJU;
//  SavePotongan;
//  proses_stock;
  MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
  FMainMenu.TampilTabForm2;
  Close;
//  FNew_Penjualan.Refresh;
end;


procedure TFNew_DataPenjualanPromosi.SpeedButton1Click(Sender: TObject);
begin
  edKode_Pelanggan.Text:='';
  edNama_Pelanggan.Text:='';
end;

end.
