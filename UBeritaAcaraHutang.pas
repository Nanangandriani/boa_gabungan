unit UBeritaAcaraHutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB, frxClass,
  frxDBSet, MemTableEh, MemDS, DBAccess, Uni, DataDriverEh, dxSkinsCore,
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
  dxSkinXmas2008Blue, cxButtonEdit, cxCalendar, cxLabel, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxBar,
  cxBarEditItem, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFBeritaAcaraHutang = class(TForm)
    DataSetDriverEh1: TDataSetDriverEh;
    DSisaHutang: TDataSource;
    QSisaHutang: TUniQuery;
    MemSisaHutang: TMemTableEh;
    frxDBDBeritaAcara: TfrxDBDataset;
    QBeritaAcara: TUniQuery;
    QBeritaAcarakodesup: TStringField;
    QBeritaAcaranamasup: TStringField;
    QBeritaAcarasisa_hutang: TFloatField;
    Report: TfrxReport;
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
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    dp1: TcxBarEditItem;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    cxBarEditItem6: TcxBarEditItem;
    dp4: TcxBarEditItem;
    cxBarEditItem8: TcxBarEditItem;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridSisaHutang: TDBGridEh;
    DBGridEh1: TDBGridEh;
    QSisaHutangkodesup: TStringField;
    QSisaHutangnamasup: TStringField;
    QSisaHutangsisa_hutang: TFloatField;
    MemSisaHutangkodesup: TStringField;
    MemSisaHutangnamasup: TStringField;
    MemSisaHutangsisa_hutang: TFloatField;
    QTgl_hutang: TUniQuery;
    DSQTgl_Hutang: TDataSource;
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure Jenis_HutangChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_supp,vkd_jenis_hutang,vkd_sup_account,vkd_header_account:string;
    tgl_htg,tgl_mulai,tgl_cutoff,tgl_saldobank:tdatetime;

    procedure load_item_type;
  end;

var
  FBeritaAcaraHutang: TFBeritaAcaraHutang;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UMy_Function;

procedure TFBeritaAcaraHutang.load_item_type;
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

procedure TFBeritaAcaraHutang.dxBarLargeButton4Click(Sender: TObject);
var
  query:string;
  dd,dd2,mm,mm2,yy,yy2:word;
  tgl11,tgl12,tgl21,tgl22:tdatetime;
  tot_hutang : Real;
