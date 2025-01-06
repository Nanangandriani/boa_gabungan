unit UDaftarRekeningKoran;

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
  DynVarsEh, cxCalendar, cxButtonEdit, frxClass, frxDBSet, Data.DB, MemDS,
  DBAccess, Uni, dxBar, cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon, cxTextEdit;

type
  TFDaftarRekeningKoran = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid: TDBGridEh;
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
    dxBarManager1Bar2: TdxBar;
    btExportExcel: TdxBarLargeButton;
    btExportPDF: TdxBarLargeButton;
    dtAwal: TcxBarEditItem;
    dtAkhir: TcxBarEditItem;
    edNamaBank: TcxBarEditItem;
    btPreview: TdxBarLargeButton;
    btSearch: TdxBarLargeButton;
    edKabupaten: TcxBarEditItem;
    QDaftarRekeningKoran: TUniQuery;
    DsDaftarRekeningKoran: TDataSource;
    dsCetak: TDataSource;
    Report: TfrxReport;
    frxDBDDaftarRekeningKoran: TfrxDBDataset;
    QCetak: TUniQuery;
    edRekeningBank: TcxBarEditItem;
    QCetaknomor: TLargeintField;
    QCetakno_cek: TIntegerField;
    QCetakvoucher_no: TMemoField;
    QCetaktrans_date: TDateField;
    QCetaknm_ak_debet: TMemoField;
    QCetakhutang: TIntegerField;
    QCetakrupa_nama_ak: TMemoField;
    QCetakrupa_jum: TIntegerField;
    QCetakcatatan: TMemoField;
    QCetaksaldo_awal: TFloatField;
    QCetakkredit_bank: TFloatField;
    QCetaksetoran: TFloatField;
    QCetaksaldo_akhir: TFloatField;
    QDaftarRekeningKorannomor: TLargeintField;
    QDaftarRekeningKoranno_cek: TIntegerField;
    QDaftarRekeningKoranvoucher_no: TMemoField;
    QDaftarRekeningKorantrans_date: TDateField;
    QDaftarRekeningKorannm_ak_debet: TMemoField;
    QDaftarRekeningKoranhutang: TIntegerField;
    QDaftarRekeningKoranrupa_nama_ak: TMemoField;
    QDaftarRekeningKoranrupa_jum: TIntegerField;
    QDaftarRekeningKorancatatan: TMemoField;
    QDaftarRekeningKoransaldo_awal: TFloatField;
    QDaftarRekeningKorankredit_bank: TFloatField;
    QDaftarRekeningKoransetoran: TFloatField;
    QDaftarRekeningKoransaldo_akhir: TFloatField;
    procedure btPreviewClick(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edNamaBankPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vRekeningBank, vNamaBank : String ;
  end;

function FDaftarRekeningKoran: TFDaftarRekeningKoran;
//var
//  FDaftarRekeningKoran: TFDaftarRekeningKoran;

implementation

{$R *.dfm}

uses UMasterData, UHomeLogin, UMy_Function, UHomeSreen;
var
  realfrekkoran : TFDaftarRekeningKoran;
// implementasi function
function FDaftarRekeningKoran: TFDaftarRekeningKoran;
begin
  if realfrekkoran <> nil then
    FDaftarRekeningKoran:= realfrekkoran
  else
    Application.CreateForm(TFDaftarRekeningKoran, Result);
end;


procedure TFDaftarRekeningKoran.btPreviewClick(Sender: TObject);
begin
  if Length(edNamaBank.EditValue)=0 then
  begin
    ShowMessage('silakan Pilih Bank !!!');
    Exit;
  end;

  if Length(edNamaBank.EditValue)<>0 then
  begin
   with QCetak do
   begin
       close;
       sql.Clear;
       sql.add(' select *, round(cast(sum(saldo_awal+setoran-kredit_bank) over (ORDER BY nomor asc ) as '+
               ' numeric),2) saldo_akhir from (select "row_number"() over (order by "trans_date", '+
               ' urutan_trans, urutan_vouch)+1 nomor,  "no_cek", "voucher_no", "trans_date", "nm_ak_debet", '+
               ' "hutang", "rupa_nama_ak", "rupa_jum", "catatan", "saldo_awal" , "kredit_bank", "setoran" '+
               ' FROM (SELECT xx.* FROM '+
               ' (SELECT 0 as no_cek, aa."voucher_no", aa."trans_date", '''' as nm_ak_debet, 0 as hutang,'+
               '  '''' as rupa_nama_ak, 0 as rupa_jum, case when urutan_trans=1 then bb.catatan else '+
               ' cc.catatan end catatan, 0  as saldo_awal, case when jum_kredit is null then 0 else '+
               ' jum_kredit end kredit_bank, case when jum_debet is null then 0 else jum_debet end setoran, '+
               ' urutan_trans, urutan_vouch from (SELECT a."voucher_no", "trans_date", order_no as '+
               ' urutan_vouch, 1 as urutan_trans  from "public"."t_cash_bank_acceptance" a '+
               ' WHERE "module_id"=''3'' and "account_number_bank"='+QuotedStr(vRekeningBank)+' '+
               ' and a."trans_date" between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' '+
               ' AND a.deleted_at is null '+
               ' UNION ALL '+
               ' SELECT a."voucher_no", "trans_date", order_no as urutan_vouch, 2 as urutan_trans '+
               ' from "public"."t_cash_bank_expenditure" a '+
               ' WHERE "module_id"=''5'' and  "bank_norek"='+QuotedStr(vRekeningBank)+' '+
               ' and a."trans_date" between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' '+
               ' AND a.deleted_at is null) aa '+
               // debit
               ' LEFT JOIN (SELECT a."voucher_no", jum_debet, name_cust as catatan from '+
               ' "public"."t_cash_bank_acceptance"  a '+
               ' LEFT JOIN (SELECT "voucher_no", "code_account" as kd_akun, sum("paid_amount") as jum_debet '+
               ' from "t_cash_bank_acceptance_det" where "position"=''D'' GROUP BY "voucher_no", '+
               ' "code_account")  b ON a."voucher_no"=b."voucher_no" '+
               ' WHERE "module_id"=''3'' and "account_number_bank"='+QuotedStr(vRekeningBank)+' and '+
               ' a."trans_date" between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' '+
               ' AND a.deleted_at is null) bb ON aa."voucher_no"=bb."voucher_no" '+
               // Kredit
               ' LEFT JOIN (SELECT a."voucher_no", jum_kredit, supplier_name as catatan '+
               ' from "public"."t_cash_bank_expenditure"  a '+
               ' LEFT JOIN (SELECT "no_voucher" as voucher_no, "code_account" as kd_akun, '+
               ' sum("paid_amount") as jum_kredit from "t_cash_bank_expenditure_det" '+
               ' where "position"=''K'' GROUP BY "voucher_no", "code_account")  b '+
               ' ON a."voucher_no"=b."voucher_no" '+
               ' WHERE "module_id"=''5'' and  "bank_norek"='+QuotedStr(vRekeningBank)+' and '+
               ' a."trans_date" between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' '+
               ' AND a.deleted_at is null) cc ON aa."voucher_no"=cc."voucher_no"  )xx '+
               ' ORDER BY "trans_date",urutan_trans, urutan_vouch asc)kk '+
               ' UNION ALL '+
               ' select 1 nomor,0 as "no_cek", '''' as "voucher_no", null as "trans_date", '+
               ' '''' as "nm_ak_debet", 0 as "hutang", '''' as "rupa_nama_ak", 0 as "rupa_jum", '+
               ' '''' as "catatan", saldo_akhir as saldo_awal, 0 as "kredit_bank", 0 as "setoran" '+
               ' FROM (select saldo_akhir from '+
               ' "public"."get_bank_saldoakhir"('+QuotedStr(vRekeningBank)+','+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue-1))+'))x)xx '+
               ' ORDER BY nomor ASC ');
       open;
   end;
  end;

 if QCetak.RecordCount=0 then
 begin
  showmessage('Tidak ada data yang bisa dicetak !');
  exit;
 end;

 if QCetak.RecordCount<>0 then
 begin
   cLocation := ExtractFilePath(Application.ExeName);





   //ShowMessage(cLocation);
   Report.LoadFromFile(cLocation +'report/rpt_cek_bulan'+ '.fr3');
   SetMemo(Report,'njudul','DAFTAR CEK BULAN : '+formatdatetime('mmmm',dtAwal.EditValue)+' '+formatdatetime('yyyy',dtAwal.EditValue)+'');
   SetMemo(Report,'no_rek',vRekeningBank);
   SetMemo(Report,'nama_bank',vNamaBank);
   SetMemo(Report,'nprsh',FHomeLogin.vNamaPRSH);
   SetMemo(Report,'tanggal',''+formatdatetime('dd-mm-yyyy',dtAwal.EditValue)+' s/d '+formatdatetime('dd-mm-yyyy',dtAkhir.EditValue));
   //Report.DesignReport();
   Report.ShowReport();
 end;
