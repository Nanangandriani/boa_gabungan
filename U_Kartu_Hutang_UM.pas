unit U_Kartu_Hutang_UM;

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
  Uni;

type
  TF_Kartu_Hutang_UM = class(TForm)
    QTgl_hutang: TUniQuery;
    frxDBDataset2: TfrxDBDataset;
    DSsupp: TDataSource;
    Qsupp: TUniQuery;
    QCetak: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
    DSQTgl_Hutang: TDataSource;
    QKartuHutangUM: TUniQuery;
    MemKartuHutangUM: TMemTableEh;
    DSKartuHutang: TDataSource;
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
    datetimepicker1: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    DateTimePicker2: TcxBarEditItem;
    Ed_supplier: TcxBarEditItem;
    Jenis_Hutang: TdxBarCombo;
    Cb_Valas: TdxBarCombo;
    dtp1: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    dtp2: TcxBarEditItem;
    dxRefresh: TdxBarLargeButton;
    ed_code_supp: TcxBarEditItem;
    frxDBDatasetPers: TfrxDBDataset;
    QPerusahaan: TUniQuery;
    DBGridKartuHutangUM: TDBGridEh;
    DBGridEh1: TDBGridEh;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DataSource1: TDataSource;
    QAkun: TUniQuery;
    frxReport2: TfrxReport;
    QKartuHutangUMnomor: TLargeintField;
    QKartuHutangUMpo_no: TMemoField;
    QKartuHutangUMtanggal: TDateField;
    QKartuHutangUMsupplier_code: TMemoField;
    QKartuHutangUMsupplier_name: TMemoField;
    QKartuHutangUMaddress: TMemoField;
    QKartuHutangUMtelp: TMemoField;
    QKartuHutangUMvoucher: TMemoField;
    QKartuHutangUMket: TMemoField;
    QKartuHutangUMdk: TMemoField;
    QKartuHutangUMnilai_um: TFloatField;
    QKartuHutangUMaccount_name: TMemoField;
    QKartuHutangUMkodesp: TMemoField;
    QKartuHutangUMsa: TFloatField;
    QKartuHutangUMdebit: TFloatField;
    QKartuHutangUMkredit: TFloatField;
    QKartuHutangUMsaldo: TFloatField;
    dxBarLargeButton5: TdxBarLargeButton;
    procedure Ed_supplierPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure ed_code_suppChange(Sender: TObject);
    procedure Jenis_HutangChange(Sender: TObject);
    procedure dxRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_account:string;
    tgl_htg,tgl_mulai,tgl_cutoff:tdatetime;
    procedure load_item_type;
  end;

function
//var
  F_Kartu_Hutang_UM: TF_Kartu_Hutang_UM;

implementation

{$R *.dfm}

uses USearch_Supplier, UDataModule;

var
  realF_Kartu_Hutang_UM : TF_Kartu_Hutang_UM;

  // implementasi function
function F_Kartu_Hutang_UM: TF_Kartu_Hutang_UM;
begin
  if realF_Kartu_Hutang_UM <> nil then
     F_Kartu_Hutang_UM:= realF_Kartu_Hutang_UM
  else
    Application.CreateForm(TF_Kartu_Hutang_UM, Result);
end;

