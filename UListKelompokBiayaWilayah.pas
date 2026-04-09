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
    MemMasterData: TMemTableEh;
    DSMemData: TDataSource;
    dtTglAwal: TcxBarEditItem;
    dtTglAkhir: TcxBarEditItem;
    MemMasterDatanotrans: TStringField;
    MemMasterDatatanggal: TDateField;
    MemMasterDatajumlah: TCurrencyField;
    MemMasterDataketerangan: TStringField;
    MemMasterDatasumber: TStringField;
    MemMasterDatastatus: TStringField;
    procedure FormShow(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure cbSumberChange(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
  private
    vSumberData : string;
    { Private declarations }
    procedure RefreshGrid;
  public
    { Public declarations }
  end;

var
  FListKelompokBiayaWilayah: TFListKelompokBiayaWilayah;

implementation

{$R *.dfm}

uses UKelompokBiayaWilayah, UDataModule, UHomeLogin;

function CekRecord(AVoucherNo: string): Integer;
begin
  with dm.Qtemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text := ' SELECT 1 FROM public.t_cost_detail '+
                ' WHERE voucher_no = :voucher_no '+
                ' LIMIT 1';
    ParamByName('voucher_no').AsString := AVoucherNo;
    Open;

    if IsEmpty then
      Result := 0  // belum ada
    else
      Result := 1; // sudah ada
  end;
end;

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
            ' CASE WHEN EXISTS (SELECT 1 FROM t_cost_detail b '+
            ' WHERE b.voucher_no = a.trans_no) THEN ''Lengkap'' '+
            ' ELSE ''Belum Lengkap'' END AS status '+
            ' from t_purchase_invoice a'+
            ' Left join t_supplier b on a.supplier_code=b.supplier_code '+
            ' left join t_ak_account c on a.account_code=c.code '+
            ' left join t_ak_account d on a.account_um_code=d.code '+
            ' left join t_ref_item_receive e on a.ref_code=e.ref_code '+
            ' where a.deleted_at is null and '+
            ' trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTglAwal.EditValue))+' and '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTglAkhir.EditValue))+' '+
            ' order by a.trans_no, trans_date desc   --PEMBELIAN ');
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
            ' to_getout as keterangan, '+
            ' CASE WHEN EXISTS (SELECT 1 FROM t_cost_detail b '+
            ' WHERE b.voucher_no = a.voucher_no) THEN ''Lengkap'' '+
            ' ELSE ''Belum Lengkap'' END AS status '+
            ' FROM t_cash_bank_expenditure a '+
            ' LEFT JOIN t_master_trans_account b on a."trans_type_code"=b.code_trans '+
            ' LEFT JOIN t_source_payment c on a."additional_code"=c.code '+
            ' LEFT JOIN t_currency d on a."currency"=d."currency_code" '+
            ' LEFT JOIN t_settlement_data_source e  on a."ref_no"=e."code" '+
            ' WHERE a.deleted_at is null and trans_type_code not in (''5.001'',''6.001'') and '+
            ' trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTglAwal.EditValue))+' and '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTglAkhir.EditValue))+' '+
            ' ORDER BY voucher_no,trans_date desc -- PENGELUARAN KAS DAN BANK');
    open;
  end;
  end;

  MemMasterData.EmptyTable;
  MemMasterData.active:=false;
  MemMasterData.active:=true;

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
      //ShowMessage(Dm.Qtemp1.fieldbyname('notrans').value) ;
       MemMasterData.insert;
       MemMasterData['notrans']:=Dm.Qtemp1.fieldbyname('notrans').value;
       MemMasterData['tanggal']:=Dm.Qtemp1.fieldbyname('tanggal').value;
       MemMasterData['jumlah']:=Dm.Qtemp1.fieldbyname('jumlah').value;
       MemMasterData['keterangan']:=Dm.Qtemp1.fieldbyname('keterangan').value;
       MemMasterData['sumber']:=cbSumber.text;
       MemMasterData['status']:=Dm.Qtemp1.fieldbyname('status').value;
       MemMasterData.post;
       Dm.Qtemp1.next;
      end;
      //ShowMessage('Total Record: ' + IntToStr(MemMasterData.RecordCount));
  end;
