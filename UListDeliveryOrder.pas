unit UListDeliveryOrder;

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
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, dxBarExtItems, cxDropDownEdit,
  cxBarEditItem, frxClass, frxDBSet, cxCalendar;

type
  TFListDeliveryOrder = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridList: TDBGridEh;
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
    QDeliveryOrder: TUniQuery;
    DsDeliveryOrder: TDataSource;
    QDeliveryOrdernotrans: TStringField;
    QDeliveryOrderdate_trans: TDateField;
    QDeliveryOrdertype_do_name: TStringField;
    QDeliveryOrderstarting_loc_name: TStringField;
    QDeliveryOrderprovince_name: TStringField;
    QDeliveryOrderregency_name: TStringField;
    dxBarManager1Bar2: TdxBar;
    cbBulan: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    dxBarLargeButton1: TdxBarLargeButton;
    cbStatus: TdxBarCombo;
    QDeliveryOrderstatus_name: TStringField;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    Report: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QCetak: TUniQuery;
    QCetak2: TUniQuery;
    frxDBDataset2: TfrxDBDataset;
    dtAwal: TcxBarEditItem;
    dtAkhir: TcxBarEditItem;
    dxBarLargeButton3: TdxBarLargeButton;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure GetStatus;
  public
    { Public declarations }
    procedure Refresh;
  end;

var
  FListDeliveryOrder: TFListDeliveryOrder;

implementation

{$R *.dfm}

uses UNewDeliveryOrder, UDataModule, UMy_Function, UHomeLogin;

procedure TFListDeliveryOrder.Refresh;
var mm: Integer;
    strStatus: String;
begin
  if cbStatus.Text<>'Semua' then
  strStatus:=' AND b.status_name='+QuotedStr(cbStatus.Text)
  else strStatus:='';

  mm:=cbBulan.ItemIndex+1;

  if not dm.Koneksi.Connected then
  dm.Koneksi.Connected := True;
  DBGridList.StartLoadingStatus();
  try
   with QDeliveryOrder do
   begin
       close;
       sql.Clear;
       sql.Text:= 'SELECT a.*,b.status_name from t_delivery_order a '+
                  'LEFT JOIN t_delivery_order_status b on b.kode=a.status '+
                  'WHERE (a.date_trans BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
                 ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+') AND  '+
//                  'WHERE EXTRACT(YEAR FROM a.date_trans)='+edTahun.Text+' AND '+
//                  'EXTRACT(MONTH FROM a.date_trans)='+(IntToStr(mm))+' AND '+
                  'a.deleted_at is null'+strStatus+' ORDER BY a.date_trans Desc, a.notrans DESC ';
       open;
   end;
  finally
  DBGridList.FinishLoadingStatus();
  end;
end;

procedure TFListDeliveryOrder.GetStatus;
begin
  cbStatus.Items.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select status_name from t_delivery_order_status where status=true order by kode ASC';
    ExecSQL;
  end;
  cbStatus.Items.Add('Semua');
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbStatus.Items.Add(Dm.Qtemp['status_name']);
    Dm.Qtemp.Next;
  end;
  cbStatus.ItemIndex:=0;
end;

procedure TFListDeliveryOrder.ActBaruExecute(Sender: TObject);
begin
  FNewDeliveryOrder.Clear;
  FNewDeliveryOrder.Autonumber;
  FNewDeliveryOrder.MemDataMuatan.EmptyTable;
  FNewDeliveryOrder.MemDataBiaya.EmptyTable;
  Status:=0;
  FNewDeliveryOrder.IntStatusDO:=0;
  FNewDeliveryOrder.edKodeDOMuatan.Enabled:=true;
  FNewDeliveryOrder.edKodeDOBiaya.Enabled:=true;
  FNewDeliveryOrder.edKodeDODok.Enabled:=true;
  FNewDeliveryOrder.RzPageControl1.ActivePage:=FNewDeliveryOrder.TabDataMuatan;
  FNewDeliveryOrder.btSimpanSumberJual.Enabled:=True;
  FNewDeliveryOrder.BtnCekBiaya.Caption:='Cek Biaya';
  FNewDeliveryOrder.ShowModal;
end;