begin
    if Length(Jenis_Hutang.Text)=0 then
    begin
      ShowMessage('Silakan Pilih Jenis Hutang !!!');
      exit;
    end;

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
    with QSisaHutang do
    begin
      close;
      sql.Clear;
      sql.Text:='select jj.kodesup,jj.namasup,jj.saldo_awal_tahun+jj.kredit '+
                '-jj.debit-jj.debit_do-jj.debit_retur-jj.nilai_pot sisa_hutang from '+
                '(select a.supplier_code as kodesup,a.supplier_name as namasup,case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun,(case when x.nilai is null then 0 else x.nilai end)kredit, '+
                //--(case when kredit_do.nilai is null then 0 else kredit_do.nilai end)kredit_do,
                '(case when y.nilai is null then 0 else y.nilai end)debit,(case when debit_do.nilai is null then 0 else debit_do.nilai end)debit_do, '+
                '(case when z.nilai is null then 0 else z.nilai end)debit_retur, (case when xx.nilai_pot is null then 0 else xx.nilai_pot end)nilai_pot from '+
                '(select * from t_supplier a LEFT JOIN t_item_type b on a.header_code=b.acc_code_pemb where type='+QuotedStr(Jenis_Hutang.Text)+' )a '+
                'left join (select kodesup,sum(nilai)-sum(nilai_um) as nilai from '+
                '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from  (select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(nilai*valas_value) else sum(nilai) end)nilai from '+
                //'(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where b.code='+Quotedstr(vkd_jenis_hutang)+' '+
                '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 '+
                ' where b.code IN (SELECT acc_code_pemb from t_item_type where type IN('+QuotedStr(Jenis_Hutang.Text)+'))'+
                //' in(SELECT account_code FROM t_asset_payable_account)'+
                //'and account_um_code <> ''1151.03''
                'and  trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue-1))+' )a '+
                'left join (select trans_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no  group by kodesup,b.po_no,a.valas)a '+
                'left join(select po_no,supplier_code,sum(um_value)as nilai_um from t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                'group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup=b.supplier_code)x '+
                'group by kodesup )x on a.supplier_code=x.kodesup '+

                'left join(select supplier_code as kodesup,sum(bayar) as nilai from(select a.voucher_no,a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from '+
                '(select voucher_no,supplier_code,sum(paid_amount)as bayar,b.code from t_cash_bank_expenditure_payable a '+
                'INNER JOIN v_ak_account b on a.account_acc= b.account_code2  '+
                ' where b.code in (SELECT acc_code_pemb from t_item_type where type IN('+QuotedStr(Jenis_Hutang.Text)+'))'+
                //' (SELECT account_code FROM t_asset_payable_account) '+
                ' and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' group by voucher_no,supplier_code,b.code order by voucher_no,supplier_code,b.code)a '+
                'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real where account_code<>''2130.02'' group by voucher order by voucher)b 	on a.voucher_no=b.voucher)x '+
                'group by supplier_code order by supplier_code)y on a.supplier_code=y.kodesup '+
                'left join(select b.supplier_code as kodesup,(case when b.valas=''USD'' then sum(a.total_price*b.valas_value) else sum(a.total_price) end)nilai from t_purchase_return_det a '+
                'INNER JOIN t_purchase_return b on a.return_no=b.return_no left join t_purchase_invoice dd on b.receive_no=dd.trans_no '+
                'INNER JOIN v_ak_account ee on dd.account_code= ee.account_code2 where a.return_no=b.return_no and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and '+
                ' ee.code in (SELECT acc_code_pemb from t_item_type where type IN('+QuotedStr(Jenis_Hutang.Text)+'))'+
                //'(SELECT account_code FROM t_asset_payable_account) '+
                'group by b.supplier_code,b.valas order by b.supplier_code)z on a.supplier_code=z.kodesup '+
                'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb left join t_purchase_invoice dd on bb.receive_no=dd.ref_no '+
                'INNER JOIN v_ak_account ee ON dd.account_code= ee.account_code2 where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and '+
                'ee.code in (SELECT acc_code_pemb from t_item_type where type IN('+QuotedStr(Jenis_Hutang.Text)+')) '+
                //'(SELECT account_code FROM t_asset_payable_account) '+
                ' group by bb.supplier_code order by bb.supplier_code)xx on a.supplier_code=xx.supplier_code '+
                'left join(select kodesup,sum(nilai)as nilai from '+
                '(select a.bk_no as noinv, '+
                //--(case when c.kd_supplier_angkutan is null then d.tujuan else c.kd_supplier_angkutan end)kodesup '+
                ' '''' kodesup, b.tgltrans as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan from '+
                '(select voucher_no ,bk_no ,account_code,remark,pay,4 as urutan from t_payment_detail_real where source_id=3 and '+
                'account_code in (SELECT acc_code_pemb from t_item_type where type IN('+QuotedStr(Jenis_Hutang.Text)+'))'+
                //' (SELECT account_code FROM t_asset_payable_account) '+
                ')a left join '+
                '(select distinct voucher_no,trans_date as tgltrans from (SELECT a.voucher_no,a.trans_date,b.code_account,b."position",c.code from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher '+
                'INNER JOIN v_ak_account c on b.code_account= c.account_code2 )h where h.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and '+
                'h.code in (SELECT acc_code_pemb from t_item_type where type IN('+QuotedStr(Jenis_Hutang.Text)+'))'+
                //'(SELECT account_code FROM t_asset_payable_account) '+
                'and h.position=''D'')b on a.bk_no=b.voucher_no '+
                ')x group by kodesup)debit_do on a.supplier_code=debit_do.kodesup '+

                'left join (select * from t_initial_balance_debt  a INNER JOIN v_ak_account b on a.debt_type=account_code2 '+
                'where b.code in (SELECT acc_code_pemb from t_item_type where type IN('+QuotedStr(Jenis_Hutang.Text)+')) '+
                ' and year = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj';
      open;
    end;


  if QSisaHutang.RecordCount=0 then
  begin
    showmessage('Tidak ada data yang bisa ditampilkan !');
    exit;
  end;
  if QSisaHutang.RecordCount<>0 then
  begin
    MemSisaHutang.Close;
    MemSisaHutang.Open;
    QSisaHutang.Close;
    QSisaHutang.Open;
  end;
  DBGridSisaHutang.FinishLoadingStatus();
end;

procedure TFBeritaAcaraHutang.dxBarLargeButton6Click(Sender: TObject);
var
  query:string;
  dd,dd2,mm,mm2,yy,yy2:word;
  tgl11,tgl12,tgl21,tgl22:tdatetime;
  tot_hutang : Real;
begin
    if Length(Jenis_Hutang.Text)=0 then
    begin
      ShowMessage('Silakan Pilih Jenis Hutang !!!');
      exit;
    end;

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

    with QBeritaAcara do
    begin
      close;
      sql.Clear;
      sql.Text:='select jj.kodesup,jj.namasup,jj.saldo_awal_tahun+jj.kredit '+
                '-jj.debit-jj.debit_do-jj.debit_retur-jj.nilai_pot sisa_hutang from '+
                '(select a.supplier_code as kodesup,a.supplier_name as namasup,case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun,(case when x.nilai is null then 0 else x.nilai end)kredit, '+
                //--(case when kredit_do.nilai is null then 0 else kredit_do.nilai end)kredit_do,
                '(case when y.nilai is null then 0 else y.nilai end)debit,(case when debit_do.nilai is null then 0 else debit_do.nilai end)debit_do, '+
                '(case when z.nilai is null then 0 else z.nilai end)debit_retur, (case when xx.nilai_pot is null then 0 else xx.nilai_pot end)nilai_pot from '+
                '(select * from t_supplier a LEFT JOIN t_item_type b on a.header_code=b.acc_code_pemb where type='+QuotedStr(Jenis_Hutang.Text)+' )a '+
                'left join (select kodesup,sum(nilai)-sum(nilai_um) as nilai from '+
                '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from  (select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(nilai*valas_value) else sum(nilai) end)nilai from '+
                //'(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where b.code='+Quotedstr(vkd_jenis_hutang)+' '+
                '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 '+
                ' where b.code IN (SELECT acc_code_pemb from t_item_type where type IN('+QuotedStr(Jenis_Hutang.Text)+'))'+
                //' in(SELECT account_code FROM t_asset_payable_account)'+
                //'and account_um_code <> ''1151.03''
                'and  trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue-1))+' )a '+
                'left join (select trans_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no  group by kodesup,b.po_no,a.valas)a '+
                'left join(select po_no,supplier_code,sum(um_value)as nilai_um from t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' '+
                'group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup=b.supplier_code)x '+
                'group by kodesup )x on a.supplier_code=x.kodesup '+

                'left join(select supplier_code as kodesup,sum(bayar) as nilai from(select a.voucher_no,a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from '+
                '(select voucher_no,supplier_code,sum(paid_amount)as bayar,b.code from t_cash_bank_expenditure_payable a '+
                'INNER JOIN v_ak_account b on a.account_acc= b.account_code2  '+
                ' where b.code in (SELECT acc_code_pemb from t_item_type where type IN('+QuotedStr(Jenis_Hutang.Text)+'))'+
                //' (SELECT account_code FROM t_asset_payable_account) '+
                ' and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' group by voucher_no,supplier_code,b.code order by voucher_no,supplier_code,b.code)a '+
                'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real where account_code<>''2130.02'' group by voucher order by voucher)b 	on a.voucher_no=b.voucher)x '+
                'group by supplier_code order by supplier_code)y on a.supplier_code=y.kodesup '+
                'left join(select b.supplier_code as kodesup,(case when b.valas=''USD'' then sum(a.total_price*b.valas_value) else sum(a.total_price) end)nilai from t_purchase_return_det a '+
                'INNER JOIN t_purchase_return b on a.return_no=b.return_no left join t_purchase_invoice dd on b.receive_no=dd.trans_no '+
                'INNER JOIN v_ak_account ee on dd.account_code= ee.account_code2 where a.return_no=b.return_no and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and '+
                ' ee.code in (SELECT acc_code_pemb from t_item_type where type IN('+QuotedStr(Jenis_Hutang.Text)+'))'+
                //'(SELECT account_code FROM t_asset_payable_account) '+
                'group by b.supplier_code,b.valas order by b.supplier_code)z on a.supplier_code=z.kodesup '+
                'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb left join t_purchase_invoice dd on bb.receive_no=dd.ref_no '+
                'INNER JOIN v_ak_account ee ON dd.account_code= ee.account_code2 where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and '+
                'ee.code in (SELECT acc_code_pemb from t_item_type where type IN('+QuotedStr(Jenis_Hutang.Text)+')) '+
                //'(SELECT account_code FROM t_asset_payable_account) '+
                ' group by bb.supplier_code order by bb.supplier_code)xx on a.supplier_code=xx.supplier_code '+
                'left join(select kodesup,sum(nilai)as nilai from '+
                '(select a.bk_no as noinv, '+
                //--(case when c.kd_supplier_angkutan is null then d.tujuan else c.kd_supplier_angkutan end)kodesup '+
                ' '''' kodesup, b.tgltrans as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan from '+
                '(select voucher_no ,bk_no ,account_code,remark,pay,4 as urutan from t_payment_detail_real where source_id=3 and '+
                'account_code in (SELECT acc_code_pemb from t_item_type where type IN('+QuotedStr(Jenis_Hutang.Text)+'))'+
                //' (SELECT account_code FROM t_asset_payable_account) '+
                ')a left join '+
                '(select distinct voucher_no,trans_date as tgltrans from (SELECT a.voucher_no,a.trans_date,b.code_account,b."position",c.code from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher '+
                'INNER JOIN v_ak_account c on b.code_account= c.account_code2 )h where h.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+' and '+
                'h.code in (SELECT acc_code_pemb from t_item_type where type IN('+QuotedStr(Jenis_Hutang.Text)+'))'+
                //'(SELECT account_code FROM t_asset_payable_account) '+
                'and h.position=''D'')b on a.bk_no=b.voucher_no '+
                ')x group by kodesup)debit_do on a.supplier_code=debit_do.kodesup '+

                'left join (select * from t_initial_balance_debt  a INNER JOIN v_ak_account b on a.debt_type=account_code2 '+
                'where b.code in (SELECT acc_code_pemb from t_item_type where type IN('+QuotedStr(Jenis_Hutang.Text)+')) '+
                ' and year = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj';
      open;
    end;


  if QBeritaAcara.RecordCount=0 then
  begin
    showmessage('Tidak ada data yang bisa dicetak !');
    exit;
  end;

  if QBeritaAcara.RecordCount<>0 then
  begin
  tot_hutang:=0;
  QBeritaAcara.First;
  while not QBeritaAcara.Eof do
  begin
    tot_hutang:=tot_hutang+QBeritaAcarasisa_hutang.AsFloat;
    QBeritaAcara.Next;
  end;

   Report.LoadFromFile(cLocation +'Report/frx_Berita_Acara_Hutang'+ '.fr3');
   Report.Variables['nama_pt'] := QuotedStr(UpperCase(FHomeLogin.vNamaPRSH));
   Report.Variables['tot_hutang'] := QuotedStr(FloatToStr(tot_hutang));
   Report.Variables['akun_hutang1'] := QuotedStr(UpperCase(Jenis_Hutang.Text));
   Report.Variables['akun_hutang2'] := QuotedStr(UpperCase(Jenis_Hutang.Text));
   Report.Variables['TanggalFilter'] :=  dp1.EditValue;
   SetMemo(Report,'akun_hutang',UpperCase(Jenis_Hutang.Text));


   Report.ShowReport();
  end;

end;


procedure TFBeritaAcaraHutang.FormShow(Sender: TObject);
begin
   Dp1.EditValue:=date();
   Dp4.EditValue:=date();
   Dp5.EditValue:=date();
   load_item_type;
   Jenis_Hutang.ItemIndex:=0;
end;

procedure TFBeritaAcaraHutang.Jenis_HutangChange(Sender: TObject);
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
end;

initialization
  RegisterClass(TFBeritaAcaraHutang);

end.
