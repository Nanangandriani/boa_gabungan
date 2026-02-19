unit UListKelompokBiayaWilayah;

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
  DynVarsEh, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Data.DB, MemDS, DBAccess, Uni, dxBar, cxClasses, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, MemTableDataEh, MemTableEh,
  cxCalendar, cxBarEditItem;

type
  TFListKelompokBiayaWilayah = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridCustomer: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeNew: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    cbSumber: TdxBarCombo;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    MemData: TMemTableEh;
    DSMemData: TDataSource;
    MemDatanotrans: TStringField;
    MemDatatanggal: TStringField;
    MemDatajumlah: TCurrencyField;
    MemDataketerangan: TStringField;
    MemDatasumber: TStringField;
    MemDatastatus: TStringField;
    dtTglAwal: TcxBarEditItem;
    dtTglAkhir: TcxBarEditItem;
    procedure FormShow(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeNewClick(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshGrid;
  public
    { Public declarations }
  end;

var
  FListKelompokBiayaWilayah: TFListKelompokBiayaWilayah;

implementation

{$R *.dfm}

uses UKelompokBiayaWilayah, UDataModule;


procedure TFListKelompokBiayaWilayah.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  if cbSumber.text='PEMBELIAN' then
  begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' Select trans_no as notrans, trans_date as tanggal, '+
            ' debt_remaining as jumlah, supplier_name as keterangan, '+
            ' ''-'' as status from t_purchase_invoice a'+
            ' Left join t_supplier b on a.supplier_code=b.supplier_code '+
            ' left join t_ak_account c on a.account_code=c.code '+
            ' left join t_ak_account d on a.account_um_code=d.code '+
            ' left join t_ref_item_receive e on a.ref_code=e.ref_code '+
            ' where'+
            ' trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTglAwal.EditValue))+' and '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTglAkhir.EditValue))+' '+
            ' order by a.trans_no, trans_date desc');
    open;
  end;
  end;
  if cbSumber.text='PENGELUARAN KAS DAN BANK' then
  begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT voucher_no as notrans, trans_date as tanggal, amount as jumlah, '+
            ' to_getout as keterangan, ''-'' as status   FROM t_cash_bank_expenditure a '+
            ' LEFT JOIN t_master_trans_account b on a."trans_type_code"=b.code_trans '+
            ' LEFT JOIN t_source_payment c on a."additional_code"=c.code '+
            ' LEFT JOIN t_currency d on a."currency"=d."currency_code" '+
            ' LEFT JOIN t_settlement_data_source e  on a."ref_no"=e."code" '+
            ' WHERE  trans_type_code not in (''5.001'',''6.001'') and '+
            ' trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTglAwal.EditValue))+' and '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTglAkhir.EditValue))+' '+
            ' ORDER BY voucher_no,trans_date desc');
    open;
  end;
  end;

  MemData.active:=false;
  MemData.active:=true;
  MemData.EmptyTable;

  if  Dm.Qtemp1.RecordCount=0 then
  begin
    Showmessage('Maaf, Data Tidak Ditemukan..');
    Exit;
  end;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
      Dm.Qtemp1.first;
      while not Dm.Qtemp1.Eof do
      begin
      URUTAN_KE:=URUTAN_KE+1;
      with FListKelompokBiayaWilayah do
      begin
       MemData.insert;
       MemData['notrans']:=Dm.Qtemp1.fieldbyname('notrans').value;
       MemData['tanggal']:=Dm.Qtemp1.fieldbyname('tanggal').value;
       MemData['jumlah']:=Dm.Qtemp1.fieldbyname('jumlah').value;
       MemData['keterangan']:=Dm.Qtemp1.fieldbyname('keterangan').value;
       MemData['sumber']:=cbSumber.text;
       MemData['status']:=Dm.Qtemp1.fieldbyname('status').value;
       MemData.post;
      end;
       Dm.Qtemp1.next;
      end;
  end;
end;

procedure TFListKelompokBiayaWilayah.ActBaruExecute(Sender: TObject);
begin
  FKelompokBiayaWilayah.Clear;
  FKelompokBiayaWilayah.Status := 0;
  FKelompokBiayaWilayah.Show;
end;

procedure TFListKelompokBiayaWilayah.dxBarLargeButton5Click(Sender: TObject);
begin
  MemData.active:=false;
  MemData.active:=true;
  MemData.EmptyTable;
  RefreshGrid;
end;

procedure TFListKelompokBiayaWilayah.dxBarLargeNewClick(Sender: TObject);
begin
 with FKelompokBiayaWilayah do
 begin
   cbsumberdata.text:=cbSumber.Text;
   edNoTrans.Text:=MemData['notrans'];
   dtTrans.Date:=MemData['tanggal'];
   edJumlah.value:=MemData['jumlah'];
   MemKeterangan.Text:=MemData['keterangan'];

   RefreshGrid;
 end;

end;

procedure TFListKelompokBiayaWilayah.FormShow(Sender: TObject);
begin
  MemData.EmptyTable;
  cbSumber.ItemIndex:=0;
  dtTglAwal.EditValue := Date;
  dtTglAkhir.EditValue := Date;
end;

initialization
  RegisterClass(TFListKelompokBiayaWilayah);


end.
