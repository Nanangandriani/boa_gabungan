unit U_cetak_sisa_htg;

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
  dxSkinXmas2008Blue, cxCalendar, cxButtonEdit, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  dxRibbon, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxBar, cxBarEditItem,
  cxClasses, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, DataDriverEh, MemTableEh, frxClass, frxDBSet, MemDS, DBAccess,
  Uni, cxLabel;

type
  TF_cetak_sisa_htg = class(TForm)
    QTgl_hutang: TUniQuery;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    DSsupp: TDataSource;
    Qsupp: TUniQuery;
    frxSisaHutang: TfrxReport;
    QCetakSisaHutang: TUniQuery;
    frxDBDataset_Sisa_Hutang: TfrxDBDataset;
    DSQTgl_Hutang: TDataSource;
    QSisaHutang: TUniQuery;
    MemSisaHutang: TMemTableEh;
    DSisaHutang: TDataSource;
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
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    Ed_supplier: TcxBarEditItem;
    Jenis_Hutang: TdxBarCombo;
    Cb_Valas: TdxBarCombo;
    dp5: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    dtp2: TcxBarEditItem;
    dxRefresh: TdxBarLargeButton;
    ed_code_supp: TcxBarEditItem;
    frxDBDataset4: TfrxDBDataset;
    QPerusahaan: TUniQuery;
    DBGridSisaHutang: TDBGridEh;
    DBGridEh1: TDBGridEh;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    dp1: TcxBarEditItem;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    cxBarEditItem6: TcxBarEditItem;
    dp4: TcxBarEditItem;
    cxBarEditItem8: TcxBarEditItem;
    dxBarLargeButton5: TdxBarLargeButton;
    QSisaHutangprinciple_code: TStringField;
    QSisaHutangprinciple_name: TStringField;
    QSisaHutangtot_hutang: TFloatField;
    QSisaHutangh1: TFloatField;
    QSisaHutangh2: TFloatField;
    QSisaHutangh3: TFloatField;
    QSisaHutangtot_rcn: TFloatField;
    QCetakSisaHutangprinciple_code: TStringField;
    QCetakSisaHutangprinciple_name: TStringField;
    QCetakSisaHutangtot_hutang: TFloatField;
    QCetakSisaHutangh1: TFloatField;
    QCetakSisaHutangh2: TFloatField;
    QCetakSisaHutangh3: TFloatField;
    QCetakSisaHutangtot_rcn: TFloatField;
    QCetakSisaHutanghtg_blm_jatuh_tempo: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure Jenis_HutangChange(Sender: TObject);
    procedure dxRefreshClick(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var  vkd_supp,vkd_jenis_hutang,vkd_sup_account,vkd_header_account:string;
         tgl_htg,tgl_mulai,tgl_cutoff,tgl_saldobank:tdatetime;
    procedure load_item_type;
  end;

var
  F_cetak_sisa_htg: TF_cetak_sisa_htg;

implementation

{$R *.dfm}

uses UDataModule;


procedure TF_cetak_sisa_htg.Jenis_HutangChange(Sender: TObject);
begin
   with dm.Qtemp do
   begin
      close;
      sql.Text:='SELECT a.*,b.*,c.* from t_item_type a '+
                'INNER JOIN v_ak_account b on a.acc_code_pemb=b.code '+
                'INNER JOIN t_purchase_invoice c on b.account_code2=c.account_code '+
                'WHERE type='+Quotedstr(Jenis_Hutang.Text)+' ';
      Open;
      vkd_jenis_hutang:=fieldbyname('acc_code_pemb').AsString;
      vkd_sup_account:=fieldbyname('account_code2').AsString;
      vkd_header_account:=fieldbyname('header_code').AsString;
   end;
     //showmessage(vkd_jenis_hutang);
     //showmessage(vkd_sup_account);
     //showmessage(vkd_header_account);
end;


procedure TF_cetak_sisa_htg.load_item_type;
begin
   with Dm.Qtemp do
   begin
      close;
      sql.Text:='SELECT DISTINCT type from t_item_type WHERE deleted_at IS NULL ';
      Open;
   end;
   Dm.Qtemp.First;
   Jenis_Hutang.Items.Clear;
   while not dm.Qtemp.Eof do
   begin
      Jenis_Hutang.Items.Add(Dm.Qtemp.FieldByName('type').AsString);
      Dm.Qtemp.Next;
   end;
end;

procedure TF_cetak_sisa_htg.dxBarLargeButton4Click(Sender: TObject);
var
  query:string;
  dd,dd2,mm,mm2,yy,yy2:word;
  tgl11,tgl12,tgl21,tgl22:tdatetime;
begin
  with QTgl_hutang do
    begin
        close;
        sql.Clear;
        sql.Add('select * from t_tmpsyst');
        open;
    end;
    tgl_htg:=QTgl_hutang.FieldByName('debt_date').asdatetime;

    DecodeDate(dp4.EditValue,yy,mm,dd);
    DecodeDate(dp5.EditValue,yy2,mm2,dd2);
    tgl11:=dp4.EditValue-7;
    tgl12:=dp4.EditValue-1;
    tgl21:=tgl_htg;
    tgl22:=tgl11-1;


    DBGridSisaHutang.StartLoadingStatus();
    if Jenis_Hutang.Text='DAGANG' then
    begin
        with QCetakSisaHutang do
        begin
            close;
            sql.Clear;
            sql.Text:='select supplier_code principle_code, principle_name, tot_hutang::numeric tot_hutang,h1,h2,h3,tot_rcn,sum(tot_hutang-h1-h2-h3) as htg_blm_jatuh_tempo FROM '+
                      '(SELECT rrr.supplier_code,	rrr.principle_code,	rrr.principle_name,	tot_hutang,	h1,	h2,	h3,	tot_rcn FROM '+
                      '(SELECT * FROM '+
                      '(select supplier_code from t_supplier) s '+
                      'LEFT JOIN (select supp.principle_code,supp.principle_name, '+
                      '(case when hutang.sisa_hutang is null then 0 else hutang.sisa_hutang end)tot_hutang, '+
                      '(case when mggini.sisa_hutang is null then 0 else mggini.sisa_hutang end)h1,(case when mgglalu.sisa_hutang is null then 0 else mgglalu.sisa_hutang end)h2,(case when mgg_lbh.sisa_hutang is null then 0 else mgg_lbh.sisa_hutang end)h3, '+
                      '(case when rcn.tot_rcn is null then 0 else rcn.tot_rcn end)tot_rcn from '+
                      '(select id,supplier_code as principle_code,supplier_name as principle_name from t_supplier order by supplier_code)supp '+
                      'left join (select jj.kodesup,jj.saldo_awal_tahun+jj.kredit '+
                      //+jj.kredit_do
                      '-jj.debit-jj.debit_do-jj.debit_retur-jj.nilai_pot sisa_hutang from '+

                      '(select a.supplier_code as kodesup,case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun,(case when x.nilai is null then 0 else x.nilai end)kredit, '+
                      //--(case when kredit_do.nilai is null then 0 else kredit_do.nilai end)kredit_do,
                      '(case when y.nilai is null then 0 else y.nilai end)debit,(case when debit_do.nilai is null then 0 else debit_do.nilai end)debit_do, '+
                      '(case when z.nilai is null then 0 else z.nilai end)debit_retur, (case when xx.nilai_pot is null then 0 else xx.nilai_pot end)nilai_pot from '+
                      '(select * from t_supplier )a '+
                      'left join (select kodesup,sum(nilai)-sum(nilai_um) as nilai from '+
                      '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from  (select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(nilai*valas_value) else sum(nilai) end)nilai from '+
                      '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where b.code='+Quotedstr(vkd_jenis_hutang)+' '+
                      //'and account_um_code <> ''1151.03''
                      'and  trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue-1))+' )a '+
                      'left join (select trans_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no  group by kodesup,b.po_no,a.valas)a '+
                      'left join(select po_no,supplier_code,sum(um_value)as nilai_um from t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup=b.supplier_code)x '+
                      'group by kodesup )x on a.supplier_code=x.kodesup '+

                      'left join(select supplier_code as kodesup,sum(bayar) as nilai from(select a.voucher_no,a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from '+
                      '(select voucher_no,supplier_code,sum(paid_amount)as bayar,b.code from t_cash_bank_expenditure_payable a '+
                      'INNER JOIN v_ak_account b on a.account_acc= b.account_code2  where b.code='+Quotedstr(vkd_jenis_hutang)+' and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' group by voucher_no,supplier_code,b.code order by voucher_no,supplier_code,b.code)a '+
                      'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real where account_code<>''2130.02'' group by voucher order by voucher)b 	on a.voucher_no=b.voucher)x '+
                      'group by supplier_code order by supplier_code)y on a.supplier_code=y.kodesup '+
                      'left join(select b.supplier_code as kodesup,(case when b.valas=''USD'' then sum(a.total_price*b.valas_value) else sum(a.total_price) end)nilai from t_purchase_return_det a '+
                      'INNER JOIN t_purchase_return b on a.return_no=b.return_no left join t_purchase_invoice dd on b.receive_no=dd.trans_no '+
                      'INNER JOIN v_ak_account ee on dd.account_code= ee.account_code2 where a.return_no=b.return_no and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and ee.code='+Quotedstr(vkd_jenis_hutang)+' '+
                      'group by b.supplier_code,b.valas order by b.supplier_code)z on a.supplier_code=z.kodesup '+
                      'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb left join t_purchase_invoice dd on bb.receive_no=dd.ref_no '+
                      'INNER JOIN v_ak_account ee ON dd.account_code= ee.account_code2 where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and ee.code='+Quotedstr(vkd_jenis_hutang)+' group by bb.supplier_code order by bb.supplier_code)xx on a.supplier_code=xx.supplier_code '+
                      //--left join(select kodesup,sum(nilai)as nilai from(select no_do as noinv,tujuan as kodesup,tgl_do as tanggal,up as kode,ket as keterangan,harga as nilai,1 as urutan from t_do_penjualan where tgl_do between '2022-01-01' and '2025-09-03' and substring(kd_akun,1,4)='2110'
                      //--union all
                      //--select nodo as noinv,kd_supplier_angkutan as kodesup,tgl_do as tanggal,pic as kode,ket as keterangan,harga as nilai,2 as urutan from t_do where tgl_do between '2022-01-01' and '2025-09-03' and substring(kd_akun,1,4)='2110' )x group by kodesup)kredit_do on a.kd_supplier=kredit_do.kodesup
                      'left join(select kodesup,sum(nilai)as nilai from '+
                      '(select a.bk_no as noinv, '+
                      //--(case when c.kd_supplier_angkutan is null then d.tujuan else c.kd_supplier_angkutan end)kodesup '+
                      ' '''' kodesup, b.tgltrans as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan from '+
                      '(select voucher_no ,bk_no ,account_code,remark,pay,4 as urutan from t_payment_detail_real where source_id=3 and account_code='+Quotedstr(vkd_jenis_hutang)+' )a '+
                      'left join '+
                      //--(select distinct voucher,tgltrans from tkas where tgltrans between '2022-01-01' and '2025-09-03'
                      //--union
                      '(select distinct voucher_no,trans_date as tgltrans from (SELECT a.voucher_no,a.trans_date,b.code_account,b."position",c.code from t_cash_bank_expenditure a '+
                      'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher '+
                      'INNER JOIN v_ak_account c on b.code_account= c.account_code2 )h where h.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and h.code='+Quotedstr(vkd_jenis_hutang)+' and h.position=''D'')b on a.bk_no=b.voucher_no '+
                      //--left join t_do c on a.voucher_no=c.nodo
                      //--left join t_do_penjualan d on a.voucher_no=d.no_do where b.voucher is not null
                      //--)x  group by kodesup)debit_do on a.supplier_code=debit_do.kodesup
                      ')x group by kodesup)debit_do on a.supplier_code=debit_do.kodesup '+

                      'left join (select * from t_initial_balance_debt where debt_type='+Quotedstr(vkd_jenis_hutang)+' and year = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj)hutang on supp.principle_code=hutang.kodesup '+
                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+

                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+

                      '(SELECT A.trans_no AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv, 	A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah, '+
                      '( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, 	A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '+
                      'b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ELSE byr.paid_amount END ) bayar, (case when pot.price_rp is null then 0 else pot.price_rp end)pot  FROM '+
                      '(SELECT	*	FROM t_purchase_invoice	a INNER JOIN v_ak_account b on a.account_code=b.account_code2 WHERE b.code = '+Quotedstr(vkd_jenis_hutang)+'  AND '+
                      '( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dp4.EditValue))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')	A '+
                      'LEFT JOIN (SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no  ) b ON A.trans_no = b.trans_no '+
                      'LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return B '+
                      'ON	A.return_no = b.return_no WHERE b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+'	GROUP BY A.receive_no ORDER BY A.receive_no ) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no, invoice_no, paid_amount FROM t_cash_bank_expenditure_payable '+
                      'WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.invoice_no 	left join(select * from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')pot on a.trans_no=pot.receive_no 	) xxx GROUP BY	kodesup '+
                      'union all '+

                      'SELECT	kodesup,	SUM ( sisa_hutang ) AS sisa_hutang FROM '+
                      '(	SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date as tanggal, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 WHERE b.code ='+Quotedstr(vkd_jenis_hutang)+' ) x '+
                      'LEFT JOIN (SELECT	supplier_code,faktur_no,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar FROM t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                      'WHERE	b.code ='+Quotedstr(vkd_jenis_hutang)+'	AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.supplier_code 	AND x.faktur_no = y.faktur_no	) A '+
                      'WHERE	hutang - bayar  > 0 ) xx GROUP BY	kodesup	)x '+
                      'group by kodesup order by kodesup )mggini on supp.principle_code=mggini.kodesup '+

                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+
                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+
                      '(SELECT A.trans_date AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv,A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah,	( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, '+
                      'A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, 	b.npph,( CASE WHEN byr.bayar IS NULL THEN 0 ELSE byr.bayar END ) bayar, (case when pot.price_rp is null then 0 else pot.price_rp end)pot  FROM '+
                      '(SELECT	*	FROM t_purchase_invoice a INNER JOIN v_ak_account b ON a.account_code=b.account_code2	WHERE b.code ='+Quotedstr(vkd_jenis_hutang)+'  AND ( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl11))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl12))+')	A '+
                      'LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no ) b ON A.trans_no = b.trans_no	LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return b '+
                      'ON A.return_no = b.return_no WHERE b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+'	GROUP BY A.receive_no ORDER BY A.receive_no) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no as no_inv_supp, invoice_no as no_lpb,paid_amount as bayar FROM t_cash_bank_expenditure_payable WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.no_lpb '+
                      'left join (select * from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')pot on a.ref_no=pot.receive_no ) xxx GROUP BY	kodesup '+
                      'union all '+
                      'SELECT kodesup,	SUM (sisa_hutang ) AS sisa_hutang FROM '+
                      '(SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2  WHERE b.code = '+Quotedstr(vkd_jenis_hutang)+') x '+
                      'LEFT JOIN (SELECT	supplier_code as kd_supp,faktur_no AS nofaktur,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar FROM	t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2  WHERE b.code= '+Quotedstr(vkd_jenis_hutang)+'	AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.kd_supp 	AND x.faktur_no = y.nofaktur	) A WHERE	hutang - bayar  > 0 ) xx '+
                      'GROUP BY	kodesup	)x	group by kodesup order by kodesup )mgglalu on supp.principle_code=mgglalu.kodesup '+

                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+
                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+
                      '(SELECT A.trans_date AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv, A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah, ( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, 	A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '+
                      'b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ELSE byr.paid_amount END ) bayar, (case when pot.harga_rp is null then 0 else pot.harga_rp end)pot FROM '+
                      '(SELECT	*	FROM t_purchase_invoice	a INNER JOIN v_ak_account b on a.account_code=b.account_code2 WHERE b.code= '+Quotedstr(vkd_jenis_hutang)+'  AND ( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl21))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl22))+')	A '+
                      'LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no ) b ON A.trans_no = b.trans_no '+
                      'LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return b 	ON A.return_no = b.return_no WHERE  b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' '+
                      'GROUP BY A.receive_no 	ORDER BY A.receive_no ) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no , invoice_no , paid_amount  FROM t_cash_bank_expenditure_payable WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.invoice_no '+
                      'left join (select receive_no,sum(price_rp)as harga_rp from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' group by receive_no order by receive_no ) pot on a.ref_no=pot.receive_no ) xxx GROUP BY	kodesup '+
                      'union all '+
                      'SELECT	kodesup,	SUM ( sisa_hutang ) AS sisa_hutang FROM ( SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar  FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 WHERE b.code ='+Quotedstr(vkd_jenis_hutang)+' ) x '+
                      'LEFT JOIN (SELECT	supplier_code,faktur_no AS nofaktur,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar '+
                      'FROM t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 WHERE	b.code = '+Quotedstr(vkd_jenis_hutang)+'	AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.supplier_code 	AND x.faktur_no = y.nofaktur	) A '+
                      'WHERE	hutang - bayar  > 0 ) xx GROUP BY	kodesup	)x	group by kodesup order by kodesup )mgg_lbh on supp.principle_code=mgg_lbh.kodesup '+

                      'left join (select aa.supplier_code,sum(aa.amount)as tot_rcn from t_paid_debt_det aa '+
                      'LEFT JOIN t_purchase_invoice bb on aa.inv_no=bb.trans_no '+
                      'INNER JOIN v_ak_account cc ON bb.account_code=cc.account_code2 where (aa.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',dp4.EditValue))+') and (aa.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+') and cc.code='+Quotedstr(vkd_jenis_hutang)+' '+
                      'group by aa.supplier_code order by aa.supplier_code)rcn on rcn.supplier_code=supp.principle_code )xxxx on s.supplier_code=xxxx.principle_code) rrr '+

                      'LEFT JOIN (select supplier_code,sum(initial_balance) saldo_awal from t_initial_balance_debt where year=''2024'' group by supplier_code) saldo_awal_hut on rrr.supplier_code=saldo_awal_hut.supplier_code '+
                      'where tot_hutang+case when saldo_awal is NULL then 0 else saldo_awal end>0 and tot_hutang+h1+h2+h3+tot_rcn >0 )kkkk '+
                      'GROUP BY supplier_code,principle_name,tot_hutang,h1,h2,h3,tot_rcn ';
           open;
        end;
    end
    else
    if Jenis_Hutang.Text='BIAYA' then
    begin
        with QCetakSisaHutang do
        begin
            close;
            sql.Clear;
            sql.Text:='select supplier_code principle_code, principle_name, tot_hutang::numeric tot_hutang,h1,h2,h3,tot_rcn,sum(tot_hutang-h1-h2-h3) as htg_blm_jatuh_tempo FROM '+
                      '(SELECT rrr.supplier_code,	rrr.principle_code,	rrr.principle_name,	tot_hutang,	h1,	h2,	h3,	tot_rcn FROM '+
                      '(SELECT * FROM '+
                      '(select supplier_code from t_supplier) s '+
                      'LEFT JOIN (select supp.principle_code,supp.principle_name, '+
                      '(case when hutang.sisa_hutang is null then 0 else hutang.sisa_hutang end)tot_hutang, '+
                      '(case when mggini.sisa_hutang is null then 0 else mggini.sisa_hutang end)h1,(case when mgglalu.sisa_hutang is null then 0 else mgglalu.sisa_hutang end)h2,(case when mgg_lbh.sisa_hutang is null then 0 else mgg_lbh.sisa_hutang end)h3, '+
                      '(case when rcn.tot_rcn is null then 0 else rcn.tot_rcn end)tot_rcn from '+
                      '(select id,supplier_code as principle_code,supplier_name as principle_name from t_supplier order by supplier_code)supp '+
                      'left join (select jj.kodesup,jj.saldo_awal_tahun+jj.kredit '+
                      //+jj.kredit_do
                      '-jj.debit-jj.debit_do-jj.debit_retur-jj.nilai_pot sisa_hutang from '+

                      '(select a.supplier_code as kodesup,case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun,(case when x.nilai is null then 0 else x.nilai end)kredit, '+
                      //--(case when kredit_do.nilai is null then 0 else kredit_do.nilai end)kredit_do,
                      '(case when y.nilai is null then 0 else y.nilai end)debit,(case when debit_do.nilai is null then 0 else debit_do.nilai end)debit_do, '+
                      '(case when z.nilai is null then 0 else z.nilai end)debit_retur, (case when xx.nilai_pot is null then 0 else xx.nilai_pot end)nilai_pot from '+
                      '(select * from t_supplier )a '+
                      'left join (select kodesup,sum(nilai)-sum(nilai_um) as nilai from '+
                      '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from  (select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(nilai*valas_value) else sum(nilai) end)nilai from '+
                      //'(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where b.code='+Quotedstr(vkd_jenis_hutang)+' '+
                      '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where b.code in(SELECT account_code FROM t_expenses_payable_account)'+
                      //'and account_um_code <> ''1151.03''
                      'and  trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue-1))+' )a '+
                      'left join (select trans_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no  group by kodesup,b.po_no,a.valas)a '+
                      'left join(select po_no,supplier_code,sum(um_value)as nilai_um from t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup=b.supplier_code)x '+
                      'group by kodesup )x on a.supplier_code=x.kodesup '+

                      'left join(select supplier_code as kodesup,sum(bayar) as nilai from(select a.voucher_no,a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from '+
                      '(select voucher_no,supplier_code,sum(paid_amount)as bayar,b.code from t_cash_bank_expenditure_payable a '+
                      'INNER JOIN v_ak_account b on a.account_acc= b.account_code2  where b.code in(SELECT account_code FROM t_expenses_payable_account) and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' group by voucher_no,supplier_code,b.code order by voucher_no,supplier_code,b.code)a '+
                      'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real where account_code<>''2130.02'' group by voucher order by voucher)b 	on a.voucher_no=b.voucher)x '+
                      'group by supplier_code order by supplier_code)y on a.supplier_code=y.kodesup '+
                      'left join(select b.supplier_code as kodesup,(case when b.valas=''USD'' then sum(a.total_price*b.valas_value) else sum(a.total_price) end)nilai from t_purchase_return_det a '+
                      'INNER JOIN t_purchase_return b on a.return_no=b.return_no left join t_purchase_invoice dd on b.receive_no=dd.trans_no '+
                      'INNER JOIN v_ak_account ee on dd.account_code= ee.account_code2 where a.return_no=b.return_no and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and ee.code in(SELECT account_code FROM t_expenses_payable_account) '+
                      'group by b.supplier_code,b.valas order by b.supplier_code)z on a.supplier_code=z.kodesup '+
                      'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb left join t_purchase_invoice dd on bb.receive_no=dd.ref_no '+
                      'INNER JOIN v_ak_account ee ON dd.account_code= ee.account_code2 where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and ee.code in (SELECT account_code FROM t_expenses_payable_account) group by bb.supplier_code order by bb.supplier_code)xx on a.supplier_code=xx.supplier_code '+
                      //--left join(select kodesup,sum(nilai)as nilai from(select no_do as noinv,tujuan as kodesup,tgl_do as tanggal,up as kode,ket as keterangan,harga as nilai,1 as urutan from t_do_penjualan where tgl_do between '2022-01-01' and '2025-09-03' and substring(kd_akun,1,4)='2110'
                      //--union all
                      //--select nodo as noinv,kd_supplier_angkutan as kodesup,tgl_do as tanggal,pic as kode,ket as keterangan,harga as nilai,2 as urutan from t_do where tgl_do between '2022-01-01' and '2025-09-03' and substring(kd_akun,1,4)='2110' )x group by kodesup)kredit_do on a.kd_supplier=kredit_do.kodesup
                      'left join(select kodesup,sum(nilai)as nilai from '+
                      '(select a.bk_no as noinv, '+
                      //--(case when c.kd_supplier_angkutan is null then d.tujuan else c.kd_supplier_angkutan end)kodesup '+
                      ' '''' kodesup, b.tgltrans as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan from '+
                      '(select voucher_no ,bk_no ,account_code,remark,pay,4 as urutan from t_payment_detail_real where source_id=3 and account_code in (SELECT account_code FROM t_expenses_payable_account))a '+
                      'left join '+
                      //--(select distinct voucher,tgltrans from tkas where tgltrans between '2022-01-01' and '2025-09-03'
                      //--union
                      '(select distinct voucher_no,trans_date as tgltrans from (SELECT a.voucher_no,a.trans_date,b.code_account,b."position",c.code from t_cash_bank_expenditure a '+
                      'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher '+
                      'INNER JOIN v_ak_account c on b.code_account= c.account_code2 )h where h.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and h.code in(SELECT account_code FROM t_expenses_payable_account) and h.position=''D'')b on a.bk_no=b.voucher_no '+
                      //--left join t_do c on a.voucher_no=c.nodo
                      //--left join t_do_penjualan d on a.voucher_no=d.no_do where b.voucher is not null
                      //--)x  group by kodesup)debit_do on a.supplier_code=debit_do.kodesup
                      ')x group by kodesup)debit_do on a.supplier_code=debit_do.kodesup '+

                      //'left join (select * from t_initial_balance_debt where debt_type='+Quotedstr(vkd_jenis_hutang)+' and year = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj)hutang on supp.principle_code=hutang.kodesup '+
                      'left join (select * from t_initial_balance_debt  a INNER JOIN v_ak_account b on a.debt_type=account_code2 '+
                      'where b.code in (SELECT account_code FROM t_expenses_payable_account) and year = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj)hutang on supp.principle_code=hutang.kodesup '+
                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+

                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+

                      '(SELECT A.trans_no AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv, 	A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah, '+
                      '( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, 	A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '+
                      'b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ELSE byr.paid_amount END ) bayar, (case when pot.price_rp is null then 0 else pot.price_rp end)pot  FROM '+
                      '(SELECT	*	FROM t_purchase_invoice	a INNER JOIN v_ak_account b on a.account_code=b.account_code2 WHERE b.code = '+Quotedstr(vkd_jenis_hutang)+'  AND '+
                      '( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dp4.EditValue))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')	A '+
                      'LEFT JOIN (SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no  ) b ON A.trans_no = b.trans_no '+
                      'LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return B '+
                      'ON	A.return_no = b.return_no WHERE b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+'	GROUP BY A.receive_no ORDER BY A.receive_no ) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no, invoice_no, paid_amount FROM t_cash_bank_expenditure_payable '+
                      'WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.invoice_no 	left join(select * from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')pot on a.trans_no=pot.receive_no 	) xxx GROUP BY	kodesup '+
                      'union all '+

                      'SELECT	kodesup,	SUM ( sisa_hutang ) AS sisa_hutang FROM '+
                      '(	SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date as tanggal, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 '+
                      'WHERE b.code in (SELECT account_code FROM t_expenses_payable_account)) x '+
                      'LEFT JOIN (SELECT	supplier_code,faktur_no,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar FROM t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                      'WHERE	b.code in (SELECT account_code FROM t_expenses_payable_account) AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.supplier_code 	AND x.faktur_no = y.faktur_no	) A '+
                      'WHERE	hutang - bayar  > 0 ) xx GROUP BY	kodesup	)x '+
                      'group by kodesup order by kodesup )mggini on supp.principle_code=mggini.kodesup '+

                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+
                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+
                      '(SELECT A.trans_date AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv,A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah,	( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, '+
                      'A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, 	b.npph,( CASE WHEN byr.bayar IS NULL THEN 0 ELSE byr.bayar END ) bayar, (case when pot.price_rp is null then 0 else pot.price_rp end)pot  FROM '+
                      '(SELECT	*	FROM t_purchase_invoice a INNER JOIN v_ak_account b ON a.account_code=b.account_code2	WHERE b.code in (SELECT account_code FROM t_expenses_payable_account) AND ( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl11))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl12))+')	A '+
                      'LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no ) b ON A.trans_no = b.trans_no	LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return b '+
                      'ON A.return_no = b.return_no WHERE b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+'	GROUP BY A.receive_no ORDER BY A.receive_no) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no as no_inv_supp, invoice_no as no_lpb,paid_amount as bayar FROM t_cash_bank_expenditure_payable WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.no_lpb '+
                      'left join (select * from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')pot on a.ref_no=pot.receive_no ) xxx GROUP BY	kodesup '+
                      'union all '+
                      'SELECT kodesup,	SUM (sisa_hutang ) AS sisa_hutang FROM '+
                      '(SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 '+
                      ' WHERE b.code in(SELECT account_code FROM t_expenses_payable_account)) x '+
                      'LEFT JOIN (SELECT	supplier_code as kd_supp,faktur_no AS nofaktur,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar FROM	t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                      'WHERE b.code in (SELECT account_code FROM t_expenses_payable_account)	AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.kd_supp 	AND x.faktur_no = y.nofaktur	) A WHERE	hutang - bayar  > 0 ) xx '+
                      'GROUP BY	kodesup	)x	group by kodesup order by kodesup )mgglalu on supp.principle_code=mgglalu.kodesup '+

                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+
                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+
                      '(SELECT A.trans_date AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv, A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah, ( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, 	A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '+
                      'b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ELSE byr.paid_amount END ) bayar, (case when pot.harga_rp is null then 0 else pot.harga_rp end)pot FROM '+
                      '(SELECT	*	FROM t_purchase_invoice	a INNER JOIN v_ak_account b on a.account_code=b.account_code2 WHERE b.code in (SELECT account_code FROM t_expenses_payable_account)  AND ( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl21))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl22))+')	A '+
                      'LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no ) b ON A.trans_no = b.trans_no '+
                      'LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return b 	ON A.return_no = b.return_no WHERE  b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' '+
                      'GROUP BY A.receive_no 	ORDER BY A.receive_no ) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no , invoice_no , paid_amount  FROM t_cash_bank_expenditure_payable WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.invoice_no '+
                      'left join (select receive_no,sum(price_rp)as harga_rp from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' group by receive_no order by receive_no ) pot on a.ref_no=pot.receive_no ) xxx GROUP BY	kodesup '+
                      'union all '+
                      'SELECT	kodesup,	SUM ( sisa_hutang ) AS sisa_hutang FROM ( SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar  FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 '+
                      'WHERE b.code in (SELECT account_code FROM t_expenses_payable_account) ) x '+
                      'LEFT JOIN (SELECT	supplier_code,faktur_no AS nofaktur,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar '+
                      'FROM t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 WHERE	b.code in(SELECT account_code FROM t_expenses_payable_account)	AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.supplier_code 	AND x.faktur_no = y.nofaktur	) A '+
                      'WHERE	hutang - bayar  > 0 ) xx GROUP BY	kodesup	)x	group by kodesup order by kodesup )mgg_lbh on supp.principle_code=mgg_lbh.kodesup '+

                      'left join (select aa.supplier_code,sum(aa.amount)as tot_rcn from t_paid_debt_det aa '+
                      'LEFT JOIN t_purchase_invoice bb on aa.inv_no=bb.trans_no '+
                      'INNER JOIN v_ak_account cc ON bb.account_code=cc.account_code2 where (aa.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',dp4.EditValue))+') and (aa.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+') and cc.code in(SELECT account_code FROM t_expenses_payable_account) '+
                      'group by aa.supplier_code order by aa.supplier_code)rcn on rcn.supplier_code=supp.principle_code )xxxx on s.supplier_code=xxxx.principle_code) rrr '+

                      'LEFT JOIN (select supplier_code,sum(initial_balance) saldo_awal from t_initial_balance_debt where year=''2024'' group by supplier_code) saldo_awal_hut on rrr.supplier_code=saldo_awal_hut.supplier_code '+
                      'where tot_hutang+case when saldo_awal is NULL then 0 else saldo_awal end>0 and tot_hutang+h1+h2+h3+tot_rcn >0 )kkkk '+
                      'GROUP BY supplier_code,principle_name,tot_hutang,h1,h2,h3,tot_rcn ';
           open;
        end;
    end
    else
    if Jenis_Hutang.Text='AKTIVA'  then
    begin
        with QCetakSisaHutang do
        begin
            close;
            sql.Clear;
            sql.Text:='select supplier_code principle_code, principle_name, tot_hutang::numeric tot_hutang,h1,h2,h3,tot_rcn,sum(tot_hutang-h1-h2-h3) as htg_blm_jatuh_tempo FROM '+
                      '(SELECT rrr.supplier_code,	rrr.principle_code,	rrr.principle_name,	tot_hutang,	h1,	h2,	h3,	tot_rcn FROM '+
                      '(SELECT * FROM '+
                      '(select supplier_code from t_supplier) s '+
                      'LEFT JOIN (select supp.principle_code,supp.principle_name, '+
                      '(case when hutang.sisa_hutang is null then 0 else hutang.sisa_hutang end)tot_hutang, '+
                      '(case when mggini.sisa_hutang is null then 0 else mggini.sisa_hutang end)h1,(case when mgglalu.sisa_hutang is null then 0 else mgglalu.sisa_hutang end)h2,(case when mgg_lbh.sisa_hutang is null then 0 else mgg_lbh.sisa_hutang end)h3, '+
                      '(case when rcn.tot_rcn is null then 0 else rcn.tot_rcn end)tot_rcn from '+
                      '(select id,supplier_code as principle_code,supplier_name as principle_name from t_supplier order by supplier_code)supp '+
                      'left join (select jj.kodesup,jj.saldo_awal_tahun+jj.kredit '+
                      //+jj.kredit_do
                      '-jj.debit-jj.debit_do-jj.debit_retur-jj.nilai_pot sisa_hutang from '+

                      '(select a.supplier_code as kodesup,case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun,(case when x.nilai is null then 0 else x.nilai end)kredit, '+
                      //--(case when kredit_do.nilai is null then 0 else kredit_do.nilai end)kredit_do,
                      '(case when y.nilai is null then 0 else y.nilai end)debit,(case when debit_do.nilai is null then 0 else debit_do.nilai end)debit_do, '+
                      '(case when z.nilai is null then 0 else z.nilai end)debit_retur, (case when xx.nilai_pot is null then 0 else xx.nilai_pot end)nilai_pot from '+
                      '(select * from t_supplier )a '+
                      'left join (select kodesup,sum(nilai)-sum(nilai_um) as nilai from '+
                      '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from  (select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(nilai*valas_value) else sum(nilai) end)nilai from '+
                      //'(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where b.code='+Quotedstr(vkd_jenis_hutang)+' '+
                      '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where b.code in(SELECT account_code FROM t_asset_payable_account)'+
                      //'and account_um_code <> ''1151.03''
                      'and  trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue-1))+' )a '+
                      'left join (select trans_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no  group by kodesup,b.po_no,a.valas)a '+
                      'left join(select po_no,supplier_code,sum(um_value)as nilai_um from t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup=b.supplier_code)x '+
                      'group by kodesup )x on a.supplier_code=x.kodesup '+

                      'left join(select supplier_code as kodesup,sum(bayar) as nilai from(select a.voucher_no,a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from '+
                      '(select voucher_no,supplier_code,sum(paid_amount)as bayar,b.code from t_cash_bank_expenditure_payable a '+
                      'INNER JOIN v_ak_account b on a.account_acc= b.account_code2  where b.code in(SELECT account_code FROM t_asset_payable_account) and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' group by voucher_no,supplier_code,b.code order by voucher_no,supplier_code,b.code)a '+
                      'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real where account_code<>''2130.02'' group by voucher order by voucher)b 	on a.voucher_no=b.voucher)x '+
                      'group by supplier_code order by supplier_code)y on a.supplier_code=y.kodesup '+
                      'left join(select b.supplier_code as kodesup,(case when b.valas=''USD'' then sum(a.total_price*b.valas_value) else sum(a.total_price) end)nilai from t_purchase_return_det a '+
                      'INNER JOIN t_purchase_return b on a.return_no=b.return_no left join t_purchase_invoice dd on b.receive_no=dd.trans_no '+
                      'INNER JOIN v_ak_account ee on dd.account_code= ee.account_code2 where a.return_no=b.return_no and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and ee.code in(SELECT account_code FROM t_asset_payable_account) '+
                      'group by b.supplier_code,b.valas order by b.supplier_code)z on a.supplier_code=z.kodesup '+
                      'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb left join t_purchase_invoice dd on bb.receive_no=dd.ref_no '+
                      'INNER JOIN v_ak_account ee ON dd.account_code= ee.account_code2 where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and ee.code in (SELECT account_code FROM t_asset_payable_account) group by bb.supplier_code order by bb.supplier_code)xx on a.supplier_code=xx.supplier_code '+
                      //--left join(select kodesup,sum(nilai)as nilai from(select no_do as noinv,tujuan as kodesup,tgl_do as tanggal,up as kode,ket as keterangan,harga as nilai,1 as urutan from t_do_penjualan where tgl_do between '2022-01-01' and '2025-09-03' and substring(kd_akun,1,4)='2110'
                      //--union all
                      //--select nodo as noinv,kd_supplier_angkutan as kodesup,tgl_do as tanggal,pic as kode,ket as keterangan,harga as nilai,2 as urutan from t_do where tgl_do between '2022-01-01' and '2025-09-03' and substring(kd_akun,1,4)='2110' )x group by kodesup)kredit_do on a.kd_supplier=kredit_do.kodesup
                      'left join(select kodesup,sum(nilai)as nilai from '+
                      '(select a.bk_no as noinv, '+
                      //--(case when c.kd_supplier_angkutan is null then d.tujuan else c.kd_supplier_angkutan end)kodesup '+
                      ' '''' kodesup, b.tgltrans as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan from '+
                      '(select voucher_no ,bk_no ,account_code,remark,pay,4 as urutan from t_payment_detail_real where source_id=3 and account_code in (SELECT account_code FROM t_asset_payable_account))a '+
                      'left join '+
                      //--(select distinct voucher,tgltrans from tkas where tgltrans between '2022-01-01' and '2025-09-03'
                      //--union
                      '(select distinct voucher_no,trans_date as tgltrans from (SELECT a.voucher_no,a.trans_date,b.code_account,b."position",c.code from t_cash_bank_expenditure a '+
                      'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher '+
                      'INNER JOIN v_ak_account c on b.code_account= c.account_code2 )h where h.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and h.code in(SELECT account_code FROM t_asset_payable_account) and h.position=''D'')b on a.bk_no=b.voucher_no '+
                      //--left join t_do c on a.voucher_no=c.nodo
                      //--left join t_do_penjualan d on a.voucher_no=d.no_do where b.voucher is not null
                      //--)x  group by kodesup)debit_do on a.supplier_code=debit_do.kodesup
                      ')x group by kodesup)debit_do on a.supplier_code=debit_do.kodesup '+

                      //'left join (select * from t_initial_balance_debt where debt_type='+Quotedstr(vkd_jenis_hutang)+' and year = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj)hutang on supp.principle_code=hutang.kodesup '+
                      'left join (select * from t_initial_balance_debt  a INNER JOIN v_ak_account b on a.debt_type=account_code2 '+
                      'where b.code in (SELECT account_code FROM t_asset_payable_account) and year = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj)hutang on supp.principle_code=hutang.kodesup '+
                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+

                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+

                      '(SELECT A.trans_no AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv, 	A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah, '+
                      '( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, 	A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '+
                      'b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ELSE byr.paid_amount END ) bayar, (case when pot.price_rp is null then 0 else pot.price_rp end)pot  FROM '+
                      '(SELECT	*	FROM t_purchase_invoice	a INNER JOIN v_ak_account b on a.account_code=b.account_code2 WHERE b.code in (SELECT account_code FROM t_asset_payable_account)  AND '+
                      '( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dp4.EditValue))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')	A '+
                      'LEFT JOIN (SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no  ) b ON A.trans_no = b.trans_no '+
                      'LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return B '+
                      'ON	A.return_no = b.return_no WHERE b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+'	GROUP BY A.receive_no ORDER BY A.receive_no ) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no, invoice_no, paid_amount FROM t_cash_bank_expenditure_payable '+
                      'WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.invoice_no 	left join(select * from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')pot on a.trans_no=pot.receive_no 	) xxx GROUP BY	kodesup '+
                      'union all '+

                      'SELECT	kodesup,	SUM ( sisa_hutang ) AS sisa_hutang FROM '+
                      '(	SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date as tanggal, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 '+
                      'WHERE b.code in (SELECT account_code FROM t_asset_payable_account)) x '+
                      'LEFT JOIN (SELECT	supplier_code,faktur_no,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar FROM t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                      'WHERE	b.code in (SELECT account_code FROM t_asset_payable_account) AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.supplier_code 	AND x.faktur_no = y.faktur_no	) A '+
                      'WHERE	hutang - bayar  > 0 ) xx GROUP BY	kodesup	)x '+
                      'group by kodesup order by kodesup )mggini on supp.principle_code=mggini.kodesup '+

                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+
                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+
                      '(SELECT A.trans_date AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv,A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah,	( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, '+
                      'A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, 	b.npph,( CASE WHEN byr.bayar IS NULL THEN 0 ELSE byr.bayar END ) bayar, (case when pot.price_rp is null then 0 else pot.price_rp end)pot  FROM '+
                      '(SELECT	*	FROM t_purchase_invoice a INNER JOIN v_ak_account b ON a.account_code=b.account_code2	WHERE b.code in (SELECT account_code FROM t_asset_payable_account) AND ( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl11))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl12))+')	A '+
                      'LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no ) b ON A.trans_no = b.trans_no	LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return b '+
                      'ON A.return_no = b.return_no WHERE b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+'	GROUP BY A.receive_no ORDER BY A.receive_no) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no as no_inv_supp, invoice_no as no_lpb,paid_amount as bayar FROM t_cash_bank_expenditure_payable WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.no_lpb '+
                      'left join (select * from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')pot on a.ref_no=pot.receive_no ) xxx GROUP BY	kodesup '+
                      'union all '+
                      'SELECT kodesup,	SUM (sisa_hutang ) AS sisa_hutang FROM '+
                      '(SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 '+
                      ' WHERE b.code in(SELECT account_code FROM t_asset_payable_account)) x '+
                      'LEFT JOIN (SELECT	supplier_code as kd_supp,faktur_no AS nofaktur,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar FROM	t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                      'WHERE b.code in (SELECT account_code FROM t_asset_payable_account)	AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.kd_supp 	AND x.faktur_no = y.nofaktur	) A WHERE	hutang - bayar  > 0 ) xx '+
                      'GROUP BY	kodesup	)x	group by kodesup order by kodesup )mgglalu on supp.principle_code=mgglalu.kodesup '+

                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+
                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+
                      '(SELECT A.trans_date AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv, A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah, ( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, 	A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '+
                      'b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ELSE byr.paid_amount END ) bayar, (case when pot.harga_rp is null then 0 else pot.harga_rp end)pot FROM '+
                      '(SELECT	*	FROM t_purchase_invoice	a INNER JOIN v_ak_account b on a.account_code=b.account_code2 WHERE b.code in (SELECT account_code FROM t_asset_payable_account)  AND ( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl21))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl22))+')	A '+
                      'LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no ) b ON A.trans_no = b.trans_no '+
                      'LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return b 	ON A.return_no = b.return_no WHERE  b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' '+
                      'GROUP BY A.receive_no 	ORDER BY A.receive_no ) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no , invoice_no , paid_amount  FROM t_cash_bank_expenditure_payable WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.invoice_no '+
                      'left join (select receive_no,sum(price_rp)as harga_rp from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' group by receive_no order by receive_no ) pot on a.ref_no=pot.receive_no ) xxx GROUP BY	kodesup '+
                      'union all '+
                      'SELECT	kodesup,	SUM ( sisa_hutang ) AS sisa_hutang FROM ( SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar  FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 '+
                      'WHERE b.code in (SELECT account_code FROM t_asset_payable_account) ) x '+
                      'LEFT JOIN (SELECT	supplier_code,faktur_no AS nofaktur,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar '+
                      'FROM t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 WHERE	b.code in(SELECT account_code FROM t_asset_payable_account)	AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.supplier_code 	AND x.faktur_no = y.nofaktur	) A '+
                      'WHERE	hutang - bayar  > 0 ) xx GROUP BY	kodesup	)x	group by kodesup order by kodesup )mgg_lbh on supp.principle_code=mgg_lbh.kodesup '+

                      'left join (select aa.supplier_code,sum(aa.amount)as tot_rcn from t_paid_debt_det aa '+
                      'LEFT JOIN t_purchase_invoice bb on aa.inv_no=bb.trans_no '+
                      'INNER JOIN v_ak_account cc ON bb.account_code=cc.account_code2 where (aa.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',dp4.EditValue))+') and (aa.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+') and cc.code in(SELECT account_code FROM t_asset_payable_account) '+
                      'group by aa.supplier_code order by aa.supplier_code)rcn on rcn.supplier_code=supp.principle_code )xxxx on s.supplier_code=xxxx.principle_code) rrr '+

                      'LEFT JOIN (select supplier_code,sum(initial_balance) saldo_awal from t_initial_balance_debt where year=''2024'' group by supplier_code) saldo_awal_hut on rrr.supplier_code=saldo_awal_hut.supplier_code '+
                      'where tot_hutang+case when saldo_awal is NULL then 0 else saldo_awal end>0 and tot_hutang+h1+h2+h3+tot_rcn >0 )kkkk '+
                      'GROUP BY supplier_code,principle_name,tot_hutang,h1,h2,h3,tot_rcn ';
           open;
        end;
    end;
    QCetakSisaHutang.Close;
    QCetakSisaHutang.Open;
    DBGridSisaHutang.FinishLoadingStatus();

    frxSisaHutang.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Lap_Sisa_Hutang.fr3');
    Tfrxmemoview(frxSisaHutang.FindObject('jenis_hutang')).Memo.Text:='HUTANG'+' '+Jenis_Hutang.text;
    if DP4.EditValue=DP5.EditValue then
    begin
       Tfrxmemoview(frxSisaHutang.FindObject('Memperiode')).Memo.Text:='Periode : '+formatdatetime('dd mmm yyyy',Dp4.EditValue)
    end
    else
    begin
       Tfrxmemoview(frxSisaHutang.FindObject('Memperiode')).Memo.Text:='Periode : '+FormatDateTime('dd mmm yyyy',DP4.EditValue)+' '+'S/D'+' '+FormatDateTime('dd mmm yyyy',DP5.EditValue);
    end;
    frxSisaHutang.showreport;

end;

procedure TF_cetak_sisa_htg.dxRefreshClick(Sender: TObject);
var
  query:string;
  dd,dd2,mm,mm2,yy,yy2:word;
  tgl11,tgl12,tgl21,tgl22:tdatetime;
begin
    with QTgl_hutang do
    begin
        close;
        sql.Clear;
        sql.Add('select * from t_tmpsyst');
        open;
    end;
    tgl_htg:=QTgl_hutang.FieldByName('debt_date').asdatetime;

    DecodeDate(dp4.EditValue,yy,mm,dd);
    DecodeDate(dp5.EditValue,yy2,mm2,dd2);
    tgl11:=dp4.EditValue-7;
    tgl12:=dp4.EditValue-1;
    tgl21:=tgl_htg;
    tgl22:=tgl11-1;


    DBGridSisaHutang.StartLoadingStatus();
    if Jenis_Hutang.Text='DAGANG' then
    begin
        with QSisaHutang do
        begin
            close;
            sql.Clear;
            sql.Text:='select supplier_code principle_code, principle_name, tot_hutang::numeric tot_hutang,h1,h2,h3,tot_rcn FROM '+
                      '(SELECT rrr.supplier_code,	rrr.principle_code,	rrr.principle_name,	tot_hutang,	h1,	h2,	h3,	tot_rcn FROM '+
                      '(SELECT * FROM '+
                      '(select supplier_code from t_supplier) s '+
                      'LEFT JOIN (select supp.principle_code,supp.principle_name, '+
                      '(case when hutang.sisa_hutang is null then 0 else hutang.sisa_hutang end)tot_hutang, '+
                      '(case when mggini.sisa_hutang is null then 0 else mggini.sisa_hutang end)h1,(case when mgglalu.sisa_hutang is null then 0 else mgglalu.sisa_hutang end)h2,(case when mgg_lbh.sisa_hutang is null then 0 else mgg_lbh.sisa_hutang end)h3, '+
                      '(case when rcn.tot_rcn is null then 0 else rcn.tot_rcn end)tot_rcn from '+
                      '(select id,supplier_code as principle_code,supplier_name as principle_name from t_supplier order by supplier_code)supp '+
                      'left join (select jj.kodesup,jj.saldo_awal_tahun+jj.kredit '+
                      //+jj.kredit_do
                      '-jj.debit-jj.debit_do-jj.debit_retur-jj.nilai_pot sisa_hutang from '+

                      '(select a.supplier_code as kodesup,case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun,(case when x.nilai is null then 0 else x.nilai end)kredit, '+
                      //--(case when kredit_do.nilai is null then 0 else kredit_do.nilai end)kredit_do,
                      '(case when y.nilai is null then 0 else y.nilai end)debit,(case when debit_do.nilai is null then 0 else debit_do.nilai end)debit_do, '+
                      '(case when z.nilai is null then 0 else z.nilai end)debit_retur, (case when xx.nilai_pot is null then 0 else xx.nilai_pot end)nilai_pot from '+
                      '(select * from t_supplier )a '+
                      'left join (select kodesup,sum(nilai)-sum(nilai_um) as nilai from '+
                      '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from  (select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(nilai*valas_value) else sum(nilai) end)nilai from '+
                      '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where b.code='+Quotedstr(vkd_jenis_hutang)+' '+
                      //'and account_um_code <> ''1151.03''
                      'and  trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue-1))+' )a '+
                      'left join (select trans_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no  group by kodesup,b.po_no,a.valas)a '+
                      'left join(select po_no,supplier_code,sum(um_value)as nilai_um from t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup=b.supplier_code)x '+
                      'group by kodesup )x on a.supplier_code=x.kodesup '+

                      'left join(select supplier_code as kodesup,sum(bayar) as nilai from(select a.voucher_no,a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from '+
                      '(select voucher_no,supplier_code,sum(paid_amount)as bayar,b.code from t_cash_bank_expenditure_payable a '+
                      'INNER JOIN v_ak_account b on a.account_acc= b.account_code2  where b.code='+Quotedstr(vkd_jenis_hutang)+' and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' group by voucher_no,supplier_code,b.code order by voucher_no,supplier_code,b.code)a '+
                      'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real where account_code<>''2130.02'' group by voucher order by voucher)b 	on a.voucher_no=b.voucher)x '+
                      'group by supplier_code order by supplier_code)y on a.supplier_code=y.kodesup '+
                      'left join(select b.supplier_code as kodesup,(case when b.valas=''USD'' then sum(a.total_price*b.valas_value) else sum(a.total_price) end)nilai from t_purchase_return_det a '+
                      'INNER JOIN t_purchase_return b on a.return_no=b.return_no left join t_purchase_invoice dd on b.receive_no=dd.trans_no '+
                      'INNER JOIN v_ak_account ee on dd.account_code= ee.account_code2 where a.return_no=b.return_no and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and ee.code='+Quotedstr(vkd_jenis_hutang)+' '+
                      'group by b.supplier_code,b.valas order by b.supplier_code)z on a.supplier_code=z.kodesup '+
                      'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb left join t_purchase_invoice dd on bb.receive_no=dd.ref_no '+
                      'INNER JOIN v_ak_account ee ON dd.account_code= ee.account_code2 where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and ee.code='+Quotedstr(vkd_jenis_hutang)+' group by bb.supplier_code order by bb.supplier_code)xx on a.supplier_code=xx.supplier_code '+
                      //--left join(select kodesup,sum(nilai)as nilai from(select no_do as noinv,tujuan as kodesup,tgl_do as tanggal,up as kode,ket as keterangan,harga as nilai,1 as urutan from t_do_penjualan where tgl_do between '2022-01-01' and '2025-09-03' and substring(kd_akun,1,4)='2110'
                      //--union all
                      //--select nodo as noinv,kd_supplier_angkutan as kodesup,tgl_do as tanggal,pic as kode,ket as keterangan,harga as nilai,2 as urutan from t_do where tgl_do between '2022-01-01' and '2025-09-03' and substring(kd_akun,1,4)='2110' )x group by kodesup)kredit_do on a.kd_supplier=kredit_do.kodesup
                      'left join(select kodesup,sum(nilai)as nilai from '+
                      '(select a.bk_no as noinv, '+
                      //--(case when c.kd_supplier_angkutan is null then d.tujuan else c.kd_supplier_angkutan end)kodesup '+
                      ' '''' kodesup, b.tgltrans as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan from '+
                      '(select voucher_no ,bk_no ,account_code,remark,pay,4 as urutan from t_payment_detail_real where source_id=3 and account_code='+Quotedstr(vkd_jenis_hutang)+' )a '+
                      'left join '+
                      //--(select distinct voucher,tgltrans from tkas where tgltrans between '2022-01-01' and '2025-09-03'
                      //--union
                      '(select distinct voucher_no,trans_date as tgltrans from (SELECT a.voucher_no,a.trans_date,b.code_account,b."position",c.code from t_cash_bank_expenditure a '+
                      'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher '+
                      'INNER JOIN v_ak_account c on b.code_account= c.account_code2 )h where h.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and h.code='+Quotedstr(vkd_jenis_hutang)+' and h.position=''D'')b on a.bk_no=b.voucher_no '+
                      //--left join t_do c on a.voucher_no=c.nodo
                      //--left join t_do_penjualan d on a.voucher_no=d.no_do where b.voucher is not null
                      //--)x  group by kodesup)debit_do on a.supplier_code=debit_do.kodesup
                      ')x group by kodesup)debit_do on a.supplier_code=debit_do.kodesup '+

                      'left join (select * from t_initial_balance_debt where debt_type='+Quotedstr(vkd_jenis_hutang)+' and year = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj)hutang on supp.principle_code=hutang.kodesup '+
                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+

                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+

                      '(SELECT A.trans_no AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv, 	A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah, '+
                      '( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, 	A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '+
                      'b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ELSE byr.paid_amount END ) bayar, (case when pot.price_rp is null then 0 else pot.price_rp end)pot  FROM '+
                      '(SELECT	*	FROM t_purchase_invoice	a INNER JOIN v_ak_account b on a.account_code=b.account_code2 WHERE b.code = '+Quotedstr(vkd_jenis_hutang)+'  AND '+
                      '( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dp4.EditValue))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')	A '+
                      'LEFT JOIN (SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no  ) b ON A.trans_no = b.trans_no '+
                      'LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return B '+
                      'ON	A.return_no = b.return_no WHERE b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+'	GROUP BY A.receive_no ORDER BY A.receive_no ) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no, invoice_no, paid_amount FROM t_cash_bank_expenditure_payable '+
                      'WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.invoice_no 	left join(select * from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')pot on a.trans_no=pot.receive_no 	) xxx GROUP BY	kodesup '+
                      'union all '+

                      'SELECT	kodesup,	SUM ( sisa_hutang ) AS sisa_hutang FROM '+
                      '(	SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date as tanggal, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 WHERE b.code ='+Quotedstr(vkd_jenis_hutang)+' ) x '+
                      'LEFT JOIN (SELECT	supplier_code,faktur_no,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar FROM t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                      'WHERE	b.code ='+Quotedstr(vkd_jenis_hutang)+'	AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.supplier_code 	AND x.faktur_no = y.faktur_no	) A '+
                      'WHERE	hutang - bayar  > 0 ) xx GROUP BY	kodesup	)x '+
                      'group by kodesup order by kodesup )mggini on supp.principle_code=mggini.kodesup '+

                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+
                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+
                      '(SELECT A.trans_date AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv,A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah,	( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, '+
                      'A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, 	b.npph,( CASE WHEN byr.bayar IS NULL THEN 0 ELSE byr.bayar END ) bayar, (case when pot.price_rp is null then 0 else pot.price_rp end)pot  FROM '+
                      '(SELECT	*	FROM t_purchase_invoice a INNER JOIN v_ak_account b ON a.account_code=b.account_code2	WHERE b.code ='+Quotedstr(vkd_jenis_hutang)+'  AND ( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl11))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl12))+')	A '+
                      'LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no ) b ON A.trans_no = b.trans_no	LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return b '+
                      'ON A.return_no = b.return_no WHERE b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+'	GROUP BY A.receive_no ORDER BY A.receive_no) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no as no_inv_supp, invoice_no as no_lpb,paid_amount as bayar FROM t_cash_bank_expenditure_payable WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.no_lpb '+
                      'left join (select * from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')pot on a.ref_no=pot.receive_no ) xxx GROUP BY	kodesup '+
                      'union all '+
                      'SELECT kodesup,	SUM (sisa_hutang ) AS sisa_hutang FROM '+
                      '(SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2  WHERE b.code = '+Quotedstr(vkd_jenis_hutang)+') x '+
                      'LEFT JOIN (SELECT	supplier_code as kd_supp,faktur_no AS nofaktur,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar FROM	t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2  WHERE b.code= '+Quotedstr(vkd_jenis_hutang)+'	AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.kd_supp 	AND x.faktur_no = y.nofaktur	) A WHERE	hutang - bayar  > 0 ) xx '+
                      'GROUP BY	kodesup	)x	group by kodesup order by kodesup )mgglalu on supp.principle_code=mgglalu.kodesup '+

                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+
                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+
                      '(SELECT A.trans_date AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv, A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah, ( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, 	A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '+
                      'b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ELSE byr.paid_amount END ) bayar, (case when pot.harga_rp is null then 0 else pot.harga_rp end)pot FROM '+
                      '(SELECT	*	FROM t_purchase_invoice	a INNER JOIN v_ak_account b on a.account_code=b.account_code2 WHERE b.code= '+Quotedstr(vkd_jenis_hutang)+'  AND ( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl21))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl22))+')	A '+
                      'LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no ) b ON A.trans_no = b.trans_no '+
                      'LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return b 	ON A.return_no = b.return_no WHERE  b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' '+
                      'GROUP BY A.receive_no 	ORDER BY A.receive_no ) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no , invoice_no , paid_amount  FROM t_cash_bank_expenditure_payable WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.invoice_no '+
                      'left join (select receive_no,sum(price_rp)as harga_rp from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' group by receive_no order by receive_no ) pot on a.ref_no=pot.receive_no ) xxx GROUP BY	kodesup '+
                      'union all '+
                      'SELECT	kodesup,	SUM ( sisa_hutang ) AS sisa_hutang FROM ( SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar  FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 WHERE b.code ='+Quotedstr(vkd_jenis_hutang)+' ) x '+
                      'LEFT JOIN (SELECT	supplier_code,faktur_no AS nofaktur,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar '+
                      'FROM t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 WHERE	b.code = '+Quotedstr(vkd_jenis_hutang)+'	AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.supplier_code 	AND x.faktur_no = y.nofaktur	) A '+
                      'WHERE	hutang - bayar  > 0 ) xx GROUP BY	kodesup	)x	group by kodesup order by kodesup )mgg_lbh on supp.principle_code=mgg_lbh.kodesup '+

                      'left join (select aa.supplier_code,sum(aa.amount)as tot_rcn from t_paid_debt_det aa '+
                      'LEFT JOIN t_purchase_invoice bb on aa.inv_no=bb.trans_no '+
                      'INNER JOIN v_ak_account cc ON bb.account_code=cc.account_code2 where (aa.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',dp4.EditValue))+') and (aa.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+') and cc.code='+Quotedstr(vkd_jenis_hutang)+' '+
                      'group by aa.supplier_code order by aa.supplier_code)rcn on rcn.supplier_code=supp.principle_code )xxxx on s.supplier_code=xxxx.principle_code) rrr '+

                      'LEFT JOIN (select supplier_code,sum(initial_balance) saldo_awal from t_initial_balance_debt where year=''2024'' group by supplier_code) saldo_awal_hut on rrr.supplier_code=saldo_awal_hut.supplier_code '+
                      'where tot_hutang+case when saldo_awal is NULL then 0 else saldo_awal end>0 and tot_hutang+h1+h2+h3+tot_rcn >0 )kkkk '+
                      ' ';
           open;
        end;
    end
    else
    if Jenis_Hutang.Text='BIAYA' then
    begin
        with QSisaHutang do
        begin
            close;
            sql.Clear;
            sql.Text:='select supplier_code principle_code, principle_name, tot_hutang::numeric tot_hutang,h1,h2,h3,tot_rcn FROM '+
                      '(SELECT rrr.supplier_code,	rrr.principle_code,	rrr.principle_name,	tot_hutang,	h1,	h2,	h3,	tot_rcn FROM '+
                      '(SELECT * FROM '+
                      '(select supplier_code from t_supplier) s '+
                      'LEFT JOIN (select supp.principle_code,supp.principle_name, '+
                      '(case when hutang.sisa_hutang is null then 0 else hutang.sisa_hutang end)tot_hutang, '+
                      '(case when mggini.sisa_hutang is null then 0 else mggini.sisa_hutang end)h1,(case when mgglalu.sisa_hutang is null then 0 else mgglalu.sisa_hutang end)h2,(case when mgg_lbh.sisa_hutang is null then 0 else mgg_lbh.sisa_hutang end)h3, '+
                      '(case when rcn.tot_rcn is null then 0 else rcn.tot_rcn end)tot_rcn from '+
                      '(select id,supplier_code as principle_code,supplier_name as principle_name from t_supplier order by supplier_code)supp '+
                      'left join (select jj.kodesup,jj.saldo_awal_tahun+jj.kredit '+
                      //+jj.kredit_do
                      '-jj.debit-jj.debit_do-jj.debit_retur-jj.nilai_pot sisa_hutang from '+

                      '(select a.supplier_code as kodesup,case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun,(case when x.nilai is null then 0 else x.nilai end)kredit, '+
                      //--(case when kredit_do.nilai is null then 0 else kredit_do.nilai end)kredit_do,
                      '(case when y.nilai is null then 0 else y.nilai end)debit,(case when debit_do.nilai is null then 0 else debit_do.nilai end)debit_do, '+
                      '(case when z.nilai is null then 0 else z.nilai end)debit_retur, (case when xx.nilai_pot is null then 0 else xx.nilai_pot end)nilai_pot from '+
                      '(select * from t_supplier )a '+
                      'left join (select kodesup,sum(nilai)-sum(nilai_um) as nilai from '+
                      '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from  (select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(nilai*valas_value) else sum(nilai) end)nilai from '+
                      //'(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where b.code='+Quotedstr(vkd_jenis_hutang)+' '+
                      '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where b.code in(SELECT account_code FROM t_expenses_payable_account)'+
                      //'and account_um_code <> ''1151.03''
                      'and  trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue-1))+' )a '+
                      'left join (select trans_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no  group by kodesup,b.po_no,a.valas)a '+
                      'left join(select po_no,supplier_code,sum(um_value)as nilai_um from t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup=b.supplier_code)x '+
                      'group by kodesup )x on a.supplier_code=x.kodesup '+

                      'left join(select supplier_code as kodesup,sum(bayar) as nilai from(select a.voucher_no,a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from '+
                      '(select voucher_no,supplier_code,sum(paid_amount)as bayar,b.code from t_cash_bank_expenditure_payable a '+
                      'INNER JOIN v_ak_account b on a.account_acc= b.account_code2  where b.code in(SELECT account_code FROM t_expenses_payable_account) and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' group by voucher_no,supplier_code,b.code order by voucher_no,supplier_code,b.code)a '+
                      'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real where account_code<>''2130.02'' group by voucher order by voucher)b 	on a.voucher_no=b.voucher)x '+
                      'group by supplier_code order by supplier_code)y on a.supplier_code=y.kodesup '+
                      'left join(select b.supplier_code as kodesup,(case when b.valas=''USD'' then sum(a.total_price*b.valas_value) else sum(a.total_price) end)nilai from t_purchase_return_det a '+
                      'INNER JOIN t_purchase_return b on a.return_no=b.return_no left join t_purchase_invoice dd on b.receive_no=dd.trans_no '+
                      'INNER JOIN v_ak_account ee on dd.account_code= ee.account_code2 where a.return_no=b.return_no and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and ee.code in(SELECT account_code FROM t_expenses_payable_account) '+
                      'group by b.supplier_code,b.valas order by b.supplier_code)z on a.supplier_code=z.kodesup '+
                      'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb left join t_purchase_invoice dd on bb.receive_no=dd.ref_no '+
                      'INNER JOIN v_ak_account ee ON dd.account_code= ee.account_code2 where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and ee.code in (SELECT account_code FROM t_expenses_payable_account) group by bb.supplier_code order by bb.supplier_code)xx on a.supplier_code=xx.supplier_code '+
                      //--left join(select kodesup,sum(nilai)as nilai from(select no_do as noinv,tujuan as kodesup,tgl_do as tanggal,up as kode,ket as keterangan,harga as nilai,1 as urutan from t_do_penjualan where tgl_do between '2022-01-01' and '2025-09-03' and substring(kd_akun,1,4)='2110'
                      //--union all
                      //--select nodo as noinv,kd_supplier_angkutan as kodesup,tgl_do as tanggal,pic as kode,ket as keterangan,harga as nilai,2 as urutan from t_do where tgl_do between '2022-01-01' and '2025-09-03' and substring(kd_akun,1,4)='2110' )x group by kodesup)kredit_do on a.kd_supplier=kredit_do.kodesup
                      'left join(select kodesup,sum(nilai)as nilai from '+
                      '(select a.bk_no as noinv, '+
                      //--(case when c.kd_supplier_angkutan is null then d.tujuan else c.kd_supplier_angkutan end)kodesup '+
                      ' '''' kodesup, b.tgltrans as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan from '+
                      '(select voucher_no ,bk_no ,account_code,remark,pay,4 as urutan from t_payment_detail_real where source_id=3 and account_code in (SELECT account_code FROM t_expenses_payable_account))a '+
                      'left join '+
                      //--(select distinct voucher,tgltrans from tkas where tgltrans between '2022-01-01' and '2025-09-03'
                      //--union
                      '(select distinct voucher_no,trans_date as tgltrans from (SELECT a.voucher_no,a.trans_date,b.code_account,b."position",c.code from t_cash_bank_expenditure a '+
                      'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher '+
                      'INNER JOIN v_ak_account c on b.code_account= c.account_code2 )h where h.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and h.code in(SELECT account_code FROM t_expenses_payable_account) and h.position=''D'')b on a.bk_no=b.voucher_no '+
                      //--left join t_do c on a.voucher_no=c.nodo
                      //--left join t_do_penjualan d on a.voucher_no=d.no_do where b.voucher is not null
                      //--)x  group by kodesup)debit_do on a.supplier_code=debit_do.kodesup
                      ')x group by kodesup)debit_do on a.supplier_code=debit_do.kodesup '+

                      //'left join (select * from t_initial_balance_debt where debt_type='+Quotedstr(vkd_jenis_hutang)+' and year = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj)hutang on supp.principle_code=hutang.kodesup '+
                      'left join (select * from t_initial_balance_debt  a INNER JOIN v_ak_account b on a.debt_type=account_code2 '+
                      'where b.code in (SELECT account_code FROM t_expenses_payable_account) and year = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj)hutang on supp.principle_code=hutang.kodesup '+
                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+

                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+

                      '(SELECT A.trans_no AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv, 	A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah, '+
                      '( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, 	A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '+
                      'b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ELSE byr.paid_amount END ) bayar, (case when pot.price_rp is null then 0 else pot.price_rp end)pot  FROM '+
                      '(SELECT	*	FROM t_purchase_invoice	a INNER JOIN v_ak_account b on a.account_code=b.account_code2 WHERE b.code = '+Quotedstr(vkd_jenis_hutang)+'  AND '+
                      '( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dp4.EditValue))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')	A '+
                      'LEFT JOIN (SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no  ) b ON A.trans_no = b.trans_no '+
                      'LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return B '+
                      'ON	A.return_no = b.return_no WHERE b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+'	GROUP BY A.receive_no ORDER BY A.receive_no ) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no, invoice_no, paid_amount FROM t_cash_bank_expenditure_payable '+
                      'WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.invoice_no 	left join(select * from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')pot on a.trans_no=pot.receive_no 	) xxx GROUP BY	kodesup '+
                      'union all '+

                      'SELECT	kodesup,	SUM ( sisa_hutang ) AS sisa_hutang FROM '+
                      '(	SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date as tanggal, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 '+
                      'WHERE b.code in (SELECT account_code FROM t_expenses_payable_account)) x '+
                      'LEFT JOIN (SELECT	supplier_code,faktur_no,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar FROM t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                      'WHERE	b.code in (SELECT account_code FROM t_expenses_payable_account) AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.supplier_code 	AND x.faktur_no = y.faktur_no	) A '+
                      'WHERE	hutang - bayar  > 0 ) xx GROUP BY	kodesup	)x '+
                      'group by kodesup order by kodesup )mggini on supp.principle_code=mggini.kodesup '+

                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+
                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+
                      '(SELECT A.trans_date AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv,A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah,	( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, '+
                      'A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, 	b.npph,( CASE WHEN byr.bayar IS NULL THEN 0 ELSE byr.bayar END ) bayar, (case when pot.price_rp is null then 0 else pot.price_rp end)pot  FROM '+
                      '(SELECT	*	FROM t_purchase_invoice a INNER JOIN v_ak_account b ON a.account_code=b.account_code2	WHERE b.code in (SELECT account_code FROM t_expenses_payable_account) AND ( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl11))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl12))+')	A '+
                      'LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no ) b ON A.trans_no = b.trans_no	LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return b '+
                      'ON A.return_no = b.return_no WHERE b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+'	GROUP BY A.receive_no ORDER BY A.receive_no) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no as no_inv_supp, invoice_no as no_lpb,paid_amount as bayar FROM t_cash_bank_expenditure_payable WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.no_lpb '+
                      'left join (select * from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')pot on a.ref_no=pot.receive_no ) xxx GROUP BY	kodesup '+
                      'union all '+
                      'SELECT kodesup,	SUM (sisa_hutang ) AS sisa_hutang FROM '+
                      '(SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 '+
                      ' WHERE b.code in(SELECT account_code FROM t_expenses_payable_account)) x '+
                      'LEFT JOIN (SELECT	supplier_code as kd_supp,faktur_no AS nofaktur,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar FROM	t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                      'WHERE b.code in (SELECT account_code FROM t_expenses_payable_account)	AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.kd_supp 	AND x.faktur_no = y.nofaktur	) A WHERE	hutang - bayar  > 0 ) xx '+
                      'GROUP BY	kodesup	)x	group by kodesup order by kodesup )mgglalu on supp.principle_code=mgglalu.kodesup '+

                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+
                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+
                      '(SELECT A.trans_date AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv, A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah, ( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, 	A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '+
                      'b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ELSE byr.paid_amount END ) bayar, (case when pot.harga_rp is null then 0 else pot.harga_rp end)pot FROM '+
                      '(SELECT	*	FROM t_purchase_invoice	a INNER JOIN v_ak_account b on a.account_code=b.account_code2 WHERE b.code in (SELECT account_code FROM t_expenses_payable_account)  AND ( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl21))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl22))+')	A '+
                      'LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no ) b ON A.trans_no = b.trans_no '+
                      'LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return b 	ON A.return_no = b.return_no WHERE  b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' '+
                      'GROUP BY A.receive_no 	ORDER BY A.receive_no ) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no , invoice_no , paid_amount  FROM t_cash_bank_expenditure_payable WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.invoice_no '+
                      'left join (select receive_no,sum(price_rp)as harga_rp from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' group by receive_no order by receive_no ) pot on a.ref_no=pot.receive_no ) xxx GROUP BY	kodesup '+
                      'union all '+
                      'SELECT	kodesup,	SUM ( sisa_hutang ) AS sisa_hutang FROM ( SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar  FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 '+
                      'WHERE b.code in (SELECT account_code FROM t_expenses_payable_account) ) x '+
                      'LEFT JOIN (SELECT	supplier_code,faktur_no AS nofaktur,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar '+
                      'FROM t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 WHERE	b.code in(SELECT account_code FROM t_expenses_payable_account)	AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.supplier_code 	AND x.faktur_no = y.nofaktur	) A '+
                      'WHERE	hutang - bayar  > 0 ) xx GROUP BY	kodesup	)x	group by kodesup order by kodesup )mgg_lbh on supp.principle_code=mgg_lbh.kodesup '+

                      'left join (select aa.supplier_code,sum(aa.amount)as tot_rcn from t_paid_debt_det aa '+
                      'LEFT JOIN t_purchase_invoice bb on aa.inv_no=bb.trans_no '+
                      'INNER JOIN v_ak_account cc ON bb.account_code=cc.account_code2 where (aa.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',dp4.EditValue))+') and (aa.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+') and cc.code in(SELECT account_code FROM t_expenses_payable_account) '+
                      'group by aa.supplier_code order by aa.supplier_code)rcn on rcn.supplier_code=supp.principle_code )xxxx on s.supplier_code=xxxx.principle_code) rrr '+

                      'LEFT JOIN (select supplier_code,sum(initial_balance) saldo_awal from t_initial_balance_debt where year=''2024'' group by supplier_code) saldo_awal_hut on rrr.supplier_code=saldo_awal_hut.supplier_code '+
                      'where tot_hutang+case when saldo_awal is NULL then 0 else saldo_awal end>0 and tot_hutang+h1+h2+h3+tot_rcn >0 )kkkk '+
                      ' ';
           open;
        end;
    end
    else
    if Jenis_Hutang.Text='AKTIVA'  then
    begin
        with QSisaHutang do
        begin
            close;
            sql.Clear;
            sql.Text:='select supplier_code principle_code, principle_name, tot_hutang::numeric tot_hutang,h1,h2,h3,tot_rcn FROM '+
                      '(SELECT rrr.supplier_code,	rrr.principle_code,	rrr.principle_name,	tot_hutang,	h1,	h2,	h3,	tot_rcn FROM '+
                      '(SELECT * FROM '+
                      '(select supplier_code from t_supplier) s '+
                      'LEFT JOIN (select supp.principle_code,supp.principle_name, '+
                      '(case when hutang.sisa_hutang is null then 0 else hutang.sisa_hutang end)tot_hutang, '+
                      '(case when mggini.sisa_hutang is null then 0 else mggini.sisa_hutang end)h1,(case when mgglalu.sisa_hutang is null then 0 else mgglalu.sisa_hutang end)h2,(case when mgg_lbh.sisa_hutang is null then 0 else mgg_lbh.sisa_hutang end)h3, '+
                      '(case when rcn.tot_rcn is null then 0 else rcn.tot_rcn end)tot_rcn from '+
                      '(select id,supplier_code as principle_code,supplier_name as principle_name from t_supplier order by supplier_code)supp '+
                      'left join (select jj.kodesup,jj.saldo_awal_tahun+jj.kredit '+
                      //+jj.kredit_do
                      '-jj.debit-jj.debit_do-jj.debit_retur-jj.nilai_pot sisa_hutang from '+

                      '(select a.supplier_code as kodesup,case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun,(case when x.nilai is null then 0 else x.nilai end)kredit, '+
                      //--(case when kredit_do.nilai is null then 0 else kredit_do.nilai end)kredit_do,
                      '(case when y.nilai is null then 0 else y.nilai end)debit,(case when debit_do.nilai is null then 0 else debit_do.nilai end)debit_do, '+
                      '(case when z.nilai is null then 0 else z.nilai end)debit_retur, (case when xx.nilai_pot is null then 0 else xx.nilai_pot end)nilai_pot from '+
                      '(select * from t_supplier )a '+
                      'left join (select kodesup,sum(nilai)-sum(nilai_um) as nilai from '+
                      '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from  (select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(nilai*valas_value) else sum(nilai) end)nilai from '+
                      //'(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where b.code='+Quotedstr(vkd_jenis_hutang)+' '+
                      '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where b.code in(SELECT account_code FROM t_asset_payable_account)'+
                      //'and account_um_code <> ''1151.03''
                      'and  trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue-1))+' )a '+
                      'left join (select trans_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no  group by kodesup,b.po_no,a.valas)a '+
                      'left join(select po_no,supplier_code,sum(um_value)as nilai_um from t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup=b.supplier_code)x '+
                      'group by kodesup )x on a.supplier_code=x.kodesup '+

                      'left join(select supplier_code as kodesup,sum(bayar) as nilai from(select a.voucher_no,a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from '+
                      '(select voucher_no,supplier_code,sum(paid_amount)as bayar,b.code from t_cash_bank_expenditure_payable a '+
                      'INNER JOIN v_ak_account b on a.account_acc= b.account_code2  where b.code in(SELECT account_code FROM t_asset_payable_account) and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' group by voucher_no,supplier_code,b.code order by voucher_no,supplier_code,b.code)a '+
                      'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real where account_code<>''2130.02'' group by voucher order by voucher)b 	on a.voucher_no=b.voucher)x '+
                      'group by supplier_code order by supplier_code)y on a.supplier_code=y.kodesup '+
                      'left join(select b.supplier_code as kodesup,(case when b.valas=''USD'' then sum(a.total_price*b.valas_value) else sum(a.total_price) end)nilai from t_purchase_return_det a '+
                      'INNER JOIN t_purchase_return b on a.return_no=b.return_no left join t_purchase_invoice dd on b.receive_no=dd.trans_no '+
                      'INNER JOIN v_ak_account ee on dd.account_code= ee.account_code2 where a.return_no=b.return_no and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and ee.code in(SELECT account_code FROM t_asset_payable_account) '+
                      'group by b.supplier_code,b.valas order by b.supplier_code)z on a.supplier_code=z.kodesup '+
                      'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb left join t_purchase_invoice dd on bb.receive_no=dd.ref_no '+
                      'INNER JOIN v_ak_account ee ON dd.account_code= ee.account_code2 where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and ee.code in (SELECT account_code FROM t_asset_payable_account) group by bb.supplier_code order by bb.supplier_code)xx on a.supplier_code=xx.supplier_code '+
                      //--left join(select kodesup,sum(nilai)as nilai from(select no_do as noinv,tujuan as kodesup,tgl_do as tanggal,up as kode,ket as keterangan,harga as nilai,1 as urutan from t_do_penjualan where tgl_do between '2022-01-01' and '2025-09-03' and substring(kd_akun,1,4)='2110'
                      //--union all
                      //--select nodo as noinv,kd_supplier_angkutan as kodesup,tgl_do as tanggal,pic as kode,ket as keterangan,harga as nilai,2 as urutan from t_do where tgl_do between '2022-01-01' and '2025-09-03' and substring(kd_akun,1,4)='2110' )x group by kodesup)kredit_do on a.kd_supplier=kredit_do.kodesup
                      'left join(select kodesup,sum(nilai)as nilai from '+
                      '(select a.bk_no as noinv, '+
                      //--(case when c.kd_supplier_angkutan is null then d.tujuan else c.kd_supplier_angkutan end)kodesup '+
                      ' '''' kodesup, b.tgltrans as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan from '+
                      '(select voucher_no ,bk_no ,account_code,remark,pay,4 as urutan from t_payment_detail_real where source_id=3 and account_code in (SELECT account_code FROM t_asset_payable_account))a '+
                      'left join '+
                      //--(select distinct voucher,tgltrans from tkas where tgltrans between '2022-01-01' and '2025-09-03'
                      //--union
                      '(select distinct voucher_no,trans_date as tgltrans from (SELECT a.voucher_no,a.trans_date,b.code_account,b."position",c.code from t_cash_bank_expenditure a '+
                      'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher '+
                      'INNER JOIN v_ak_account c on b.code_account= c.account_code2 )h where h.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and h.code in(SELECT account_code FROM t_asset_payable_account) and h.position=''D'')b on a.bk_no=b.voucher_no '+
                      //--left join t_do c on a.voucher_no=c.nodo
                      //--left join t_do_penjualan d on a.voucher_no=d.no_do where b.voucher is not null
                      //--)x  group by kodesup)debit_do on a.supplier_code=debit_do.kodesup
                      ')x group by kodesup)debit_do on a.supplier_code=debit_do.kodesup '+

                      //'left join (select * from t_initial_balance_debt where debt_type='+Quotedstr(vkd_jenis_hutang)+' and year = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj)hutang on supp.principle_code=hutang.kodesup '+
                      'left join (select * from t_initial_balance_debt  a INNER JOIN v_ak_account b on a.debt_type=account_code2 '+
                      'where b.code in (SELECT account_code FROM t_asset_payable_account) and year = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj)hutang on supp.principle_code=hutang.kodesup '+
                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+

                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+

                      '(SELECT A.trans_no AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv, 	A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah, '+
                      '( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, 	A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '+
                      'b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ELSE byr.paid_amount END ) bayar, (case when pot.price_rp is null then 0 else pot.price_rp end)pot  FROM '+
                      '(SELECT	*	FROM t_purchase_invoice	a INNER JOIN v_ak_account b on a.account_code=b.account_code2 WHERE b.code in (SELECT account_code FROM t_asset_payable_account)  AND '+
                      '( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dp4.EditValue))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')	A '+
                      'LEFT JOIN (SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no  ) b ON A.trans_no = b.trans_no '+
                      'LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return B '+
                      'ON	A.return_no = b.return_no WHERE b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+'	GROUP BY A.receive_no ORDER BY A.receive_no ) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no, invoice_no, paid_amount FROM t_cash_bank_expenditure_payable '+
                      'WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.invoice_no 	left join(select * from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')pot on a.trans_no=pot.receive_no 	) xxx GROUP BY	kodesup '+
                      'union all '+

                      'SELECT	kodesup,	SUM ( sisa_hutang ) AS sisa_hutang FROM '+
                      '(	SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date as tanggal, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 '+
                      'WHERE b.code in (SELECT account_code FROM t_asset_payable_account)) x '+
                      'LEFT JOIN (SELECT	supplier_code,faktur_no,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar FROM t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                      'WHERE	b.code in (SELECT account_code FROM t_asset_payable_account) AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.supplier_code 	AND x.faktur_no = y.faktur_no	) A '+
                      'WHERE	hutang - bayar  > 0 ) xx GROUP BY	kodesup	)x '+
                      'group by kodesup order by kodesup )mggini on supp.principle_code=mggini.kodesup '+

                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+
                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+
                      '(SELECT A.trans_date AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv,A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah,	( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, '+
                      'A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, 	b.npph,( CASE WHEN byr.bayar IS NULL THEN 0 ELSE byr.bayar END ) bayar, (case when pot.price_rp is null then 0 else pot.price_rp end)pot  FROM '+
                      '(SELECT	*	FROM t_purchase_invoice a INNER JOIN v_ak_account b ON a.account_code=b.account_code2	WHERE b.code in (SELECT account_code FROM t_asset_payable_account) AND ( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl11))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl12))+')	A '+
                      'LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no ) b ON A.trans_no = b.trans_no	LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return b '+
                      'ON A.return_no = b.return_no WHERE b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+'	GROUP BY A.receive_no ORDER BY A.receive_no) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no as no_inv_supp, invoice_no as no_lpb,paid_amount as bayar FROM t_cash_bank_expenditure_payable WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.no_lpb '+
                      'left join (select * from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+')pot on a.ref_no=pot.receive_no ) xxx GROUP BY	kodesup '+
                      'union all '+
                      'SELECT kodesup,	SUM (sisa_hutang ) AS sisa_hutang FROM '+
                      '(SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 '+
                      ' WHERE b.code in(SELECT account_code FROM t_asset_payable_account)) x '+
                      'LEFT JOIN (SELECT	supplier_code as kd_supp,faktur_no AS nofaktur,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar FROM	t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                      'WHERE b.code in (SELECT account_code FROM t_asset_payable_account)	AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.kd_supp 	AND x.faktur_no = y.nofaktur	) A WHERE	hutang - bayar  > 0 ) xx '+
                      'GROUP BY	kodesup	)x	group by kodesup order by kodesup )mgglalu on supp.principle_code=mgglalu.kodesup '+

                      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from '+
                      '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM '+
                      '(SELECT A.trans_date AS tanggal,	A.supplier_code AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv, A.faktur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, '+
                      '( CASE WHEN A.valas = ''USD'' THEN b.hutang * A.valas_value ELSE b.hutang END ) jumlah, ( CASE WHEN A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, 	A.valas,( CASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '+
                      'b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ELSE byr.paid_amount END ) bayar, (case when pot.harga_rp is null then 0 else pot.harga_rp end)pot FROM '+
                      '(SELECT	*	FROM t_purchase_invoice	a INNER JOIN v_ak_account b on a.account_code=b.account_code2 WHERE b.code in (SELECT account_code FROM t_asset_payable_account)  AND ( sj_status = 1 ) AND ( fk_status = 1 )	AND ( invoice_status = 1 )	and trans_date>='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'	AND ( faktur_date + due_date ) BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl21))+'	AND '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl22))+')	A '+
                      'LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no ) b ON A.trans_no = b.trans_no '+
                      'LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '+
                      'LEFT JOIN (SELECT A.receive_no,	SUM ( A.total_price * b.valas_value ) AS nil_retur 	FROM t_purchase_return_det A INNER JOIN t_purchase_return b 	ON A.return_no = b.return_no WHERE  b.return_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' '+
                      'GROUP BY A.receive_no 	ORDER BY A.receive_no ) retur ON A.trans_no = retur.receive_no '+
                      'LEFT JOIN ( SELECT DISTINCT faktur_no , invoice_no , paid_amount  FROM t_cash_bank_expenditure_payable WHERE trans_date < '+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' ) byr ON A.trans_no = byr.invoice_no '+
                      'left join (select receive_no,sum(price_rp)as harga_rp from t_purchase_discount where discount_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+' group by receive_no order by receive_no ) pot on a.ref_no=pot.receive_no ) xxx GROUP BY	kodesup '+
                      'union all '+
                      'SELECT	kodesup,	SUM ( sisa_hutang ) AS sisa_hutang FROM ( SELECT kodesup,faktur_no,hutang,	bayar,hutang - bayar AS sisa_hutang FROM '+
                      '(SELECT	x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar  FROM '+
                      '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_terima, date, debt_amount AS nilai FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on a.debt_type=b.account_code2 '+
                      'WHERE b.code in (SELECT account_code FROM t_asset_payable_account) ) x '+
                      'LEFT JOIN (SELECT	supplier_code,faktur_no AS nofaktur,invoice_no AS no_terima,SUM ( paid_amount ) AS bayar '+
                      'FROM t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 WHERE	b.code in(SELECT account_code FROM t_asset_payable_account)	AND trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                      'GROUP BY supplier_code,faktur_no,invoice_no ORDER BY	supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.supplier_code 	AND x.faktur_no = y.nofaktur	) A '+
                      'WHERE	hutang - bayar  > 0 ) xx GROUP BY	kodesup	)x	group by kodesup order by kodesup )mgg_lbh on supp.principle_code=mgg_lbh.kodesup '+

                      'left join (select aa.supplier_code,sum(aa.amount)as tot_rcn from t_paid_debt_det aa '+
                      'LEFT JOIN t_purchase_invoice bb on aa.inv_no=bb.trans_no '+
                      'INNER JOIN v_ak_account cc ON bb.account_code=cc.account_code2 where (aa.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',dp4.EditValue))+') and (aa.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',dp5.EditValue))+') and cc.code in(SELECT account_code FROM t_asset_payable_account) '+
                      'group by aa.supplier_code order by aa.supplier_code)rcn on rcn.supplier_code=supp.principle_code )xxxx on s.supplier_code=xxxx.principle_code) rrr '+

                      'LEFT JOIN (select supplier_code,sum(initial_balance) saldo_awal from t_initial_balance_debt where year=''2024'' group by supplier_code) saldo_awal_hut on rrr.supplier_code=saldo_awal_hut.supplier_code '+
                      'where tot_hutang+case when saldo_awal is NULL then 0 else saldo_awal end>0 and tot_hutang+h1+h2+h3+tot_rcn >0 )kkkk '+
                      ' ';
           open;
        end;
    end;
    MemSisaHutang.Close;
    MemSisaHutang.Open;
    QSisaHutang.Close;
    QSisaHutang.Open;
    DBGridSisaHutang.FinishLoadingStatus();

end;

procedure TF_cetak_sisa_htg.FormShow(Sender: TObject);
begin
   Dp1.EditValue:=date();
   Dp4.EditValue:=date();
   Dp5.EditValue:=date();
   load_item_type;
end;

initialization
  RegisterClass(TF_cetak_sisa_htg);

end.
