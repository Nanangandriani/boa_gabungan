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
  GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Vcl.ExtCtrls, dxRibbon,
  Vcl.ComCtrls, Vcl.StdCtrls, RzPanel, System.DateUtils;

type
  TFstock_opname_kas_kecil = class(TForm)
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
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
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
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    dtAwal: TDateTimePicker;
    dtAkhir: TDateTimePicker;
    Cari: TRzBitBtn;
    QStockOpname: TUniQuery;
    DateField1: TDateField;
    FloatField1: TFloatField;
    StringField1: TStringField;
    DSStockOpname: TDataSource;
    txtkdacckredit: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure frxReport_stock_opnameGetValue(const VarName: string;
      var Value: Variant);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActPrintExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure CariClick(Sender: TObject);
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

procedure TFstock_opname_kas_kecil.ActBaruExecute(Sender: TObject);
begin
   Fdata_uang_cash_kecil.Clear;
   Fdata_uang_cash_kecil.DTtanggal.Date:= now;
   Fdata_uang_cash_kecil.DTtanggalChange(sender);
   Fdata_uang_cash_kecil.Show;
end;

procedure TFstock_opname_kas_kecil.ActPrintExecute(Sender: TObject);
var
  saldo_awal,sld_debit,sld_kredit,sld_kredit2:real;
  dd,mm,yy:word;
  mydate: TDateTime;
  hari :String;
  bulan_sa, tahun_sa : string;
  tgl_sa: TDateTime;
  tglawal,tglakhir: string;
  tgl1,dt_awal:tdate;
