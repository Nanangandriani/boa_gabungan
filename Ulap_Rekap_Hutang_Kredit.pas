unit Ulap_Rekap_Hutang_Kredit;

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
  dxSkinXmas2008Blue, cxCalendar, cxButtonEdit, cxCheckBox, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, frxClass, frxDBSet, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RzButton, Vcl.ExtCtrls, dxRibbon, dxBar, cxBarEditItem, cxClasses, MemDS,
  DBAccess, Uni, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, DataDriverEh, MemTableEh;

type
  TFlap_Rekap_Hutang_Kredit = class(TForm)
    DSRekap_Hutang_Kredit: TDataSource;
    MemRekap_Hutang_Kredit: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
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
    dxBarLargeButton1: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    DBGridHutangKredit: TDBGridEh;
    frxDBDatasetPers: TfrxDBDataset;
    QRekap_Hutang_Kredit: TUniQuery;
    QLap_Rekap_Hutang_Kredit: TUniQuery;
    frxdbRekap_Hutang_Kredit: TfrxDBDataset;
    Ed_Account: TcxBarEditItem;
    edkode_akun: TcxBarEditItem;
    unirekapkredittrx: TUniQuery;
    frxrekapkreditrx: TfrxReport;
    frxrekdafkredittrx: TfrxDBDataset;
    frxrekapkreditrx2: TfrxReport;
    unirekapkredittrx2: TUniQuery;
    frxrekdafkredittrx2: TfrxDBDataset;
    procedure cxBarEditItem2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    stat:string;
  end;

function
//var
  Flap_Rekap_Hutang_Kredit: TFlap_Rekap_Hutang_Kredit;

implementation

{$R *.dfm}

uses UDataModule, UCari_DaftarPerk;

var
  realFlap_Rekap_Hutang_Kredit : TFlap_Rekap_Hutang_Kredit;

  // implementasi function
function Flap_Rekap_Hutang_Kredit: TFlap_Rekap_Hutang_Kredit;
begin
  if realFlap_Rekap_Hutang_Kredit <> nil then
     Flap_Rekap_Hutang_Kredit:= realFlap_Rekap_Hutang_Kredit
  else
    Application.CreateForm(TFlap_Rekap_Hutang_Kredit, Result);
end;

procedure TFlap_Rekap_Hutang_Kredit.ActPrintExecute(Sender: TObject);
var query:string;
    dd,mm,yy:word;
    bulanold,bulannow:tdate;
    sawal:real;
