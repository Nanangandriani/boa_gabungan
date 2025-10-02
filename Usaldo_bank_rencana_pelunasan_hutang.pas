unit Usaldo_bank_rencana_pelunasan_hutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCalendar, cxButtonEdit, cxCheckBox, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, dxRibbon, RzButton, Vcl.ExtCtrls, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableEh, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxBar, cxBarEditItem,
  cxClasses, frxClass, frxDBSet, DataDriverEh, MemDS, DBAccess, Uni,
  cxDropDownEdit;

type
  TFsaldo_bank_rencana_pelunasan_hutang = class(TForm)
    QHut_Dagang: TUniQuery;
    DataSetDriverEh1: TDataSetDriverEh;
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
    frxDBDataset_SaldoBank: TfrxDBDataset;
    Qsaldo_bank: TUniQuery;
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
    DTPick1: TcxBarEditItem;
    DTPick2: TcxBarEditItem;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    MemKasKecilADM: TMemTableEh;
    QKasKecilADM: TUniQuery;
    DSKasKecilADM: TDataSource;
    DBGridKasKecilADM: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    frxDBDataset_HutangDagang: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxDBDataset_HutangBiaya: TfrxDBDataset;
    QHut_Biaya: TUniQuery;
    frxDBDataset_HutangAktiva: TfrxDBDataset;
    QHut_Aktiva: TUniQuery;
    frxDBDataset_NonHutang: TfrxDBDataset;
    QNon_Hutang: TUniQuery;
    cxBarEditItem2: TcxBarEditItem;
    frxDBDataset_IsiKasBesar: TfrxDBDataset;
    QIsi_KasBesar: TUniQuery;
    frxDBDataset_deposito: TfrxDBDataset;
    QDeposito: TUniQuery;
    frxReport1: TfrxReport;
    frxReport3: TfrxReport;
    frxReport4: TfrxReport;
    procedure dxPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
function
  Fsaldo_bank_rencana_pelunasan_hutang: TFsaldo_bank_rencana_pelunasan_hutang;

implementation

{$R *.dfm}


var
  RealFsaldo_bank_rencana_pelunasan_hutang: TFsaldo_bank_rencana_pelunasan_hutang;

function Fsaldo_bank_rencana_pelunasan_hutang: TFsaldo_bank_rencana_pelunasan_hutang;
begin
  if RealFsaldo_bank_rencana_pelunasan_hutang<>nil then
     Fsaldo_bank_rencana_pelunasan_hutang:=RealFsaldo_bank_rencana_pelunasan_hutang
  else
    Application.CreateForm(TFsaldo_bank_rencana_pelunasan_hutang,Result);
end;