end;


procedure TFDaftarRekeningKoran.btSearchClick(Sender: TObject);
begin
  if Length(edNamaBank.EditValue)=0 then
  begin
    ShowMessage('silakan Pilih Bank !!!');
    Exit;
  end;

  if Length(edNamaBank.EditValue)<>0 then
  begin
  DBGrid.StartLoadingStatus();
  try
   with QDaftarRekeningKoran do
   begin
       close;
       sql.Clear;
       sql.add(' select *, round(cast(sum(saldo_awal+setoran-kredit_bank) over (ORDER BY nomor asc ) as '+
               ' numeric),2) saldo_akhir from (select "row_number"() over (order by "trans_date", '+
               ' urutan_trans, urutan_vouch)+1 nomor,  "no_cek", "voucher_no", "trans_date", "nm_ak_debet", '+
               ' "hutang", "rupa_nama_ak", "rupa_jum", "catatan", "saldo_awal" , "kredit_bank", "setoran" '+
               ' FROM (SELECT xx.* FROM '+
               ' (SELECT 0 as no_cek, aa."voucher_no", aa."trans_date", '''' as nm_ak_debet, 0 as hutang,'+
               '  '''' as rupa_nama_ak, 0 as rupa_jum, case when urutan_trans=1 then bb.catatan else '+
               ' cc.catatan end catatan, 0  as saldo_awal, case when jum_kredit is null then 0 else '+
               ' jum_kredit end kredit_bank, case when jum_debet is null then 0 else jum_debet end setoran, '+
               ' urutan_trans, urutan_vouch from (SELECT a."voucher_no", "trans_date", order_no as '+
               ' urutan_vouch, 1 as urutan_trans  from "public"."t_cash_bank_acceptance" a '+
               ' WHERE "module_id"=''3'' and "account_number_bank"='+QuotedStr(vRekeningBank)+' '+
               ' and a."trans_date" between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' '+
               ' AND a.deleted_at is null '+
               ' UNION ALL '+
               ' SELECT a."voucher_no", "trans_date", order_no as urutan_vouch, 2 as urutan_trans '+
               ' from "public"."t_cash_bank_expenditure" a '+
               ' WHERE "module_id"=''5'' and  "bank_norek"='+QuotedStr(vRekeningBank)+' '+
               ' and a."trans_date" between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' '+
               ' AND a.deleted_at is null) aa '+
               // debit
               ' LEFT JOIN (SELECT a."voucher_no", jum_debet, name_cust as catatan from '+
               ' "public"."t_cash_bank_acceptance"  a '+
               ' LEFT JOIN (SELECT "voucher_no", "code_account" as kd_akun, sum("paid_amount") as jum_debet '+
               ' from "t_cash_bank_acceptance_det" where "position"=''D'' GROUP BY "voucher_no", '+
               ' "code_account")  b ON a."voucher_no"=b."voucher_no" '+
               ' WHERE "module_id"=''3'' and "account_number_bank"='+QuotedStr(vRekeningBank)+' and '+
               ' a."trans_date" between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' '+
               ' AND a.deleted_at is null) bb ON aa."voucher_no"=bb."voucher_no" '+
               // Kredit
               ' LEFT JOIN (SELECT a."voucher_no", jum_kredit, supplier_name as catatan '+
               ' from "public"."t_cash_bank_expenditure"  a '+
               ' LEFT JOIN (SELECT "no_voucher" as voucher_no, "code_account" as kd_akun, '+
               ' sum("paid_amount") as jum_kredit from "t_cash_bank_expenditure_det" '+
               ' where "position"=''K'' GROUP BY "voucher_no", "code_account")  b '+
               ' ON a."voucher_no"=b."voucher_no" '+
               ' WHERE "module_id"=''5'' and  "bank_norek"='+QuotedStr(vRekeningBank)+' and '+
               ' a."trans_date" between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' '+
               ' AND a.deleted_at is null) cc ON aa."voucher_no"=cc."voucher_no"  )xx '+
               ' ORDER BY "trans_date",urutan_trans, urutan_vouch asc)kk '+
               ' UNION ALL '+
               ' select 1 nomor,0 as "no_cek", '''' as "voucher_no", null as "trans_date", '+
               ' '''' as "nm_ak_debet", 0 as "hutang", '''' as "rupa_nama_ak", 0 as "rupa_jum", '+
               ' '''' as "catatan", saldo_akhir as saldo_awal, 0 as "kredit_bank", 0 as "setoran" '+
               ' FROM (select saldo_akhir from '+
               ' "public"."get_bank_saldoakhir"('+QuotedStr(vRekeningBank)+','+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue-1))+'))x)xx '+
               ' ORDER BY nomor ASC ');
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
  end;
end;

procedure TFDaftarRekeningKoran.edNamaBankPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Bank';
  FMasterData.vcall:='rekening_koran';
  FMasterData.update_grid('rekening_no','bank_name','currency','t_Bank','WHERE	deleted_at IS NULL ORDER BY id desc');
  FMasterData.ShowModal;
end;

procedure TFDaftarRekeningKoran.FormCreate(Sender: TObject);
begin
  realfrekkoran:=self;
end;

procedure TFDaftarRekeningKoran.FormDestroy(Sender: TObject);
begin
  realfrekkoran:=nil;
end;

procedure TFDaftarRekeningKoran.FormShow(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edNamaBank.EditValue := '';
  edRekeningBank.EditValue := '';
  vNamaBank:='';
  vRekeningBank:='';
end;

initialization
  RegisterClass(TFDaftarRekeningKoran);


end.
