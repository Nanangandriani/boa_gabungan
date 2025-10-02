unit URpt_BHKeluarKasdanBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB, MemDS,
  DBAccess, Uni, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxClasses, dxBar, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, cxCalendar, cxDropDownEdit, cxBarEditItem, dxRibbon,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFRpt_BHKeluarKasdanBank = class(TForm)
    rpt: TfrxReport;
    QKasBank: TUniQuery;
    QKasBankvoucher: TStringField;
    QKasBankket: TMemoField;
    QKasBanknm: TMemoField;
    QKasBanknosj: TMemoField;
    QKasBankjum_kas: TFloatField;
    QKasBankjum_bank: TFloatField;
    QKasBankjum_akun_k: TFloatField;
    QKasBankkodesp_k: TStringField;
    QKasBanknamasp_k: TStringField;
    QKasBankkode3: TStringField;
    QKasBankjum_debit_hutang: TFloatField;
    QKasBanknopk: TStringField;
    QKasBanknmpk: TStringField;
    QKasBankjum: TFloatField;
    QKasBankkode3_1: TStringField;
    QKasBankkodesp_k_1: TStringField;
    QKasBanknopk_1: TStringField;
    QKasBankvoucher2: TMemoField;
    QKasBankket2: TMemoField;
    QKasBankjum_kas2: TFloatField;
    QKasBanknourut: TLargeintField;
    QKasBanknomor: TLargeintField;
    frxDBDataset1: TfrxDBDataset;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    DBGridEh1: TDBGridEh;
    QPerusahaan: TUniQuery;
    frxDBDatasetPers: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
function
  FRpt_BHKeluarKasdanBank: TFRpt_BHKeluarKasdanBank;

implementation

{$R *.dfm}

uses UMy_Function;

var
  RealFRpt_BHKeluarKasdanBank: TFRpt_BHKeluarKasdanBank;

function FRpt_BHKeluarKasdanBank: TFRpt_BHKeluarKasdanBank;
begin
  if RealFRpt_BHKeluarKasdanBank <>Nil then
     FRpt_BHKeluarKasdanBank:=FRpt_BHKeluarKasdanBank
  else
     Application.CreateForm(TFRpt_BHKeluarKasdanBank,Result);
end;