begin
   //showmessage('x');
    //if stat='rekaphutangpph' then
    //begin
        if edkode_akun.EditValue='2130.02' then
        begin
           with unirekapkredittrx2 do
           begin
              close;
              sql.Clear;
              sql.text:='SELECT yyy.* FROM '+
                        '(SELECT yy.* FROM '+
                        '( '+
                        'SELECT  a.voucher,a.tgltrans tanggal,a.kodesp,x.deskripsi,kepada,a.inv_supp_no as nofaktur ,y.dpp as dpp,a.pph as pph,'''' as nodo,a.supplier_code as kdsup,y.ppn_rp as ppn FROM '+
                        '(SELECT DISTINCT a.*,b.inv_supp_no,c.saldo as pph,b.supplier_code FROM '+
                        '(SELECT DISTINCT g.voucher_no voucher,g.trans_date tgltrans,g.to_ kepada,g.code_account kodesp FROM '+
                        '(select a.voucher_no,a.trans_date,a.to_,b.code_account,b."position" from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)g '+
                        'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and code_account='+QuotedStr(edkode_akun.EditValue)+' and "position"=''K'')a '+
                        'LEFT JOIN t_buy_pay b on a.voucher=b.voucher_no '+
                        'LEFT JOIN t_credit_trx_real c on a.voucher=c.voucher and b.inv_supp_no=c.inv_supp_no WHERE (c.voucher is not null ) and (b.inv_supp_no is not null)) a '+
                        'LEFT JOIN  t_item_receive f ON f.faktur_no=a.inv_supp_no '+
                        'LEFT JOIN (SELECT  a.receive_no,string_agg (b.item_name, '', '' ) AS deskripsi FROM  t_item_receive_det a '+
                        'LEFT JOIN t_item_stock b ON a.item_stock_code::text = b.item_stock_code::text GROUP BY a.receive_no )x On x.receive_no=f.receive_no '+
                        'LEFT JOIN (SELECT receive_no,sum(subtotal) as dpp,ppn_rp FROM t_item_receive_det GROUP BY  receive_no,ppn_rp) y on f.receive_no=y.receive_no '+
                        'UNION ALL '+
                        'SELECT aa.voucher_no,aa.trans_date tanggal,aa.code_account,b.description1,aa.kepada,b.inv_supp_no as nofaktur ,b.dpp as dpp,b.saldo as pph,'''' as nodo,code_account as kdsup,0 ppn  FROM '+
                        '(SELECT a.*,c.inv_supp_no,b.inv_supp_no,c.supplier_code FROM '+
                        '(SELECT distinct voucher_no,trans_date,code_account,kepada,"position" FROM '+
                        '(select a.voucher_no,b.trans_date,b.code_account,a.to_ as kepada,b."position" from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)r '+
                        'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and code_account='+QuotedStr(edkode_akun.EditValue)+' '+
                        'and "position"=''K'')a LEFT JOIN t_credit_trx_real b on a.voucher_no=b.voucher LEFT JOIN t_buy_pay c on a.voucher_no=c.voucher_no LEFT JOIN t_payment_detail_real d on a.voucher_no=d.voucher_no '+
                        'WHERE (b.voucher is not null) and (b.voucher is null)and(c.voucher_no is null))aa LEFT JOIN t_credit_trx_real b ON aa.voucher_no=b.voucher '+
                        'UNION ALL '+
                        'SELECT e.voucher_no as voucher,b.receive_date,a.account_pph_code,(case when a.account_pph_code=''2130.02'' then ''Hutang Pajak - PPh.Ps.23'' when a.account_pph_code=''2130.01'' then ''Hutang Pajak - PPh.Ps.21'' '+
                        'when a.account_pph_code=''2130.03'' then ''Hutang Pajak - PPh.Ps.25''  when a.account_pph_code=''2130.04'' then ''Hutang Pajak - PPh.Ps.4(2)'' when a.account_pph_code=''2130.07'' then ''Hutang Pajak - PPh.Ps.15'' '+
                        'when a.account_pph_code=''2130.06'' then ''Hutang Pajak - PPh.Ps.22'' else a.account_pph_code end) as deskripsi, supplier_name as kepada,b.faktur_no,a.subtotalrp as dpp,a.pph_rp as pph,'''' as nodo,d.supplier_code,a.ppn_rp from '+
                        't_item_receive_det a left join t_item_receive b on a.receive_no=b.receive_no LEFT JOIN t_supplier d on b.supplier_code=d.supplier_code LEFT JOIN t_buy_pay e on a.receive_no=e.lpb_no where b.receive_date >''2025-01-01'' '+
                        'and b.receive_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and a.account_pph_code='+QuotedStr(edkode_akun.EditValue)+' '+
                        'UNION ALL '+
                        'SELECT d.bk_no as voucher ,e.trans_date,''2130.02'' as kdsp,''Hutang Pajak - PPh.Ps.23'' as jenis_pph, c.supplier_name as kepada,'''' as nofaktur ,subtotal as dpp,b.pph_rp as pph, '''' nodo,c.supplier_code,0 ppn FROM '+
                        't_po a left join t_podetail b  ON a.po_no=b.po_no left join t_supplier c on a.supplier_code=c.supplier_code left join t_payment_detail_real d on a.po_no=d.voucher_no '+
                        'LEFT JOIN (select a.voucher_no,b.trans_date from t_cash_bank_expenditure a '+
                        'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) e on d.bk_no=e.voucher_no where trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                        'and b.pph_rp<>0 GROUP BY e.trans_date,c.supplier_name,c.supplier_code,d.bk_no,b.pph_rp,b.subtotal '+
                        'UNION ALL '+
                        'SELECT distinct m.voucher_no voucher,m.trans_date as tanggal,n.account_code as kodesp,n.description1 deskripsi,m.to_ as kepada,n.inv_supp_no nofaktur,n.dpp,n.saldo,'''' as nodo,'''' as kdsup, 0 ppn from '+
                        '(select a.voucher_no,b.trans_date,a.to_ from t_cash_bank_expenditure a '+
                        'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) m ,t_credit_trx_real n '+
                        'WHERE m.voucher_no=n.voucher and n.Account_code='+QuotedStr(edkode_akun.EditValue)+' and description1<>'''' and m.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+')yy '+
                        'order by yy.tanggal,yy.voucher,yy.nofaktur asc )yyy ORDER BY kepada,voucher,nofaktur,tanggal ASC';
              Open;
           end;
           with frxrekapkreditrx2 do
           begin
             frxrekapkreditrx2.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rekap_Hutang_Kredit.fr3');
             ReportOptions.Name :='rekap_hutang_pph_new';
             with ScriptText do
             begin
               clear;
               add('var periode,prsh,judul: string;');
               add('begin');
               Add('judul:='''+'REKAP HUTANG '+UpperCase(Ed_Account.EditValue)+  ''' ;' );
               Add('periode:='''+'PERIODE '+formatdatetime('dd mmmm yyyy',DTPick1.EditValue)+' s/d '+formatdatetime('dd mmmm yyyy',DTPick1.EditValue)+''' ;' );
               //Add('prsh:='''+dm.qperusahaan.fieldbyname('company_name').asstring+  ''' ;' );
               add('end.');
             end;
             ShowReport;
           end;
        end
        else
        if (edkode_akun.EditValue='2130.01') or (edkode_akun.EditValue='2130.04') then
        begin
           with unirekapkredittrx do
           begin
               close;
               sql.Clear;
               sql.Text:= 'SELECT rr.* FROM '+
                          '(select xx.voucher,xx.voucher_tmp,xx.tanggal,xx.account_code,xx.deskripsi,xx.kepada,xx.nofaktur,0 ::float saldo_kredit,0 ::float saldo_debit,xx.dpp, '+
                          'case WHEN xx.saldo_kredit is null then 0 else xx.saldo_kredit end saldo, 0 ppn from '+

                          '(select a.voucher,b.voucher_tmp,b.trans_date tanggal,a.account_code,a.description as deskripsi, b.to_ as kepada,a.inv_supp_no nofaktur,a.saldo saldo_kredit,case when c.saldo  is null then 0 else c.saldo end saldo_debit,a.dpp from '+
                          '(select * from t_credit_trx_real where account_code='+QuotedStr(edkode_akun.EditValue)+')a '+
                          'left join '+
                          '(select distinct voucher_no,voucher_tmp,to_,trans_date from (select a.voucher_no,a.voucher_tmp,a.to_,b.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)r where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and substring(voucher_no,1,2)=''BK'' '+
                          'union all '+
                          'select distinct voucher_no,voucher_tmp,to_,trans_date as tanggal from (select a.voucher_no,a.voucher_tmp,a.to_,b.trans_date from t_cash_bank_expenditure a '+
                          'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)s where substring(voucher_no,1,2)=''KK'' '+
                          'and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+')b on a.voucher=b.voucher_no left join t_debit_trx_real c on a.voucher=c.voucher where b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                          'UNION ALL '+
                          '(SELECT voucher_no,voucher_tmp,trans_date,code_account,deskripsi,kepada,description,paid_amount,saldo_debit,0 dpp from v_titipan_bpjs_penerimaan_kas where code_account=''2130.04'' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+') '+
                          'UNION ALL '+
                          '(select voucher_no,'''' voucher_tmp,trans_date,code_account,description deskripsi,for_acceptance, '+
                          '(case when code_account=''2130.02'' then ''Hutang Pajak - PPh.Ps.23'' when code_account=''2130.01'' then ''Hutang Pajak - PPh.Ps.21'' when code_account=''2130.03'' then ''Hutang Pajak - PPh.Ps.25''  '+
                          'when code_account=''2130.04'' then ''Hutang Pajak - PPh.Ps.4(2)'' '+
                          ' when code_account=''2130.07'' then ''Hutang Pajak - PPh.Ps.15''  when code_account=''2130.06'' then ''Hutang Pajak - PPh.Ps.22'' else code_account end) as kepada,paid_amount saldo_kredit, 0 saldo_debit,0 dpp from '+
                          '(SELECT a.voucher_no,a.trans_date,a.description,a.for_acceptance,b.code_account,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)j '+
                          'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and code_account=''2130.04'' order by trans_date,voucher_no Asc ))xx '+

                          'LEFT JOIN (select DISTINCT k.voucher_no,k.periode1,k.periode2,k.plan_to,k.to_ as kepada,l.supplier_code from '+
                          '(select a.voucher_no,a.periode1,a.periode2,a.plan_to,a.to_ from t_cash_bank_expenditure_submission a '+
                          ' INNER JOIN t_cash_bank_expenditure_submission_det b on a.voucher_no=b.no_voucher) k left join t_supplier l on k.to_=l.supplier_name) r on xx.voucher_tmp=r.voucher_no '+
                          'where case WHEN xx.saldo_kredit is null then 0 else xx.saldo_kredit end <> 0 order by xx.tanggal,xx.voucher)rr '+

                          'UNION All '+
                          'SELECT '''' as voucher,'''' as voucher_tmp,b.receive_date,a.account_pph_code, (case when a.account_pph_code=''2130.02'' then ''Hutang Pajak - PPh.Ps.23'' when a.account_pph_code=''2130.01'' then ''Hutang Pajak - PPh.Ps.21'' '+
                          ' when a.account_pph_code=''2130.03'' then ''Hutang Pajak - PPh.Ps.25''  when a.account_pph_code=''2130.04'' then ''Hutang Pajak - PPh.Ps.4(2)'' when a.account_pph_code=''2130.07'' then ''Hutang Pajak - PPh.Ps.15'' '+
                          ' when a.account_pph_code=''2130.06'' then ''Hutang Pajak - PPh.Ps.22'' else a.account_pph_code end) as deskripsi,  supplier_name as kepada,b.faktur_no,0 saldo_kredit,0 saldo_debit,a.subtotalrp as dpp,a.pph_rp as saldo, '+
                          'a.ppn_rp  from t_item_receive_det a  left join t_item_receive b on a.receive_no=b.receive_no  LEFT JOIN t_supplier d on b.supplier_code=d.supplier_code where b.receive_date >''2024-01-01'' and '+
                          'b.receive_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and a.account_pph_code=''2130.04'' ';
               open;
           end;
           with frxrekapkreditrx do
           begin
              frxrekapkreditrx.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rekap_Hutang_Kredit.fr3');
              ReportOptions.Name := 'Rekap hutang akun kredit';
              with ScriptText do
              begin
                clear;
                add('var periode,prsh,judul: string;');
                add('begin');
                Add('judul:='''+'REKAP HUTANG '+UpperCase(Ed_Account.EditValue)+  ''' ;' );
                Add('periode:='''+'PERIODE '+formatdatetime('dd mmmm yyyy',DTPick1.EditValue)+' s/d '+formatdatetime('dd mmmm yyyy',DTPick2.EditValue)+''' ;' );
                //Add('prsh:='''+dm.qperusahaan.fieldbyname('company_name').asstring+  ''' ;' );
                add('end.');
              end;
              ShowReport;
           end;
        end
        else
        if (edkode_akun.EditValue='2130.07') then
        begin
           with unirekapkredittrx do
           begin
              close;
              sql.Clear;
              sql.Text:='select yy.* from '+
                        '( '+
                        '(select distinct xx.voucher,xx.voucher_tmp,xx.tanggal,xx.account_code,v.deskripsi,xx.kepada,t.faktur_no,0 ::float saldo_kredit,0 ::float saldo_debit, '+
                        'case WHEN v.dpp is null then 0 else v.dpp end dpp,  case WHEN t.npph is null then 0 else t.npph end saldo,0 ppn from '+
                        '(select a.voucher,b.voucher_tmp,b.trans_date tanggal,a.account_code,a.description as deskripsi,b.to_ as kepada,a.saldo saldo_kredit,case when c.saldo  is null then 0 else c.saldo end saldo_debit from  '+
                        '(select * from t_credit_trx_real where account_code='+QuotedStr(edkode_akun.EditValue)+')a  left join (select distinct voucher_no,voucher_tmp,to_,trans_date from '+
                        '(select a.voucher_no,a.voucher_tmp,a.to_,b.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)r where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and substring(voucher_no,1,2)=''BK'' '+
                        'union all '+
                        'select distinct voucher_no,voucher_tmp,to_,trans_date as tanggal from (select a.voucher_no,a.voucher_tmp,a.to_,b.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)s '+
                        'where  substring(voucher_no,1,2)=''KK'' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+')b on a.VOUCHER=b.voucher_no left join t_debit_trx_real c on a.voucher=c.voucher where b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                        'UNION ALL '+
                        '(SELECT voucher_no,voucher_tmp,trans_date,code_account,deskripsi,kepada,paid_amount,saldo_debit from v_titipan_bpjs_penerimaan_kas where code_account=''2130.07'' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+') '+
                        'UNION ALL '+
                        '(select voucher_no,'''' voucher_tmp,trans_date,code_account,description deskripsi, case when code_account=''2130.02'' then ''Hutang Pajak - PPh.Ps.23'' when code_account=''2130.01'' then ''Hutang Pajak - PPh.Ps.21'' END kepada, '+
                        'paid_amount saldo_kredit, 0 saldo_debit from '+
                        '(SELECT a.voucher_no,a.trans_date,a.description,b.code_account,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)j where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and code_account=''2130.07''  order by trans_date,voucher_no Asc))xx '+
                        'LEFT JOIN (select DISTINCT k.voucher_no,K.trans_date as periode1,k.to_ as kepada,l.supplier_code from (select a.voucher_no,a.trans_date ,a.to_ from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) k '+
                        'left join t_supplier l on k.to_=l.supplier_name where k.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+') r on xx.voucher=r.voucher_no  LEFT JOIN t_paid_debt_det t on t.periode1=r.periode1 '+
                        'and r.supplier_code=t.supplier_code LEFT JOIN "V_do_lpb2" v  on t.faktur_no=v.no_fp_no_inv where case WHEN t.npph is null then 0 else t.npph end <> 0 ) '+
                        'UNION ALL '+
                        '(select a.bk_no voucher, b.voucher_tmp, b.trans_date tanggal, b.code_account, c.deskripsi,b.to_ as kepada, '+
                        'c.no_fp_no_inv nofaktur,0 ::float saldo_kredit, 0 ::float saldo_debit,c.dpp,c.pph23 saldo,0 ppn from t_payment_detail_real a left join (select a.voucher_no,a.voucher_tmp, b.trans_date,b.code_account,a.to_  '+
                        'from t_cash_bank_expenditure a '+
                        'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) b  on a.bk_no=b.voucher_no left join "V_do_lpb2" c on a.voucher_no=c.voucher  where b.code_account=''2130.07'' and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and a.source_id=3 and no_fp_no_inv is not null ) '+
                        'UNION ALL '+
                        '(SELECT voucher_no as voucher,'''' voucher_tmp,trans_date as tanggal,code_account,description deskripsi,for_acceptance as kepada,'''' as nofaktur, 0 saldo_kredit,  0 saldo_debit,0 as dpp,paid_amount as saldo,0 ppn  from '+
                        '(SELECT a.voucher_no,a.trans_date,b.code_account,a.description,a.for_acceptance,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)t where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+'  and code_account=''2130.07'' order by trans_date,voucher_no Asc) '+
                        'UNION ALL '+
                        'SELECT '''' as voucher,'''' as voucher_tmp,b.receive_date,a.account_pph_code, (case when a.account_pph_code=''2130.02'' then ''Hutang Pajak - PPh.Ps.23'' when a.account_pph_code=''2130.01'' then ''Hutang Pajak - PPh.Ps.21'' '+
                        'when a.account_pph_code=''2130.03'' then ''Hutang Pajak - PPh.Ps.25''  when a.account_pph_code=''2130.04'' then ''Hutang Pajak - PPh.Ps.4(2)'' when a.account_pph_code=''2130.07'' then ''Hutang Pajak - PPh.Ps.15'' '+
                        ' when a.account_pph_code=''2130.06'' then ''Hutang Pajak - PPh.Ps.22'' else a.account_pph_code end) as deskripsi, '+
                        'supplier_name as kepada,b.faktur_no,0 saldo_kredit,0 saldo_debit,a.subtotalrp as dpp,a.pph_rp as saldo ,a.ppn_rp from t_item_receive_det a  left join t_item_receive b on a.receive_no=b.receive_no  LEFT JOIN t_supplier d on b.supplier_code=d.supplier_code '+
                        'where b.receive_date > ''2024-01-01'' and b.receive_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and a.account_pph_code=''2130.07'' and a.receive_no not in (select lpb_no from t_buy_pay) '+
                        'UNION ALL '+
                        '(SELECT a.bk_no as voucher,'''' as voucher_tmp,a.trans_date as tgl,b.account_code,notes deskripsi,'''' as kepada,''''as nofaktur,0 saldo_kredit,0 saldo_debit,0 as dpp,-(b.debit) as saldo,0 ppn FROM t_memorial_journal a '+
                        'LEFT JOIN t_memorial_journal_detail b ON a.memo_no=b.memo_no WHERE b.account_code='+QuotedStr(edkode_akun.EditValue)+' and '+
                        ' a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and b.debit <0  order by a.trans_date asc))yy where yy.voucher is not null  order by yy.tanggal,yy.voucher,yy.faktur_no asc';
               open;
           end;
           with frxrekapkreditrx do
           begin
              frxrekapkreditrx.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rekap_Hutang_Kredit.fr3');
              ReportOptions.Name := 'Rekap hutang akun kredit';
              with ScriptText do
              begin
                clear;
                add('var periode,prsh,judul: string;');
                add('begin');
                Add('judul:='''+'REKAP HUTANG '+UpperCase(Ed_Account.EditValue)+  ''' ;' );
                Add('periode:='''+'PERIODE '+formatdatetime('dd mmmm yyyy',DTPick1.EditValue)+' s/d '+formatdatetime('dd mmmm yyyy',DTPick2.EditValue)+''' ;' );
                //Add('prsh:='''+dm.qperusahaan.fieldbyname('company_name').asstring+  ''' ;' );
                add('end.');
              end;
              ShowReport;
           end;
        end
        else
        begin
           with unirekapkredittrx do
           begin
              close;
              sql.Clear;
              sql.Text:='select yy.* from '+
                        '( '+
                        '(select distinct xx.voucher,xx.voucher_tmp,xx.tanggal,xx.account_code,v.deskripsi,xx.kepada,t.faktur_no,0 ::float saldo_kredit,0 ::float saldo_debit, '+
                        'case WHEN v.dpp is null then 0 else v.dpp end dpp,  case WHEN t.npph is null then 0 else t.npph end saldo,0 ppn from '+
                        '(select a.voucher,b.voucher_tmp,b.trans_date tanggal,a.account_code,a.description as deskripsi,b.to_ as kepada,a.saldo saldo_kredit,case when c.saldo  is null then 0 else c.saldo end saldo_debit from  '+
                        '(select * from t_credit_trx_real where account_code='+QuotedStr(edkode_akun.EditValue)+')a  left join (select distinct voucher_no,voucher_tmp,to_,trans_date from '+
                        '(select a.voucher_no,a.voucher_tmp,a.to_,b.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)r where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and substring(voucher_no,1,2)=''BK'' '+
                        'union all '+
                        'select distinct voucher_no,voucher_tmp,to_,trans_date as tanggal from (select a.voucher_no,a.voucher_tmp,a.to_,b.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)s '+
                        'where  substring(voucher_no,1,2)=''KK'' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+')b on a.VOUCHER=b.voucher_no left join t_debit_trx_real c on a.voucher=c.voucher where b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                        'UNION ALL '+
                        '(SELECT voucher_no,voucher_tmp,trans_date,code_account,deskripsi,kepada,paid_amount,saldo_debit from v_titipan_bpjs_penerimaan_kas where code_account=''2130.07'' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+') '+
                        'UNION ALL '+
                        '(select voucher_no,'''' voucher_tmp,trans_date,code_account,description deskripsi, case when code_account=''2130.02'' then ''Hutang Pajak - PPh.Ps.23'' when code_account=''2130.01'' then ''Hutang Pajak - PPh.Ps.21'' END kepada, '+
                        'paid_amount saldo_kredit, 0 saldo_debit from '+
                        '(SELECT a.voucher_no,a.trans_date,a.description,b.code_account,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)j where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and code_account=''2130.07''  order by trans_date,voucher_no Asc))xx '+
                        'LEFT JOIN (select DISTINCT k.voucher_no,K.trans_date as periode1,k.to_ as kepada,l.supplier_code from (select a.voucher_no,a.trans_date ,a.to_ from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) k '+
                        'left join t_supplier l on k.to_=l.supplier_name where k.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+') r on xx.voucher=r.voucher_no  LEFT JOIN t_paid_debt_det t on t.periode1=r.periode1 '+
                        'and r.supplier_code=t.supplier_code LEFT JOIN "V_do_lpb2" v  on t.faktur_no=v.no_fp_no_inv where case WHEN t.npph is null then 0 else t.npph end <> 0 ) '+
                        'UNION ALL '+
                        '(select a.bk_no voucher, b.voucher_tmp, b.trans_date tanggal, b.code_account, c.deskripsi,b.to_ as kepada, '+
                        'c.no_fp_no_inv nofaktur,0 ::float saldo_kredit, 0 ::float saldo_debit,c.dpp,c.pph23 saldo,0 ppn from t_payment_detail_real a left join (select a.voucher_no,a.voucher_tmp, b.trans_date,b.code_account,a.to_  '+
                        'from t_cash_bank_expenditure a '+
                        'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) b  on a.bk_no=b.voucher_no left join "V_do_lpb2" c on a.voucher_no=c.voucher  where b.code_account=''2130.07'' and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and a.source_id=3 and no_fp_no_inv is not null ) '+
                        'UNION ALL '+
                        '(SELECT voucher_no as voucher,'''' voucher_tmp,trans_date as tanggal,code_account,description deskripsi,for_acceptance as kepada,'''' as nofaktur, 0 saldo_kredit,  0 saldo_debit,0 as dpp,paid_amount as saldo,0 ppn  from '+
                        '(SELECT a.voucher_no,a.trans_date,b.code_account,a.description,a.for_acceptance,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)t where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+'  and code_account=''2130.07'' order by trans_date,voucher_no Asc) '+
                        'UNION ALL '+
                        'SELECT '''' as voucher,'''' as voucher_tmp,b.receive_date,a.account_pph_code, (case when a.account_pph_code=''2130.02'' then ''Hutang Pajak - PPh.Ps.23'' when a.account_pph_code=''2130.01'' then ''Hutang Pajak - PPh.Ps.21'' '+
                        'when a.account_pph_code=''2130.03'' then ''Hutang Pajak - PPh.Ps.25''  when a.account_pph_code=''2130.04'' then ''Hutang Pajak - PPh.Ps.4(2)'' when a.account_pph_code=''2130.07'' then ''Hutang Pajak - PPh.Ps.15'' '+
                        ' when a.account_pph_code=''2130.06'' then ''Hutang Pajak - PPh.Ps.22'' else a.account_pph_code end) as deskripsi, '+
                        'supplier_name as kepada,b.faktur_no,0 saldo_kredit,0 saldo_debit,a.subtotalrp as dpp,a.pph_rp as saldo ,a.ppn_rp from t_item_receive_det a  left join t_item_receive b on a.receive_no=b.receive_no  LEFT JOIN t_supplier d on b.supplier_code=d.supplier_code '+
                        'where b.receive_date > ''2024-01-01'' and b.receive_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and a.account_pph_code=''2130.07'' and a.receive_no not in (select lpb_no from t_buy_pay) '+
                        'UNION ALL '+
                        '(SELECT a.bk_no as voucher,'''' as voucher_tmp,a.trans_date as tgl,b.account_code,notes deskripsi,'''' as kepada,''''as nofaktur,0 saldo_kredit,0 saldo_debit,0 as dpp,-(b.debit) as saldo,0 ppn FROM t_memorial_journal a '+
                        'LEFT JOIN t_memorial_journal_detail b ON a.memo_no=b.memo_no WHERE b.account_code='+QuotedStr(edkode_akun.EditValue)+' and '+
                        ' a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and b.debit <0  order by a.trans_date asc))yy where yy.voucher is not null  order by yy.tanggal,yy.voucher,yy.faktur_no asc';
               open;
           end;
           with frxrekapkreditrx do
           begin
              frxrekapkreditrx.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rekap_Hutang_Kredit.fr3');
              ReportOptions.Name := 'Rekap hutang akun kredit';
              with ScriptText do
              begin
                clear;
                add('var periode,prsh,judul: string;');
                add('begin');
                Add('judul:='''+'REKAP HUTANG '+UpperCase(Ed_Account.EditValue)+  ''' ;' );
                Add('periode:='''+'PERIODE '+formatdatetime('dd mmmm yyyy',DTPick1.EditValue)+' s/d '+formatdatetime('dd mmmm yyyy',DTPick2.EditValue)+''' ;' );
                //Add('prsh:='''+dm.qperusahaan.fieldbyname('company_name').asstring+  ''' ;' );
                add('end.');
              end;
              ShowReport;
           end;
        end
    //end;
end;

procedure TFlap_Rekap_Hutang_Kredit.cxBarEditItem2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
    with FCari_DaftarPerk do
    begin
       QDaftar_Perk.Close;
       QDaftar_Perk.Open;
    end;
    FCari_DaftarPerk.Caption:='Master Data Perkiraan';
    FCari_DaftarPerk.vpanggil:='Lap_Rekap_Hutang_Kredit';
    FCari_DaftarPerk.ShowModal;
end;


procedure TFlap_Rekap_Hutang_Kredit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=cafree;
end;

procedure TFlap_Rekap_Hutang_Kredit.FormCreate(Sender: TObject);
begin
   realFlap_Rekap_Hutang_Kredit:=self;
end;

procedure TFlap_Rekap_Hutang_Kredit.FormDestroy(Sender: TObject);
begin
   realFlap_Rekap_Hutang_Kredit:=nil;
end;

procedure TFlap_Rekap_Hutang_Kredit.FormShow(Sender: TObject);
begin
    DTPick1.EditValue := Date;
    DTPick2.EditValue := Date;
end;

initialization
  RegisterClass(TFlap_Rekap_Hutang_Kredit);

end.