procedure TFsaldo_bank_rencana_pelunasan_hutang.dxPrintClick(Sender: TObject);
begin
    with Qsaldo_bank do
    begin
      close;
      sql.Clear;
      //sql.Text:='SELECT account_no,rekening_no,bank_code,bank_name,(select saldo_akhir from  "public"."get_bank_saldoakhir"(a.rekening_no,'+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue-1))+')) as saldo_akhir from t_bank a WHERE deleted_at is null ';
      sql.Text:='SELECT account_no,rekening_no,x.bank_code,bank_name,saldo_akhir,deposito_date,due_date,deposito_value FROM '+
                '(SELECT account_no,rekening_no,bank_code,bank_name,(select saldo_akhir from  "public"."get_bank_saldoakhir"(a.rekening_no,'+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue-1))+')) as saldo_akhir from t_bank a WHERE a.deleted_at is null)x '+
                'LEFT JOIN (select bank_code,deposito_date,due_date,deposito_value from t_deposito WHERE due_date>'+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+')y '+
                'ON x.bank_code=y.bank_code';
      open;
    end;

    with QIsi_KasBesar do   //Pengisian Kas Besar
    begin
       close;
       sql.Clear;
       sql.Text:=//'select id,voucher_no,tgl, concat(ket,'' '',''(Rencanake'',plan_to,'')'') AS ket,concat(to_,'' '',REPLACE(TO_CHAR(jumlah,''FM999G999G999G990.00 ''), '','', ''.''),'' '',no_cek) as ket2,jumlah,no_cek,plan_to from '+
                 'select row_number() OVER (ORDER BY id) AS no_urut,voucher_no,tgl, concat(ket,'' '',''(Rencanake'',plan_to,'')'') AS ket,concat(to_,'' '',REPLACE(TO_CHAR(jumlah,''FM999G999G999G990.00 ''), '','', ''.''),'' '',no_cek) as ket2,jumlah,no_cek,plan_to from '+
                 '(select a.* from '+
                 '(select a.id,a.voucher_no,b.code_account,b.trans_date as tgl,a.remark as ket,case when a.currency=''USD'' then a.amount*a.kurs else a.amount end jumlah,concat(a.bank_name,''-'',a.cheque_no)as no_cek,a.plan_to,a.bank_name,a.to_ '+
                 'from t_cash_bank_expenditure_submission a '+
                 'INNER JOIN t_cash_bank_expenditure_submission_det b ON a.voucher_no=b.no_voucher '+
                 'where a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                 //and a.norek<>a.kode3
                 'and b.code_account=''1111'' and b."position"=''D'' '+
                 'union all '+
                 'select a.id,a.voucher_no,b.code_account,a.trans_date as tgl,a.remark as ket,(case when a.currency=''USD'' then a.amount*a.kurs else a.amount end)*-1 jumlah,concat(a.bank_name,''-'',a.cheque_no)as no_cek,a.plan_to,a.bank_name,a.to_ '+
                 'from t_cash_bank_expenditure_submission a '+
                 'INNER JOIN t_cash_bank_expenditure_submission_det b ON a.voucher_no=b.no_voucher '+
                 'where a.voucher_no=b.no_voucher and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                 //--and a.norek<>a.kode3
                 'and b.code_account=''1111'' and b."position"=''K'')a '+
                 'left join t_cash_bank_expenditure_submission_payable b on a.voucher_no=b.voucher_no '+
                 'and a.tgl=b.trans_date '+
                 'left join (SELECT * FROM t_paid_debt_det)c on b.invoice_no=c.inv_no '+
                 'where c.inv_no is null )xx '+
                 'order by plan_to,tgl,xx.voucher_no,id ';
       open;
    end;
    if QIsi_KasBesar.RecordCount>0 then
    begin
        with QIsi_KasBesar do
        begin
           close;
           sql.Clear;
           sql.Text:=//'select id,voucher_no,tgl, concat(ket,'' '',''(Rencanake'',plan_to,'')'') AS ket,concat(to_,'' '',REPLACE(TO_CHAR(jumlah,''FM999G999G999G990.00 ''), '','', ''.''),'' '',no_cek) as ket2,jumlah,no_cek,plan_to from '+
                     'select row_number() OVER (ORDER BY id) AS no_urut,voucher_no,tgl, concat(ket,'' '',''(Rencanake'',plan_to,'')'') AS ket,concat(to_,'' '',REPLACE(TO_CHAR(jumlah,''FM999G999G999G990.00 ''), '','', ''.''),'' '',no_cek) as ket2,jumlah,no_cek,plan_to from '+
                     '(select a.* from '+
                     '(select a.id,a.voucher_no,b.code_account,b.trans_date as tgl,a.remark as ket,case when a.currency=''USD'' then a.amount*a.kurs else a.amount end jumlah,concat(a.bank_name,''-'',a.cheque_no)as no_cek,a.plan_to,a.bank_name,a.to_ '+
                     'from t_cash_bank_expenditure_submission a '+
                     'INNER JOIN t_cash_bank_expenditure_submission_det b ON a.voucher_no=b.no_voucher '+
                     'where a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                     //and a.norek<>a.kode3
                     'and b.code_account=''1111'' and b."position"=''D'' '+
                     'union all '+
                     'select a.id,a.voucher_no,b.code_account,a.trans_date as tgl,a.remark as ket,(case when a.currency=''USD'' then a.amount*a.kurs else a.amount end)*-1 jumlah,concat(a.bank_name,''-'',a.cheque_no)as no_cek,a.plan_to,a.bank_name,a.to_ '+
                     'from t_cash_bank_expenditure_submission a '+
                     'INNER JOIN t_cash_bank_expenditure_submission_det b ON a.voucher_no=b.no_voucher '+
                     'where a.voucher_no=b.no_voucher and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                     //--and a.norek<>a.kode3
                     'and b.code_account=''1111'' and b."position"=''K'')a '+
                     'left join t_cash_bank_expenditure_submission_payable b on a.voucher_no=b.voucher_no '+
                     'and a.tgl=b.trans_date '+
                     'left join (SELECT * FROM t_paid_debt_det)c on b.invoice_no=c.inv_no '+
                     'where c.inv_no is null )xx '+
                     'order by plan_to,tgl,xx.voucher_no,id ';
           open;
        end;
    end
    else
    begin
        with  QIsi_KasBesar do
        begin
          close;
          sql.clear;
          sql.text:='select '''' no_urut,'''' voucher_no,null tgl, '''' ket,'''' ket2,0 jumlah,'''' no_cek,'''' plan_to ';
          open;
        end;
    end;

    with QHut_Dagang do   //Hutang Dagang
    begin
        close;
        sql.Clear;
        sql.Text:='SELECT row_number() OVER (ORDER BY id) AS no_urut, '+
                  'bank,xxx.supplier_code,principle_name,cek_no,periode1,periode2,jumlah,ket,urutan,xxx.plan_to,nosj FROM '+
                  '(SELECT * FROM '+
                  '(SELECT a.id,a.bank,a.supplier_code,b.supplier_name as principle_name,a.cek_no,a.periode1,a.periode2,sum(amount)as jumlah,concat(d.account_name,'' '',''(Rencanake'',A.plan_to,'')'') AS ket,1 as urutan,a.plan_to from t_paid_debt_det a '+
                  'INNER JOIN t_supplier b ON a.supplier_code=b.supplier_code '+
                  'INNER JOIN t_purchase_invoice c ON a.inv_no=c.trans_no '+
                  'INNER JOIN (SELECT a.code,a.account_name,b.account_code2 FROM t_ak_account a INNER JOIN t_ak_account_sub b ON a.code=b.account_code) d '+
                  'ON c.account_code=d.account_code2  '+
                  'where a.supplier_code=b.supplier_code and a.inv_no=c.trans_no '+
                  'and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                  'and d.code=''2101.01''  '+
                  'and c.account_code=d.account_code2 '+
                  'group by a.id,bank,a.supplier_code,principle_name,cek_no,periode1,periode2,account_name,plan_to '+
                  'union all '+
                  'select id,bank,supplier_code,principle_name,cek_no,periode1,periode2,sum(jumlah)as jumlah,ket2 as ket,urutan,plan_to from '+
                  '(select a.id,a.inv_no,a.bank,a.supplier_code,b.supplier_name as principle_name,a.cek_no,a.periode1,a.periode2,-(sum(npph))as jumlah,(case when a.bank<>'''' then concat(a.bank,'''',a.cek_no) else ''KAS BESAR'' end)ket,2 as urutan '+
                  ',a.plan_to,c.account_name as ket2,a.pph_account as kd_akun from t_paid_debt_det a,t_supplier b,t_ak_account c,t_purchase_invoice d '+
                  'where a.npph<>0 and a.supplier_code=b.supplier_code and a.pph_account=c.code and a.inv_no=d.trans_no '+
                  'and c.code=''2101.01'' '+
                  'and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                  'group by a.id,a.inv_no,a.bank,a.supplier_code,principle_name,a.cek_no,a.periode1,a.periode2,a.periodetempo1,a.periodetempo2,ket,ket2,a.pph_account,a.plan_to)x '+
                  'group by id,bank,supplier_code,principle_name,cek_no,periode1,periode2,ket2,urutan,plan_to)xx order by plan_to,supplier_code,urutan)xxx '+
                  'LEFT JOIN '+
                  '(SELECT z.supplier_code,z.nosj,plan_to from '+
                  '(select a.supplier_code,STRING_AGG (b.sj_no,'' ,'') nosj,periode1,periode2,a.plan_to from t_paid_debt_det a '+
                  'INNER JOIN t_purchase_invoice b ON a.inv_no=b.trans_no and a.supplier_code=b.supplier_code '+
                  'INNER JOIN (SELECT a.code,b.account_code2 FROM t_ak_account a INNER JOIN t_ak_account_sub b ON a.code=b.account_code) c on b.account_code=c.account_code2 '+
                  'and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                  'and  c.code=''2101.01'' '+
                  'GROUP BY a.supplier_code,a.periode1,a.periode2,a.plan_to ORDER BY plan_to)z)zz on xxx.supplier_code=zz.supplier_code and xxx.plan_to=zz.plan_to ';
                  //'UNION ALL '+
                  //'SELECT null as "bank",'''' as "supplier_code",'''' as "principle_name",'''' as "cek_no", null as "periode1",null as "periode2",null as "jumlah",'''' as"ket", null as "urutan", null as "plan_to", '''' as "nosj" ';
          open;
    end;
    if QHut_Dagang.RecordCount=0 then
    begin
      with QHut_Dagang do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT '''' as no_urut,null as "bank",'''' as "supplier_code",'''' as "principle_name",'''' as "cek_no", null as "periode1",null as "periode2",null as "jumlah",'''' as"ket", null as "urutan", null as "plan_to", '''' as "nosj" ';
        open;
      end;
    end
    else
    if QHut_Dagang.RecordCount>0 then
    begin
      with QHut_Dagang do
      begin
          close;
          sql.Clear;
          sql.Text:='SELECT row_number() OVER (ORDER BY id) AS no_urut, '+
                    'bank,xxx.supplier_code,principle_name,cek_no,periode1,periode2,jumlah,ket,urutan,xxx.plan_to,nosj FROM '+
                    '(SELECT * FROM '+
                    '(SELECT a.id,a.bank,a.supplier_code,b.supplier_name as principle_name,a.cek_no,a.periode1,a.periode2,sum(amount)as jumlah,concat(d.account_name,'' '',''(Rencanake'',A.plan_to,'')'') AS ket,1 as urutan,a.plan_to from t_paid_debt_det a '+
                    'INNER JOIN t_supplier b ON a.supplier_code=b.supplier_code '+
                    'INNER JOIN t_purchase_invoice c ON a.inv_no=c.trans_no '+
                    'INNER JOIN (SELECT a.code,a.account_name,b.account_code2 FROM t_ak_account a INNER JOIN t_ak_account_sub b ON a.code=b.account_code) d '+
                    'ON c.account_code=d.account_code2  '+
                    'where a.supplier_code=b.supplier_code and a.inv_no=c.trans_no '+
                    'and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                    'and d.code=''2101.01''  '+
                    'and c.account_code=d.account_code2 '+
                    'group by a.id,bank,a.supplier_code,principle_name,cek_no,periode1,periode2,account_name,plan_to '+
                    'union all '+
                    'select id,bank,supplier_code,principle_name,cek_no,periode1,periode2,sum(jumlah)as jumlah,ket2 as ket,urutan,plan_to from '+
                    '(select a.id,a.inv_no,a.bank,a.supplier_code,b.supplier_name as principle_name,a.cek_no,a.periode1,a.periode2,-(sum(npph))as jumlah,(case when a.bank<>'''' then concat(a.bank,'''',a.cek_no) else ''KAS BESAR'' end)ket,2 as urutan '+
                    ',a.plan_to,c.account_name as ket2,a.pph_account as kd_akun from t_paid_debt_det a,t_supplier b,t_ak_account c,t_purchase_invoice d '+
                    'where a.npph<>0 and a.supplier_code=b.supplier_code and a.pph_account=c.code and a.inv_no=d.trans_no '+
                    'and c.code=''2101.01'' '+
                    'and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                    'group by a.id,a.inv_no,a.bank,a.supplier_code,principle_name,a.cek_no,a.periode1,a.periode2,a.periodetempo1,a.periodetempo2,ket,ket2,a.pph_account,a.plan_to)x '+
                    'group by id,bank,supplier_code,principle_name,cek_no,periode1,periode2,ket2,urutan,plan_to)xx order by plan_to,supplier_code,urutan)xxx '+
                    'LEFT JOIN '+
                    '(SELECT z.supplier_code,z.nosj,plan_to from '+
                    '(select a.supplier_code,STRING_AGG (b.sj_no,'' ,'') nosj,periode1,periode2,a.plan_to from t_paid_debt_det a '+
                    'INNER JOIN t_purchase_invoice b ON a.inv_no=b.trans_no and a.supplier_code=b.supplier_code '+
                    'INNER JOIN (SELECT a.code,b.account_code2 FROM t_ak_account a INNER JOIN t_ak_account_sub b ON a.code=b.account_code) c on b.account_code=c.account_code2 '+
                    'and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                    'and  c.code=''2101.01'' '+
                    'GROUP BY a.supplier_code,a.periode1,a.periode2,a.plan_to ORDER BY plan_to)z)zz on xxx.supplier_code=zz.supplier_code and xxx.plan_to=zz.plan_to ';

                    //'UNION ALL '+
                    //'SELECT null as "bank",'''' as "supplier_code",'''' as "principle_name",'''' as "cek_no", null as "periode1",null as "periode2",null as "jumlah",'''' as"ket", null as "urutan", null as "plan_to", '''' as "nosj" ';
          open;
      end;
    end;

    with QHut_Biaya do  //Hutang Biaya
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT row_number() OVER (ORDER BY id) AS no_urut, '+
                ' xxx.supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,ket3,jumlah,jenis_akun,xxx.plan_to,nosj FROM '+
                '(SELECT * FROM '+
                '(select id,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,concat(ket3,'' '',''(Rencanake'',plan_to,'')'') AS ket3,sum(jumlah)as jumlah,jenis_akun,plan_to from '+
                '(select aa.*, bb.account_code jenis_akun from '+
                '(select id,inv_no,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,account_name as ket3,sum(jumlah)as jumlah,plan_to from '+
                '(select a.inv_no,a.bank,a.supplier_code,b.supplier_name as principle_name,a.cek_no,a.periode1,a.periode2,a.periodetempo1,a.periodetempo2,sum(amount)as jumlah, '+
                '(case when a.bank<>'''' then concat(a.bank,'''',a.cek_no) else ''KAS BESAR'' end)ket,1 as urutan,''''as ket2,c.account_code,a.plan_to from t_paid_debt_det a '+
                'INNER JOIN t_supplier b ON a.supplier_code=b.supplier_code '+
                'INNER JOIN t_purchase_invoice c ON a.inv_no=c.trans_no '+
                'INNER JOIN (SELECT a.code,a.header_code,a.account_name,b.account_code2 FROM t_ak_account a INNER JOIN t_ak_account_sub b ON a.code=b.account_code) d '+
                'ON c.account_code=d.account_code2  '+
                'where a.supplier_code=b.supplier_code '+
                'and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                'and a.inv_no=c.trans_no '+
                //'and d.header_code=''2102'' '+
                'and d.code in(SELECT account_code FROM t_expenses_payable_account) '+
                'group by a.inv_no,a.bank,a.supplier_code,principle_name,a.cek_no,a.periode1,a.periode2,a.periodetempo1,a.periodetempo2,ket,ket2,c.account_code,a.plan_to '+
                ')xx '+
                'left join t_ak_account x on xx.account_code=x.code group by id,inv_no,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,account_name,plan_to '+
                'order by supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,account_name,plan_to) aa '+
                'left join t_purchase_invoice bb on aa.inv_no=bb.trans_no) cc '+
                'group by id,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,ket3,jenis_akun,plan_to '+
                'order by plan_to,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,jenis_akun,ket3)x '+
                'ORDER BY plan_to,supplier_code)xxx '+
                'LEFT JOIN '+
                '(SELECT z.supplier_code,z.nosj,plan_to from '+
                '(select a.supplier_code,STRING_AGG (b.sj_no,'' ,'') nosj,periode1,periode2,a.plan_to from t_paid_debt_det a '+
                'INNER JOIN t_purchase_invoice b ON a.inv_no=b.trans_no and a.supplier_code=b.supplier_code '+
                'INNER JOIN (SELECT a.code,a.header_code,b.account_code2 FROM t_ak_account a INNER JOIN t_ak_account_sub b ON a.code=b.account_code) c on b.account_code=c.account_code2 '+
                'and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                //'and c.header_code=''2102'' '+
                'and c.code in(SELECT account_code FROM t_expenses_payable_account) '+
                'GROUP BY a.supplier_code,a.periode1,a.periode2,a.plan_to ORDER BY plan_to)z)zz on xxx.supplier_code=zz.supplier_code and xxx.plan_to=zz.plan_to ';
      open;
    end;

    if QHut_Biaya.RecordCount=0 then
    begin
      with QHut_Biaya do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT '''' as no_urut,null as supplier_code,Null as principle_name,Null as	cek_no,null	periode1,null	periode2,null	ket,null as account_code,''''	ket3,0 as	jumlah,	'''' as jenis_akun,null as plan_to,'''' as	nosj ';
        open;
      end;
    end
    else
    if QHut_Biaya.RecordCount>0 then
    begin
      with QHut_Biaya do
      begin
         close;
         sql.Clear;
         sql.Text:='SELECT row_number() OVER (ORDER BY id) AS no_urut, '+
                   ' xxx.supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,ket3,jumlah,jenis_akun,xxx.plan_to,nosj FROM '+
                   '(SELECT * FROM '+
                   '(select id,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,concat(ket3,'' '',''(Rencanake'',plan_to,'')'') AS ket3,sum(jumlah)as jumlah,jenis_akun,plan_to from '+
                   '(select aa.*, bb.account_code jenis_akun from '+
                   '(select id,inv_no,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,account_name as ket3,sum(jumlah)as jumlah,plan_to from '+
                   '(select a.inv_no,a.bank,a.supplier_code,b.supplier_name as principle_name,a.cek_no,a.periode1,a.periode2,a.periodetempo1,a.periodetempo2,sum(amount)as jumlah, '+
                   '(case when a.bank<>'''' then concat(a.bank,'''',a.cek_no) else ''KAS BESAR'' end)ket,1 as urutan,''''as ket2,c.account_code,a.plan_to from t_paid_debt_det a '+
                   'INNER JOIN t_supplier b ON a.supplier_code=b.supplier_code '+
                   'INNER JOIN t_purchase_invoice c ON a.inv_no=c.trans_no '+
                   'INNER JOIN (SELECT a.code,a.header_code,a.account_name,b.account_code2 FROM t_ak_account a INNER JOIN t_ak_account_sub b ON a.code=b.account_code) d '+
                   'ON c.account_code=d.account_code2  '+
                   'where a.supplier_code=b.supplier_code '+
                   'and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                   'and a.inv_no=c.trans_no '+
                   //'and d.header_code=''2102'' '+
                   'and d.code in(SELECT account_code FROM t_expenses_payable_account) '+
                   'group by a.inv_no,a.bank,a.supplier_code,principle_name,a.cek_no,a.periode1,a.periode2,a.periodetempo1,a.periodetempo2,ket,ket2,c.account_code,a.plan_to '+
                   ')xx '+
                   'left join t_ak_account x on xx.account_code=x.code group by id,inv_no,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,account_name,plan_to '+
                   'order by supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,account_name,plan_to) aa '+
                   'left join t_purchase_invoice bb on aa.inv_no=bb.trans_no) cc '+
                   'group by id,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,ket3,jenis_akun,plan_to '+
                   'order by plan_to,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,jenis_akun,ket3)x '+
                   'ORDER BY plan_to,supplier_code)xxx '+
                   'LEFT JOIN '+
                   '(SELECT z.supplier_code,z.nosj,plan_to from '+
                   '(select a.supplier_code,STRING_AGG (b.sj_no,'' ,'') nosj,periode1,periode2,a.plan_to from t_paid_debt_det a '+
                   'INNER JOIN t_purchase_invoice b ON a.inv_no=b.trans_no and a.supplier_code=b.supplier_code '+
                   'INNER JOIN (SELECT a.code,a.header_code,b.account_code2 FROM t_ak_account a INNER JOIN t_ak_account_sub b ON a.code=b.account_code) c on b.account_code=c.account_code2 '+
                   'and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                   //'and c.header_code=''2102'' '+
                   'and c.code in(SELECT account_code FROM t_expenses_payable_account) '+
                   'GROUP BY a.supplier_code,a.periode1,a.periode2,a.plan_to ORDER BY plan_to)z)zz on xxx.supplier_code=zz.supplier_code and xxx.plan_to=zz.plan_to ';
                   //'UNION ALL '+
                   //'SELECT null as supplier_code,Null as principle_name,Null as	cek_no,null	periode1,null	periode2,null	ket,null as account_code,''''	ket3,0 as	jumlah,	'''' as jenis_akun,null as plan_to,'''' as	nosj ';
           open;
      end;
    end;

    with QHut_Aktiva do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT row_number() OVER (ORDER BY id) AS no_urut, '+
                   'xxx.supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,ket3,jumlah,jenis_akun,xxx.plan_to,nosj FROM '+
                   '(SELECT * FROM '+
                   '(select id,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,concat(ket3,'' '',''(Rencanake'',plan_to,'')'') AS ket3,sum(jumlah)as jumlah,jenis_akun,plan_to from '+
                   '(select aa.*, bb.account_code jenis_akun from '+
                   '(select id,inv_no,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,account_name as ket3,sum(jumlah)as jumlah,plan_to from '+
                   '(select a.inv_no,a.bank,a.supplier_code,b.supplier_name as principle_name,a.cek_no,a.periode1,a.periode2,a.periodetempo1,a.periodetempo2,sum(amount)as jumlah, '+
                   '(case when a.bank<>'''' then concat(a.bank,'''',a.cek_no) else ''KAS BESAR'' end)ket,1 as urutan,'''' as ket2,c.account_code,a.plan_to from t_paid_debt_det a '+
                   'INNER JOIN t_supplier b ON a.supplier_code=b.supplier_code '+
                   'INNER JOIN t_purchase_invoice c ON a.inv_no=c.trans_no '+
                   'INNER JOIN (SELECT a.code,a.header_code,a.account_name,b.account_code2 FROM t_ak_account a INNER JOIN t_ak_account_sub b ON a.code=b.account_code) d ON c.account_code=d.account_code2 '+
                   'where a.supplier_code=b.supplier_code '+
                   'and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                   'and a.inv_no=c.trans_no '+
                   'and d.code in (SELECT account_code FROM t_asset_payable_account) '+
                   'group by a.inv_no,a.bank,a.supplier_code,principle_name,a.cek_no,a.periode1,a.periode2,a.periodetempo1,a.periodetempo2,ket,ket2,c.account_code,a.plan_to '+
                   ')xx '+
                   'left join t_ak_account x on xx.account_code=x.code group by id,inv_no,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,account_name,plan_to '+
                   'order by supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,account_name,plan_to) aa '+
                   'left join t_purchase_invoice bb on aa.inv_no=bb.trans_no) cc '+
                   'group by id,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,ket3,jenis_akun,plan_to '+
                   'order by plan_to,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,jenis_akun,ket3)x '+
                   'ORDER BY plan_to,supplier_code)xxx '+
                   'LEFT JOIN '+
                   '(SELECT z.supplier_code,z.nosj,plan_to from '+
                   '(select a.supplier_code,STRING_AGG (b.sj_no,'' ,'') nosj,periode1,periode2,a.plan_to from t_paid_debt_det a '+
                   'INNER JOIN t_purchase_invoice b ON a.inv_no=b.trans_no and a.supplier_code=b.supplier_code '+
                   'INNER JOIN (SELECT a.code,b.account_code2 FROM t_ak_account a INNER JOIN t_ak_account_sub b ON a.code=b.account_code) c on b.account_code=c.account_code2 '+
                   'and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                   'and c.code in (SELECT account_code FROM t_asset_payable_account) '+
                   'GROUP BY a.supplier_code,a.periode1,a.periode2,a.plan_to ORDER BY plan_to)z)zz on xxx.supplier_code=zz.supplier_code and xxx.plan_to=zz.plan_to ';
         open;
      open;
    end;
    if QHut_Aktiva.RecordCount=0 then
    begin
      with QHut_Aktiva do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT '''' as no_urut,null as supplier_code,Null as principle_name,Null as	cek_no,null	periode1,null	periode2,null	ket,null as account_code,''''	ket3,0 as	jumlah,	'''' as jenis_akun,null as plan_to,'''' as	nosj';
        open;
      end;
    end
    else
    if QHut_Aktiva.RecordCount>0 then
    begin
      with QHut_Aktiva do  //Hutang Aktiva
      begin
         close;
         sql.Clear;
         sql.Text:='SELECT row_number() OVER (ORDER BY id) AS no_urut, '+
                   'xxx.supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,ket3,jumlah,jenis_akun,xxx.plan_to,nosj FROM '+
                   '(SELECT * FROM '+
                   '(select id,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,concat(ket3,'' '',''(Rencanake'',plan_to,'')'') AS ket3,sum(jumlah)as jumlah,jenis_akun,plan_to from '+
                   '(select aa.*, bb.account_code jenis_akun from '+
                   '(select id,inv_no,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,account_name as ket3,sum(jumlah)as jumlah,plan_to from '+
                   '(select a.inv_no,a.bank,a.supplier_code,b.supplier_name as principle_name,a.cek_no,a.periode1,a.periode2,a.periodetempo1,a.periodetempo2,sum(amount)as jumlah, '+
                   '(case when a.bank<>'''' then concat(a.bank,'''',a.cek_no) else ''KAS BESAR'' end)ket,1 as urutan,'''' as ket2,c.account_code,a.plan_to from t_paid_debt_det a '+
                   'INNER JOIN t_supplier b ON a.supplier_code=b.supplier_code '+
                   'INNER JOIN t_purchase_invoice c ON a.inv_no=c.trans_no '+
                   'INNER JOIN (SELECT a.code,a.header_code,a.account_name,b.account_code2 FROM t_ak_account a INNER JOIN t_ak_account_sub b ON a.code=b.account_code) d ON c.account_code=d.account_code2 '+
                   'where a.supplier_code=b.supplier_code '+
                   'and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                   'and a.inv_no=c.trans_no '+
                   //'and d.code=''2103.02'' '+
                   'and d.code in (SELECT account_code FROM t_asset_payable_account) '+
                   'group by a.inv_no,a.bank,a.supplier_code,principle_name,a.cek_no,a.periode1,a.periode2,a.periodetempo1,a.periodetempo2,ket,ket2,c.account_code,a.plan_to '+
                   ')xx '+
                   'left join t_ak_account x on xx.account_code=x.code group by id,inv_no,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,account_name,plan_to '+
                   'order by supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,account_name,plan_to) aa '+
                   'left join t_purchase_invoice bb on aa.inv_no=bb.trans_no) cc '+
                   'group by id,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,ket3,jenis_akun,plan_to '+
                   'order by plan_to,supplier_code,principle_name,cek_no,periode1,periode2,ket,account_code,jenis_akun,ket3)x '+
                   'ORDER BY plan_to,supplier_code)xxx '+
                   'LEFT JOIN '+
                   '(SELECT z.supplier_code,z.nosj,plan_to from '+
                   '(select a.supplier_code,STRING_AGG (b.sj_no,'' ,'') nosj,periode1,periode2,a.plan_to from t_paid_debt_det a '+
                   'INNER JOIN t_purchase_invoice b ON a.inv_no=b.trans_no and a.supplier_code=b.supplier_code '+
                   'INNER JOIN (SELECT a.code,b.account_code2 FROM t_ak_account a INNER JOIN t_ak_account_sub b ON a.code=b.account_code) c on b.account_code=c.account_code2 '+
                   'and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                   //'and c.code=''2103.02'' '+
                   'and c.code in (SELECT account_code FROM t_asset_payable_account) '+
                   'GROUP BY a.supplier_code,a.periode1,a.periode2,a.plan_to ORDER BY plan_to)z)zz on xxx.supplier_code=zz.supplier_code and xxx.plan_to=zz.plan_to ';
                   //'UNION ALL '+
                   //'SELECT null as supplier_code,Null as principle_name,Null as	cek_no,null	periode1,null	periode2,null	ket,null as account_code,''''	ket3,0 as	jumlah,	'''' as jenis_akun,null as plan_to,'''' as	nosj ';
         open;
      end;
    end;

    if QNon_Hutang.RecordCount=0 then
    begin
      with QNon_Hutang do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT null as noinv,null	as to_,null as	ket,null as	jumlah,	null as plan_to order by plan_to,noinv';
        open;
      end;
    end
    else
    if QNon_Hutang.RecordCount>0 then
    begin
      with QNon_Hutang do  //Non Hutang
      begin
        close;
        sql.Clear;
        sql.Text:='select noinv,to_,concat(remark,'' '',''(Rencanake'',plan_to,'')'') AS ket ,(case when currency=''USD'' then jumlah*kurs else jumlah end) jumlah,plan_to from '+
                  '(select voucher_no as noinv,to_,b.trans_date,1 as urutan,remark,currency,kurs,sum(amount)as jumlah,plan_to from t_cash_bank_expenditure_submission a '+
                  'INNER JOIN t_cash_bank_expenditure_submission_det b ON a.voucher_no=b.no_voucher '+
                  'where periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                  'and "position"=''D'' '+
                  'and code_account_header<>''2101'' '+
                  'and code_account_header<>''2102'' '+
                  'and code_account_header<>''2103'' '+
                  'and b.code_account<>''1101.01'' '+
                  'group by voucher_no,to_,b.trans_date,remark,currency,kurs,plan_to '+
                  'UNION ALL '+
                  'select a.voucher_no as noinv,a.to_,a.trans_date,2 as urutan,a.remark,currency,kurs,-(sum(a.amount))as jumlah,a.plan_to from t_cash_bank_expenditure_submission a '+
                  'INNER JOIN t_cash_bank_expenditure_submission_det b ON a.voucher_no=b.no_voucher '+
                  'where voucher_no IN (select voucher_no from t_cash_bank_expenditure_submission a '+
                  'INNER JOIN t_cash_bank_expenditure_submission_det b ON a.voucher_no=b.no_voucher '+
                  'where periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                  'and position=''D'' '+
                  'and code_account_header<>''2101'' '+
                  'and code_account_header<>''2102'' '+
                  'and code_account_header<>''2103'' )'+
                  'and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                  'and b.position=''K'' '+
                  'and b.code_account<>''1101.01'' '+
                  'and b.code_account<>''2103.02'' '+
                  'and b.code_account<>''1102.03'' '+
                  'group by a.voucher_no,a.to_,a.trans_date,a.remark,a.currency,a.kurs,a.plan_to '+
                  ')x '+
                  'where x.noinv in(select distinct voucher_no from t_cash_bank_expenditure_submission a '+
                  'INNER JOIN t_cash_bank_expenditure_submission_det b ON a.voucher_no=b.no_voucher EXCEPT select DISTINCT voucher_no from t_cash_bank_expenditure_submission_payable) '+
                  'order by plan_to,trans_date,noinv,urutan ';
                  //'UNION ALL '+
                  //'SELECT null as noinv,null	as to_,null as	ket,null as	jumlah,	null as plan_to order by plan_to,noinv ';
        open;
      end;
    end;


    with  QDeposito do  //Pengeluaran dengan Cek/BG
    begin
      close;
      sql.Clear;
      sql.Text:='select a.*,concat(a.remark, '' '',a.supplier_code)as ket,case WHEN a.bank_name=''MANDIRI'' Then a.amount else a.amount*a.kurs end jumlah from t_cash_bank_expenditure_submission a left join t_cash_bank_expenditure_submission_det b on a.voucher_no=b.no_voucher '+
                'where '+
                //--substring(a.voucher_no,1,2)='BK' and
                'b.position=''K'' '+
                //--and b.code_account=a.rek_no
                //--and a.bank_norek='1390018704530'
                'and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                'UNION All '+
                'SELECT '''' voucher_no,NULL subvoucher,'''' remark,NULL entry_date,NULL trans_date,Null	periode1,NULL	periode2,0 amount,NULL account_code,NULL account_name,'+
                'NULL dk,NULL debit,NULL kredit,'''' header_code,'''' ref_no,NULL	posting,'''' customer_code,''''	supplier_code,NULL cash_type,NULL job_no,NULL company_code,NULL	tp_code,NULL trans_year,'+
                'NULL trans_month,NULL trans_day,NULL	order_no,Null	giro_no,NULL bank_giro_name,NULL giro_due_date,'''' customer_name,'''' supplier_name,''''	to_,NULL deposit,NULL	deposit_date,'+
                'NULL tgup,''''	voucher_code,'''' to_getout,NULL status,NULL approve_status,NULL approval_date,NULL approval,NULL	app_stat,''''	currency,NULL	kurs,NULL	plan_to,'''' bon_no '+
                ','''' bank_norek,'''' bank_name,NULL	amount_origin,NULL debit_amount_origin,NULL	credit_amount_origin,NULL	created_at,''''	created_by,NULL	updated_at,''''	updated_by '+
                ',NULL deleted_at,'''' deleted_by,'''' trans_type_code,'''' trans_type_name,'''' bank_number_account,''''	bank_name_account,'''' additional_code,null "id" '+
                ','''' cheque_no,Null	cheque_date,Null cheque_due_date,''''	ket,Null jumlah ';

      open;
    end;
    //frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Saldo_Bank_dan_Rencana_Pelunasan_Hutang_dasboard.fr3');
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Saldo_Bank_dan_Rencana_Pelunasan_Hutang4.fr3');
    //frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Saldo_Bank_dan_Rencana_Pelunasan_Hutang3.fr3');
    Tfrxmemoview(frxReport1.FindObject('Memoperiode')).Memo.Text:='Tanggal  : '+FormatDateTime('dd mmm yyyy',DTPick1.EditValue)+' '+'S/D'+' '+FormatDateTime('dd mmm yyyy',DTPick2.EditValue);
    frxReport1.ReportOptions.Name:='Laporan Saldo Bank dan Rencana Pelunasan Hutang';
    frxReport1.showreport;
end;

procedure TFsaldo_bank_rencana_pelunasan_hutang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TFsaldo_bank_rencana_pelunasan_hutang.FormCreate(Sender: TObject);
begin
  RealFsaldo_bank_rencana_pelunasan_hutang:=self;
end;

procedure TFsaldo_bank_rencana_pelunasan_hutang.FormDestroy(Sender: TObject);
begin
   RealFsaldo_bank_rencana_pelunasan_hutang:=nil;
end;

procedure TFsaldo_bank_rencana_pelunasan_hutang.FormShow(Sender: TObject);
begin
  DTPick1.EditValue := Date;
  DTPick2.EditValue := Date;
end;

Initialization
  RegisterClasses([TFsaldo_bank_rencana_pelunasan_hutang]);

end.