end;

procedure TFListKelompokBiayaWilayah.ActBaruExecute(Sender: TObject);
begin
if MemMasterData.RecordCount=0 then
begin
  ShowMessage('Maaf, Tidak Ditemukan Data !!!');
  exit;
end;

if MemMasterData.RecordCount<>0 then
begin
   if CekRecord(MemMasterData['notrans'])=1 then
   begin
     ShowMessage('Data Sudah Pernah Diproses, Silkan Melalui Menu Update...!!!');
     exit;
   end;

 with FKelompokBiayaWilayah do
 begin
   Clear;
   Status := 0 ;
   cbsumberdata.text:=vSumberData;
   //cbsumberdata.ItemIndex:= FListKelompokBiayaWilayah.cbSumber.ItemIndex;
   edNoTrans.Text:=MemMasterData['notrans'];
   dtTrans.Date:=MemMasterData['tanggal'];
   edJumlah.Value := MemMasterData.FieldByName('jumlah').AsFloat;
   MemKeterangan.Text:=MemMasterData['keterangan'];
   FKelompokBiayaWilayah.RefreshGrid;
   Show;
 end;
end;

end;

procedure TFListKelompokBiayaWilayah.ActDelExecute(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if MessageDlg ('Apa Anda Yakin Hapus Data Biaya '+MemMasterData['notrans']+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        with dm.Qtemp do
        begin
          Close;
          SQL.Clear;
          SQL.Text:=' UPDATE "public"."t_cost_detail" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "voucher_no"='+QuotedStr(MemMasterData['notrans'])+';';
          ExecSQL;
        end;
        MessageDlg('Hapus Berhasil..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
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

procedure TFListKelompokBiayaWilayah.ActROExecute(Sender: TObject);
begin
  dxBarLargeButton5Click(Sender);
end;

procedure TFListKelompokBiayaWilayah.ActUpdateExecute(Sender: TObject);
begin
if MemMasterData.RecordCount=0 then
begin
  ShowMessage('Maaf, Tidak Ditemukan Data !!!');
  exit;
end;

if MemMasterData.RecordCount<>0 then
begin
 with FKelompokBiayaWilayah do
 begin
   Clear;
   Status := 1;
   cbsumberdata.text:=vSumberData;
   //cbsumberdata.ItemIndex:= FListKelompokBiayaWilayah.cbSumber.ItemIndex;
   edNoTrans.Text:=MemMasterData['notrans'];
   dtTrans.Date:=MemMasterData['tanggal'];
   edJumlah.Value := MemMasterData.FieldByName('jumlah').AsFloat;
   MemKeterangan.Text:=MemMasterData['keterangan'];
   FKelompokBiayaWilayah.RefreshGrid;
   Show;
 end;
end;

end;

procedure TFListKelompokBiayaWilayah.cbSumberChange(Sender: TObject);
begin
  vSumberData:=cbSumber.Text;
end;

procedure TFListKelompokBiayaWilayah.dxBarLargeButton5Click(Sender: TObject);
begin
  MemMasterData.active:=false;
  MemMasterData.active:=true;
  MemMasterData.EmptyTable;
  RefreshGrid;
end;

procedure TFListKelompokBiayaWilayah.FormShow(Sender: TObject);
begin
  cbSumber.ItemIndex:=0;
  dtTglAwal.EditValue := Date;
  dtTglAkhir.EditValue := Date;

  MemMasterData.active:=false;
  MemMasterData.active:=true;
end;

initialization
  RegisterClass(TFListKelompokBiayaWilayah);


end.
