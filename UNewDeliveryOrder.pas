unit UNewDeliveryOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Vcl.ExtCtrls, RzTabs,
  Vcl.ComCtrls, RzDTP, RzPanel, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.Buttons,
  Vcl.Samples.Spin, MemTableDataEh, MemTableEh;

type
  TFNewDeliveryOrder = class(TForm)
    RzPageControl1: TRzPageControl;
    TabDataMuatan: TRzTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Panel5: TPanel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    edKodeDOMuatan: TEdit;
    Panel2: TPanel;
    btNextStep: TRzBitBtn;
    TabDataBiaya: TRzTabSheet;
    Panel6: TPanel;
    Panel1: TPanel;
    btBatalSumberJual: TRzBitBtn;
    btSimpanSumberJual: TRzBitBtn;
    DBGridSumberPenjualan: TDBGridEh;
    TabDokumenPendukung: TRzTabSheet;
    Panel3: TPanel;
    btBatalParameter: TRzBitBtn;
    btSaveParameter: TRzBitBtn;
    Panel4: TPanel;
    dtTanggalMuatan: TRzDateTimePicker;
    edNamaJenisMuatan: TRzButtonEdit;
    edKodeJenisMuatan: TEdit;
    RzGroupBox1: TRzGroupBox;
    Label39: TLabel;
    Label38: TLabel;
    edKodeVendorMuatan: TRzButtonEdit;
    edNamaVendorMuatan: TEdit;
    MemVendorMuatan: TMemo;
    Label8: TLabel;
    Label9: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    edReffSumberMuatan: TEdit;
    Label29: TLabel;
    RzGroupBox2: TRzGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    edKodeVendorTransMuatan: TRzButtonEdit;
    edNamaVendorTransMuatan: TEdit;
    edNamaKenek: TEdit;
    edNomorReffUtamaMuatan: TRzButtonEdit;
    edNoKendMuatan: TRzButtonEdit;
    edKodeJenisKendMuatan: TEdit;
    btMasterSumber: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edKodeDOBiaya: TEdit;
    edNamaJenisBiaya: TEdit;
    dtTanggalBiaya: TRzDateTimePicker;
    Label20: TLabel;
    Label21: TLabel;
    Label44: TLabel;
    edNamaLokasi: TRzButtonEdit;
    edNamaProvinsi: TRzButtonEdit;
    edNamaKabupaten: TRzButtonEdit;
    edKodeKabupaten: TEdit;
    edKodeProvinsi: TEdit;
    edKodeLokasi: TEdit;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    spTotalTitik: TSpinEdit;
    MemKeteranganBiaya: TMemo;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    spKapasitas: TSpinEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edKodeDODok: TEdit;
    dtTanggalDoc: TRzDateTimePicker;
    edNamaJenisDoc: TEdit;
    Label17: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edNomorTagihanVendor: TEdit;
    Label58: TLabel;
    dtTerimaTagihan: TRzDateTimePicker;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    edTotalBiaya: TRzNumericEdit;
    edNamaJenisKendMuatan: TRzButtonEdit;
    dsDataBiaya: TDataSource;
    MemDataBiaya: TMemTableEh;
    MemDataBiayakd_biaya: TStringField;
    MemDataBiayanm_biaya: TStringField;
    MemDataBiayadpp: TFloatField;
    MemDataBiayappn: TFloatField;
    MemDataBiayapph: TFloatField;
    MemDataBiayatotal: TFloatField;
    Label62: TLabel;
    edNomorPIB: TEdit;
    Label63: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edNamaSupir: TEdit;
    btAddDetail: TRzBitBtn;
    dsDataMuatan: TDataSource;
    DBGrid_SumberOrder: TDBGridEh;
    edPICMuatan: TEdit;
    MemDataMuatan: TMemTableEh;
    MemDataMuatannotrans: TStringField;
    MemDataMuatankode_vendor: TStringField;
    MemDataMuatanname_vendor: TStringField;
    MemDataMuatanno_reff: TStringField;
    MemDataMuatankd_barang: TStringField;
    MemDataMuatannm_barang: TStringField;
    MemDataMuatanjumlah: TFloatField;
    MemDataMuatansatuan: TStringField;
    MemDataMuatanpilih: TBooleanField;
    MemDataBiayaakun_ppn: TStringField;
    MemDataBiayanama_ppn: TStringField;
    MemDataBiayapersen_ppn: TFloatField;
    MemDataBiayaakun_pph: TStringField;
    MemDataBiayanama_pph: TStringField;
    MemDataBiayapersen_pph: TFloatField;
    MemDataBiayaketerangan: TWideStringField;
    MemDataBiayano_invoice: TStringField;
    MemDataBiayatgl_invoice: TDateField;
    btBackStep: TRzBitBtn;
    procedure edNamaJenisMuatanButtonClick(Sender: TObject);
    procedure edKodeVendorMuatanButtonClick(Sender: TObject);
    procedure edNomorReffUtamaMuatanButtonClick(Sender: TObject);
    procedure btMasterSumberClick(Sender: TObject);
    procedure edNamaJenisKendMuatanButtonClick(Sender: TObject);
    procedure edNoKendMuatanButtonClick(Sender: TObject);
    procedure edNamaLokasiButtonClick(Sender: TObject);
    procedure edNamaProvinsiButtonClick(Sender: TObject);
    procedure edNamaKabupatenButtonClick(Sender: TObject);
    procedure btNextStepClick(Sender: TObject);
    procedure edKodeVendorTransMuatanButtonClick(Sender: TObject);
    procedure btAddDetailClick(Sender: TObject);
    procedure TabDataBiayaClick(Sender: TObject);
    procedure DBGridSumberPenjualanKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridSumberPenjualanColEnter(Sender: TObject);
    procedure DBGridSumberPenjualanColumns0CellButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridSumberPenjualanCellClick(Column: TColumnEh);
    procedure DBGridSumberPenjualanColExit(Sender: TObject);
    procedure DBGridSumberPenjualanEnter(Sender: TObject);
    procedure DBGridSumberPenjualanExit(Sender: TObject);
    procedure DBGridSumberPenjualanMouseEnter(Sender: TObject);
    procedure RzPageControl1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSimpanSumberJualClick(Sender: TObject);
    procedure dtTanggalMuatanChange(Sender: TObject);
    procedure btBatalSumberJualClick(Sender: TObject);
    procedure btBatalParameterClick(Sender: TObject);
    procedure btSaveParameterClick(Sender: TObject);
    procedure edTotalBiayaExit(Sender: TObject);
    procedure DBGridSumberPenjualanColumns4CellButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridSumberPenjualanColumns8CellButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure btBackStepClick(Sender: TObject);
    procedure DBGridSumberPenjualanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    sumber_do: Integer;
    Grand_Tot: Real;
    vFormSumber01,vFormSumber02, kd_kares: string;
    strtgl, strbulan, strtahun: string;
    Year, Month, Day: Word;
    procedure RefreshGridRincianBiaya;
    procedure HitungGrid;
    procedure Clear;
    procedure Autonumber;
    procedure Save;
    procedure Update;
    procedure InsertDetailCost;
    procedure InsertDetailLoad;
    procedure InsertDetailService;
  end;

