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
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon;

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
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
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
begin
  DBGridList.StartLoadingStatus();
  try
   with QDeliveryOrder do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_delivery_order"   '+
                 ' where deleted_at is null order by created_at Desc ';
       open;
   end;
  finally
  DBGridList.FinishLoadingStatus();
  end;
end;

procedure TFListDeliveryOrder.ActBaruExecute(Sender: TObject);
begin
  FNewDeliveryOrder.Clear;
  FNewDeliveryOrder.Autonumber;
  FNewDeliveryOrder.MemDataMuatan.EmptyTable;
  FNewDeliveryOrder.MemDataBiaya.EmptyTable;
  Status:=0;
  FNewDeliveryOrder.edKodeDOMuatan.Enabled:=true;
  FNewDeliveryOrder.edKodeDOBiaya.Enabled:=true;
  FNewDeliveryOrder.edKodeDODok.Enabled:=true;
  FNewDeliveryOrder.RzPageControl1.ActivePage:=FNewDeliveryOrder.TabDataMuatan;
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
begin
  DBGridList.StartLoadingStatus();
  try
   with QDeliveryOrder do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_delivery_order"   '+
                 ' where deleted_at is null order by created_at Desc ';
       open;
   end;
  finally
  DBGridList.FinishLoadingStatus();
  end;
end;

procedure TFListDeliveryOrder.ActUpdateExecute(Sender: TObject);
begin
   FNewDeliveryOrder.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_delivery_order" a '+
                 ' WHERE "notrans"='+QuotedSTr(QDeliveryOrder.FieldByName('notrans').AsString)+' '+
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
  with FNewDeliveryOrder do
  begin
    edKodeDOMuatan.Text:=Dm.Qtemp.FieldByName('notrans').AsString;
    edKodeDOBiaya.Text:=Dm.Qtemp.FieldByName('notrans').AsString;
    edKodeDODok.Text:=Dm.Qtemp.FieldByName('notrans').AsString;
    dtTanggalMuatan.Date:=Dm.Qtemp.FieldByName('date_trans').AsDateTime;
    edKodeJenisMuatan.Text:=Dm.Qtemp.FieldByName('type_do_code').AsString;
    edNamaJenisMuatan.Text:=Dm.Qtemp.FieldByName('type_do_name').AsString;
    edNamaJenisBiaya.Text:=Dm.Qtemp.FieldByName('type_do_name').AsString;
    edNamaJenisDoc.Text:=Dm.Qtemp.FieldByName('type_do_name').AsString;
    edKodeLokasi.Text:=Dm.Qtemp.FieldByName('starting_loc_code').AsString;
    edNamaLokasi.Text:=Dm.Qtemp.FieldByName('starting_loc_name').AsString;
    edKodeProvinsi.Text:=Dm.Qtemp.FieldByName('province_code').AsString;
    edNamaProvinsi.Text:=Dm.Qtemp.FieldByName('province_name').AsString;
    edKodeKabupaten.Text:=Dm.Qtemp.FieldByName('regency_code').AsString;
    edNamaKabupaten.Text:=Dm.Qtemp.FieldByName('regency_name').AsString;
    spTotalTitik.Value:=Dm.Qtemp.FieldByName('number_of_points').Value;
    MemKeteranganBiaya.Text:=Dm.Qtemp.FieldByName('description').AsString;
    order_no:=Dm.Qtemp.FieldByName('order_no').AsString;
    kd_kares:=Dm.Qtemp.FieldByName('additional_code').AsString;
    strtgl:=Dm.Qtemp.FieldByName('trans_day').AsString;
    strbulan:=Dm.Qtemp.FieldByName('trans_month').AsString;
    strtahun:=Dm.Qtemp.FieldByName('trans_year').AsString;
    vFormSumber01:=Dm.Qtemp.FieldByName('formsumbervendor').AsString;
  end;

  //biaya
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
     edNomorTagihanVendor.Text:=Dm.Qtemp1.fieldbyname('no_invoice').value;
     dtTerimaTagihan.Date:=Dm.Qtemp1.fieldbyname('date_invoice').AsDateTime;
     edTotalBiaya.Value:=Dm.Qtemp1.fieldbyname('total_cost').value;
     Grand_Tot:=Dm.Qtemp1.fieldbyname('total_cost').value;
    end;
    end;
  //end Jasa Transport
  end;
  FNewDeliveryOrder.edKodeDOMuatan.Enabled:=false;
  FNewDeliveryOrder.edKodeDOBiaya.Enabled:=false;
  FNewDeliveryOrder.edKodeDODok.Enabled:=false;
  FNewDeliveryOrder.RzPageControl1.ActivePage:=FNewDeliveryOrder.TabDataMuatan;
  FNewDeliveryOrder.Show;
  Status := 1;
end;

initialization
  RegisterClass(TFListDeliveryOrder);

end.
