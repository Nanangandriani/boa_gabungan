unit UNew_SalesOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, MemTableEh, Vcl.StdCtrls, RzButton,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.Samples.Spin,
  Vcl.ComCtrls, RzDTP, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, RzRadChk;

type
  TFNew_SalesOrder = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    DSDetail: TDataSource;
    MemDetail: TMemTableEh;
    RzPageControl1: TRzPageControl;
    TabSDetailPel: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    MemDetailKD_ITEM: TStringField;
    MemDetailNM_ITEM: TStringField;
    MemDetailJUMLAH: TFloatField;
    MemDetailKD_SATUAN: TStringField;
    MemDetailNM_SATUAN: TStringField;
    MemDetailKD_GUDANG: TStringField;
    MemDetailNM_GUDANG: TStringField;
    MemDetailKD_SUPPLIER: TStringField;
    MemDetailNM_SUPPLIER: TStringField;
    LabelPelanggan: TLabel;
    edKodeOrder: TEdit;
    Label3: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    edNama_Pelanggan: TRzButtonEdit;
    edKode_Pelanggan: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edNama_Sales: TRzButtonEdit;
    edKode_Sales: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    spJatuhTempo: TSpinEdit;
    Label14: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edNoReff: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    edNamaSumber: TRzButtonEdit;
    edKodeSumber: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    dtTanggal_Kirim: TRzDateTimePicker;
    btAddDetail: TRzBitBtn;
    Label12: TLabel;
    Label13: TLabel;
    dtTanggal_Pesan: TRzDateTimePicker;
    btMasterSumber: TSpeedButton;
    btMasterSales: TSpeedButton;
    MemDetailCATEGORY_ID: TIntegerField;
    MemCategori: TMemTableEh;
    MemCategoricategory_id: TSmallintField;
    MemCategoriqty: TSmallintField;
    MemDetailCATEGORY_NAME: TStringField;
    Memo1: TMemo;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    BTambahTargetPenjualan: TRzBitBtn;
    cbKonversiMuatan: TRzCheckBox;
    MemDetailBERAT_ISI: TFloatField;
    MemDetailBERAT_KOSONG: TFloatField;
    Label15: TLabel;
    Label16: TLabel;
    edKelompokKendaraan: TRzButtonEdit;
    edTypeKendaraan: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    edKodeTypeKendaraan: TEdit;
    edKapasitas: TRzNumericEdit;
    Label21: TLabel;
    Label22: TLabel;
    edPOOrder: TEdit;
    LabelKendaraan: TLabel;
    Label24: TLabel;
    edKendaraan: TEdit;
    edGudang: TRzButtonEdit;
    Label25: TLabel;
    Label26: TLabel;
    procedure BBatalClick(Sender: TObject);
    procedure edNamaSumberButtonClick(Sender: TObject);
    procedure edNama_PelangganButtonClick(Sender: TObject);
    procedure edNama_SalesButtonClick(Sender: TObject);
    procedure btAddDetailClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btMasterSumberClick(Sender: TObject);
    procedure dtTanggal_PesanChange(Sender: TObject);
    procedure btMasterSalesClick(Sender: TObject);
    procedure edNamaSumberChange(Sender: TObject);
    procedure dtTanggal_KirimCloseUp(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edNama_PelangganChange(Sender: TObject);
    procedure BTambahTargetPenjualanClick(Sender: TObject);
    procedure cbKonversiMuatanClick(Sender: TObject);
    procedure edKelompokKendaraanButtonClick(Sender: TObject);
    procedure dtTanggal_KirimChange(Sender: TObject);
    procedure edGudangButtonClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    vFormSumber, vFormSumber1, kd_kares,kd_kab,val_target_sales: string;
    strtgl, strbulan, strtahun,StrKetLog,StrUsername,Strsubmenu,Strsubmenu_code,
    Strversi, Stripuser,Strketerangan,Stralasan,strVehicleGroupId,StrKodeGudang: string;
    Year, Month, Day: Word;
    isCancel,val_bank_garansi,val_piutang: Integer;
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure InsertDetailSO;
    Procedure Autonumber;
    procedure RefreshGrid;
    procedure UpdateStatusTele;
    procedure CekTargetSales;
    procedure CekBankGaransi;
    procedure SimpanPelanggan;
  end;

var
  FNew_SalesOrder: TFNew_SalesOrder;
  status,iserror,islanjut,IntKdKares: integer;
  StrStatusUpdateTele: String;
  AClass: TPersistentClass;
  AFormClass: TFormClass;
  AForm: TForm;
  AForm1: TForm;

implementation

{$R *.dfm}

uses UTambah_Barang, UMasterData, Ubrowse_pelanggan, UMasterSales, UMy_Function,
  UDataModule, UTemplate_Temp, UListOrderTelemarketing, UListKontrakJasa,
  UHomeLogin, UListSales_Order, USetMasterPenjulan, USetMasterPelanggan,
  UMainMenu, UNew_DataTargetPenjualan, UDaftarKendaraan;
//uses UDataModule, UMy_Function;

procedure TFNew_SalesOrder.SimpanPelanggan;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='UPDATE t_selling_customer SET deleted_at=NULL where trans_no ='+QuotedStr(edKodeOrder.Text) ;
    ExecSQL;
  end;

  with dm.Qtemp1 do
  begin
    close;
    sql.Clear;
    sql.Text := 'INSERT INTO t_selling_customer (' +
                'trans_no, customer_code, customer_name, email, payment_term, npwp, stat_pkp, ' +
                'customer_name_pkp, no_npwp, no_nik, number_va, code_region, name_region, postal_code, ' +
                'code_type, name_type, code_selling_type, name_selling_type, code_group, name_group, ' +
                'idprospek, code_head_office, name_head_office, code_type_business, name_type_business, ' +
                'cust_type_code_tax, cust_type_name_tax, country_code_tax, country_name_tax, no_nitku, no_passport,va_name,company_code_bank ' +
                ') ' +
                'SELECT '+QuotedStr(edKodeOrder.Text)+', ' +
               'customer_code, customer_name, email, payment_term, npwp, stat_pkp, ' +
               'customer_name_pkp, no_npwp, no_nik, number_va, code_region, name_region, postal_code, ' +
               'code_type, name_type, code_selling_type, name_selling_type, code_group, name_group, ' +
               'idprospek, code_head_office, name_head_office, code_type_business, name_type_business, ' +
               'cust_type_code_tax, cust_type_name_tax, country_code_tax, country_name_tax, no_nitku, no_passport,va_name,company_code_bank ' +
                'FROM t_customer ' +
                'WHERE customer_code = '+QuotedStr(edKode_Pelanggan.Text)+' ';
    ExecSQL;
  end;
end;

procedure TFNew_SalesOrder.UpdateStatusTele;
var
  key,url,s,BaseUrl,Vpath,Vtoken,str : string;
  vBody,vBody2  : string;
  jumdata : Real;
  xxx: Integer;
  cnt,cnt2: Integer;
  iii,iiii: Integer;
  sss, row, row1, row2: String;
  res: String;
  date: TDate;
  max,min: Integer;
        //component
  gNet:TIdHTTP;
  //respon component
  httpresult: TIdHTTP ;
  resp: TMemoryStream;
begin
  try

  //BaseUrl:=edBaseURL.Text;
  BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurltele''');
  key:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''keyapitele''');
  vtoken:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''tokenapitele''');
  vBody:='?ticket_number='+edNoReff.Text+
         '&status=3';
  Vpath:='/update-order';
  url:= BaseUrl+Vpath+vBody;
  try
  gNet :=  TIdHTTP.Create(nil);
  gNet.Request.Accept := 'application/json';
  gNet.Request.CustomHeaders.Values[key] := Vtoken;
  gNet.Request.ContentType := 'application/x-www-form-urlencoded';
  UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url);
  UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url);
  res:=  gNet.get(url);
  jumdata:=1;
  memo1.text := res;
  except
  on E: EIdHTTPProtocolException do

  if Application.MessageBox('Maaf, Data Tidak Ditemukan ...','confirm',MB_OK or mb_iconquestion)=id_yes then
  begin
    jumdata:=0;
    gNet.free;
    resp.Free;
  end;
 on E: Exception do
 ShowMessage('A non-Indy related exception has been raised!');
 end;
  finally
    gNet.free;
    resp.Free;
  end;

  //MOVE JSON
  json.JSONText := memo1.text;
  StrStatusUpdateTele:=json.StringTree['status'];
end;

procedure TFNew_SalesOrder.Autonumber;
var
  LOriginalName: string;
  LBaseName: string;
  LLastUnderscorePos: Integer;
  LSuffix: string;
  LDummyInt: Integer;
begin
  LOriginalName := FSalesOrder.Name;
  LBaseName := LOriginalName;
  LLastUnderscorePos := LastDelimiter('_', LBaseName);
  if (LLastUnderscorePos > 0) and (LLastUnderscorePos < Length(LBaseName)) then
  begin
    LSuffix := Copy(LBaseName, LLastUnderscorePos + 1, MaxInt);
    if TryStrToInt(LSuffix, LDummyInt) then
    begin
      LBaseName := Copy(LBaseName, 1, LLastUnderscorePos - 1);
    end;
  end;

  idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(LBaseName)+'');
  strday2:=dtTanggal_Pesan.Date;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.id,b.additional_status from t_numb_type a inner join t_numb b on a.id=b.reset_type where numb_type='+QuotedStr(idmenu);
    open;
  end;
  if dm.Qtemp['additional_status']='0' then kd_kares:='' else kd_kares:=kd_kares;
//  ShowMessage(kd_kares);
   //EdNo_kontrak.Text:=getNourutBlnPrshthn_kode(strday2,'purchase.t_coop_contract','');
  edKodeOrder.Text:=GetNourutNoDelete(strday2,'public.t_sales_order',kd_kares);
   //EdNo.Text:=Order_no;
end;

procedure TFNew_SalesOrder.CekTargetSales;
var Strmonth,StrYear,StrKdItem,StrQuery,strCategoryName: String;
    TotBarangSO,TotTargetBarang,TotCategorySO,QtyCategorySO: Real	;
    IntCategoryID: Integer;
begin
  Strmonth:=FormatDateTime('mm', dtTanggal_Pesan.Date);
  StrYear:=FormatDateTime('yyyy', dtTanggal_Pesan.Date);
  TotCategorySO:=0;
  MemDetail.First;
  while not MemDetail.Eof do
  begin
    //Cek kategori barang ada target atau tidak
    with dm.Qtemp do
    begin
      Close;
      Sql.Clear;
      Sql.Text:= 'SELECT DISTINCT a.group_id,b.istarget '+
                 'FROM t_item a '+
                 'LEFT JOIN t_item_group b on b.group_id=a.group_id '+
                 'WHERE a.item_code='+QuotedStr(MemDetail['KD_ITEM'])+';';
      Open;
    end;

    //Jika mempunyai target lanjut pengecekan jumlah percategory diSO
    if dm.Qtemp.FieldValues['istarget']=true then
    begin

      IntCategoryID:=MemDetail['CATEGORY_id'];
      strCategoryName:=MemDetail['CATEGORY_NAME'];
      StrKdItem:=MemDetail['KD_ITEM'];

      QtyCategorySO:=0;

      QtyCategorySO:=(MemDetail['JUMLAH']);

      //Hitung jumlah Qty Kategori barang di memDetail
      MemDetail.First;
      while not MemDetail.Eof do
      begin

        if (IntCategoryID=MemDetail['CATEGORY_id']) and (StrKdItem=MemDetail['KD_ITEM']) then
        begin
          TotCategorySO:=MemDetail['JUMLAH'];
        end else if (IntCategoryID=MemDetail['CATEGORY_id']) and (StrKdItem<>MemDetail['KD_ITEM']) then
        begin
          TotCategorySO:=TotCategorySO+MemDetail['JUMLAH'];
        end;


        MemDetail.Next
      end;

      //Total Jumlah Qty pada sales order berdasarkan kategori
      with dm.Qtemp do
      begin
        Close;
        Sql.Clear;
        Sql.Text:='SELECT * from "get_sales_order_total_unit"('+StrYear+', '+Strmonth+', '+QuotedStr(edKode_Pelanggan.Text)+', '+IntToStr(IntCategoryID)+','+QuotedStr(edKodeOrder.Text)+');';

        Open;
      end;

      if dm.Qtemp.RecordCount=0 then
      begin
        TotBarangSO:=0+TotCategorySO;
      end else
      begin
        TotBarangSO:=dm.Qtemp.FieldValues['tot_unit']+TotCategorySO;
      end;
      //Cek qty target Kategori barang
      with dm.Qtemp do
      begin
        Close;
        Sql.Clear;
        sql.Text:='SELECT * FROM "get_customer_sales_target"('+QuotedStr(edKode_Pelanggan.Text)+', '+
                  ''+StrYear+', '+Strmonth+', '+IntToStr(IntCategoryID)+')';
        Open;
      end;

      if dm.Qtemp.RecordCount=0 then
      begin
//        MessageDlg('Barang kategori '+MemDetail['CATEGORY_NAME']+' belum memiliki target penjualan ..!!',mtInformation,[mbRetry],0);
        iserror:=1;
        MessageDlg('Barang Kategory '+strCategoryName+' belum ada target penjualan..!!',mtInformation,[mbRetry],0);

        //        if MessageDlg ('Barang Kategory '+MemDetail['CATEGORY_NAME']+' belum ada target penjualan, Apa mau lanjut?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
//        begin
//          islanjut:=1;
//          StrKetLog:=StrKetLog+', Barang kategori '+MemDetail['CATEGORY_NAME']+' belum memiliki target penjualan';
//        end else begin
//          islanjut:=0;
//        end;

        exit;
      end else
      begin
        TotTargetBarang:=dm.Qtemp.FieldValues['total_qty'];
      end;

      //Pengecekan jika total barang lebih besar dari target maka error
      if TotBarangSO>TotTargetBarang then
      begin
//        MessageDlg('Jumlah barang kategori '+MemDetail['CATEGORY_NAME']+' melebihi target '+IntToStr(TotTargetBarang)+' ..!!',mtInformation,[mbRetry],0);
//        if MessageDlg ('Jumlah baraORY_NAME']+' melebihi target, Apa mau lanjut?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
//        begin
//          islanjut:=1;ng kategori '+MemDetail['CATEG
//          StrKetLog:=StrKetLog+', Jumlah barang kategori '+MemDetail['CATEGORY_NAME']+' melebihi target penjualan '+FloatToStr(TotTargetBarang);
//        end else begin
//          islanjut:=0;
//        end;
        MessageDlg('Jumlah barang kategori '+MemDetail['CATEGORY_NAME']+' melebihi target '+FloatToStr(TotTargetBarang)+'..!!',mtInformation,[mbRetry],0);
        iserror:=1;

        exit;
      end;
    end;
    MemDetail.Next;
  end;
end;

procedure TFNew_SalesOrder.CekBankGaransi;
var SisaPiutang,TotSaldoBankGaransi,TotNilaiSO,TotSisaPiutangNilaiSO,SisaSaldo:Currency;
  IntCountBankGaransi: Integer;
begin
  SisaPiutang:=0;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT a.code_cust, (SUM(debit)-SUM(kredit)) sisa_piutang  FROM get_selling(NULL) a '+
              'LEFT JOIN t_selling_general b ON b.no_invoice=a.trans_no AND b.deleted_at IS NULL '+
              'WHERE a.code_cust='+QuotedStr(edKode_Pelanggan.Text)+' '+
              'GROUP  BY a.code_cust';
//    sql.Text:='select total_receivables from "public"."get_piutang_saldoawal"('+QuotedStr(FormatDateTime('yyyy-mm-dd',NOW()))+') '+
//    'where customer_code='+QuotedStr(edKode_Pelanggan.Text);
    open;
  end;
  if dm.Qtemp.RecordCount=0 then SisaPiutang:=0
  else SisaPiutang:=dm.Qtemp.FieldValues['sisa_piutang'];

  TotSaldoBankGaransi:=0;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT customer_code,SUM(amount) tot_saldo from t_customer_bank_guarantee '+
              'WHERE customer_code='+QuotedStr(edKode_Pelanggan.Text)+' AND '+
              'first_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal_Pesan.Date))+' AND '+
              'end_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal_Pesan.Date))+' '+
              'GROUP BY customer_code;';
    open;
  end;

  IntCountBankGaransi:=dm.Qtemp.RecordCount;

  if dm.Qtemp.RecordCount=0 then
  TotSaldoBankGaransi:=0
  else TotSaldoBankGaransi:=dm.Qtemp.FieldValues['tot_saldo'];

  TotNilaiSO:=0;
  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * from sp_bruto_selling('+QuotedStr(edKode_Pelanggan.Text)+','+QuotedStr(MemDetail['KD_ITEM'])+');';
      open;
    end;
    if dm.Qtemp.RecordCount>0 then
    begin
      TotNilaiSO:=TotNilaiSO+(dm.Qtemp.FieldValues['price_bruto']*MemDetail['JUMLAH']);
    end else begin
      iserror:=1;
      islanjut:=0;
      MessageDlg('Barang '+MemDetail['NM_ITEM']+' belum memiliki harga klasifikasi..!!',mtInformation,[mbRetry],0);
      exit;
    end;
    MemDetail.Next;
  end;

  TotSisaPiutangNilaiSO:=SisaPiutang+TotNilaiSO;
  SisaSaldo:=TotSaldoBankGaransi-TotSisaPiutangNilaiSO;

  if (IntCountBankGaransi>0) then
  begin
    if (SisaSaldo<1) then
    begin
      MessageDlg('Order melebihi batas quota..!!',mtInformation,[mbRetry],0);
      islanjut:=0;
      val_bank_garansi:=1;
      Exit;
    end else
    begin
      islanjut:=1;
    end;
  end else if (IntCountBankGaransi=0) then
  begin
    if SisaPiutang>0 then
    begin
      if MessageDlg ('Pelanggan masih ada sisa piutang, Apa mau lanjut?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        val_piutang:=1;
        islanjut:=1;
        iserror:=1;
        StrKetLog:=StrKetLog+', Sales Order pelanggan '+edKode_Pelanggan.Text+' masih ada sisa piutang '+FormatCurr('#,###.00', SisaPiutang);
      end else
      begin
        islanjut:=0;
      end;

    end else begin
      islanjut:=1;
    end;
  end;
end;

procedure TFNew_SalesOrder.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  FNew_SalesOrder.MemDetail.active:=false;
  FNew_SalesOrder.MemDetail.active:=true;
  FNew_SalesOrder.MemDetail.EmptyTable;

  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT a.*,b.group_id,c.group_name from ('+
            ' SELECT "notrans", "code_item", '+
            ' "name_item", "amount", "code_unit", "name_unit", "code_wh", '+
            ' "name_wh", "code_supp", "name_supp", "source" '+
            ',gross_weight,tare_weight '+
            ' FROM  "public"."t_sales_order_det" '+
            ' WHERE deleted_at IS NULL ) a '+
            ' LEFT JOIN t_item b on b.item_code=a.code_item '+
            ' LEFT JOIN t_item_group c on c.group_id=b.group_id '+
            ' '+
            ' WHERE notrans='+QuotedStr(edKodeOrder.Text)+' '+
            ' Order By notrans, code_item desc');
    open;
  end;

  if  Dm.Qtemp.RecordCount=0 then
  begin
    FNew_SalesOrder.MemDetail.active:=false;
    FNew_SalesOrder.MemDetail.active:=true;
    FNew_SalesOrder.MemDetail.EmptyTable;
  end;

  if  Dm.Qtemp.RecordCount<>0 then
  begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FNew_SalesOrder.MemDetail.insert;
     FNew_SalesOrder.MemDetail['KD_ITEM']:=Dm.Qtemp.fieldbyname('code_item').value;
     FNew_SalesOrder.MemDetail['NM_ITEM']:=Dm.Qtemp.fieldbyname('name_item').value;
     FNew_SalesOrder.MemDetail['JUMLAH']:=Dm.Qtemp.fieldbyname('amount').value;
     FNew_SalesOrder.MemDetail['KD_SATUAN']:=Dm.Qtemp.fieldbyname('code_unit').value;
     FNew_SalesOrder.MemDetail['NM_ SATUAN']:=Dm.Qtemp.fieldbyname('name_unit').value;
     FNew_SalesOrder.MemDetail['KD_GUDANG']:=Dm.Qtemp.fieldbyname('code_wh').value;
     FNew_SalesOrder.MemDetail['NM_GUDANG']:=Dm.Qtemp.fieldbyname('name_wh').value;
     FNew_SalesOrder.MemDetail['KD_SUPPLIER']:=Dm.Qtemp.fieldbyname('code_supp').value;
     FNew_SalesOrder.MemDetail['NM_SUPPLIER']:=Dm.Qtemp.fieldbyname('name_supp').value;
     FNew_SalesOrder.MemDetail['CATEGORY_ID']:=Dm.Qtemp.fieldbyname('group_id').value;
     FNew_SalesOrder.MemDetail['CATEGORY_NAME']:=Dm.Qtemp.fieldbyname('group_name').value;
     if Dm.Qtemp.fieldbyname('gross_weight').value<>NULL then
     begin
       FNew_SalesOrder.MemDetail['BERAT_ISI']:=Dm.Qtemp.fieldbyname('gross_weight').value;
     end else begin
       FNew_SalesOrder.MemDetail['BERAT_ISI']:=0;
     end;

     if Dm.Qtemp.fieldbyname('tare_weight').value<>NULL then
     begin
       FNew_SalesOrder.MemDetail['BERAT_KOSONG']:=Dm.Qtemp.fieldbyname('tare_weight').value;
     end else begin
       FNew_SalesOrder.MemDetail['BERAT_KOSONG']:=0;
     end;

     FNew_SalesOrder.MemDetail.post;
     Dm.Qtemp.next;
    end;
  end;
end;

procedure TFNew_SalesOrder.RzBitBtn1Click(Sender: TObject);
begin
  edNama_Pelanggan.Text:='';
  edKode_Pelanggan.Text:='';
end;

procedure TFNew_SalesOrder.InsertDetailSO;
var strSatuanName:String;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:=' DELETE FROM  "public"."t_sales_order_det" '+
              ' WHERE "notrans"='+QuotedStr(edKodeOrder.Text)+';';
    ExecSQL;
  end;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:=' INSERT INTO "public"."t_sales_order_det" ("notrans", "code_item", '+
                ' "name_item","amount", "code_unit", "name_unit", '+
                ' gross_weight,tare_weight, '+
                ' source,wh_code ) '+
                ' Values( '+
                ' '+QuotedStr(edKodeOrder.Text)+', '+
                ' '+QuotedStr(MemDetail['KD_ITEM'])+', '+
                ' '+QuotedStr(MemDetail['NM_ITEM'])+', '+
                ' '+QuotedStr(MemDetail['JUMLAH'])+', '+
                ' '+QuotedStr(MemDetail['KD_SATUAN'])+', '+
                ' '+QuotedStr(MemDetail['NM_ SATUAN'])+', '+
                ' COALESCE(' + VarToStrDef(MemDetail['BERAT_ISI'], '0') + ',0), '+
                ' COALESCE(' + VarToStrDef(MemDetail['BERAT_KOSONG'], '0') + ',0), '+
                ' '+QuotedStr(edKodeSumber.Text)+','+QuotedStr(StrKodeGudang)+' );';

      ExecSQL;
    end;
  MemDetail.Next;
  end;
end;


procedure TFNew_SalesOrder.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNew_SalesOrder.BSaveClick(Sender: TObject);
var valKonversi,isBalanceBerat,LevelKG,LevelSatuan: Integer;
  Conversi,Qty: Real;
begin
  val_bank_garansi:=0;
  val_piutang:=0;
  valKonversi:=0;
  isBalanceBerat:=0;
  iserror:=0;
  islanjut:=1;
  DecodeDate(dtTanggal_Pesan.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);
  if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
//    if cbKonversiMuatan.Checked=True then
//    begin
//       MemDetail.First;
//      while not MemDetail.Eof do
//      begin
//        if (MemDetail['BERAT_ISI']=0)
//        or (MemDetail['BERAT_ISI']='') OR (MemDetail['BERAT_ISI']=null) or (MemDetail['BERAT_KOSONG']=0)
//        or (MemDetail['BERAT_KOSONG']='') OR (MemDetail['BERAT_KOSONG']=null) then
//        valKonversi:=1;
//
//        MemDetail.Next;
//      end;
//    end;
    if cbKonversiMuatan.Checked=True then
    begin
      MemDetail.First;
      while not MemDetail.Eof do
      begin
        if (MemDetail.FieldByName('BERAT_ISI').IsNull) or
           (MemDetail.FieldByName('BERAT_ISI').AsFloat = 0) or
           (MemDetail.FieldByName('BERAT_KOSONG').IsNull) or
           (MemDetail.FieldByName('BERAT_KOSONG').AsFloat = 0) then
        begin
            valKonversi := 1;
        end;

//        with dm.Qtemp do
//        begin
//          close;
//          sql.Clear;
//          sql.Text:='select * from get_unit('+QuotedStr(MemDetail['KD_ITEM'])+')  WHERE unit_code=''KG'' ';
//          Open;
//        end;
//
//        LevelKG:=dm.Qtemp.FieldValues['unit_level'];
//
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='select * from get_unit('+QuotedStr(MemDetail['KD_ITEM'])+')  WHERE unit_code='+QuotedStr(MemDetail['KD_SATUAN']);
          Open;
        end;

        LevelSatuan:=dm.Qtemp.FieldValues['unit_level'];



        if LevelSatuan=2 then
        begin
          Qty:=MemDetail['JUMLAH'];
        end else begin
          with dm.Qtemp1 do
          begin
            close;
            sql.Clear;
            sql.Text:='select qty_conv from t_item_conversion where item_code='+QuotedStr(MemDetail['KD_ITEM'])+' AND unit='+QuotedStr(MemDetail['KD_SATUAN']);
            open;
          end;
          Qty:=MemDetail['JUMLAH']*dm.Qtemp1.FieldValues['qty_conv'];
        end;

//        ShowMessage('QTY '+FloattoStr(Qty));
//        ShowMessage('BERAT BERSIH '+FloattoStr((MemDetail['BERAT_ISI']-MemDetail['BERAT_KOSONG'])));
//        ShowMessage('valKonversi '+IntToStr(valKonversi));

//        if dm.Qtemp1.RecordCount=0 then
//        begin
          if (valKonversi=0) AND (Qty<>(MemDetail['BERAT_ISI']-MemDetail['BERAT_KOSONG'])) then
          begin
            isBalanceBerat:=1;
          end;
//        end;
//        ShowMessage('isBalanceBerat '+IntToStr(isBalanceBerat));
//        else begin
//          if (valKonversi=0) AND ((MemDetail['JUMLAH']*dm.Qtemp1.FieldValues['qty_conv'])<>(MemDetail['BERAT_ISI']-MemDetail['BERAT_KOSONG'])) then
//          begin
//            isBalanceBerat:=1;
//          end;
//        end;
        MemDetail.Next;
      end;
    end;


    if edKode_Pelanggan.Text='' then
    begin
      MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
//      edKode_Pelanggan.SetFocus;
      exit;
    end
    else if edKode_Sales.Text='' then
    begin
      MessageDlg('Data Sales Wajib Diisi..!!',mtInformation,[mbRetry],0);
//      edKode_Sales.SetFocus;
      exit;
    end
    else if spJatuhTempo.Value=0 then
    begin
      MessageDlg('Jumlah Tempo Tidak Boleh Kosong..!!',mtInformation,[mbRetry],0);
//      spJatuhTempo.SetFocus;
      exit;
    end
    else if (edNoReff.Text='') or (edNoReff.Text='0' )then
    begin
      //MessageDlg('Nama Kabupaten Wajib Diisi..!!',mtInformation,[mbRetry],0);
      edNoReff.Text:='-';
      exit;
    end else if valKonversi=1 then
    begin
      MessageDlg('Berat Kosong Dan Isi Tidak Boleh Kosong..!!',mtInformation,[mbRetry],0);
    end else if isBalanceBerat=1 then
    begin
      MessageDlg('Muatan Tidak Balance..!!',mtInformation,[mbRetry],0);
    end else if edKelompokKendaraan.Text='' then
    begin
      MessageDlg('Kelompok Kendaraan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end else if edGudang.Text='' then
    begin
      MessageDlg('Gudang Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end
    else if Status = 0 then
    begin
      Autonumber;
  //    if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Order No. '+edKodeOrder.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        CekTargetSales;
        if iserror=0 then begin
          CekBankGaransi;
          if islanjut=1 then begin
            Save;
            Dm.Koneksi.Commit;
          end else begin
            exit;
          end;
        end else begin
          exit;
        end;
      end;
    end
    else if Status = 1 then
    begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        CekTargetSales;
        if iserror=0 then begin
          CekBankGaransi;
          if islanjut=1 then begin
            Update;
            Dm.Koneksi.Commit;
          end else begin
            exit;
          end;
        end else begin
          exit;
        end;
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

procedure TFNew_SalesOrder.btAddDetailClick(Sender: TObject);
begin
  if (vFormSumber='0') OR (vFormSumber='')  then
  begin
    ShowMessage('Silakan Setting Form Target Sumber..');
    exit;
  end;
//  if (vFormSumber<>'0') AND (vFormSumber<>'') then
//  begin
//        AClass := FindClass('T'+vFormSumber);
//        AFormClass := TFormClass(AClass);
//        AForm := AFormClass.Create(Application.MainForm);
//        AForm.Parent:=FTemplate_Temp.PanelParent;
//        AForm.Align:=Alclient;
//        AForm.BorderStyle:=BsNone;
//        FTemplate_Temp.Height:=AForm.Height;
//        FTemplate_Temp.Width:=AForm.Width;
//
//        AForm.Show;
//        FTemplate_Temp.Caption:='';
//        FTemplate_Temp.TabForm.Caption:=AForm.Caption;
//        vStatusTrans:='salesorder';
//        FTemplate_Temp.ShowModal;
//  end;
  vStatusTrans:='salesorder';
  if UpperCase(edNamaSumber.Text)='TELEMARKETING' then
  begin
    FListOrderTelemarketing.ShowModal
  end else begin
    FTambah_Barang.clear;
    FTambah_Barang.ShowModal;
  end;
end;

procedure TFNew_SalesOrder.BTambahTargetPenjualanClick(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    SQL.Text := 'SELECT DISTINCT bb.created_at,bb.id,b.menu menu,bb.submenu submenu FROM t_akses aa  '+
      ' INNER JOIN t_menu_sub bb ON aa.submenu_code=bb.submenu_code and bb.deleted_at IS NULL INNER JOIN t_menu b '+
      ' ON b.menu_code = bb.menu_code INNER JOIN t_menu_master cc ON b.master_code=cc.master_code '+
      ' INNER JOIN t_user dd ON dd.dept_code = aa.dept_code '+
      ' WHERE dd.dept_code='+QuotedStr(dept_code)+' and bb.submenu=''Target Penjualan'' ;';
    Open;
  end;

  if dm.Qtemp.RecordCount=0 then
  begin
    MessageDlg('Tidak Dapat Akses Target Penjualan..!!',mtInformation,[mbRetry],0);
  end else if edNama_Pelanggan.Text='' then
  begin
    MessageDlg('Nama Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else
  begin
    FNew_DataTargetPenjualan.Clear;
    Status:=0;
    FNew_DataTargetPenjualan.edKodePelanggan.Text:=edKode_Pelanggan.Text;
    FNew_DataTargetPenjualan.edNamaPelanggan.Text:=edNama_Pelanggan.Text;
    FNew_DataTargetPenjualan.ShowModal;
  end;
end;

procedure TFNew_SalesOrder.btMasterSalesClick(Sender: TObject);
begin
  FMasterSales.ShowModal;
  FMasterSales.RefreshGrid;
end;

procedure TFNew_SalesOrder.btMasterSumberClick(Sender: TObject);
begin
  FSetMasterPenjulan.TabSetJenisReturJual.TabVisible:=false;
  FSetMasterPenjulan.TabSetSumberOrder.TabVisible:=true;
  FSetMasterPenjulan.TabSetSumberJual.TabVisible:=false;
  FSetMasterPenjulan.TabParameter.TabVisible:=false;
  FSetMasterPenjulan.QSumberOrder.Close;
  FSetMasterPenjulan.QSumberOrder.Open;
  FSetMasterPenjulan.RzPageControl1.ActivePage:=FSetMasterPenjulan.TabSetSumberOrder;
  FSetMasterPenjulan.ShowModal;
end;

procedure TFNew_SalesOrder.cbKonversiMuatanClick(Sender: TObject);
begin

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    MemDetail.Edit;
    MemDetail['BERAT_KOSONG']:=0;
    MemDetail['BERAT_ISI']:=0;
    MemDetail.Post;
    MemDetail.Next;
  end;

  if cbKonversiMuatan.Checked=True then
  begin
    DBGridDetail.Columns[10].Visible:=True;
    DBGridDetail.Columns[11].Visible:=True;
  end else begin
    DBGridDetail.Columns[10].Visible:=False;
    DBGridDetail.Columns[11].Visible:=False;
  end;
end;

procedure TFNew_SalesOrder.Clear;
begin
  StrKodeGudang:='';
  edGudang.Text:='';
  strVehicleGroupId:='';
  edKodeOrder.Clear;
  dtTanggal_Kirim.Date:=Now();
  dtTanggal_Pesan.Date:=Now();
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  edKode_Sales.Clear;
  edNama_Sales.Text:=NmFull;
  edKodeSumber.Clear;
  edNamaSumber.Clear;
  edPOOrder.Clear;
  edKelompokKendaraan.Clear;
  edTypeKendaraan.Clear;
  edKodeTypeKendaraan.Clear;
  edKapasitas.Value:=0;
  spJatuhTempo.Value:=0;
  edNoReff.Text:='-';
  vFormSumber:='0';
  kd_kares:='0';
  MemDetail.EmptyTable;
  edNoReff.ReadOnly:=True;
  cbKonversiMuatan.Checked:=False;
  btMasterSales.Visible:=false;
  btMasterSumber.Visible:=false;
end;

procedure TFNew_SalesOrder.dtTanggal_KirimChange(Sender: TObject);
begin
  edKelompokKendaraan.Clear;
  strVehicleGroupId:='';
  edTypeKendaraan.Clear;
  edKapasitas.Value:=0;
  edKendaraan.Clear;
end;

procedure TFNew_SalesOrder.dtTanggal_KirimCloseUp(Sender: TObject);
begin
  if dtTanggal_Kirim.Date<dtTanggal_Pesan.Date then
  begin
    MessageDlg('Tanggal kirim tidak boleh lebih kecil dari tanggal pesan..!!',mtInformation,[mbRetry],0);
    dtTanggal_Kirim.Date:=dtTanggal_Pesan.Date;
  end;
end;

procedure TFNew_SalesOrder.dtTanggal_PesanChange(Sender: TObject);
begin
  DecodeDate(dtTanggal_Pesan.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);
//  FNew_SalesOrder.Autonumber;
end;

procedure TFNew_SalesOrder.edGudangButtonClick(Sender: TObject);
var strWhere,strJoin,strCodeHeadOffice: String;
begin
  strCodeHeadOffice:='';
  strJoin:='';
  strWhere:='';
  if edNamaSumber.Text<>'' then
  begin
    if edKodeSumber.Text='SO003' then
    begin
      strCodeHeadOffice:=SelectRow('select code_head_office from get_customer() where customer_code='+QuotedStr(edKode_Pelanggan.Text)+' ');
      strJoin:=' LEFT JOIN get_customer() b on b.customer_code=a.customer_code ';
      if (strCodeHeadOffice='0') OR (strCodeHeadOffice='') OR (strCodeHeadOffice=NULL) then
      begin
        strWhere:=' a.customer_code='+QuotedStr(edKode_Pelanggan.Text)+' AND a.deleted_at IS NULL ORDER BY wh_name ASC ';
      end else begin
        strWhere:=' b.code_head_office='+QuotedStr(strCodeHeadOffice)+' AND a.deleted_at IS NULL ORDER BY wh_name ASC  ';
      end;
    end else begin
      strWhere:=' category=''BARANG DAGANG'' ';
    end;

    if ((edKodeSumber.Text='SO003') AND (edNama_Pelanggan.Text<>'')) OR (edKodeSumber.Text<>'SO003') then
    begin
      FMasterData.Caption:='Master Data Gudang';
      FMasterData.vcall:='salesorder_gudang';
      FMasterData.update_grid('a.wh_code','a.wh_name','a.category',' t_wh a '+strJoin+' ','WHERE '+strWhere+' ');
      FMasterData.ShowModal;
    end else begin
      MessageDlg('Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end;
  end else begin
    MessageDlg('Sumber Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFNew_SalesOrder.edKelompokKendaraanButtonClick(Sender: TObject);
begin
  FDaftarKendaraan.vcall:='sales_order';
  FDaftarKendaraan.GetDataViaAPI;
  FDaftarKendaraan.show;
end;

procedure TFNew_SalesOrder.edNamaSumberButtonClick(Sender: TObject);
begin
  vFormSumber:='0';
  FMasterData.Caption:='Master Data Sumber Order';
  FMasterData.vcall:='sumber_order';
  FMasterData.update_grid('code','name','description','t_order_source','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
end;

procedure TFNew_SalesOrder.edNamaSumberChange(Sender: TObject);
var defaultKodeGudang:string;
begin
  if UpperCase(edNamaSumber.Text)='TELEMARKETING' then
  begin
    edNoReff.ReadOnly:=true;
    edNoReff.Text:='';
    edNama_Pelanggan.ReadOnly:=True;
  end else
  begin
    edNoReff.ReadOnly:=false;
    edNoReff.Text:='-';
    edKode_Pelanggan.ReadOnly:=False;
    edNama_Pelanggan.ReadOnly:=False;
    dtTanggal_Pesan.Enabled:=True;
  end;

  if (edKodeSumber.Text<>'SO003') AND (status=0) AND (edKodeSumber.Text<>'') then
  begin
    defaultKodeGudang:=SelectRow('select value_parameter from t_parameter where key_parameter=''default_warehouse'' ');

    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select wh_name,wh_code from t_wh where wh_code='+QuotedStr(defaultKodeGudang)+' AND deleted_at is NULL';
      open;
    end;

    if dm.Qtemp.RecordCount>0 then
    begin
      edGudang.Text:=dm.Qtemp.FieldByName('wh_name').AsString;
      StrKodeGudang:=dm.Qtemp.FieldByName('wh_code').AsString;
    end else begin
      edGudang.Text:='';
      StrKodeGudang:='';
    end;
  end else begin
    edGudang.Text:='';
    StrKodeGudang:='';
  end;
end;

procedure TFNew_SalesOrder.edNama_PelangganButtonClick(Sender: TObject);
begin
  if edNamaSumber.Text='' then
  begin
    MessageDlg('Sumber Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else begin
    Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
    Fbrowse_data_pelanggan.vcall:='sumber_order';
    Fbrowse_data_pelanggan.ShowModal;
  end;
end;

procedure TFNew_SalesOrder.edNama_PelangganChange(Sender: TObject);
begin
  if edKode_Pelanggan.Text<>'' then
  begin
    with dm.Qtemp do
    begin
      Close;
      Sql.Clear;
      SQl.Text:='SELECT COALESCE(code_karesidenan,'''') code_karesidenan,COALESCE(code_karesidenan,'''') karesidenan,COALESCE(code_kabupaten,'''') code_kabupaten, COALESCE(kabupaten,'''') kabupaten FROM get_customer() WHERE customer_code='+QuotedStr(edKode_Pelanggan.Text)+' ';
      Open;
    end;
    if dm.Qtemp.FieldValues['karesidenan']='' then
    begin
      edNama_Pelanggan.Text:='';
      edKode_Pelanggan.Text:='';
      MessageDlg('Wilayah Pelanggan tersebut belum di setting Karesidenan..!!',mtInformation,[mbRetry],0);
    end else begin
      kd_kares:=dm.Qtemp.FieldValues['code_karesidenan'];
      kd_kab:=dm.Qtemp.FieldValues['code_kabupaten'];
    end;
    edKode_Sales.Text:=Nm;
    edNama_Sales.Text:=NmFull;
  end;
end;

procedure TFNew_SalesOrder.edNama_SalesButtonClick(Sender: TObject);
begin
  if edKode_Pelanggan.Text<>'' then
  begin
    FMasterData.Caption:='Master Data Sales';
    FMasterData.vcall:='m_sales';
    FMasterData.update_grid('code','name','name_region','t_sales','WHERE code_region='+QuotedStr(kd_kab)+' AND	deleted_at IS NULL ORDER BY code desc');
    FMasterData.ShowModal;
  end else begin
    MessageDlg('Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end;
  //FMasterSales.Showmodal;
end;

procedure TFNew_SalesOrder.FormShow(Sender: TObject);
var
  LOriginalName: string;
  LBaseName: string;
  LLastUnderscorePos: Integer;
  LSuffix: string;
  LDummyInt: Integer;
begin
  //Clear;
//  Autonumber;
  RefreshGrid;
  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')<> 'dev' then
  begin
    btMasterSales.Visible:=false;
    btMasterSumber.Visible:=false;
  end else begin
    btMasterSales.Visible:=true;
    btMasterSumber.Visible:=true;
  end;
//  with dm.Qtemp do
//  begin
//    close;
//    sql.Clear;
//    sql.Text:='select submenu_code from t_menu_sub where link='+QuotedStr(FSalesOrder.Name);
//    open;
//  end;
  LOriginalName := FSalesOrder.Name;
  LBaseName := LOriginalName;
  LLastUnderscorePos := LastDelimiter('_', LBaseName);
  if (LLastUnderscorePos > 0) and (LLastUnderscorePos < Length(LBaseName)) then
  begin
    LSuffix := Copy(LBaseName, LLastUnderscorePos + 1, MaxInt);
    if TryStrToInt(LSuffix, LDummyInt) then
    begin
      LBaseName := Copy(LBaseName, 1, LLastUnderscorePos - 1);
    end;
  end;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text := 'select submenu_code from t_menu_sub where link=' + QuotedStr(LBaseName);
    open;
  end;
  Strsubmenu_code:=QuotedStr(dm.Qtemp.FieldValues['submenu_code']);
  Strsubmenu:=QuotedStr('Sales Order');

//  if (Status=1) AND (edNamaSumber.Text='ORDER OFFLINE') then
//  begin
//    btAddDetail.Enabled:=False;
//  end else begin
//    btAddDetail.Enabled:=true;
//  end;

  if Status=1 then
  begin
    dtTanggal_Pesan.Enabled:=False;
  end else begin
    dtTanggal_Pesan.Enabled:=True;
  end;

  if isCancel=1 then BSave.Enabled:=False;;

end;

procedure TFNew_SalesOrder.Save;
var
  Stradditional_code,StrStatus,StrNote,
  StrInsert,Strupdate,Strdelete,Strapproval,Strcetak,strKonversiMuatan : String;
begin

  if (kd_kares='') OR (kd_kares='0') then
    Stradditional_code:='NULL'
  else Stradditional_code:=QuotedStr(kd_kares);

  if cbKonversiMuatan.Checked=True then strKonversiMuatan:='True' else strKonversiMuatan:='False';

//  ShowMessage(kd_kares);

  StrUsername:=QuotedStr(Nm);
  Strversi:=QuotedStr(FMainMenu.RzStatusVersion.Caption);
  Stripuser:=QuotedStr(GetLocalIP);

  if Copy(StrKetLog, 1, 1)=',' then
  Strketerangan:=QuotedStr(Copy(StrKetLog,2))
  else Strketerangan:=QuotedStr(StrKetLog);
  Stralasan:=QuotedStr('');
  StrInsert:='TRUE';
  Strupdate:='FALSE';
  Strdelete:='FALSE';
  Strapproval:='FALSE';
  Strcetak:='FALSE';

  if (iserror=1) AND (islanjut=1) then
  begin
    StrStatus:='0';
    StrNote:=Strketerangan;
//    with dm.Qtemp do
//    begin
//      close;
//      sql.Clear;
//      sql.Text:='CALL "InsertSPLogActivity" ('+StrUsername+', '+Strsubmenu+','+
//                ''+Strsubmenu_code+', '+Strversi+','+Stripuser+','+StrInsert+','+
//                ''+Strupdate+','+Strdelete+','+Strapproval+','+
//                ''+Strketerangan+','+Stralasan+','+Strcetak+','+QuotedStr(edKodeOrder.Text)+');';
//      ExecSQL;
//    end;
  end else
  begin
    StrStatus:='1';
    StrNote:='NULL';
  end;

  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_sales_order" ("created_at", "created_by", "notrans", '+
            ' "order_date", "sent_date", "code_cust", "name_cust", "code_sales", '+
            ' "name_sales", "payment_term", "no_reference", "code_source", "name_source", '+
            ' "order_no", "additional_code", "trans_day", "trans_month", "trans_year",'+
            'status,note,sbu_code,load_conversion,vehicle_group_id,type_vehicles_code,'+
            'type_vehicles_name,capacity,po_order,vehicles,vehicle_group_sort_number,'+
            'val_bank_garansi,val_piutang) '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(Nm)+', '+
            ' '+QuotedStr(edKodeOrder.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal_Pesan.Date))+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal_Kirim.Date))+', '+
            ' '+QuotedStr(edKode_Pelanggan.Text)+', '+
            ' '+QuotedStr(edNama_Pelanggan.Text)+', '+
            ' '+QuotedStr(edKode_Sales.Text)+', '+
            ' '+QuotedStr(edNama_Sales.Text)+', '+
            ' '+QuotedStr(spJatuhTempo.Text)+', '+
            ' '+QuotedStr(edNoReff.Text)+', '+
            ' '+QuotedStr(edKodeSumber.Text)+', '+
            ' '+QuotedStr(edNamaSumber.Text)+', '+
            ' '+QuotedStr(order_no)+', '+
            ' '+Stradditional_code+', '+
            ' '+QuotedStr(strtgl)+', '+
            ' '+QuotedStr(strbulan)+', '+
            ' '+QuotedStr(strtahun)+','+StrStatus+','+StrNote+','+
            ' '+QuotedStr(FHomeLogin.vKodePRSH)+','+strKonversiMuatan+','+
            ' '+QuotedStr(strVehicleGroupId)+','+QuotedStr(edKodeTypeKendaraan.Text)+','+
            ' '+QuotedStr(edTypeKendaraan.Text)+','+
            ' '+QuotedStr(FloatToStr(edKapasitas.value))+','+QuotedStr(edPOOrder.Text)+','+
            ''+QuotedStr(edKendaraan.Text)+','+QuotedStr(edKelompokKendaraan.Text)+','+IntToStr(val_bank_garansi)+','+IntToStr(val_piutang)+' );');
    ExecSQL;
  end;
  InsertDetailSO;
  SimpanPelanggan;
  if UpperCase(edNamaSumber.Text)='TELEMARKETING' then
  begin
    UpdateStatusTele;
  end;
  MessageDlg('Simpan Berhasil dengan no transaksi '+QuotedStr(edKodeOrder.Text)+' ..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FMainMenu.TampilTabForm2;
//  FSalesOrder.Refresh;
end;

procedure TFNew_SalesOrder.SpeedButton1Click(Sender: TObject);
begin
  edNama_Pelanggan.Text:='';
  edKode_Pelanggan.Text:='';
end;

procedure TFNew_SalesOrder.Update;
var
  Stradditional_code,StrStatus,StrNote,
  StrInsert,Strupdate,Strdelete,Strapproval,Strcetak,strKonversiMuatan : String;
begin
  if Copy(StrKetLog, 1, 1)=',' then
  Strketerangan:=QuotedStr(Copy(StrKetLog,2))
  else Strketerangan:=QuotedStr(StrKetLog);

  if cbKonversiMuatan.Checked=True then strKonversiMuatan:='True' else strKonversiMuatan:='False';

  if (iserror=1) AND (islanjut=1) then
  begin
    StrStatus:='0';
    StrNote:=Strketerangan;
//    with dm.Qtemp do
//    begin
//      close;
//      sql.Clear;
//      sql.Text:='CALL "InsertSPLogActivity" ('+StrUsername+', '+Strsubmenu+','+
//                ''+Strsubmenu_code+', '+Strversi+','+Stripuser+','+StrInsert+','+
//                ''+Strupdate+','+Strdelete+','+Strapproval+','+
//                ''+Strketerangan+','+Stralasan+','+Strcetak+','+QuotedStr(edKodeOrder.Text)+');';
//      ExecSQL;
//    end;
  end else
  begin
    StrStatus:='1';
    StrNote:='NULL';
  end;

  if StrStatus='0' then
  begin
    if application.MessageBox('Apa Anda Yakin ingin mengajukan Order Ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add(' UPDATE "public"."t_sales_order" SET '+
                ' updated_at=NOW(),'+
                ' updated_by='+QuotedStr(Nm)+','+
    //            ' order_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal_Pesan.Date))+','+
                ' sent_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal_Kirim.Date))+','+
                ' code_cust='+QuotedStr(edKode_Pelanggan.Text)+','+
                ' name_cust='+QuotedStr(edNama_Pelanggan.Text)+','+
                ' code_sales='+QuotedStr(edKode_Sales.Text)+','+
                ' name_sales='+QuotedStr(edNama_Sales.Text)+','+
                ' payment_term='+QuotedStr(spJatuhTempo.Text)+','+
                ' no_reference='+QuotedStr(edNoReff.Text)+','+
                ' code_source='+QuotedStr(edKodeSumber.Text)+','+
                ' name_source='+QuotedStr(edNamaSumber.Text)+','+
                ' status='+StrStatus+','+
                ' note='+StrNote+', '+
                ' load_conversion='+strKonversiMuatan+', '+
                ' vehicle_group_id='+QuotedStr(strVehicleGroupId)+','+
                ' vehicle_group_sort_number='+QuotedStr(edKelompokKendaraan.Text)+','+
                ' type_vehicles_code='+QuotedStr(edKodeTypeKendaraan.Text)+','+
                ' type_vehicles_name='+QuotedStr(edTypeKendaraan.Text)+','+
                ' vehicles='+QuotedStr(edKendaraan.Text)+','+
                ' po_order='+QuotedStr(edPOOrder.Text)+','+
                ' capacity='+QuotedStr(FloatToStr(edKapasitas.value))+' '+
    //            ' order_no='+QuotedStr(order_no)+','+
    //            ' additional_code='+QuotedStr(kd_kares)+','+
    //            ' trans_day='+QuotedStr(strtgl)+','+
    //            ' trans_month='+QuotedStr(strbulan)+','+
    //            ' trans_year='+QuotedStr(strtahun)+' '+
                ' Where notrans='+QuotedStr(edKodeOrder.Text)+'');
        ExecSQL;
      end;
      InsertDetailSO;
      SimpanPelanggan;
      MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
      Close;
      FMainMenu.TampilTabForm2;
    end;
  end else
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_sales_order" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(Nm)+','+
  //            ' order_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal_Pesan.Date))+','+
              ' sent_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal_Kirim.Date))+','+
              ' code_cust='+QuotedStr(edKode_Pelanggan.Text)+','+
              ' name_cust='+QuotedStr(edNama_Pelanggan.Text)+','+
              ' code_sales='+QuotedStr(edKode_Sales.Text)+','+
              ' name_sales='+QuotedStr(edNama_Sales.Text)+','+
              ' payment_term='+QuotedStr(spJatuhTempo.Text)+','+
              ' no_reference='+QuotedStr(edNoReff.Text)+','+
              ' code_source='+QuotedStr(edKodeSumber.Text)+','+
              ' name_source='+QuotedStr(edNamaSumber.Text)+','+
              ' status='+StrStatus+','+
              ' note='+StrNote+', '+
              ' load_conversion='+strKonversiMuatan+', '+
              ' vehicle_group_id='+QuotedStr(strVehicleGroupId)+','+
              ' vehicle_group_sort_number='+QuotedStr(edKelompokKendaraan.Text)+','+
              ' type_vehicles_code='+QuotedStr(edKodeTypeKendaraan.Text)+','+
              ' type_vehicles_name='+QuotedStr(edTypeKendaraan.Text)+','+
              ' vehicles='+QuotedStr(edKendaraan.Text)+','+
              ' po_order='+QuotedStr(edPOOrder.Text)+','+
              ' capacity='+QuotedStr(FloatToStr(edKapasitas.value))+', '+
              ' val_bank_garansi='+IntToStr(val_bank_garansi)+','+
              ' val_piutang='+IntToStr(val_piutang)+' '+
  //            ' order_no='+QuotedStr(order_no)+','+
  //            ' additional_code='+QuotedStr(kd_kares)+','+
  //            ' trans_day='+QuotedStr(strtgl)+','+
  //            ' trans_month='+QuotedStr(strbulan)+','+
  //            ' trans_year='+QuotedStr(strtahun)+' '+
              ' Where notrans='+QuotedStr(edKodeOrder.Text)+'');
      ExecSQL;
    end;
    InsertDetailSO;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
    FMainMenu.TampilTabForm2;
  //    FSalesOrder.Refresh;
  end;
end;

Initialization
  RegisterClasses([TFTambah_Barang,TFListOrderTelemarketing,TFListKontrakJasa]);
{initialization
  RegisterClass(TFNew_SalesOrder);}
end.
