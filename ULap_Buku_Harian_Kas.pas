unit ULap_Buku_Harian_Kas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  dxRibbon, dxBar, cxClasses, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  cxCalendar, cxBarEditItem, frxClass, Data.DB, MemDS, DBAccess, Uni, frxDBSet;

type
  TFLap_Buku_Harian_Kas = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DBGridSupplier: TDBGridEh;
    DBGridEh1: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    datetimepicker1: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    frxDBDataset4: TfrxDBDataset;
    QPerusahaan: TUniQuery;
    frxReport2: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    QKet: TUniQuery;
    DateTimePicker2: TcxBarEditItem;
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure datetimepicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //vKODEPRSH :string;
  end;

var
  FLap_Buku_Harian_Kas: TFLap_Buku_Harian_Kas;

implementation

{$R *.dfm}

uses UMy_Function, UHomeLogin;

procedure TFLap_Buku_Harian_Kas.datetimepicker1Change(Sender: TObject);
begin
   datetimepicker2.EditValue:=datetimepicker1.EditValue;
end;

procedure TFLap_Buku_Harian_Kas.dxBarLargeButton3Click(Sender: TObject);
begin
    with QKet do
    begin
       close;
       sql.Clear;
       sql.Text:=' select *, round(cast(sum(sa+db-kredit) over (ORDER BY nomor asc ) as numeric),2) saldo from '+
                 '( /*transaksi*/ '+
                 'select "row_number"() over (order by no_voucher)+1 nomor ,no_voucher,code_account,"position",tgltrans,to_,nm,nosj,remark,ket2,0 sa,db,kredit  from '+
                 '(select no_voucher,code_account,"position",trans_date as tgltrans,"to_", '+
                 '(case when y.acc_balance is null then x."to_"  when y.acc_balance=''2110'' then  nm  '+
                 'when y.acc_balance=''2130'' then '''' '+
                 'when y.acc_balance=''2120'' then nm end) as nm,nosj,remark, '+
                 '(case when acc_balance is null then  concat(x.remark,'' '')  '+
                 'when acc_balance=''2110'' then x."to_"  '+
                 'when acc_balance=''2130'' then x."to_"  '+
                 'when acc_balance=''2120'' then x."to_" end) as ket2,0 db ,jumlah kredit from '+
                 '(select d.no_voucher,d.code_account,d."position",d.trans_date,k.remark,k.to_, '+
                 '(case when k."currency"=''USD'' then k.amount*k.kurs else k.amount end) jumlah from t_cash_bank_expenditure_det d '+
                 'INNER JOIN t_cash_bank_expenditure k ON d.no_voucher=k.voucher_no '+
                 'left join (select e.no_voucher,e.code_account,(case when f.currency=''USD'' then f.amount*f.kurs else f.amount end) pph23 from t_cash_bank_expenditure_det e '+
                 'INNER JOIN t_cash_bank_expenditure f ON e.no_voucher=f.voucher_no '+
                 'where e.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.EditValue)) + ' and e.code_account=''2142'' and f.company_code='+QuotedStr(FHomeLogin.vKodePRSH)+' '+
                 ') e on d.no_voucher=e.no_voucher '+
                 'where d.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.EditValue)) + ' and d.code_account=''1111'' and k.company_code='+QuotedStr(FHomeLogin.vKodePRSH)+' '+
                 ')x '+
                 'left join '+
                 '(SELECT distinct voucher_no,string_agg (concat(item_name,'' '',to_char(qty,''FM999G999G990''),'' '',unit),'', '')nm,acc_balance  FROM '+
                 '(SELECT  a.voucher_no,max(a.id)id,a.item_name,sum(a.qty) qty,a.unit,acc_balance  FROM '+
                 '(SELECT distinct a.voucher_no,e.id,f.item_name,sum(e.qty) qty,e.unit,b.code as acc_balance  FROM t_cash_bank_expenditure_payable a '+
                 'INNER JOIN t_ak_account b  on a.account_acc= b.code '+
                 'LEFT JOIN t_item_receive d ON a.invoice_no= d.receive_no '+
                 'INNER JOIN t_item_receive_det e ON d.receive_no=e.receive_no '+
                 'INNER JOIN t_item_stock f ON e.item_stock_code=f.item_stock_code '+
                 'where a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.EditValue)) +'  GROUP BY a.voucher_no,e.id,f.item_name,e.unit,b.code ) a  GROUP BY a.voucher_no,a.item_name,a.unit,a.acc_balance ) a '+
                 'GROUP BY voucher_no,acc_balance ) y ON x.no_voucher=y.voucher_no '+
                 'left join '+
                 '(SELECT voucher_no, string_agg (concat(''SJ.'',a.sj_no), '', '' ) nosj  FROM '+
                 '(SELECT * FROM '+
                 '(SELECT "row_number"() over (PARTITION by voucher_no order by invoice_no) URUT,a.voucher_no,invoice_no,b.sj_no,b.receive_date '+
                 'FROM t_cash_bank_expenditure_payable a '+
                 'LEFT JOIN t_item_receive b ON a.invoice_no= b.receive_no '+
                 'WHERE a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.EditValue)) +' GROUP BY a.voucher_no,a.invoice_no,a.sj_no,b.sj_no,b.receive_date '+
                 'ORDER BY b.receive_date,a.invoice_no)A ORDER BY voucher_no,sj_no,receive_date) a GROUP BY voucher_no,sj_no,receive_date ) z  ON y.voucher_no=z.voucher_no '+
                 'UNION ALL '+
                 'select a.no_voucher,a.code_account as kodesp,a."position",a.trans_date as tgltrans,'''' kepada,'''' nm,'''' nosj,description as ket,description as ket2,paid_amount debit,0 kredit from t_cash_bank_expenditure_det a '+
                 'INNER JOIN t_cash_bank_expenditure b on a.no_voucher=b.voucher_no '+
                 'where a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.EditValue)) +' and code_account=''1111'' and company_code='+QuotedStr(FHomeLogin.vKodePRSH)+' '+
                 'UNION ALL '+
                 'select voucher_no as voucher,code_account as kodesp,''D''::character varying as dk,trans_date as tgltrans,'''' kepada,'''' nm,'''' sj,description::character varying as ket, description::character varying as ket2,paid_amount debit,0 kredit from '+
                 't_cash_bank_acceptance_det where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.EditValue))+' and  '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.EditValue)) +' '+
                 'UNION ALL '+
                 'SELECT  voucher,kredit_account as kodesp,''K''::character varying as dk,tgltrans,''''kepada,'''' nm, '''' sj,information::character varying as ket,information::character varying as ket2,debit,kredit from '+
                 '(select a.adjustment_proof_no as voucher,b.kredit_account,''K''::character varying as dk,a."date" as tgltrans,a.information,a.information as ket2,b.debit,b.kredit from t_adjustment_journal a '+
                 'INNER JOIN t_adjustment_journal_det b ON a.adjustment_proof_no=b.adjustment_proof_no WHERE a."date" between '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.EditValue)) +' '+
                 'and b.kredit_account=''1111'' order by tgltrans,voucher Asc)n ) x '+

                 'UNION '+
                 '/*Saldo awal*/ '+
                 'select 1 nomor,'''' voucher,'''' kodesp,'''' dk,null tgltrans,'''' kepada,'''' nm,'''' nosj,'' Saldo Awal ''  ket,'' Saldo Awal ''  ket2 ,  round(cast((balance+jum_debit+jum_debit2+jum_debit3+jum_debit4-jum_kredit-jum_kredit2) as numeric),2) saldosa,0 db,0 kredit  from '+
                 '(select x.jum_debit,x.jum_debit2,x.jum_kredit,x.jum_kredit2,x.balance,case when c.jum_debit isnull then 0 else c.jum_debit end jum_debit3,x.jum_debit4 from '+
                 '(select b.*,m.jum_kredit2,balance,n.jum_debit4 from '+
                 '(select code as kodesp,balance from t_ak_account where code=''1111'')a '+
                 'INNER JOIN '+
                 '(select x.kodesp,(case when a.jum_debit is null then 0 else a.jum_debit end)jum_debit , '+
                 '(case when c.jumlah is null then 0 else c.jumlah end)jum_debit2, '+
                 '(case when b.jum_kredit is null then 0 else b.jum_kredit end)jum_kredit  from  (select code as kodesp from t_ak_account where code=''1111'')x '+
                 'left join(select code_account,(case when currency=''USD'' then sum(amount*kurs) else sum(amount) end)jum_debit from t_cash_bank_expenditure_det a '+
                 'INNER JOIN t_cash_bank_expenditure b ON a.no_voucher=b.voucher_no '+
                 'where (a.trans_date between ''2024-01-01'' and  '+ QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.EditValue-1))+' )  and code_account=''1111'' and dk=''D'' and company_code='+QuotedStr(FHomeLogin.vKodePRSH)+' '+
                 ' group by code_account,currency order by code_account)a on a.code_account=x.kodesp '+
                 'left join (select code_account,sum(jum_kredit)as jum_kredit from(select code_account,(case when currency=''USD'' then sum(amount*kurs) else sum(amount) end)jum_kredit from t_cash_bank_expenditure_det A '+
                 'INNER JOIN t_cash_bank_expenditure b ON a.no_voucher=b.voucher_no '+
                 'where (a.trans_date between ''2024-10-01'' and  '+ QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.EditValue-1))+' ) and code_account=''1111''  and dk=''K'' and company_code='+QuotedStr(FHomeLogin.vKodePRSH)+' '+
                 'group by code_account,currency order by code_account)x  group by code_account)b on b.code_account=x.kodesp '+
                 'left join(select akun_kredit,sum(paid_amount)as jumlah from '+
                 '(SELECT * from "v_cash_receipts_cutoff" Where trans_date <= '+ QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.EditValue-1))+' )x group by akun_kredit)c on c.akun_kredit=x.kodesp) b on a.kodesp=b.kodesp '+
                 'left join (SELECT ''1111''::character varying as kodesp,(case when sum(kredit) ISNULL then 0 else sum(kredit) end) as jum_kredit2 '+
                 'from t_adjustment_journal a '+
                 'INNER JOIN t_adjustment_journal_det b on a.adjustment_proof_no=b.adjustment_proof_no '+
                 'WHERE a.date between ''2024-01-01'' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.EditValue-1))+' and b.kredit_account=''1111'')m on m.kodesp=b.kodesp '+
                 'LEFT JOIN '+
                 '(SELECT ''1111''::character varying as kodesp,(case when sum(debit) ISNULL then 0 else sum(debit) end) as jum_debit4 from t_adjustment_journal a '+
                 'INNER JOIN t_adjustment_journal_det b on a.adjustment_proof_no=b.adjustment_proof_no '+
                 'WHERE (a."date" between ''2024-01-01'' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.EditValue-1))+' ) and b.kredit_account=''1111'')n on m.kodesp=n.kodesp )x '+
                 'LEFT JOIN  (select a.code_account,sum(a.paid_amount)as jum_debit from t_cash_bank_expenditure_det a,t_cash_bank_expenditure b '+
                 'where a.no_voucher=b.voucher_no and a.code_account=''1111'' and a."position"=''D'' and b.company_code='+QuotedStr(FHomeLogin.vKodePRSH)+' '+
                 'and (a."trans_date" between ''2024-01-01'' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.EditValue-1))+' ) group by a.code_account order by a.code_account) c  on c.code_account=x.kodesp) xx) xxx ORDER BY nomor ASC ';

         Open;
    end;
    frxReport2.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Buku_Harian_Kas.fr3');
    Tfrxmemoview(frxReport2.FindObject('Memperiode')).Memo.Text:='Tanggal  : '+FormatDateTime('dd mmmm yyyy',DateTimePicker1.EditValue);
    frxReport2.ReportOptions.Name:='Buku_Harian_Kas';
    frxreport2.showreport;
end;

Initialization
  RegisterClasses([TFLap_Buku_Harian_Kas]);

end.