procedure TFRpt_BHKeluarKasdanBank.dxBarLargeButton1Click(Sender: TObject);
begin
    if DtMulai.EditValue<> null then
    begin
      with QKasBank do
      begin
          close;
          sql.Clear;
          sql.Text:='SELECT CASE	WHEN	nomor = 1 THEN	voucher ELSE'''' 	END voucher2,CASE WHEN nomor = 1 THEN	ket ELSE'''' 	END ket2, '+
          ' CASE WHEN nomor = 1 THEN	jum_kas ELSE 0 	END jum_kas2,* FROM	(/*X3*/	SELECT	x2.*,"row_number" ( ) OVER (PARTITION BY voucher ORDER BY nourut ASC ) AS nomor FROM'+
          '	(/*X2*/SELECT	xx.voucher,xx.ket,bb.nm,ab.nosj,xx.jum_kas,xx.jum_bank,xx.jum_akun_k,xx.kodesp_k,xx.namasp_k,xx.kode3,xx.jum_debit_hutang,xx.nopk,xx.nmpk,xx.jum,	'+
          '	xx.ROW_NUMBER nourut,xx.kode3,xx.kodesp_k,xx.nopk FROM		'+
          ' (/*xx*/	SELECT DISTINCT	voucher.voucher,voucher.ket,kas.jum_kas,kas.jum_bank,akun_k.jum_akun_k,akun_k.kodesp_k,akun_k.namasp_k,d_hutang.nopk kode3,d_hutang.jum_debit_hutang,'+
          ' k_lain.nopk,k_lain.nmpk,k_lain.jum,ROW_NUMBER ( ) OVER ( ORDER BY voucher.voucher, d_hutang.nopk, akun_k.kodesp_k, k_lain.nopk ) FROM   '+
          '	(/*voucher*/SELECT	kas.voucher_no voucher,(CASE	WHEN kas.code_account =(select f_debt_master(1)) THEN	concat ( kas.to_, '' '' ) '+
          ' WHEN kas.code_account =(select f_debt_master(2))  THEN	concat ( kas.to_,'' '') WHEN kas.code_account =(select f_debt_master(3)) '+
          ' THEN	concat ( kas.to_,'' '' ) ELSE concat ( kas.remark, '' '', ''('', kas.to_, '')'' ) END ) AS ket,kas.code_account AS nopk,'+
          ' pk.account_name AS nmpk,kas.code_account AS kd3,"position" FROM ( select a.*,b.code_account,b."position" from t_cash_bank_expenditure a '+
          ' INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)  kas LEFT JOIN t_ak_account pk ON kas.code_account = pk.code '+
          ' WHERE( kas.trans_date = '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.EditValue))+' ) AND ( kas."position" = ''D'' ) AND '+
          ' (SUBSTRING ( kas.voucher_no, 1, 2 ) <> ''KC'' ) AND ( SUBSTRING ( kas.voucher_no, 1, 2 ) <> ''KM'' ) '+
          ' /*voucher*/) voucher '+
          ' LEFT JOIN ( /*kas*/select a.voucher_no voucher,b.code_account,case when a.module_id=6 then ( CASE WHEN a.currency = ''USD'' THEN '+
          ' SUM(amount * kurs) ELSE SUM (amount) END )  else 0 end jum_kas,case when a.module_id=5 then ( CASE WHEN a.currency = ''USD'' THEN '+
          ' SUM(amount * kurs) ELSE SUM (amount) END )  else 0 end jum_bank from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b'+
          ' on a.voucher_no=b.no_voucher WHERE "position" = ''K'' AND ( SUBSTRING ( voucher_no, 1, 2 ) <> ''KC'' ) GROUP BY a.voucher_no,b.code_account,a.currency,a.module_id/*kas*/) kas'+
          ' ON kas.voucher = voucher.voucher '+
          ' /*kas bank*/'+
          ' LEFT JOIN (/*akun_k*/ SELECT DISTINCT A.no_voucher voucher,A.code_account AS kodesp_k,( CASE WHEN currency = ''USD'' THEN SUM (A.paid_amount * A.kurs) ELSE SUM (A.paid_amount) END )'+
          ' jum_akun_k,b.account_name AS namasp_k FROM (select a.currency,a.kurs,b.* from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) A,'+
          ' t_ak_account b WHERE A.code_account = b.code AND A."position" = ''K'' AND (a.code_account not in  (select account_no from t_bank) ) AND A.code_account <> ( select f_debt_master(4))AND'+
          ' ( SUBSTRING ( A.no_voucher, 1, 2 ) <> ''KC'' ) GROUP BY a.no_voucher,a.code_account,b.account_name,a.currency /*akun_k*/ ) akun_k ON akun_k.voucher = voucher.voucher '+
          ' LEFT JOIN (/*D_hutang*/SELECT A	.voucher_no voucher,( CASE WHEN A.currency = ''USD'' THEN A.amount* a.kurs ELSE A.amount END ) jum_debit_hutang,b.code_account nopk FROM '+
          ' t_cash_bank_expenditure A INNER JOIN t_cash_bank_expenditure_det b on A.voucher_no= b.no_voucher'+
          ' WHERE ( b.position= ''D'' ) AND ( code_account = (select f_debt_master(1)))  /*D_hutang*/) D_hutang ON D_hutang.voucher = voucher.voucher AND D_hutang.nopk = voucher.nopk'+
          ' LEFT JOIN (/*d_lain2*/SELECT	a.voucher_no voucher,( CASE WHEN a.currency = ''USD'' THEN SUM (a.amount * a.kurs ) ELSE SUM ( amount ) END )jum_debit_lain2,b.code_account nopk,'+
          ' name_account nmpk FROM t_cash_bank_expenditure A INNER JOIN t_cash_bank_expenditure_det b on A.voucher_no= b.no_voucher  WHERE( "position" = ''D'') AND (SUBSTRING (a.voucher_no, 1, 2) <> ''KC'')'+
          ' AND b.code_account <> (select f_debt_master(1)) GROUP BY a.voucher_no,b.code_account,b.name_account,a.currency /*d_lain2*/) D_lain2 ON D_lain2.voucher = voucher.voucher AND D_lain2.nopk = voucher.nopk'+
          ' LEFT JOIN (SELECT DISTINCT A.voucher_no voucher,a.nopk,a.nmpk,A.jum,A.urt FROM (/*A*/SELECT DISTINCT a.voucher_no,b.code_account AS nopk,b.name_account AS nmpk, '+
          '	(CASE WHEN a.currency = ''USD'' THEN SUM ( a.amount * a.kurs ) ELSE SUM ( a.amount ) END ) jum,''1'' AS urt  FROM t_cash_bank_expenditure a INNER join t_cash_bank_expenditure_det b '+
          '  on a.voucher_no=b.no_voucher WHERE ( a.trans_date = '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.EditValue))+' ) AND (b."position" = ''D'') AND ( SUBSTRING ( a.voucher_no, 1, 12 ) <> ''KC'' )'+
          ' AND b.code_account <> (select f_debt_master(1)) AND (	( SUBSTRING (b.code_account, 1, 4 ) <> ''1113'' AND SUBSTRING ( a.voucher_no, 1, 2 ) = ''BM'' ) 	OR ( SUBSTRING (a.voucher_no, 1, 2 ) = ''BK''))'+
          ' GROUP BY a.voucher_no,b.code_account,b.name_account,a.currency /*A*/) A ) k_lain ON ( k_lain.voucher= voucher.voucher AND k_lain.nopk = voucher.nopk AND urt = ''2'') OR ( k_lain.voucher= voucher.voucher AND k_lain.nopk = voucher.nopk  AND urt = ''1'')'+
          ' ORDER BY voucher.voucher, d_hutang.nopk, akun_k.kodesp_k, k_lain.nopk) xx'+
          ' LEFT JOIN (SELECT A.voucher_no voucher,A.trans_date tgl_trans,string_agg ( concat ( ''SJ.'', b.sj_no ), '','' ) nosj,	C.supplier_name nm_supplier FROM	 t_cash_bank_expenditure_payable A inner join	'+
          ' t_purchase_invoice b on A.invoice_no = b.trans_no  inner join t_supplier C on b.supplier_code = C.supplier_code GROUP BY	A.voucher_no,	A.trans_date,	C.supplier_name ) ab ON  ab.voucher = xx.voucher'+
          '	LEFT JOIN LATERAL (SELECT	string_agg ( concat ( item_name, '' '', to_char( tot_qty, ''99,999,999FM''), '' '', unit ), '','' ) nm FROM'+
          '	(SELECT C.item_code,	C.item_name,b.unit,SUM ( b.qty ) AS tot_qty FROM (SELECT DISTINCT invoice_no no_lpb FROM t_cash_bank_expenditure_payable '+
          ' WHERE voucher_no = xx.voucher )	 A '+
          ' LEFT JOIN ( SELECT A.* FROM t_purchase_invoice_det A INNER JOIN t_purchase_invoice b ON A.trans_no= b.trans_no WHERE b.account_code= ''2110'') b ON A.no_lpb = b.trans_no '+
          ' LEFT JOIN t_item_stock C ON b.item_stock_code = C.item_stock_code  GROUP BY	C.item_code,C.item_name,b.unit ORDER BY	C.item_name,b.unit) A ) bb ON 1 = 1 /*x2*/ )x2)x3 ';
          ExecSQL;
      end;
        Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BHKeluar_KasdanBank_try.Fr3');
        SetMemo(Rpt,'MemoPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.EditValue));
        rpt.ShowReport();
    end else
      ShowMessage('Tanggal tidak boleh kosong');
end;

procedure TFRpt_BHKeluarKasdanBank.DxRefreshClick(Sender: TObject);
begin
  with QKasBank do
  begin
      close;
      sql.Clear;
      sql.Text:='SELECT CASE	WHEN	nomor = 1 THEN	voucher ELSE'''' 	END voucher2,CASE WHEN nomor = 1 THEN	ket ELSE'''' 	END ket2, '+
      ' CASE WHEN nomor = 1 THEN	jum_kas ELSE 0 	END jum_kas2,* FROM	(/*X3*/	SELECT	x2.*,"row_number" ( ) OVER (PARTITION BY voucher ORDER BY nourut ASC ) AS nomor FROM'+
      '	(/*X2*/SELECT	xx.voucher,xx.ket,bb.nm,ab.nosj,xx.jum_kas,xx.jum_bank,xx.jum_akun_k,xx.kodesp_k,xx.namasp_k,xx.kode3,xx.jum_debit_hutang,xx.nopk,xx.nmpk,xx.jum,	'+
      '	xx.ROW_NUMBER nourut,xx.kode3,xx.kodesp_k,xx.nopk FROM		'+
      ' (/*xx*/	SELECT DISTINCT	voucher.voucher,voucher.ket,kas.jum_kas,kas.jum_bank,akun_k.jum_akun_k,akun_k.kodesp_k,akun_k.namasp_k,d_hutang.nopk kode3,d_hutang.jum_debit_hutang,'+
      ' k_lain.nopk,k_lain.nmpk,k_lain.jum,ROW_NUMBER ( ) OVER ( ORDER BY voucher.voucher, d_hutang.nopk, akun_k.kodesp_k, k_lain.nopk ) FROM   '+
	    '	(/*voucher*/SELECT	kas.voucher_no voucher,(CASE	WHEN kas.code_account =(select f_debt_master(1)) THEN	concat ( kas.to_, '' '' ) '+
      ' WHEN kas.code_account =(select f_debt_master(2))  THEN	concat ( kas.to_,'' '') WHEN kas.code_account =(select f_debt_master(3)) '+
      ' THEN	concat ( kas.to_,'' '' ) ELSE concat ( kas.remark, '' '', ''('', kas.to_, '')'' ) END ) AS ket,kas.code_account AS nopk,'+
      ' pk.account_name AS nmpk,kas.code_account AS kd3,"position" FROM ( select a.*,b.code_account,b."position" from t_cash_bank_expenditure a '+
      ' INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)  kas LEFT JOIN t_ak_account pk ON kas.code_account = pk.code '+
      ' WHERE( kas.trans_date = '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.EditValue))+' ) AND ( kas."position" = ''D'' ) AND '+
      ' (SUBSTRING ( kas.voucher_no, 1, 2 ) <> ''KC'' ) AND ( SUBSTRING ( kas.voucher_no, 1, 2 ) <> ''KM'' ) '+
      ' /*voucher*/) voucher '+
      ' LEFT JOIN ( /*kas*/select a.voucher_no voucher,b.code_account,case when a.module_id=6 then ( CASE WHEN a.currency = ''USD'' THEN '+
      ' SUM(amount * kurs) ELSE SUM (amount) END )  else 0 end jum_kas,case when a.module_id=5 then ( CASE WHEN a.currency = ''USD'' THEN '+
      ' SUM(amount * kurs) ELSE SUM (amount) END )  else 0 end jum_bank from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b'+
      ' on a.voucher_no=b.no_voucher WHERE "position" = ''K'' AND ( SUBSTRING ( voucher_no, 1, 2 ) <> ''KC'' ) GROUP BY a.voucher_no,b.code_account,a.currency,a.module_id/*kas*/) kas'+
      ' ON kas.voucher = voucher.voucher '+
      ' /*kas bank*/'+
      ' LEFT JOIN (/*akun_k*/ SELECT DISTINCT A.no_voucher voucher,A.code_account AS kodesp_k,( CASE WHEN currency = ''USD'' THEN SUM (A.paid_amount * A.kurs) ELSE SUM (A.paid_amount) END )'+
      ' jum_akun_k,b.account_name AS namasp_k FROM (select a.currency,a.kurs,b.* from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) A,'+
      ' t_ak_account b WHERE A.code_account = b.code AND A."position" = ''K'' AND (a.code_account not in  (select account_no from t_bank) ) AND A.code_account <> ( select f_debt_master(4))AND'+
      ' ( SUBSTRING ( A.no_voucher, 1, 2 ) <> ''KC'' ) GROUP BY a.no_voucher,a.code_account,b.account_name,a.currency /*akun_k*/ ) akun_k ON akun_k.voucher = voucher.voucher '+
      ' LEFT JOIN (/*D_hutang*/SELECT A	.voucher_no voucher,( CASE WHEN A.currency = ''USD'' THEN A.amount* a.kurs ELSE A.amount END ) jum_debit_hutang,b.code_account nopk FROM '+
      ' t_cash_bank_expenditure A INNER JOIN t_cash_bank_expenditure_det b on A.voucher_no= b.no_voucher'+
      ' WHERE ( b.position= ''D'' ) AND ( code_account = (select f_debt_master(1)))  /*D_hutang*/) D_hutang ON D_hutang.voucher = voucher.voucher AND D_hutang.nopk = voucher.nopk'+
      ' LEFT JOIN (/*d_lain2*/SELECT	a.voucher_no voucher,( CASE WHEN a.currency = ''USD'' THEN SUM (a.amount * a.kurs ) ELSE SUM ( amount ) END )jum_debit_lain2,b.code_account nopk,'+
      ' name_account nmpk FROM t_cash_bank_expenditure A INNER JOIN t_cash_bank_expenditure_det b on A.voucher_no= b.no_voucher  WHERE( "position" = ''D'') AND (SUBSTRING (a.voucher_no, 1, 2) <> ''KC'')'+
      ' AND b.code_account <> (select f_debt_master(1)) GROUP BY a.voucher_no,b.code_account,b.name_account,a.currency /*d_lain2*/) D_lain2 ON D_lain2.voucher = voucher.voucher AND D_lain2.nopk = voucher.nopk'+
      ' LEFT JOIN (SELECT DISTINCT A.voucher_no voucher,a.nopk,a.nmpk,A.jum,A.urt FROM (/*A*/SELECT DISTINCT a.voucher_no,b.code_account AS nopk,b.name_account AS nmpk, '+
      '	(CASE WHEN a.currency = ''USD'' THEN SUM ( a.amount * a.kurs ) ELSE SUM ( a.amount ) END ) jum,''1'' AS urt  FROM t_cash_bank_expenditure a INNER join t_cash_bank_expenditure_det b '+
      '  on a.voucher_no=b.no_voucher WHERE ( a.trans_date = '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.EditValue))+' ) AND (b."position" = ''D'') AND ( SUBSTRING ( a.voucher_no, 1, 12 ) <> ''KC'' )'+
      ' AND b.code_account <> (select f_debt_master(1)) AND (	( SUBSTRING (b.code_account, 1, 4 ) <> ''1113'' AND SUBSTRING ( a.voucher_no, 1, 2 ) = ''BM'' ) 	OR ( SUBSTRING (a.voucher_no, 1, 2 ) = ''BK''))'+
      ' GROUP BY a.voucher_no,b.code_account,b.name_account,a.currency /*A*/) A ) k_lain ON ( k_lain.voucher= voucher.voucher AND k_lain.nopk = voucher.nopk AND urt = ''2'') OR ( k_lain.voucher= voucher.voucher AND k_lain.nopk = voucher.nopk  AND urt = ''1'')'+
      ' ORDER BY voucher.voucher, d_hutang.nopk, akun_k.kodesp_k, k_lain.nopk) xx'+
      ' LEFT JOIN (SELECT A.voucher_no voucher,A.trans_date tgl_trans,string_agg ( concat ( ''SJ.'', b.sj_no ), '','' ) nosj,	C.supplier_name nm_supplier FROM	 t_cash_bank_expenditure_payable A inner join	'+
      ' t_purchase_invoice b on A.invoice_no = b.trans_no  inner join t_supplier C on b.supplier_code = C.supplier_code GROUP BY	A.voucher_no,	A.trans_date,	C.supplier_name ) ab ON  ab.voucher = xx.voucher'+
      '	LEFT JOIN LATERAL (SELECT	string_agg ( concat ( item_name, '' '', to_char( tot_qty, ''99,999,999FM''), '' '', unit ), '','' ) nm FROM'+
      '	(SELECT C.item_code,	C.item_name,b.unit,SUM ( b.qty ) AS tot_qty FROM (SELECT DISTINCT invoice_no no_lpb FROM t_cash_bank_expenditure_payable '+
      ' WHERE voucher_no = xx.voucher )	 A '+
      ' LEFT JOIN ( SELECT A.* FROM t_purchase_invoice_det A INNER JOIN t_purchase_invoice b ON A.trans_no= b.trans_no WHERE b.account_code= ''2110'') b ON A.no_lpb = b.trans_no '+
      ' LEFT JOIN t_item_stock C ON b.item_stock_code = C.item_stock_code  GROUP BY	C.item_code,C.item_name,b.unit ORDER BY	C.item_name,b.unit) A ) bb ON 1 = 1 /*x2*/ )x2)x3 ';
      ExecSQL;
  end;
    if QKasBank.RecordCount=0 then
    begin
      ShowMessage('tidak ada transaksi');
    end;
end;

procedure TFRpt_BHKeluarKasdanBank.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=CaFree;
end;

procedure TFRpt_BHKeluarKasdanBank.FormCreate(Sender: TObject);
begin
   RealFRpt_BHKeluarKasdanBank:=Self;
end;

procedure TFRpt_BHKeluarKasdanBank.FormDestroy(Sender: TObject);
begin
  RealFRpt_BHKeluarKasdanBank:=Nil;
end;

procedure TFRpt_BHKeluarKasdanBank.FormShow(Sender: TObject);
begin
    DTMulai.EditValue:=date();
    DTSelesai.EditValue:=date();
end;

initialization
RegisterClass(TFRpt_BHKeluarKasdanBank);

end.