procedure TFListDeliveryOrder.ActDelExecute(Sender: TObject);
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
          sql.Text:=' UPDATE "public"."t_delivery_order"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "notrans"='+QuotedStr(QDeliveryOrder.FieldByName('notrans').AsString);
          ExecSQL;
        end;
        MessageDlg('Proses Hapus Berhasil..!!',mtInformation,[MBOK],0);
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

procedure TFListDeliveryOrder.ActROExecute(Sender: TObject);
var month,year:String;
begin
//  year :=FormatDateTime('yyyy', NOW());
//  month :=FormatDateTime('m', NOW());
//  edTahun.Text:=(year);
//  cbBulan.ItemIndex:=StrToInt(month)-1;
//  GetStatus;
  Refresh;
end;

procedure TFListDeliveryOrder.ActUpdateExecute(Sender: TObject);
begin
   FNewDeliveryOrder.Clear;
   if not dm.Koneksi.Connected then
   dm.Koneksi.Connected := True;

   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:= 'select * from "public"."t_delivery_order" '+
                  'WHERE "notrans"='+QuotedSTr(QDeliveryOrder.FieldByName('notrans').AsString)+' '+
                  'AND deleted_at is null order by created_at Desc ';
       open;
   end;
  if Dm.Qtemp.RecordCount=0 then
  begin
    ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
    exit;
  end;

  if Dm.Qtemp.RecordCount<>0 then
  begin
    with FNewDeliveryOrder do
    begin
      strLastNamaLokasi:= Dm.Qtemp.FieldByName('starting_loc_name').AsString;
      strLastNamaKabupaten:= Dm.Qtemp.FieldByName('regency_name').AsString;
      strLastTotalTitik:=Dm.Qtemp.FieldValues['number_of_points'];

      edKodeDOMuatan.Text:=Dm.Qtemp.FieldByName('notrans').AsString;
      edKodeDOBiaya.Text:=Dm.Qtemp.FieldByName('notrans').AsString;
      edKodeDODok.Text:=Dm.Qtemp.FieldByName('notrans').AsString;
      dtTanggalMuatan.Date:=Dm.Qtemp.FieldByName('date_trans').AsDateTime;
      edKodeJenisMuatan.Text:=Dm.Qtemp.FieldByName('type_do_code').AsString;
      edNamaJenisMuatan.Text:=Dm.Qtemp.FieldByName('type_do_name').AsString;
      edNamaJenisBiaya.Text:=Dm.Qtemp.FieldByName('type_do_name').AsString;
      edNamaJenisDoc.Text:=Dm.Qtemp.FieldByName('type_do_name').AsString;
      edlokasiregencyid.Text:=Dm.Qtemp.FieldValues['starting_loc_regencie_id'];
      edKodeLokasi.Text:=Dm.Qtemp.FieldByName('starting_loc_code').AsString;
      edNamaLokasi.Text:=Dm.Qtemp.FieldByName('starting_loc_name').AsString;
      edKodeProvinsi.Text:=Dm.Qtemp.FieldByName('province_code').AsString;
      edNamaProvinsi.Text:=Dm.Qtemp.FieldByName('province_name').AsString;
      edKodeKabupaten.Text:=Dm.Qtemp.FieldByName('regency_code').AsString;
      edNamaKabupaten.Text:=Dm.Qtemp.FieldByName('regency_name').AsString;
      spTotalTitik.Value:=Dm.Qtemp.FieldValues['number_of_points'];
      MemKeteranganBiaya.Text:=Dm.Qtemp.FieldByName('description').AsString;
      order_no:=Dm.Qtemp.FieldByName('order_no').AsString;
      kd_kares:=Dm.Qtemp.FieldByName('additional_code').AsString;
      strtgl:=Dm.Qtemp.FieldByName('trans_day').AsString;
      strbulan:=Dm.Qtemp.FieldByName('trans_month').AsString;
      strtahun:=Dm.Qtemp.FieldByName('trans_year').AsString;
      vFormSumber01:=Dm.Qtemp.FieldByName('formsumbervendor').AsString;
      IntStatusDO:=Dm.Qtemp.FieldByName('status').AsInteger;
      IntStatusKoreksi:=Dm.Qtemp.FieldValues['status_correction'];

    end;

  //biaya
    if FNewDeliveryOrder.IntStatusDO >3 then FNewDeliveryOrder.btSimpanSumberJual.Enabled:=false
    else FNewDeliveryOrder.btSimpanSumberJual.Enabled:=true;

    if (FNewDeliveryOrder.IntStatusDO<3) then
    begin
      FNewDeliveryOrder.BtnCekBiaya.Visible:=true;
      FNewDeliveryOrder.BtnCekBiaya.Caption:='Cek Biaya';