begin

  if QStockOpname.RecordCount=0 then
  begin
    ShowMessage('Tidak Ada Data Yang Ditemukan !!!');
    Exit;
  end;
    with dm.qtemp do
    begin
      close;
      sql.Clear;
      sql.Add('select * from t_tmpsyst');
      open;
    end;
    tgl_htg:=dm.qtemp.FieldByName('debt_date').asdatetime;

    tgl_saldobank:=dm.qtemp.FieldByName('bankbalance_date').asdatetime;

    //cari saldo tutup buku
    tgl_sa := dtAwal.date;
    tgl_sa := IncMonth(tgl_sa, -1); // mundur 1 bulan

    tgl1 := StartOfTheMonth(dtAwal.date);
    bulan_sa := FormatDateTime('mm', tgl_sa);   // hasil: '04'
    tahun_sa := FormatDateTime('yyyy', tgl_sa); // hasil: '2026'
    dt_awal:=dtAwal.date;



   hari:= FormatDateTime('dddd', QStockOpname.FieldByName('trans_date').value);
   mydate:=QStockOpname.FieldByName('trans_date').value;
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

    //tgl1:=tgl_mulai;

    {dm.Qtemp.Close;
    dm.Qtemp.SQL.Clear;
    dm.Qtemp.SQL.add('select code as kodesp,balance from t_ak_account where code=''1101.02'' ');
    dm.Qtemp.open;

    if dm.Qtemp.RecordCount<>0 then
    saldo_awal:=dm.Qtemp.FieldByName('balance').Value
    else
    saldo_awal:=0; }


    with dm.Qtemp2 do
    begin
      close;
      sql.clear;
      sql.Text:='select yy.kodesp,yy.balance,xx.jum_debit,xx.jum_kredit,sum(yy.balance+xx.jum_debit-xx.jum_kredit) as saldo_awal from '+
                '(select account_code as kodesp, balance from t_ak_account_balance WHERE trans_year='+QuotedStr(tahun_sa)+' and  trans_month='+QuotedStr(bulan_sa)+' and account_code='+QuotedStr(txtkdacckredit.Text)+')yy '+
                'left join '+
                '(select x.kodesp,(case when a.jum_debit is null then 0 else a.jum_debit end)jum_debit ,(case when b.jum_kredit is null then 0 else b.jum_kredit end)jum_kredit from '+
                '(select code as kodesp from t_ak_account where code='+QuotedStr(txtkdacckredit.Text)+')x '+
                'left join '+
                '(select r.code_account,(case when sum(r.paid_amount)is null then 0 else sum(r.paid_amount) end)jum_debit  from t_petty_cash_det r '+
                'INNER JOIN t_petty_cash s on r.voucher_no=s.voucher_no '+
                'where s.deleted_at is null and (s.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                'and '+QuotedStr(formatdatetime('yyyy-mm-dd',dt_awal-1)) +') '+
                'and r.code_account='+QuotedStr(txtkdacckredit.Text)+' and "position"=''D'' '+
                'group by code_account '+
                ' UNION ALL '+
                'SELECT code_account,(case when sum(paid_amount)is null then 0 else sum(paid_amount) end)jum_debit '+
                'from vexpenditure_det where "position"=''D'' and code_account='+QuotedStr(txtkdacckredit.Text)+' '+
                'and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                'and '+QuotedStr(formatdatetime('yyyy-mm-dd',dt_awal-1)) +' group by code_account '+

                //Baca Memorial
                'union all '+
                'select b.account_code as code_account, (case when sum(b.debit)is null '+
                'then 0 else sum(b.debit) end)jum_debit from t_memorial_journal a '+
                'left join t_memorial_journal_detail b on a.memo_no=b.memo_no where '+
                'b.account_code=''1101.02'' and a.deleted_at is null and b.debit<>0 and '+
                'trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                'and '+QuotedStr(formatdatetime('yyyy-mm-dd',dt_awal-1)) +' '+
                'GROUP BY b.account_code '+

                'order by code_account)a on a.code_account=x.kodesp '+
                'left join (select j.code_account,(case when sum(j.paid_amount)is null then 0 else sum(j.paid_amount) end)jum_kredit from t_petty_cash_det j '+
                'INNER JOIN t_petty_cash k on j.voucher_no=k.voucher_no '+
                'where k.deleted_at is null and (k.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                'and '+QuotedStr(formatdatetime('yyyy-mm-dd',dt_awal-1)) +') and '+
                'j.code_account='+QuotedStr(txtkdacckredit.Text)+' and "position"=''K'' '+
                'group by code_account '+

                //baca memorial
                'union all '+
                'select b.account_code as code_account, (case when sum(b.kredit)is null then 0 '+
                'else sum(b.kredit) end)jum_debit from t_memorial_journal a '+
                'left join t_memorial_journal_detail b on a.memo_no=b.memo_no '+
                'where b.account_code=''1101.02'' and a.deleted_at is null and b.kredit<>0 and '+
                'trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                'and '+QuotedStr(formatdatetime('yyyy-mm-dd',dt_awal-1)) +' '+
                ' GROUP BY b.account_code '+

                'order by code_account)b on b.code_account=x.kodesp)xx on yy.kodesp=xx.kodesp '+
                'GROUP BY  yy.kodesp,yy.balance,xx.jum_debit,xx.jum_kredit';
      {sql.Text:='select x.kodesp,(case when a.jum_debit is null then 0 else a.jum_debit end)jum_debit ,(case when b.jum_kredit is null then 0 else b.jum_kredit end)jum_kredit from '+
                '(select code as kodesp from t_ak_account where code=''1101.02'')x '+
                'left join(select b.code_account as kodesp,(case when sum(paid_amount)is null then 0 else sum(paid_amount) end)jum_debit from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b on a.voucher_no=b.voucher_no '+
                'where (a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',awalDate-1))+') and b.code_account=''1101.02'' and position=''D''  group by kodesp order by kodesp)a on a.kodesp=x.kodesp '+
                'left join (select b.code_account as kodesp,(case when sum(paid_amount) is null then 0 else sum(paid_amount) end)jum_kredit from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b on a.voucher_no=b.voucher_no '+
                'where (a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',awalDate-1))+') and b.code_account=''1101.02'' and position=''K''  group by kodesp order by kodesp)b on b.kodesp=x.kodesp ';}
      open;
    end;

    if dm.Qtemp2.RecordCount<>0 then
    begin

      saldo_awal:=dm.Qtemp2.FieldByName('balance').AsFloat;
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
                'and trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',awalDate))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',QStockOpname.FieldByName('trans_date').value))+'), '', '') tgltrans,sum(a.paid_amount) jumlah from '+
                '(select * from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b on a.voucher_no=b.voucher_no) a '+
                'where code_account=(select code from t_ak_account where account_name=''KAS KECIL'') and position=''D'' '+
                'and trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',awalDate))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',QStockOpname.FieldByName('trans_date').value));
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
                 'and trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',awalDate)) +' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',QStockOpname.FieldByName('trans_date').value));
      Open;
    end;

    jum_pengeluaran_kas_kecil:= DM.QTemp3.FieldByName('tot_kredit').AsFloat;

    saldo_akhir:= SubTotalSaldo - jum_pengeluaran_kas_kecil ;

    with Quang_cash do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select * from t_petty_cash_money_data WHERE trans_date='+QuotedStr(formatdatetime('yyyy-mm-dd',QStockOpname.FieldByName('trans_date').value));
      Open;
    end;
    with QDataKasbon do
    begin
      Close;
      Sql.Clear;
      Sql.Text:=' select DISTINCT a.voucher_no_receipt as voucher_bon,a.amount_receipt jumlah_bon, '+
                ' COALESCE(b.jumlah_kas,0) as jumlah_kas,c.needs kepada,c.trans_date tanggal, '+
                ' c.description remark from (select * from t_petty_cash_receipt_history '+
                ' where amount_receipt <>0 and approve_at is null )a left join (SELECT voucher_no_receipt bon_no, '+
                ' sum(amount_receipt) jumlah_kas from t_petty_cash where deleted_at is null and '+
                ' trans_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',QStockOpname.FieldByName('trans_date').value))+' '+
                ' GROUP BY voucher_no_receipt )b '+
                ' on a.voucher_no_receipt=b.bon_no '+
                ' LEFT JOIN (SELECT * from t_petty_cash_receipt where deleted_at is null and '+
                ' trans_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',QStockOpname.FieldByName('trans_date').value))+') c '+
                ' on a.voucher_no_receipt=c.voucher_no  where c.voucher_no is not null and '+
                ' a.amount_receipt-COALESCE(b.jumlah_kas,0)<>0 and '+
                ' c.trans_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',QStockOpname.FieldByName('trans_date').value))+' '+
                ' order by a.voucher_no_receipt';
      Open;
    end;

    with Qtemp do
    begin
      close;
      sql.Clear;
      Sql.Text:=' select SUM(a.amount_receipt-COALESCE(b.jumlah_kas,0)) as tot_bon from (select * from t_petty_cash_receipt_history '+
                ' where amount_receipt <>0 and approve_at is null )a left join (SELECT voucher_no_receipt bon_no, '+
                ' sum(amount_receipt) jumlah_kas from t_petty_cash where deleted_at is null and '+
                ' trans_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',QStockOpname.FieldByName('trans_date').value))+' '+
                ' GROUP BY voucher_no_receipt )b '+
                ' on a.voucher_no_receipt=b.bon_no '+
                ' LEFT JOIN (SELECT * from t_petty_cash_receipt where deleted_at is null and '+
                ' trans_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',QStockOpname.FieldByName('trans_date').value))+') c '+
                ' on a.voucher_no_receipt=c.voucher_no  where c.voucher_no is not null and '+
                ' a.amount_receipt-COALESCE(b.jumlah_kas,0)<>0 and '+
                ' c.trans_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',QStockOpname.FieldByName('trans_date').value));
      {sql.Text:='select sum(a.amount) tot_bon from t_kasbon a '+
                'left join (SELECT * FROM t_petty_cash b '+
                'INNER JOIN t_petty_cash_det c on b.voucher_no=c.voucher_no) x on a.bon_no=x.voucher_no_receipt where a.bon_no in '+
                '(select bon_no from t_kasbon where petty_cash>0 EXCEPT select voucher_no_receipt from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b on a.voucher_no=b.voucher_no) '+
                'and a.trans_date='+QuotedStr(FormatDateTime('yyyy-mm-dd', QStockOpname.FieldByName('trans_date').value))+' ';}
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