procedure TF_Kartu_Hutang_UM.dxBarLargeButton4Click(Sender: TObject);
begin
    if ed_supplier.EditValue ='' then
    begin
      MessageDlg('Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      ed_supplier.SetFocus;
      Exit;
    end;
    if jenis_hutang.Text ='' then
    begin
      MessageDlg('Jenis Hutang Tidak boleh Kosong ',MtWarning,[MbOk],0);
      jenis_hutang.SetFocus;
      Exit;
    end;
    if dtp1.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      datetimepicker1.SetFocus;
      Exit;
    end;
    if dtp2.EditValue = null then
    begin
      MessageDlg('Tanggal Akhir Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      datetimepicker1.SetFocus;
      Exit;
    end;

    with QTgl_hutang do
    begin
        close;
        sql.Clear;
        sql.Add('select * from t_tmpsyst');
        open;
    end;
    tgl_htg:=QTgl_hutang.FieldByName('debt_date').asdatetime;

    with Qsupp do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM t_supplier where supplier_code='+Quotedstr(ed_code_supp.EditValue)+' ';
      open;
    end;

    with QCetak do
    begin
       close;
       sql.Clear;
       sql.Text:='SELECT zzz.*,round(cast(sum(sa+kredit-debit) over (ORDER BY nomor asc ) as numeric),2) as saldo FROM '+
                 '(SELECT "row_number"() over (order by tanggal)+1 nomor,yyy.po_no,yyy.tanggal,yyy.supplier_code,yyy.supplier_name,yyy.address,yyy.telp,yyy.voucher,ket, yyy.dk,yyy.nilai_um,yyy.account_name,yyy.kodesp,yyy.sa,yyy.debit,yyy.kredit FROM '+
                 '(SELECT x.* FROM '+
                 '(SELECT po_no,tanggal,supplier_code,supplier_name,address,telp,'''' voucher,'''' ket,''K'' dk,um_value as nilai_um,account_name,um_account_code as kodesp,0 sa,0 debit,hutang as kredit  from '+
                 '(SELECT a.po_no,a.po_date tanggal,a.supplier_code,d.supplier_name,d.address,d.telp,'''' ket,''K'' dk,a.um_value,c.account_name,a.um_account_code,b.subtotal,b.ppn_rp,b.pph,sum(b.grandtotal) as hutang FROM t_po a '+
                 'LEFT JOIN t_podetail b ON a.po_no=b.po_no '+
                 'LEFT JOIN t_ak_account c on a.um_account_code=c.code '+
                 'LEFT JOIN t_supplier d on a.supplier_code=d.supplier_code '+
                 'WHERE a.um_account_code='+Quotedstr(vkd_account)+' GROUP BY a.po_no,d.supplier_name,d.address,d.telp,c.account_name,b.subtotal,b.ppn_rp,b.pph)a '+
                 'UNION ALL '+
                 'SELECT b.nopo,trans_date tanggal,supplier_code,supplier_name,address,telp,b.voucher_no,b.remark ket,''D'' dk,b.pay as jumlah,account_name,code_account kodesp,0 sa,pay as debit,0 as kredit from '+
                 '(SELECT a.voucher_no as nopo,b.trans_date,d.supplier_code,e.supplier_name,e.address,e.telp,b.voucher_no,b.remark,''D'' "position",a.pay,c.account_name,b.code_account,b.paid_amount as debit FROM t_payment_detail_real a '+
                 'LEFT JOIN (select a.voucher_no,b.trans_date,b.code_account,a.remark,b.paid_amount FROM t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)b on a.voucher_no=b.voucher_no '+
                 'LEFT JOIN t_ak_account c on b.code_account=c.code '+
                 'LEFT JOIN t_po d on a.voucher_no=d.po_no '+
                 'LEFT JOIN t_supplier e on d.supplier_code=e.supplier_code WHERE b.code_account='+Quotedstr(vkd_account)+')b )x GROUP BY po_no,tanggal,supplier_code, '+
                 'supplier_name,address,telp,voucher,ket,dk,nilai_um,account_name,kodesp,sa,debit,kredit )yyy '+
                 'WHERE yyy.supplier_code='+Quotedstr(ed_code_supp.EditValue)+'  and tanggal BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP2.EditValue))+' '+
                 'UNION ALL '+
                 'SELECT 1 as nomor,'''' nopo,NULL tanggal,kodesup as kd_supplier,''''nm_supplier,''''alamat,''''telp,'''' voucher,''Saldo awal'' ket,''K'' dk,0 nilai_um,'''' nama_perkiraan,code_account,saldo_awal,0 debit,0 kredit from '+
                 '(SELECT x.kodesup,x.code_account,sum(x.saldo_awal_tahun+x.kredit-x.debit)saldo_awal FROM '+
                 '(SELECT a.supplier_code as kodesup,z.code_account, case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun, '+
                 'round(cast(case when x.nilai is null then 0 else x.nilai end as numeric),2)kredit, round(cast(case when z.nilai is null then 0 else z.nilai end as numeric),2)debit from '+
                 '(select * from t_supplier where supplier_code='+Quotedstr(ed_code_supp.EditValue)+')a '+
                 'LEFT JOIN  (select supplier_code,sum(nilai_um) as nilai from (select a.po_no,a.supplier_code,sum(b.grandtotal) as nilai_um from t_po a '+
                 'left join t_podetail b on a.po_no=b.po_no where um_status=true  and po_date<'+QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.EditValue))+' and supplier_code='+Quotedstr(ed_code_supp.EditValue)+' and um_account_code='+Quotedstr(vkd_account)+' '+
                 'group by a.po_no,supplier_code order by po_no,supplier_code)b group by supplier_code )x on a.supplier_code=x.supplier_code '+
                 'LEFT JOIN  (select supplier_code as kodesup,code_account,sum(bayar)as nilai from '+
                 '(select a.voucher_no,supplier_code,code_account,a.bayar from (select a.voucher_no,b.supplier_code,c.code_account,sum(pay)as bayar from t_payment_detail_real a '+
                 'LEFT JOIN t_po b on a.voucher_no=b.po_no LEFT JOIN (SELECT a.voucher_no,b.trans_date,b.code_account FROM t_cash_bank_expenditure a '+
                 'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) c on a.bk_no=c.voucher_no where b.supplier_code='+Quotedstr(ed_code_supp.EditValue)+' and c.code_account='+Quotedstr(vkd_account)+' '+
                 'and c.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.EditValue-1))+'  group by a.voucher_no,b.supplier_code,c.code_account order by voucher_no,supplier_code)a )y '+
                 'group by supplier_code,code_account order by supplier_code)z on a.supplier_code=z.code_account '+
                 'LEFT JOIN  (select * from t_initial_balance_debt a '+
                 'INNER JOIN v_ak_account b ON a.debt_type=b.account_code2 '+
                 'where code='+Quotedstr(vkd_account)+' '+
                 'and  "year" = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.supplier_code where a.supplier_code='+Quotedstr(ed_code_supp.EditValue)+')x '+
                 'GROUP BY x.kodesup,x.code_account)yy )zzz ORDER BY nomor, tanggal ASC';
       open;
    end;
    frxReport2.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Kartu_Hutang_UM.fr3');
    Tfrxmemoview(frxReport2.FindObject('Memo18')).Memo.Text:=Qsupp.FieldByName('supplier_name').AsString;
    Tfrxmemoview(frxReport2.FindObject('Memo21')).Memo.Text:=Qsupp.FieldByName('address').AsString;
    Tfrxmemoview(frxReport2.FindObject('Memo24')).Memo.Text:=Qsupp.FieldByName('telp').AsString;
    Tfrxmemoview(frxReport2.FindObject('Memoperiode')).Memo.Text:='Tanggal  : '+FormatDateTime('dd mmm yyyy',DTP1.EditValue)+' '+'S/D'+' '+FormatDateTime('dd mmm yyyy',DTP2.EditValue);
    frxreport2.showreport;

end;

procedure TF_Kartu_Hutang_UM.dxRefreshClick(Sender: TObject);
begin
   DBGridKartuHutangUM.StartLoadingStatus();
   with QKartuHutangUM do
   begin
     close;
     sql.Clear;
     sql.Text:='SELECT zzz.*,round(cast(sum(sa+kredit-debit) over (ORDER BY nomor asc ) as numeric),2) as saldo FROM '+
                 '(SELECT "row_number"() over (order by tanggal)+1 nomor,yyy.po_no,yyy.tanggal,yyy.supplier_code,yyy.supplier_name,yyy.address,yyy.telp,yyy.voucher,ket, yyy.dk,yyy.nilai_um,yyy.account_name,yyy.kodesp,yyy.sa,yyy.debit,yyy.kredit FROM '+
                 '(SELECT x.* FROM '+
                 '(SELECT po_no,tanggal,supplier_code,supplier_name,address,telp,'''' voucher,'''' ket,''K'' dk,um_value as nilai_um,account_name,um_account_code as kodesp,0 sa,0 debit,hutang as kredit  from '+
                 '(SELECT a.po_no,a.po_date tanggal,a.supplier_code,d.supplier_name,d.address,d.telp,'''' ket,''K'' dk,a.um_value,c.account_name,a.um_account_code,b.subtotal,b.ppn_rp,b.pph,sum(b.grandtotal) as hutang FROM t_po a '+
                 'LEFT JOIN t_podetail b ON a.po_no=b.po_no '+
                 'LEFT JOIN t_ak_account c on a.um_account_code=c.code '+
                 'LEFT JOIN t_supplier d on a.supplier_code=d.supplier_code '+
                 'WHERE a.um_account_code='+Quotedstr(vkd_account)+' GROUP BY a.po_no,d.supplier_name,d.address,d.telp,c.account_name,b.subtotal,b.ppn_rp,b.pph)a '+
                 'UNION ALL '+
                 'SELECT b.nopo,trans_date tanggal,supplier_code,supplier_name,address,telp,b.voucher_no,b.remark ket,''D'' dk,b.pay as jumlah,account_name,code_account kodesp,0 sa,pay as debit,0 as kredit from '+
                 '(SELECT a.voucher_no as nopo,b.trans_date,d.supplier_code,e.supplier_name,e.address,e.telp,b.voucher_no,b.remark,''D'' "position",a.pay,c.account_name,b.code_account,b.paid_amount as debit FROM t_payment_detail_real a '+
                 'LEFT JOIN (select a.voucher_no,b.trans_date,b.code_account,a.remark,b.paid_amount FROM t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)b on a.voucher_no=b.voucher_no '+
                 'LEFT JOIN t_ak_account c on b.code_account=c.code '+
                 'LEFT JOIN t_po d on a.voucher_no=d.po_no '+
                 'LEFT JOIN t_supplier e on d.supplier_code=e.supplier_code WHERE b.code_account='+Quotedstr(vkd_account)+')b )x GROUP BY po_no,tanggal,supplier_code, '+
                 'supplier_name,address,telp,voucher,ket,dk,nilai_um,account_name,kodesp,sa,debit,kredit )yyy '+
                 'WHERE yyy.supplier_code='+Quotedstr(ed_code_supp.EditValue)+'  and tanggal BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP2.EditValue))+' '+
                 'UNION ALL '+
                 'SELECT 1 as nomor,'''' nopo,NULL tanggal,kodesup as kd_supplier,''''nm_supplier,''''alamat,''''telp,'''' voucher,''Saldo awal'' ket,''K'' dk,0 nilai_um,'''' nama_perkiraan,code_account,saldo_awal,0 debit,0 kredit from '+
                 '(SELECT x.kodesup,x.code_account,sum(x.saldo_awal_tahun+x.kredit-x.debit)saldo_awal FROM '+
                 '(SELECT a.supplier_code as kodesup,z.code_account, case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun, '+
                 'round(cast(case when x.nilai is null then 0 else x.nilai end as numeric),2)kredit, round(cast(case when z.nilai is null then 0 else z.nilai end as numeric),2)debit from '+
                 '(select * from t_supplier where supplier_code='+Quotedstr(ed_code_supp.EditValue)+')a '+
                 'LEFT JOIN  (select supplier_code,sum(nilai_um) as nilai from (select a.po_no,a.supplier_code,sum(b.grandtotal) as nilai_um from t_po a '+
                 'left join t_podetail b on a.po_no=b.po_no where um_status=true  and po_date<'+QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.EditValue))+' and supplier_code='+Quotedstr(ed_code_supp.EditValue)+' and um_account_code='+Quotedstr(vkd_account)+' '+
                 'group by a.po_no,supplier_code order by po_no,supplier_code)b group by supplier_code )x on a.supplier_code=x.supplier_code '+
                 'LEFT JOIN  (select supplier_code as kodesup,code_account,sum(bayar)as nilai from '+
                 '(select a.voucher_no,supplier_code,code_account,a.bayar from (select a.voucher_no,b.supplier_code,c.code_account,sum(pay)as bayar from t_payment_detail_real a '+
                 'LEFT JOIN t_po b on a.voucher_no=b.po_no LEFT JOIN (SELECT a.voucher_no,b.trans_date,b.code_account FROM t_cash_bank_expenditure a '+
                 'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) c on a.bk_no=c.voucher_no where b.supplier_code='+Quotedstr(ed_code_supp.EditValue)+' and c.code_account='+Quotedstr(vkd_account)+' '+
                 'and c.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.EditValue-1))+'  group by a.voucher_no,b.supplier_code,c.code_account order by voucher_no,supplier_code)a )y '+
                 'group by supplier_code,code_account order by supplier_code)z on a.supplier_code=z.code_account '+
                 'LEFT JOIN  (select * from t_initial_balance_debt a '+
                 'INNER JOIN v_ak_account b ON a.debt_type=b.account_code2 '+
                 'where code='+Quotedstr(vkd_account)+' '+
                 'and  "year" = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.supplier_code where a.supplier_code='+Quotedstr(ed_code_supp.EditValue)+')x '+
                 'GROUP BY x.kodesup,x.code_account)yy )zzz ORDER BY nomor, tanggal ASC';
     open;
   end;
   DBGridKartuHutangUM.FinishLoadingStatus();