//      FNewDeliveryOrder.btSimpanSumberJual.Enabled:=True;
//      FNewDeliveryOrder.btSaveParameter.Enabled:=False;
    end else if (FNewDeliveryOrder.IntStatusDO>3) then
    begin
      FNewDeliveryOrder.BtnCekBiaya.Visible:=False;
      FNewDeliveryOrder.BtnCekBiaya.Caption:='Cek Biaya';
//      FNewDeliveryOrder.btSimpanSumberJual.Enabled:=True;
//      FNewDeliveryOrder.btSaveParameter.Enabled:=False;
    end else if (FNewDeliveryOrder.IntStatusDO=3) then
    begin
      FNewDeliveryOrder.BtnCekBiaya.Visible:=true;
      FNewDeliveryOrder.BtnCekBiaya.Caption:='Cek Biaya Perubahan';
//      FNewDeliveryOrder.btSimpanSumberJual.Enabled:=True;
//      FNewDeliveryOrder.btSaveParameter.Enabled:=False;
    end;
//      else if (FNewDeliveryOrder.IntStatusDO=4) or (FNewDeliveryOrder.IntStatusDO=5) then
//    begin
//      FNewDeliveryOrder.BtnCekBiaya.Visible:=false;
//      FNewDeliveryOrder.btSimpanSumberJual.Enabled:=false;
//      FNewDeliveryOrder.btSaveParameter.Enabled:=true;
//    end else begin
//      FNewDeliveryOrder.BtnCekBiaya.Visible:=false;
//      FNewDeliveryOrder.btSimpanSumberJual.Enabled:=false;
//      FNewDeliveryOrder.btSaveParameter.Enabled:=False;
//    end;

    with Dm.Qtemp1 do
    begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_delivery_order_cost" a '+
                 ' WHERE "notrans"='+QuotedSTr(QDeliveryOrder.FieldByName('notrans').AsString)+' '+
                 ' order by cost_code Desc ';
       open;
    end;

    if Dm.Qtemp1.RecordCount<>0 then
    begin
    FNewDeliveryOrder.Grand_Tot:=0;
    FNewDeliveryOrder.MemDataBiaya.active:=false;
    FNewDeliveryOrder.MemDataBiaya.active:=true;
    FNewDeliveryOrder.MemDataBiaya.EmptyTable;
    Dm.Qtemp1.first;
    while not Dm.Qtemp1.Eof do
    begin
      with FNewDeliveryOrder do
      begin
       MemDataBiaya.insert;
       MemDataBiaya['kd_biaya']:=Dm.Qtemp1.fieldbyname('cost_code').value;
       MemDataBiaya['nm_biaya']:=Dm.Qtemp1.fieldbyname('cost_name').value;
       MemDataBiaya['akun_ppn']:=Dm.Qtemp1.fieldbyname('code_ppn').value;
       MemDataBiaya['nama_ppn']:=Dm.Qtemp1.fieldbyname('name_ppn').value;
       MemDataBiaya['persen_ppn']:=Dm.Qtemp1.fieldbyname('percent_ppn').value;
       MemDataBiaya['akun_pph']:=Dm.Qtemp1.fieldbyname('code_pph').value;
       MemDataBiaya['nama_pph']:=Dm.Qtemp1.fieldbyname('name_pph').value;
       MemDataBiaya['persen_pph']:=Dm.Qtemp1.fieldbyname('percent_pph').value;
       MemDataBiaya['dpp']:=Dm.Qtemp1.fieldbyname('sub_total').value;
       MemDataBiaya['ppn']:=Dm.Qtemp1.fieldbyname('ppn_value').value;
       MemDataBiaya['pph']:=Dm.Qtemp1.fieldbyname('pph_value').value;
       MemDataBiaya['total']:=Dm.Qtemp1.fieldbyname('grand_total').value;
       Grand_Tot:=Dm.Qtemp1.fieldbyname('grand_total').value;
       MemDataBiaya.post;
      end;
      Dm.Qtemp1.next;
    end;
  end;
  //end biaya

  //Muatan
  with Dm.Qtemp1 do
  begin
     close;
     sql.Clear;
     sql.Text:=' select * from "public"."t_delivery_order_load" a '+
               ' WHERE "notrans"='+QuotedSTr(QDeliveryOrder.FieldByName('notrans').AsString)+' '+
               ' order by notrans_load Desc ';
     open;
  end;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
    FNewDeliveryOrder.Grand_Tot:=0;
    FNewDeliveryOrder.MemDataMuatan.active:=false;
    FNewDeliveryOrder.MemDataMuatan.active:=true;
    FNewDeliveryOrder.MemDataMuatan.EmptyTable;
    Dm.Qtemp1.first;
    while not Dm.Qtemp1.Eof do
    begin
      with FNewDeliveryOrder do
      begin
       MemDataMuatan.insert;
       MemDataMuatan['notrans']:=Dm.Qtemp1.fieldbyname('notrans_load').value;
       MemDataMuatan['kode_vendor']:=Dm.Qtemp1.fieldbyname('code_vendor_load').value;
       MemDataMuatan['name_vendor']:=Dm.Qtemp1.fieldbyname('name_vendor_load').value;
       MemDataMuatan['no_reff']:=Dm.Qtemp1.fieldbyname('no_ref_load').value;
       MemDataMuatan['kd_barang']:=Dm.Qtemp1.fieldbyname('item_code').value;
       MemDataMuatan['nm_barang']:=Dm.Qtemp1.fieldbyname('item_name').value;
       MemDataMuatan['jumlah']:=Dm.Qtemp1.fieldbyname('amount').value;
       MemDataMuatan['satuan']:=Dm.Qtemp1.fieldbyname('unit').value;
       sumber_do:=Dm.Qtemp1.fieldbyname('source_load').value;
       MemDataMuatan.post;
      end;
      Dm.Qtemp1.next;
    end;
  end;
  //end muatan

  //Jasa Transport
  with Dm.Qtemp1 do
  begin
     close;
     sql.Clear;
     sql.Text:=' select * from "public"."t_delivery_order_services" a '+
               ' WHERE "notrans"='+QuotedSTr(QDeliveryOrder.FieldByName('notrans').AsString)+' '+
               ' order by vendor_code Desc ';
     open;
  end;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
    with FNewDeliveryOrder do
    begin

      strLastKodeJenisKendMuatan:=Dm.Qtemp1.fieldbyname('type_vehicles_code').value;


      edKodeVendorTransMuatan.Text:=Dm.Qtemp1.fieldbyname('vendor_code').value;
      edNamaVendorTransMuatan.Text:=Dm.Qtemp1.fieldbyname('vendor_name').value;
      edPICMuatan.Text:=Dm.Qtemp1.fieldbyname('pic').value;
      edNoKendMuatan.Text:=Dm.Qtemp1.fieldbyname('vehicles').value;
      edKodeJenisKendMuatan.Text:=Dm.Qtemp1.fieldbyname('type_vehicles_code').value;
      edNamaJenisKendMuatan.Text:=Dm.Qtemp1.fieldbyname('type_vehicles_name').value;
      spKapasitas.Value:=Dm.Qtemp1.fieldbyname('capacity').value;
      edNamaSupir.Text:=Dm.Qtemp1.fieldbyname('driver_name').value;
      edNamaKenek.Text:=Dm.Qtemp1.fieldbyname('helper_name').value;
      edNomorPIB.Text:=Dm.Qtemp1.fieldbyname('number_pib').value;
      if Dm.Qtemp1.fieldbyname('no_invoice').value<>NULL then
      edNomorTagihanVendor.Text:=Dm.Qtemp1.fieldbyname('no_invoice').value else  edNomorTagihanVendor.Text:='';
      if Dm.Qtemp1.fieldbyname('pickup_location').value<>NULL then
      edLokasiMuat.Text:=Dm.Qtemp1.fieldbyname('pickup_location').value else edLokasiMuat.Text:='';
      if Dm.Qtemp1.fieldbyname('delivery_location').value<>NULL then
      edLokasiBongkar.Text:=Dm.Qtemp1.fieldbyname('delivery_location').value else edLokasiBongkar.Text:='';
      if Dm.Qtemp1.fieldbyname('vehicle_group_sort_number').value<>NULL then
      edKelompokKendaraan.Text:=Dm.Qtemp1.FieldValues['vehicle_group_sort_number'];
      if Dm.Qtemp1.fieldbyname('vehicle_group_id').value<>NULL then
      strVehicleGroupId:=Dm.Qtemp1.FieldValues['vehicle_group_id'];

      if (Dm.Qtemp1.FieldValues['date_invoice']=NULL) AND (Dm.Qtemp1.FieldValues['date_invoice']='') then
      begin
        dtTerimaTagihan.Date:=NOW();
      end else
      begin
        dtTerimaTagihan.Date:=Dm.Qtemp1.fieldbyname('date_invoice').AsDateTime;
      end;
      edTotalBiaya.Value:=Dm.Qtemp1.fieldbyname('total_cost').value;
      Grand_Tot:=Dm.Qtemp1.fieldbyname('total_cost').value;
    end;
  end;
  //end Jasa Transport
  end;
  FNewDeliveryOrder.edKodeDOMuatan.ReadOnly:=True;
  FNewDeliveryOrder.edKodeDOBiaya.ReadOnly:=True;
  FNewDeliveryOrder.edKodeDODok.ReadOnly:=True;
  FNewDeliveryOrder.RzPageControl1.ActivePage:=FNewDeliveryOrder.TabDataMuatan;
  Status := 1;
  FNewDeliveryOrder.ShowModal;