var
  FNewDeliveryOrder: TFNewDeliveryOrder;
  Status: Integer;
  AClass: TPersistentClass;
  AFormClass: TFormClass;
  AForm: TForm;
  AForm1: TForm;

implementation

{$R *.dfm}

uses UMasterData, UTemplate_Temp, UCari_DaftarPerk, UDataModule,
  Ubrowse_pelanggan, UMy_Function, USearch_Supplier, UDelivery_Order_Sumber,
  UListDeliveryOrder, UHomeLogin;

procedure TFNewDeliveryOrder.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "sale"."t_delivery_order" ("created_at", "created_by", '+
            ' "notrans", "date_trans", "type_do_code", "type_do_name", "starting_loc_code", '+
            ' "starting_loc_name", "province_code", "province_name", "regency_code", '+
            ' "regency_name", "number_of_points", "description", "formsumbervendor", "order_no", '+
            //' "additional_code", '+
            ' "trans_day", "trans_month", "trans_year") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+QuotedStr(edKodeDOMuatan.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggalMuatan.Date))+', '+
            ' '+QuotedStr(edKodeJenisMuatan.Text)+', '+
            ' '+QuotedStr(edNamaJenisMuatan.Text)+', '+
            ' '+QuotedStr(edKodeLokasi.Text)+', '+
            ' '+QuotedStr(edNamaLokasi.Text)+', '+
            ' '+QuotedStr(edKodeProvinsi.Text)+', '+
            ' '+QuotedStr(edNamaProvinsi.Text)+', '+
            ' '+QuotedStr(edKodeKabupaten.Text)+', '+
            ' '+QuotedStr(edNamaKabupaten.Text)+', '+
            ' '+QuotedStr(IntToStr(spTotalTitik.Value))+', '+
            ' '+QuotedStr(MemKeteranganBiaya.Text)+', '+
            ' '+QuotedStr(vFormSumber01)+', '+
            ' '+QuotedStr(order_no)+', '+
            //' '+QuotedStr('0')+', '+
            ' '+QuotedStr(strtgl)+', '+
            ' '+QuotedStr(strbulan)+', '+
            ' '+QuotedStr(strtahun)+'  );');
    ExecSQL;
  end;
  InsertDetailLoad;
  InsertDetailCost;
  InsertDetailService;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListDeliveryOrder.Refresh;