end;

procedure TF_Kartu_Hutang_UM.ed_code_suppChange(Sender: TObject);
begin
    with QAkun do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT a.*,c.account_name,c.code FROM t_po a '+
                'LEFT JOIN t_podetail b on a.po_no=b.po_no '+
                'INNER JOIN v_ak_account c on a.um_account_code=c.account_code2 '+
                'WHERE a.um_status=true and a.supplier_code='+Quotedstr(ed_code_supp.EditValue)+' ';
      open;
    end;
    Jenis_Hutang.Items.Clear;
    while not QAkun.Eof do
    begin
      Jenis_Hutang.Items.Add(QAkun.FieldByName('account_name').AsString);
      QAkun.Next;
    end;
end;

procedure TF_Kartu_Hutang_UM.Ed_supplierPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    with FSearch_Supplier do
    begin
       QSupplier.Close;
       QSupplier.Open;
    end;
    FSearch_Supplier.Caption:='Master Data Supplier';
    FSearch_Supplier.vcall:='Lap_Kartu_Hutang_UM';
    FSearch_Supplier.ShowModal;
end;

procedure TF_Kartu_Hutang_UM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action:=caFree;
end;

procedure TF_Kartu_Hutang_UM.FormCreate(Sender: TObject);
begin
   realF_Kartu_Hutang_UM:=self;
end;

procedure TF_Kartu_Hutang_UM.FormDestroy(Sender: TObject);
begin
   realF_Kartu_Hutang_UM:=nil;
end;

procedure TF_Kartu_Hutang_UM.FormShow(Sender: TObject);
begin
    load_item_type;
end;

procedure TF_Kartu_Hutang_UM.Jenis_HutangChange(Sender: TObject);
begin
    with QAkun do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_ak_account where account_name='+Quotedstr(Jenis_Hutang.Text)+'';
      open;
      vkd_account:=FieldByName('code').AsString;
      //showmessage(vkd_account);
    end
end;

procedure TF_Kartu_Hutang_UM.load_item_type;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='SELECT * from t_item_type WHERE deleted_at IS NULL ';
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

initialization
  RegisterClass(TF_Kartu_Hutang_UM);

end.