procedure TFstock_opname_kas_kecil.ActROExecute(Sender: TObject);
begin
  DBGridStockOpnameKasKecil.StartLoadingStatus();
  try
   with QStockOpname do
   begin
       close;
       sql.Clear;
       sql.Text:=' select trans_date, total_money, case when updated_at is not null '+
                 ' then updated_by else created_by end pic from t_petty_cash_money_data '+
                 ' order by trans_date asc ';
       open;
   end;
  finally
  DBGridStockOpnameKasKecil.FinishLoadingStatus();
  end;
end;

procedure TFstock_opname_kas_kecil.ActUpdateExecute(Sender: TObject);
begin
   Fdata_uang_cash_kecil.Clear;
   Fdata_uang_cash_kecil.DTtanggal.Date:= QStockOpname.FieldByName('trans_date').value;
   Fdata_uang_cash_kecil.DTtanggalChange(sender);
   Fdata_uang_cash_kecil.Show;
end;

procedure TFstock_opname_kas_kecil.CariClick(Sender: TObject);
begin
  DBGridStockOpnameKasKecil.StartLoadingStatus();
  try
   with QStockOpname do
   begin
       close;
       sql.Clear;
       sql.Text:=' select trans_date, total_money, case when updated_at is not null '+
                 ' then updated_by else created_by end pic from t_petty_cash_money_data '+
                 ' where trans_date between '+QuotedStr(FormatDateTime('yyyy-mm-dd', dtAwal.date))+' and '+
                 ' '+QuotedStr(FormatDateTime('yyyy-mm-dd', dtAkhir.date))+' '+
                 ' order by trans_date asc ';
       open;
   end;
  finally
  DBGridStockOpnameKasKecil.FinishLoadingStatus();
  end;
end;

procedure TFstock_opname_kas_kecil.dxBarLargeButton2Click(Sender: TObject);
begin
    DBGridStockOpnameKasKecil.StartLoadingStatus();
    DBGridStockOpnameKasKecil.FinishLoadingStatus();
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
    dtAwal.date:=Date();
    dtAkhir.date:=Date();
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
              'bulan('+QuotedStr(formatdatetime('yyyy-mm-dd',QStockOpname.FieldByName('trans_date').value))+') tgl_pilih';
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