end;

procedure TFListDeliveryOrder.dxBarLargeButton1Click(Sender: TObject);
begin
  Refresh;
end;

procedure TFListDeliveryOrder.dxBarLargeButton2Click(Sender: TObject);
begin
  if QDeliveryOrder.FieldValues['notrans']<>'' then
  begin

    with QCetak do
    begin
      close;
      sql.Clear;
      sql.Text:='select a.notrans,c.date_trans,a.vendor_code,a.vendor_name,b.address,'+
                'coalesce(a.pickup_location,'''') pickup_location,coalesce(a.delivery_location) delivery_location, d.company_name,d.address address_sbu,d.telp,'+
                'case when COALESCE(vehicles,'''')='''' then driver_name else CONCAT(vehicles,''/'',driver_name) end keterangan,'+
                'vehicles,dol.item_name,dol.amount,dol.unit from '+
                't_delivery_order_load dol LEFT JOIN '+
                't_delivery_order_services  a on a.notrans=dol.notrans '+
                'left join t_supplier b on b.supplier_code=a.vendor_code '+
                'left join t_delivery_order c on c.notrans=a.notrans '+
                'left join t_company d on d.company_code=c.sbu_code '+
                'WHERE a.notrans='+QuotedStr(QDeliveryOrder.FieldValues['notrans']);
      open;
    end;

    with QCetak2 do
    begin
      close;
      sql.Clear;
      sql.Text:='select DISTINCT a.name_vendor_load,address from t_delivery_order_load a '+
                'left join t_customer_address b on b.customer_code=a.code_vendor_load '+
                'and code_details=''003'' '+
                'WHERE notrans='+QuotedStr(QDeliveryOrder.FieldValues['notrans']);
      open;
    end;

    if (QCetak.RecordCount>0) AND (QCetak2.RecordCount>0) then
    begin
      cLocation := ExtractFilePath(Application.ExeName);
      Report.LoadFromFile(cLocation +'report/rpt_DeliveryOrder'+ '.fr3');
      Report.ShowReport();
    end;
  end;

end;

procedure TFListDeliveryOrder.dxBarLargeButton3Click(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  cbStatus.ItemIndex:=0;
end;

procedure TFListDeliveryOrder.FormShow(Sender: TObject);
begin
//  dxBarManager1Bar3.Visible:=False;
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  GetStatus;
  ActROExecute(sender);
end;

initialization
  RegisterClass(TFListDeliveryOrder);

end.