end;

procedure TFNewDeliveryOrder.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "sale"."t_delivery_order" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' date_trans='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggalMuatan.Date))+','+
              ' type_do_code='+QuotedStr(edKodeJenisMuatan.Text)+','+
              ' type_do_name='+QuotedStr(edNamaJenisMuatan.Text)+','+
              ' starting_loc_code='+QuotedStr(edKodeLokasi.Text)+','+
              ' starting_loc_name='+QuotedStr(edNamaLokasi.Text)+','+
              ' province_code='+QuotedStr(edKodeProvinsi.Text)+','+
              ' province_name='+QuotedStr(edNamaProvinsi.Text)+','+
              ' regency_code='+QuotedStr(edKodeKabupaten.Text)+','+
              ' regency_name='+QuotedStr(edNamaKabupaten.Text)+','+
              ' number_of_points='+QuotedStr(IntToStr(spTotalTitik.Value))+','+
              ' description='+QuotedStr(MemKeteranganBiaya.Text)+', '+
              ' order_no='+QuotedStr(order_no)+','+
              ' additional_code='+QuotedStr('0')+','+
              ' trans_day='+QuotedStr(strtgl)+','+
              ' trans_month='+QuotedStr(strbulan)+','+
              ' trans_year='+QuotedStr(strtahun)+' '+
              ' Where notrans='+QuotedStr(edKodeDOMuatan.Text)+'');
      ExecSQL;
    end;
    InsertDetailLoad;
    InsertDetailCost;
    InsertDetailService;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
    FListDeliveryOrder.Refresh;
end;

