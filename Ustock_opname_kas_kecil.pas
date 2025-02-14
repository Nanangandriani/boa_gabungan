unit Ustock_opname_kas_kecil;

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
  DynVarsEh, cxCalendar, cxButtonEdit, cxCheckBox, Data.DB, MemDS, DBAccess,
  Uni, frxClass, frxDBSet, dxBar, cxBarEditItem, cxClasses, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Vcl.ExtCtrls, dxRibbon;

type
  TFstock_opname_kas_kecil = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    DBGridStockOpnameKasKecil: TDBGridEh;
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
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    BProduksi: TdxBarButton;
    BNonProduksi: TdxBarButton;
    BClosed: TdxBarButton;
    dxPrint: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    CbSupplier: TcxBarEditItem;
    CbBarang: TcxBarEditItem;
    Cxppn: TcxBarEditItem;
    BtnClear: TdxBarLargeButton;
    txtkdacckredit1: TdxBarEdit;
    dxBarEdit3: TdxBarEdit;
    dxBarEdit2: TdxBarEdit;
    dxBarEdit4: TdxBarEdit;
    cxBarEditItem1: TcxBarEditItem;
    DTtgl: TcxBarEditItem;
    DTPick2: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    frxDBDatasetPers: TfrxDBDataset;
    QPerusahaan: TUniQuery;
    QPerusahaancompany_code: TStringField;
    QPerusahaancompany_name: TStringField;
    QPerusahaanaddress: TStringField;
    QPerusahaantelp: TStringField;
    QPerusahaanemail: TStringField;
    QPerusahaannpwp: TStringField;
    QPerusahaancity: TStringField;
    QPerusahaanaddress2: TStringField;
    QPerusahaanid: TGuidField;
    QPerusahaancreated_at: TDateTimeField;
    QPerusahaancreated_by: TStringField;
    QPerusahaanupdated_at: TDateTimeField;
    QPerusahaanupdated_by: TStringField;
    QPerusahaandeleted_at: TDateTimeField;
    QPerusahaandeleted_by: TStringField;
    QPerusahaantype_of_business: TStringField;
    QPerusahaanlatitude: TStringField;
    QPerusahaanlongitude: TStringField;
    QPerusahaantax_status: TBooleanField;
    QPerusahaancurrency: TStringField;
    QDataKasbon: TUniQuery;
    DSDataKasbon: TDataSource;
    frxDBDataset_uang_cash: TfrxDBDataset;
    Quang_cash: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
    Qtemp: TUniQuery;
    frxReport_stock_opname: TfrxReport;
    dxBarLargeButton2: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure DTtglChange(Sender: TObject);
    procedure frxReport_stock_opnameGetValue(const VarName: string;
      var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    tgl_htg,tgl_mulai,tgl_cutoff,tgl_saldobank:tdatetime;
  end;

//var
  //Fstock_opname_kas_kecil: TFstock_opname_kas_kecil;

function
  Fstock_opname_kas_kecil: TFstock_opname_kas_kecil;

var
  RealFstock_opname_kas_kecil: TFstock_opname_kas_kecil;
  jum_saldo_awal,jum_pengisian_kas,SubTotalSaldo,jum_pengeluaran_kas_kecil,saldo_akhir,nilai_selisih :real;
  tgl_mulai,awalDate,akhirDate :TDateTime;
  periode,tgl_pengisian_kas,nama_selisih :string;


implementation

{$R *.dfm}

uses UDataModule, Udata_uang_kas_kecil;

function Fstock_opname_kas_kecil: TFstock_opname_kas_kecil;
begin
  if RealFstock_opname_kas_kecil <> nil then
  Fstock_opname_kas_kecil := RealFstock_opname_kas_kecil
  else
  Application.CreateForm(TFstock_opname_kas_kecil, Result);
end;

procedure TFstock_opname_kas_kecil.DTtglChange(Sender: TObject);
begin
  with Qdatakasbon do
  begin
    close;
    sql.Clear;
    sql.Text:='select DISTINCT a.bon_no voucher_bon,a.amount jumlah_bon, '+
              'case when b.jumlah_kas is null then 0 else b.jumlah_kas end jumlah_kas, '+
              'a.given_to kepada,a.trans_date tgltrans,a.remark from (select * from t_kasbon where petty_cash <>0 )a '+
              'left join (select a.bon_no,sum(amount)jumlah_kas from t_cash_bank_expenditure a '+
              'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher GROUP BY bon_no)b on a.bon_no=b.bon_no '+
              'where a.bon_no in (select bon_no from t_kasbon where petty_cash>0 EXCEPT '+
              'select bon_no from t_cash_bank_expenditure a '+
              'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) and '+
              'a.trans_date='+QuotedStr(FormatDateTime('yyyy-mm-dd', DTtgl.EditValue))+' order by a.bon_no';

    open;
  end;
end;

procedure TFstock_opname_kas_kecil.dxBarLargeButton2Click(Sender: TObject);
begin
    DBGridStockOpnameKasKecil.StartLoadingStatus();
    DBGridStockOpnameKasKecil.FinishLoadingStatus();
end;

procedure TFstock_opname_kas_kecil.dxPrintClick(Sender: TObject);
var
  saldo_awal,sld_debit,sld_kredit,sld_kredit2:real;
  dd,mm,yy:word;
  mydate,tgl1: TDateTime;
  hari :String;
begin
   with dm.qtemp do
      begin
        close;
        sql.Clear;
        sql.Add('select * from t_tmpsyst');
        open;
      end;
      tgl_htg:=dm.qtemp.FieldByName('debt_date').asdatetime;
      tgl_mulai:=dm.qtemp.FieldByName('start_date').asdatetime;
      tgl_saldobank:=dm.qtemp.FieldByName('bankbalance_date').asdatetime;

   hari:= FormatDateTime('dddd', DTtgl.EditValue);
   mydate:=DTtgl.EditValue;
    if (hari='Monday') OR (hari='Senin') then
    begin
      awalDate:= mydate - 1;
      akhirDate:= mydate + 5;
    end
    else if (hari='Tuesday') OR (hari='Selasa') then
    begin
      awalDate:= mydate - 2;
      akhirDate:= mydate + 4;
    end
    else if (hari='Wednesday') OR (hari='Rabu') then
    begin
      awalDate:= mydate - 3;
      akhirDate:= mydate + 3;
    end
    else if (hari='Thursday') OR (hari='Kamis') then
    begin
      awalDate:= mydate - 4;
      akhirDate:= mydate + 2;
    end
    else if (hari='Friday') OR (hari='Jumat') then
    begin
      awalDate:= mydate - 5;
      akhirDate:= mydate + 1;
    end
    else if (hari='Saturday') OR (hari='Sabtu') then
    begin
      awalDate:= mydate - 6;
      akhirDate:= mydate;
    end
    else if (hari='Sunday') OR (hari='Minggu') then
    begin
      awalDate:= mydate;
      akhirDate:= mydate + 6;
    end;

    periode:= formatdatetime('dd mmmm yyyy',awalDate)+' s/d '+formatdatetime('dd mmmm yyyy',akhirDate);

    tgl1:=tgl_mulai;

    dm.Qtemp.Close;
    dm.Qtemp.SQL.Clear;
    dm.Qtemp.SQL.add('select code as kodesp,balance from t_ak_account where code=''1101.02'' ');
    dm.Qtemp.open;

    if dm.Qtemp.RecordCount<>0 then
    saldo_awal:=dm.Qtemp.FieldByName('balance').Value
    else
    saldo_awal:=0;


    with dm.Qtemp2 do
    begin
      close;
      sql.clear;
      sql.Text:='select x.kodesp,(case when a.jum_debit is null then 0 else a.jum_debit end)jum_debit ,(case when b.jum_kredit is null then 0 else b.jum_kredit end)jum_kredit from '+
                '(select code as kodesp from t_ak_account where code=''1101.02'')x '+
                'left join(select b.code_account as kodesp,(case when sum(paid_amount)is null then 0 else sum(paid_amount) end)jum_debit from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b on a.voucher_no=b.voucher_no '+
                'where (a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',awalDate-1))+') and b.code_account=''1101.02'' and position=''D''  group by kodesp order by kodesp)a on a.kodesp=x.kodesp '+
                'left join (select b.code_account as kodesp,(case when sum(paid_amount) is null then 0 else sum(paid_amount) end)jum_kredit from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b on a.voucher_no=b.voucher_no '+
                'where (a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',awalDate-1))+') and b.code_account=''1101.02'' and position=''K''  group by kodesp order by kodesp)b on b.kodesp=x.kodesp ';
      open;
    end;

    if dm.Qtemp2.RecordCount<>0 then
    begin
      sld_debit:=dm.Qtemp2.fieldbyname('jum_debit').AsFloat;
      sld_kredit:=dm.Qtemp2.fieldbyname('jum_kredit').AsFloat;
      //sld_kredit2:=dm.QTemp2.FieldByName('jum_kredit2').AsFloat;
    end
    else
    begin
      sld_debit:=0;
      sld_kredit:=0;
      //sld_kredit2:=0; //22-01-2025
    end;

    jum_saldo_awal:=saldo_awal+sld_debit-sld_kredit;
    jum_saldo_awal:=saldo_awal+sld_debit-sld_kredit-sld_kredit2; //22-01-2025

    with DM.QTemp2 do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select array_to_string(ARRAY(select DISTINCT bulan(a.trans_date) tgltrans from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b on a.voucher_no=b.voucher_no '+
                'where code_account=(select code from t_ak_account where account_name=''KAS KECIL'') and position=''D'' '+
                'and trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',awalDate))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',DTtgl.EditValue))+'), '', '') tgltrans,sum(a.paid_amount) jumlah from '+
                '(select * from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b on a.voucher_no=b.voucher_no) a '+
                'where code_account=(select code from t_ak_account where account_name=''KAS KECIL'') and position=''D'' '+
                'and trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',awalDate))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',DTtgl.EditValue));
    end;


    if DM.QTemp2.RecordCount<>0 then
    begin
      jum_pengisian_kas:= DM.QTemp2.FieldByName('jumlah').AsFloat;
      tgl_pengisian_kas:= DM.QTemp2.FieldByName('tgltrans').AsString;
    end
    else
    begin
      jum_pengisian_kas:= 0;
      tgl_pengisian_kas:= '';
    end;

    SubTotalSaldo:= jum_saldo_awal + jum_pengisian_kas;

    with dm.QTemp3 do
    begin
      close;
      sql.Clear;
       sql.Text:='select sum(paid_amount) tot_kredit from (select * from t_petty_cash a '+
                 'INNER JOIN t_petty_cash_det b on a.voucher_no=b.voucher_no)a where position=''K'' and code_account=''1101.02'' '+
                 'and trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',awalDate)) +' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',DTtgl.EditValue));
      Open;
    end;

    jum_pengeluaran_kas_kecil:= DM.QTemp3.FieldByName('tot_kredit').AsFloat;

    saldo_akhir:= SubTotalSaldo - jum_pengeluaran_kas_kecil ;

    with Quang_cash do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select * from t_petty_cash_money_data WHERE trans_date='+QuotedStr(formatdatetime('yyyy-mm-dd',DTtgl.EditValue));
      Open;
    end;

    with Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select sum(a.amount) tot_bon from t_kasbon a '+
                'left join (SELECT * FROM t_petty_cash b '+
                'INNER JOIN t_petty_cash_det c on b.voucher_no=c.voucher_no) x on a.bon_no=x.voucher_no_receipt where a.bon_no in '+
                '(select bon_no from t_kasbon where petty_cash>0 EXCEPT select voucher_no_receipt from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b on a.voucher_no=b.voucher_no) and a.trans_date='+QuotedStr(FormatDateTime('yyyy-mm-dd', DTtgl.EditValue))+' ';
      open;
    end;

    nilai_selisih:=  Quang_cash.FieldByName('total_money').AsFloat-(saldo_akhir-Qtemp.FieldByName('tot_bon').AsFloat) ;
    if nilai_selisih=0 then
    begin
      nama_selisih:='Balance';
    end
    else if nilai_selisih < 0 then
    begin
      nama_selisih:= 'Selisih Lebih';
    end
    else
    begin
      nama_selisih:= 'Selisih Kurang';
    end;

    frxReport_stock_opname.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Lap_Stock_Opname_Kas_Kecil.fr3');
    frxReport_stock_opname.ReportOptions.Name:='Laporan Stock Opname Kas Kecil';
    frxReport_stock_opname.ShowReport();