procedure TFNewDeliveryOrder.InsertDetailLoad;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT * from "sale"."t_delivery_order_load"'+
            ' WHERE "notrans"='+QuotedStr(edKodeDOMuatan.Text)+' ) a '+
            ' Order By notrans desc');
    open;
  end;

  if Dm.Qtemp1.RecordCount>0 then
  begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "sale"."t_delivery_order_load" '+
            ' WHERE "notrans"='+QuotedStr(edKodeDOMuatan.Text)+';';
  ExecSQL;
  end;
  end;

  MemDataMuatan.First;
  while not MemDataMuatan.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "sale"."t_delivery_order_load" ("notrans", "notrans_load", '+
              ' "code_vendor_load", "name_vendor_load", "no_ref_load", "item_code", '+
              ' "item_name","amount", "unit", "source_load") '+
              ' Values( '+
              ' '+QuotedStr(edKodeDOMuatan.Text)+', '+
              ' '+QuotedStr(MemDataMuatan['notrans'])+', '+
              ' '+QuotedStr(MemDataMuatan['kode_vendor'])+', '+
              ' '+QuotedStr(MemDataMuatan['name_vendor'])+', '+
              ' '+QuotedStr(MemDataMuatan['no_reff'])+', '+
              ' '+QuotedStr(MemDataMuatan['kd_barang'])+', '+
              ' '+QuotedStr(MemDataMuatan['nm_barang'])+', '+
              ' '+QuotedStr(MemDataMuatan['jumlah'])+', '+
              ' '+QuotedStr(MemDataMuatan['satuan'])+', '+
              ' '+IntToStr(sumber_do)+' );';
    ExecSQL;
    end;
  MemDataMuatan.Next;
  end;
end;

procedure TFNewDeliveryOrder.InsertDetailCost;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT * from "sale"."t_delivery_order_cost"'+
            ' WHERE "notrans"='+QuotedStr(edKodeDOMuatan.Text)+' ) a '+
            ' Order By notrans desc');
    open;
  end;

  if Dm.Qtemp1.RecordCount>0 then
  begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "sale"."t_delivery_order_cost" '+
            ' WHERE "notrans"='+QuotedStr(edKodeDOMuatan.Text)+';';
  ExecSQL;
  end;
  end;

  Grand_Tot:=0;
  MemDataBiaya.First;
  while not MemDataBiaya.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "sale"."t_delivery_order_cost" ("notrans", '+
              ' "cost_code", "cost_name", '+
              ' "percent_pph", "code_pph", "name_pph", "percent_ppn", "code_ppn", "name_ppn", '+
              ' "sub_total", "ppn_value", "pph_value", '+
              ' "grand_total") '+
              ' Values( '+
              ' '+QuotedStr(edKodeDOMuatan.Text)+', '+
              ' '+QuotedStr(MemDataBiaya['kd_biaya'])+', '+
              ' '+QuotedStr(MemDataBiaya['nm_biaya'])+', '+
              ' '+QuotedStr(stringreplace(MemDataBiaya['persen_pph'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(MemDataBiaya['akun_pph'])+', '+
              ' '+QuotedStr(MemDataBiaya['nama_pph'])+', '+
              ' '+QuotedStr(stringreplace(MemDataBiaya['persen_ppn'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(MemDataBiaya['akun_ppn'])+', '+
              ' '+QuotedStr(MemDataBiaya['nama_ppn'])+', '+
              ' '+QuotedStr(stringreplace(MemDataBiaya['dpp'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(stringreplace(MemDataBiaya['ppn'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(stringreplace(MemDataBiaya['pph'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(stringreplace(MemDataBiaya['total'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+' );';
    ExecSQL;
    end;
  Grand_Tot:=Grand_Tot+MemDataBiaya['total'];
  MemDataBiaya.Next;
  end;
end;

procedure TFNewDeliveryOrder.InsertDetailService;
var
total : Real;
begin
  //total:=FloatToStr(DBGridSumberPenjualan.Columns[5].Footers);
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT * from "sale"."t_delivery_order_services"'+
            ' WHERE "notrans"='+QuotedStr(edKodeDOMuatan.Text)+' ) a '+
            ' Order By notrans desc');
    open;
  end;

  if Dm.Qtemp1.RecordCount>0 then
  begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "sale"."t_delivery_order_services" '+
            ' WHERE "notrans"='+QuotedStr(edKodeDOMuatan.Text)+';';
  ExecSQL;
  end;
  end;

    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "sale"."t_delivery_order_services" ("notrans", '+
              ' "vendor_code", "vendor_name", "pic", "vehicles", '+
              ' "type_vehicles_code", "type_vehicles_name", "capacity", '+
              ' "driver_name", "helper_name", "number_pib", "no_invoice",'+
              //'  "date_invoice", '+
              ' "total_cost") '+
              ' Values( '+
              ' '+QuotedStr(edKodeDOMuatan.Text)+', '+
              ' '+QuotedStr(edKodeVendorTransMuatan.Text)+', '+
              ' '+QuotedStr(edNamaVendorTransMuatan.Text)+', '+
              ' '+QuotedStr(edPICMuatan.Text)+', '+
              ' '+QuotedStr(edNoKendMuatan.Text)+', '+
              ' '+QuotedStr(edKodeJenisKendMuatan.Text)+', '+
              ' '+QuotedStr(edNamaJenisKendMuatan.Text)+', '+
              ' '+QuotedStr(IntToStr(spKapasitas.Value))+', '+
              ' '+QuotedStr(edNamaSupir.Text)+', '+
              ' '+QuotedStr(edNamaKenek.Text)+', '+
              ' '+QuotedStr(edNomorPIB.Text)+', '+
              ' '+QuotedStr('0')+', '+
              //' '+QuotedStr('0')+', '+
              ' '+QuotedStr(stringreplace(FloatToStr(Grand_Tot), ',', '.',[rfReplaceAll, rfIgnoreCase]))+' );';
              //' '+QuotedStr(VarToStr(DBGridSumberPenjualan.Columns[5].Footer.Value))+' );';
    ExecSQL;
    end;
end;

procedure TFNewDeliveryOrder.Autonumber;
begin
   idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FListDeliveryOrder.Name)+'');
   strday2:=dtTanggalMuatan.Date;
   edKodeDOMuatan.Text:=getNourut(strday2,'sale.t_delivery_order','0');
   edKodeDOBiaya.Text:=getNourut(strday2,'sale.t_delivery_order','0');
   edKodeDODok.Text:=getNourut(strday2,'sale.t_delivery_order','0');
end;


procedure TFNewDeliveryOrder.Clear;
begin
  MemDataBiaya.EmptyTable;
  MemDataMuatan.EmptyTable;

  //Muatan
  edKodeDOMuatan.Clear;
  dtTanggalMuatan.Date:=NOW();
  edKodeJenisMuatan.Clear;
  edNamaJenisMuatan.Clear;
  edKodeVendorMuatan.Clear;
  edNamaVendorMuatan.Clear;
  edKodeVendorTransMuatan.Clear;
  edNamaVendorTransMuatan.Clear;
  edPICMuatan.Clear;
  edNoKendMuatan.Clear;
  edKodeJenisKendMuatan.Clear;
  edNamaJenisKendMuatan.Clear;
  spKapasitas.Value:=0;
  edNamaSupir.Clear;
  edNamaKenek.Clear;
  edNomorPIB.Clear;

  //Biaya
  edKodeDOBiaya.Clear;
  dtTanggalBiaya.Date:=NOW();
  edNamaJenisBiaya.Clear;
  edKodeLokasi.Clear;
  edNamaLokasi.Clear;
  edKodeProvinsi.Clear;
  edNamaProvinsi.Clear;
  edKodeKabupaten.Clear;
  edNamaKabupaten.Clear;
  spTotalTitik.Value:=0;
  MemKeteranganBiaya.Clear;

  //Dokumen
  edKodeDODok.Clear;
  dtTanggalDoc.Date:=NOW();
  edNamaJenisDoc.Clear;
  edNomorTagihanVendor.Clear;
  dtTerimaTagihan.Date:=NOW();
  edTotalBiaya.Clear;
end;

procedure TFNewDeliveryOrder.HitungGrid;
begin
   try
      begin
      if MemDataBiaya['kd_biaya']<>'0' then
      begin
        MemDataBiaya.Edit;
        MemDataBiaya['total']:=MemDataBiaya['dpp']+MemDataBiaya['ppn']-MemDataBiaya['pph'];
        //Validasi PPN
        if MemDataBiaya['persen_ppn']=0 then
        begin
          MemDataBiaya['persen_ppn']:=0;
        end;
        if (MemDataBiaya['persen_ppn']<>0) and (MemDataBiaya['nama_ppn']<>'-') then
        begin
          MemDataBiaya['ppn']:=Int(MemDataBiaya['dpp']*(MemDataBiaya['persen_ppn']/100));
        end;
        //Validasi PPH
        if MemDataBiaya['persen_pph']=0 then
        begin
          MemDataBiaya['pph']:=0;
        end;
        if (MemDataBiaya['persen_pph']<>0) and (MemDataBiaya['nama_pph']<>'-') then
        begin
          MemDataBiaya['pph']:=Int(MemDataBiaya['dpp']*(MemDataBiaya['persen_pph']/100));
        end;
        MemDataBiaya['total']:=MemDataBiaya['dpp']+MemDataBiaya['ppn']-MemDataBiaya['pph'];
        MemDataBiaya.Post;
      end;
      end;
        Except;
   end;
end;

procedure TFNewDeliveryOrder.RefreshGridRincianBiaya;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "code", "name", "description", "code_master" FROM '+
            ' "t_type_delivery_order_det" where deleted_at IS NULL ) a '+
            ' WHERE "code_master"='+QuotedStr(edKodeJenisMuatan.Text)+' '+
            ' Order By code, name desc');
    open;
  end;

    FNewDeliveryOrder.MemDataBiaya.active:=false;
    FNewDeliveryOrder.MemDataBiaya.active:=true;
    FNewDeliveryOrder.MemDataBiaya.EmptyTable;

    FNewDeliveryOrder.MemDataMuatan.active:=false;
    FNewDeliveryOrder.MemDataMuatan.active:=true;
    FNewDeliveryOrder.MemDataMuatan.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FNewDeliveryOrder.MemDataBiaya.active:=false;
      FNewDeliveryOrder.MemDataBiaya.active:=true;
      FNewDeliveryOrder.MemDataBiaya.EmptyTable;

      FNewDeliveryOrder.MemDataMuatan.active:=false;
      FNewDeliveryOrder.MemDataMuatan.active:=true;
      FNewDeliveryOrder.MemDataMuatan.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FNewDeliveryOrder.MemDataBiaya.insert;
     FNewDeliveryOrder.MemDataBiaya['kd_biaya']:=Dm.Qtemp.fieldbyname('code').value;
     FNewDeliveryOrder.MemDataBiaya['nm_biaya']:=Dm.Qtemp.fieldbyname('name').value;
     FNewDeliveryOrder.MemDataBiaya['dpp']:='0';
     FNewDeliveryOrder.MemDataBiaya['ppn']:='0';
     FNewDeliveryOrder.MemDataBiaya['akun_ppn']:='0';
     FNewDeliveryOrder.MemDataBiaya['nama_ppn']:='-';
     FNewDeliveryOrder.MemDataBiaya['persen_ppn']:='0';
     FNewDeliveryOrder.MemDataBiaya['pph']:='0';
     FNewDeliveryOrder.MemDataBiaya['akun_pph']:='0';
     FNewDeliveryOrder.MemDataBiaya['nama_pph']:='-';
     FNewDeliveryOrder.MemDataBiaya['persen_pph']:='0';
     FNewDeliveryOrder.MemDataBiaya['total']:='0';
     FNewDeliveryOrder.MemDataBiaya['keterangan']:='0';
     FNewDeliveryOrder.MemDataBiaya['no_invoice']:='0';
     FNewDeliveryOrder.MemDataBiaya['tgl_invoice']:=NOW();
     FNewDeliveryOrder.MemDataBiaya.post;
     Dm.Qtemp.next;
    end;
    end;
    FNewDeliveryOrder.MemDataMuatan.active:=false;
    if edKodeJenisMuatan.Text='002' then
    begin
      DBGridSumberPenjualan.Columns[13].Visible:=true;
      DBGridSumberPenjualan.Columns[14].Visible:=true;
    end
    else
    begin
      DBGridSumberPenjualan.Columns[13].Visible:=false;
      DBGridSumberPenjualan.Columns[14].Visible:=false;
    end;
end;

procedure TFNewDeliveryOrder.RzPageControl1Click(Sender: TObject);
begin
   if FNewDeliveryOrder.RzPageControl1.ActivePage=FNewDeliveryOrder.TabDataBiaya  then
   begin
     btNextStepClick(Sender);
   end;
end;

procedure TFNewDeliveryOrder.TabDataBiayaClick(Sender: TObject);
begin
  btNextStepClick(Sender);
end;

procedure TFNewDeliveryOrder.btAddDetailClick(Sender: TObject);
begin
  if (vFormSumber01='0') OR (vFormSumber01='')  then
  begin
    ShowMessage('Silakan Setting Form Target Sumber..');
    exit;
  end;
  if (vFormSumber01<>'0') AND (vFormSumber01<>'') then
  begin
    FDelivery_Order_Sumber.ShowModal;
  end;
end;

procedure TFNewDeliveryOrder.btBackStepClick(Sender: TObject);
begin
  FNewDeliveryOrder.RzPageControl1.ActivePage:=FNewDeliveryOrder.TabDataMuatan;
end;

procedure TFNewDeliveryOrder.btBatalParameterClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFNewDeliveryOrder.btBatalSumberJualClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFNewDeliveryOrder.btNextStepClick(Sender: TObject);
begin
  FNewDeliveryOrder.RzPageControl1.ActivePage:=FNewDeliveryOrder.TabDataBiaya;
  FNewDeliveryOrder.edKodeDOBiaya.Text:=edKodeDOMuatan.Text;
  FNewDeliveryOrder.edNamaJenisBiaya.Text:=edNamaJenisMuatan.Text;
  FNewDeliveryOrder.dtTanggalBiaya.Date:=dtTanggalMuatan.Date;

  FNewDeliveryOrder.edKodeDODok.Text:=edKodeDOMuatan.Text;
  FNewDeliveryOrder.edNamaJenisDoc.Text:=edNamaJenisMuatan.Text;
  FNewDeliveryOrder.dtTanggalDoc.Date:=dtTanggalMuatan.Date;
end;

procedure TFNewDeliveryOrder.btMasterSumberClick(Sender: TObject);
begin
  vFormSumber01:='0';
  vFormSumber02:='0';
  FMasterData.Caption:='Master Data';
  FMasterData.vcall:='do_master_jenis';
  FMasterData.update_grid('code','name','description','t_type_delivery_order','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.Show;
end;

procedure TFNewDeliveryOrder.btSaveParameterClick(Sender: TObject);
begin
  //Cek Tanggal Tagihan Tidak Boleh Dibawah Tanggal Muatan
  if dtTerimaTagihan.Date < dtTanggalMuatan.date then
  begin
    ShowMessage('Tanggal Tagihan Tidak Boleh Dibawah Tanggal Muatan...!!!');
    exit;
  end;

  //Cek Balance
  Grand_Tot:=0;
  MemDataBiaya.First;
  while not MemDataBiaya.Eof do
  begin
  Grand_Tot:=Grand_Tot+MemDataBiaya['total'];
  MemDataBiaya.Next;
  end;

  if Grand_Tot<> edTotalBiaya.Value then
  begin
    ShowMessage('Total Biaya Dengan Total Tagihan Tidak Balance...!!!');
    //ShowMessage(FloatToStr(Grand_Tot)+'0'+FloatToStr(edTotalBiaya.Value));
    exit;
  end;


    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "sale"."t_delivery_order" SET '+
              ' updated_at=NOW(), '+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
              ' Where notrans='+QuotedStr(edKodeDODok.Text)+'');
      ExecSQL;
    end;
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "sale"."t_delivery_order_services" SET '+
              ' date_invoice='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTerimaTagihan.Date))+','+
              ' no_invoice='+QuotedStr(edNomorTagihanVendor.Text)+','+
              ' total_cost='+QuotedStr(stringreplace(FloatToStr(Grand_Tot), ',', '.',[rfReplaceAll, rfIgnoreCase]))+' '+
              ' Where notrans='+QuotedStr(edKodeDODok.Text)+'');
      ExecSQL;
    end;

    ShowMessage('Data Berhasil Diperbarui..');
end;

procedure TFNewDeliveryOrder.btSimpanSumberJualClick(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  DecodeDate(dtTanggalMuatan.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);
  //refresh grid
      //ShowMessage(IntToStr(Status));
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKodeDOMuatan.Text='' then
      begin
        MessageDlg('Pastikan Nomor Transaksi Anda Sudah Benar..!!',mtInformation,[mbRetry],0);
        edKodeDOMuatan.SetFocus;
      end
      else if edKodeVendorTransMuatan.Text='' then
      begin
        MessageDlg('Data Jasa Transport Tidak Lengkap..!!',mtInformation,[mbRetry],0);
        edKodeVendorTransMuatan.SetFocus;
      end
      else if MemDataMuatan.RecordCount=0 then
      begin
        MessageDlg('Pastikan Detail Muatan Sudah Lengkap..!!',mtInformation,[mbRetry],0);
        edKodeDOMuatan.SetFocus;
      end
      else if MemDataBiaya.RecordCount=0 then
      begin
        MessageDlg('Pastikan Detail Biaya Sudah Lengkap..!!',mtInformation,[mbRetry],0);
        edKodeDOMuatan.SetFocus;
      end
      else if Status = 0 then
      begin
      FNewDeliveryOrder.Autonumber;
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Order No. '+edKodeDOMuatan.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
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


procedure TFNewDeliveryOrder.DBGridSumberPenjualanCellClick(Column: TColumnEh);
begin
  HitungGrid;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanColEnter(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanColExit(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanColumns0CellButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  if edKodeJenisMuatan.Text='002' then
  begin
    FSearch_Supplier.Caption:='Master Data Supplier Kendaraan';
    FSearch_Supplier.vcall:='delivery_order_reimburst';
    FSearch_Supplier.QSupplier.Close;
    FSearch_Supplier.QSupplier.Open;
    FSearch_Supplier.ShowModal;
  end;
  if edKodeJenisMuatan.Text='004' then
  begin
    ShowMessage('Data Transit');
  end;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanColumns4CellButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='do_ppn';
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

procedure TFNewDeliveryOrder.DBGridSumberPenjualanColumns8CellButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='do_pph';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                ' left join t_ak_header c on b.header_code=c.header_code '+
                ' GROUP BY b.code,b.account_name,c.header_name '+
                ' ORDER BY b.code,b.account_name,c.header_name';
      Execute;
    end;
  end;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanEnter(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanExit(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DELETE then
  begin
    MemDataBiaya.Delete;
  end;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((Key = #13)) then // Enter key
  begin
    // Membatalkan operasi insert
    MemDataBiaya.Cancel;
    // Tampilkan pesan jika diperlukan
    ShowMessage('Tidak Dapat Menambah Item Baru');
    Key := #0; // Mematikan key event
  end;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanMouseEnter(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFNewDeliveryOrder.dtTanggalMuatanChange(Sender: TObject);
begin
  if Status=0 then
  begin
    Autonumber;
  end;
end;

procedure TFNewDeliveryOrder.edKodeVendorMuatanButtonClick(Sender: TObject);
begin
  if (vFormSumber01='0') OR (vFormSumber01='')  then
  begin
    ShowMessage('Silakan Setting Form Target Sumber..');
    exit;
  end;
  if (vFormSumber01<>'0') AND (vFormSumber01<>'') then
  begin
        {AClass := FindClass('T'+vFormSumber01);
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
        vStatusTrans:='delivery_order';
        FTemplate_Temp.ShowModal;
        //FTambah_Barang.ShowModal;}

        if vFormSumber01=Fbrowse_data_pelanggan.Name then
        begin
          Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
          Fbrowse_data_pelanggan.vcall:='delivery_order';
          Fbrowse_data_pelanggan.ShowModal;
        end;
        if vFormSumber01=FSearch_Supplier.Name then
        begin
          FSearch_Supplier.Caption:='Master Data Supplier';
          FSearch_Supplier.vcall:='delivery_order';
          FSearch_Supplier.QSupplier.Close;
          FSearch_Supplier.QSupplier.Open;
          FSearch_Supplier.ShowModal;
        end;
  end;
end;

procedure TFNewDeliveryOrder.edKodeVendorTransMuatanButtonClick(
  Sender: TObject);
begin
  FSearch_Supplier.Caption:='Master Data Supplier Kendaraan';
  FSearch_Supplier.vcall:='delivery_order_kend';
  FSearch_Supplier.QSupplier.Close;
  FSearch_Supplier.QSupplier.Open;
  FSearch_Supplier.ShowModal;
end;

procedure TFNewDeliveryOrder.edNamaJenisKendMuatanButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Kendaraan';
  FMasterData.vcall:='do_jenis_kend';
  FMasterData.update_grid('code','name','capacity','"db_center"."t_transportation_type"','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
end;

procedure TFNewDeliveryOrder.edNamaJenisMuatanButtonClick(Sender: TObject);
begin
  vFormSumber01:='0';
  vFormSumber02:='0';
  FMasterData.Caption:='Master Data';
  FMasterData.vcall:='do_jenis';
  FMasterData.update_grid('code','name','description','t_type_delivery_order','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
  RefreshGridRincianBiaya;
end;

procedure TFNewDeliveryOrder.edNamaKabupatenButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='do_lokasi_awal_kab';
  FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_province='+QuotedStr(edKodeProvinsi.text)+'');
  FMasterData.ShowModal;
end;

procedure TFNewDeliveryOrder.edNamaLokasiButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Lokasi Awal';
  FMasterData.vcall:='do_lokasi_awal';
  FMasterData.update_grid('code','name','address','"db_center"."t_starting_location"','WHERE	deleted_at IS NULL ORDER BY code DESC');
  FMasterData.ShowModal;
end;

procedure TFNewDeliveryOrder.edNamaProvinsiButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Provinsi';
  FMasterData.vcall:='do_lokasi_awal_prov';
  FMasterData.update_grid('code','name','description','t_region_province','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFNewDeliveryOrder.edNoKendMuatanButtonClick(Sender: TObject);
begin
  ShowMessage('Master Kendaraan Ready Dimana ??');
end;

procedure TFNewDeliveryOrder.edNomorReffUtamaMuatanButtonClick(Sender: TObject);
begin
  if (vFormSumber02='0') OR (vFormSumber02='')  then
  begin
    ShowMessage('Silakan Setting Form Target Sumber..');
    exit;
  end;
  if (vFormSumber02<>'0') AND (vFormSumber02<>'') then
  begin
        AClass := FindClass('T'+vFormSumber02);
        AFormClass := TFormClass(AClass);
        AForm := AFormClass.Create(Application.MainForm);
        AForm.Parent:=FTemplate_Temp.PanelParent;
        AForm.Align:=Alclient;
        AForm.BorderStyle:=BsNone;
        FTemplate_Temp.Height:=AForm.Height;
        FTemplate_Temp.Width:=AForm.Width;

        AForm.Show;
        FTemplate_Temp.Caption:='delivery_order';
        FTemplate_Temp.TabForm.Caption:=AForm.Caption;
        //vStatusTrans:='master_vendor';
        FTemplate_Temp.ShowModal;
  end;
end;

procedure TFNewDeliveryOrder.edTotalBiayaExit(Sender: TObject);
begin
  edTotalBiaya.Text := FormatFloat('#,##0.##', edTotalBiaya.Value);
end;

procedure TFNewDeliveryOrder.FormShow(Sender: TObject);
begin
  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')<> 'dev' then
  begin
    btMasterSumber.Visible:=false;
  end else begin
    btMasterSumber.Visible:=true;
  end;
end;

Initialization
  //RegisterClasses([TFNewDeliveryOrder,TFTemplate_Temp,TFbrowse_data_pelanggan]);
  RegisterClasses([TFNewDeliveryOrder,TFbrowse_data_pelanggan]);

end.