end;

procedure TFstock_opname_kas_kecil.DxRefreshClick(Sender: TObject);
begin
   Fdata_uang_cash_kecil.Clear;
   Fdata_uang_cash_kecil.DTtanggal.Date:= DTtgl.EditValue;
   Fdata_uang_cash_kecil.DTtanggalChange(sender);
   Fdata_uang_cash_kecil.Show;
end;

procedure TFstock_opname_kas_kecil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TFstock_opname_kas_kecil.FormCreate(Sender: TObject);
begin
   RealFstock_opname_kas_kecil:=self;
end;

procedure TFstock_opname_kas_kecil.FormDestroy(Sender: TObject);
begin
   RealFstock_opname_kas_kecil:=Nil;
end;

procedure TFstock_opname_kas_kecil.FormShow(Sender: TObject);
begin
    DTtgl.EditValue:=Date();
end;

procedure TFstock_opname_kas_kecil.frxReport_stock_opnameGetValue(
  const VarName: string; var Value: Variant);
  var date_awal,date_akhir,tgl_pilih : string;
begin
   with dm.QTemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='select bulan('+QuotedStr(formatdatetime('yyyy-mm-dd',awalDate))+') date_awal,'+
              'bulan('+QuotedStr(formatdatetime('yyyy-mm-dd',akhirDate))+') date_akhir,'+
              'bulan('+QuotedStr(formatdatetime('yyyy-mm-dd',DTtgl.EditValue))+') tgl_pilih';
    open;
  end;
  date_awal:= dm.QTemp2.FieldByName('date_awal').AsString;
  date_akhir:= dm.QTemp2.FieldByName('date_akhir').AsString;
  tgl_pilih:= dm.QTemp2.FieldByName('tgl_pilih').AsString;

   periode:= formatdatetime('dd mmmm yyyy',awalDate)+' s/d '+formatdatetime('dd mmmm yyyy',akhirDate);

  if CompareText(VarName, 'parSaldoAWal') = 0 then
  Value := jum_saldo_awal;

  if CompareText(VarName, 'parJumPengisanKas') = 0 then
  Value := jum_pengisian_kas;

  if CompareText(VarName, 'parTglPengisianKas') = 0 then
  Value := tgl_pengisian_kas;

  if CompareText(VarName, 'partglSaldoAwal') = 0 then
  Value := date_awal;

  if CompareText(VarName, 'parTgl') = 0 then
  Value := 'Periode '+tgl_pilih;

  if CompareText(VarName, 'parSubTotalSaldo') = 0 then
  Value := SubTotalSaldo;

  if CompareText(VarName, 'parPeriode') = 0 then
  Value := date_awal +' s/d' +date_akhir;

  if CompareText(VarName, 'parAkhirPeriode') = 0 then
  Value := date_akhir;

  if CompareText(VarName, 'parJumPengeluaranKasKecil') = 0 then
  Value := jum_pengeluaran_kas_kecil;

  if CompareText(VarName, 'parSaldoAkhir') = 0 then
  Value := saldo_akhir;

  if CompareText(VarName, 'parSelisih') = 0 then
  Value := nama_selisih;

  if CompareText(VarName, 'parNilaiSelisih') = 0 then
  Value := nilai_selisih;

end;

Initialization
  RegisterClasses([TFstock_opname_kas_kecil]);

end.
