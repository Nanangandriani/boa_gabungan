unit ULap_Buku_Harian_Kas_Kecil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBasic, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCalendar, cxDropDownEdit,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls, Vcl.Mask,
  RzEdit, RzCmboBx, dxRibbon, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  frxClass, frxDBSet, dxBar, cxBarEditItem, cxClasses, Data.DB, RzPanel,
  Vcl.ComCtrls, RzRadChk, Vcl.Buttons, dxBevel, dxGDIPlusClasses, RzBmpBtn,
  MemDS, DBAccess, Uni, cxButtonEdit, cxCheckBox, dxColorEdit, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, MemTableDataEh,
  MemTableEh, DataDriverEh;

type
  TFLap_Buku_Harian_Kas_Kecil = class(TForm)
    DBGridKasKecil: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    RzPanel1: TRzPanel;
    Cbsemua: TRzCheckBox;
    CbLokasi: TRzComboBox;
    Label2: TLabel;
    DTPick1: TDateTimePicker;
    Label5: TLabel;
    Button11: TButton;
    txtnmacckredit: TEdit;
    txtkdacckredit2: TEdit;
    Label1: TLabel;
    dxBevel1: TdxBevel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    frxDBDatasetPers: TfrxDBDataset;
    QPerusahaan: TUniQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QKasKecil: TUniQuery;
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
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    CbSupplier: TcxBarEditItem;
    CbBarang: TcxBarEditItem;
    Cxppn: TcxBarEditItem;
    BtnClear: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    txtkdacckredit: TdxBarEdit;
    dxBarEdit3: TdxBarEdit;
    dxBarEdit2: TdxBarEdit;
    dxBarEdit4: TdxBarEdit;
    cxBarEditItem1: TcxBarEditItem;
    DTPick11: TcxBarEditItem;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DataSetDriverEh1: TDataSetDriverEh;
    DSBHKasKecil: TDataSource;
    MemBHKasKecil: TMemTableEh;
    QBHKasKecil: TUniQuery;
    cxBarEditItem2: TcxBarEditItem;
    DTPick12: TcxBarEditItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tgl_htg,tgl_mulai,tgl_cutoff,tgl_saldobank:tdatetime;
  end;

//var
function
  FLap_Buku_Harian_Kas_Kecil: TFLap_Buku_Harian_Kas_Kecil;

implementation

{$R *.dfm}

uses UMy_Function, UDataModule;

var
  RealFLap_Buku_Harian_Kas_Kecil: TFLap_Buku_Harian_Kas_Kecil;

function FLap_Buku_Harian_Kas_Kecil: TFLap_Buku_Harian_Kas_Kecil;
begin
  if RealFLap_Buku_Harian_Kas_Kecil <> nil then
     FLap_Buku_Harian_Kas_Kecil:=RealFLap_Buku_Harian_Kas_Kecil
  else
     Application.CreateForm(TFLap_Buku_Harian_Kas_Kecil,Result);
end;

procedure TFLap_Buku_Harian_Kas_Kecil.dxBarLargeButton1Click(Sender: TObject);
var
  query:string;
  tglawal,tglakhir : string;
  tgl1:tdate;
  dd,mm,yy:word;
  ketemu:boolean;
begin
    with dm.qtemp do
    begin
      close;
      sql.Clear;
      sql.Add('select * from t_tmpsyst');
      open;
    end;
    tgl_htg:=dm.qtemp.FieldByName('debt_date').asdatetime;
    //tgl_mulai:=dm.qtemp.FieldByName('start_date').asdatetime;
    tgl1:=dm.qtemp.FieldByName('start_date').asdatetime;
    tgl_saldobank:=dm.qtemp.FieldByName('bankbalance_date').asdatetime;


    query:='SELECT zzz.*,sum(sa+debit-kredit) over (ORDER BY nomor asc )  saldo  FROM '+
            '(SELECT  "row_number"() over (ORDER BY urutan)+1 nomor,trans_date,voucher_no,description,actors_name,order_no,actors_code,code '+
            ',jumdebit,jumkredit,penjualan,adm,bop,urutan,0 sa,jumdebit debit,jumkredit kredit '+
            'FROM '+
            '(/*transaksi*/ select distinct a.trans_date,a.voucher_no,a.description,a.actors_name,a.order_no,a.actors_code,a.code,'+
            '(case when debit.jumlah is null then 0 else debit.jumlah end)jumdebit,(case when kredit.jumlah is null then 0 else kredit.jumlah end)jumkredit,'+
            '(case when d.jumlah is null then 0 else d.jumlah end)penjualan,(case when b.jumlah is null then 0 else b.jumlah end)adm,(case when c.jumlah is null then 0 else c.jumlah end)bop,(case when debit.jumlah>0 then 1 else 10 end)urutan from '+
            '(select distinct c.trans_date,c.voucher_no,c.description,c.actors_name,c.order_no,c.actors_code,b.code from t_petty_cash_det a '+
            'INNER JOIN t_petty_cash c ON a.voucher_no=a.voucher_no '+
            'LEFT JOIN t_cost_actors b on c.actors_code=b.code '+
            'where trans_date = '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick11.EditValue))+' and code_account='+QuotedStr(txtkdacckredit.Text)+'  order by trans_date,voucher_no)a '+
            'left join (select voucher_no,sum(paid_amount)as jumlah from t_petty_cash_det where (code_account='+QuotedStr(txtkdacckredit.Text)+' )and("position"=''D'') group by voucher_no order by voucher_no)debit on a.voucher_no=debit.voucher_no '+
            'left join (select voucher_no,sum(paid_amount)as jumlah from t_petty_cash_det where ("position"=''K'')and(code_account='+QuotedStr(txtkdacckredit.Text)+' ) group by voucher_no order by voucher_no)kredit on a.voucher_no=kredit.voucher_no '+
            'left join (select a.voucher_no,sum(a.paid_amount)as jumlah from t_petty_cash_det a,t_ak_account b '+
            'where (a."position"=''D'') and '+
            '(a.code_account=b.code)and (b.type_id=2)group by voucher_no order by voucher_no)b on a.voucher_no=b.voucher_no '+
            'left join '+
            '(select voucher_no,sum(a.paid_amount)as jumlah from t_petty_cash_det a,t_ak_account b '+
            'where (a."position"=''D'') and '+
            '(a.code_account=b.code)and (b.type_id=3) group by voucher_no order by voucher_no)c on a.voucher_no=c.voucher_no '+
            'left join '+
            '(select voucher_no,sum(a.paid_amount)as jumlah from t_petty_cash_det a,t_ak_account b '+
            'where (a.code_account=b.code)and (b.type_id=4) group by voucher_no order by voucher_no)d on a.voucher_no=d.voucher_no order by trans_date,urutan,order_no,voucher_no)xxx '+
            'UNION ALL '+
            '/*Saldo Awal*/ SELECT 1 nomor,null as tgltrans,'''' as voucher,''Saldo Awal'' ket,'''' kepada,0 nourut,''0'' id_pelaku,'''' kode_tp '+
            ',0 jum_debit,0 jum_kredit,0 penjualan,0 adm,0 bop,0 urutan,0 sa,0 debit,0 kredit '+
            'FROM '+
            '(select yy.kodesp,yy.balance,xx.jum_debit,xx.jum_kredit,sum(yy.balance+xx.jum_debit-xx.jum_kredit) as saldo_awal from '+
            '(select code as kodesp,balance from t_ak_account where  code='+QuotedStr(txtkdacckredit.Text)+')yy '+
            'left join '+
            '(select x.kodesp,(case when a.jum_debit is null then 0 else a.jum_debit end)jum_debit ,(case when b.jum_kredit is null then 0 else b.jum_kredit end)jum_kredit from '+
            '(select code as kodesp from t_ak_account where code='+QuotedStr(txtkdacckredit.Text)+')x '+
            'left join '+
            '(select r.code_account,(case when sum(r.paid_amount)is null then 0 else sum(r.paid_amount) end)jum_debit  from t_petty_cash_det r '+
            'INNER JOIN t_petty_cash s on r.voucher_no=s.voucher_no '+
            'where (s.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick11.EditValue-1)) +') and  r.code_account='+QuotedStr(txtkdacckredit.Text)+' and "position"=''D'' '+
            'group by code_account order by code_account)a on a.code_account=x.kodesp '+
            'left join (select j.code_account,(case when sum(j.paid_amount)is null then 0 else sum(j.paid_amount) end)jum_kredit from t_petty_cash_det j '+
            'INNER JOIN t_petty_cash k on j.voucher_no=k.voucher_no '+
            'where (k.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick11.EditValue-1)) +') and j.code_account='+QuotedStr(txtkdacckredit.Text)+' and "position"=''K'' group by code_account order by code_account)b on b.code_account=x.kodesp)xx on yy.kodesp=xx.kodesp '+
            'GROUP BY  yy.kodesp,yy.balance,xx.jum_debit,xx.jum_kredit)yyy '+
            ')zzz '+
            'GROUP BY zzz.nomor, zzz.trans_date,zzz.voucher_no, zzz.description,zzz.actors_name,zzz.order_no,zzz.actors_code,zzz.code,zzz.jumdebit,zzz.jumkredit,zzz.penjualan,zzz.adm,zzz.bop,zzz.urutan,zzz.sa,zzz.debit,zzz.kredit ORDER BY nomor ASC ';

    with QKasKecil do
    begin
      close;
      sql.clear;
      sql.Add(query);
      open;
    end;
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Buku_Harian_Kas_Kecil_Rev_1.fr3');
    Tfrxmemoview(frxReport1.FindObject('Memoperiode')).Memo.Text:='Tanggal  : '+FormatDateTime('dd mmmm yyyy',DTPick1.date);
    frxreport1.showreport;

end;

procedure TFLap_Buku_Harian_Kas_Kecil.DxRefreshClick(Sender: TObject);
begin
   if DTPick11.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DTPick11.SetFocus;
      Exit;
    end;

    DBGridKasKecil.StartLoadingStatus();
    with QBHKasKecil do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT  "row_number"() over (ORDER BY urutan)+1 nomor,trans_date,voucher_no,description,actors_name,order_no,actors_code,code '+
                ',jumdebit,jumkredit,penjualan,adm,bop,urutan,0 sa,jumdebit debit,jumkredit kredit '+
                'FROM '+
                '(select distinct a.trans_date,a.voucher_no,a.description,a.actors_name,a.order_no,a.actors_code,a.code,'+
                '(case when debit.jumlah is null then 0 else debit.jumlah end)jumdebit,(case when kredit.jumlah is null then 0 else kredit.jumlah end)jumkredit,'+
                '(case when d.jumlah is null then 0 else d.jumlah end)penjualan,(case when b.jumlah is null then 0 else b.jumlah end)adm,(case when c.jumlah is null then 0 else c.jumlah end)bop,(case when debit.jumlah>0 then 1 else 10 end)urutan from '+
                '(select distinct c.trans_date,c.voucher_no,c.description,c.actors_name,c.order_no,c.actors_code,b.code from t_petty_cash_det a '+
                'INNER JOIN t_petty_cash c ON a.voucher_no=a.voucher_no '+
                'LEFT JOIN t_cost_actors b on c.actors_code=b.code '+
                'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick11.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick12.EditValue))+'  and code_account='+QuotedStr(txtkdacckredit.Text)+'  order by trans_date,voucher_no)a '+
                'left join (select voucher_no,sum(paid_amount)as jumlah from t_petty_cash_det where (code_account='+QuotedStr(txtkdacckredit.Text)+' )and("position"=''D'') group by voucher_no order by voucher_no)debit on a.voucher_no=debit.voucher_no '+
                'left join (select voucher_no,sum(paid_amount)as jumlah from t_petty_cash_det where ("position"=''K'')and(code_account='+QuotedStr(txtkdacckredit.Text)+' ) group by voucher_no order by voucher_no)kredit on a.voucher_no=kredit.voucher_no '+
                'left join (select a.voucher_no,sum(a.paid_amount)as jumlah from t_petty_cash_det a,t_ak_account b '+
                'where (a."position"=''D'') and '+
                '(a.code_account=b.code)and (b.type_id=2)group by voucher_no order by voucher_no)b on a.voucher_no=b.voucher_no '+
                'left join '+
                '(select voucher_no,sum(a.paid_amount)as jumlah from t_petty_cash_det a,t_ak_account b '+
                'where (a."position"=''D'') and '+
                '(a.code_account=b.code)and (b.type_id=3) group by voucher_no order by voucher_no)c on a.voucher_no=c.voucher_no '+
                'left join '+
                '(select voucher_no,sum(a.paid_amount)as jumlah from t_petty_cash_det a,t_ak_account b '+
                'where (a.code_account=b.code)and (b.type_id=4) group by voucher_no order by voucher_no)d on a.voucher_no=d.voucher_no order by trans_date,urutan,order_no,voucher_no)xxx ';
      open;
    end;
      MemBHKasKecil.Close;
      MemBHKasKecil.Open;
      QBHKasKecil.Close;
      QBHKasKecil.Open;
      DBGridKasKecil.FinishLoadingStatus();
end;

procedure TFLap_Buku_Harian_Kas_Kecil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TFLap_Buku_Harian_Kas_Kecil.FormCreate(Sender: TObject);
begin
  RealFLap_Buku_Harian_Kas_Kecil:=Self;
end;

procedure TFLap_Buku_Harian_Kas_Kecil.FormDestroy(Sender: TObject);
begin
   RealFLap_Buku_Harian_Kas_Kecil:=Nil;
end;

procedure TFLap_Buku_Harian_Kas_Kecil.FormShow(Sender: TObject);
begin
   DTPick1.Date:=Now();
   DTPick11.EditValue:=date();
   DTPick12.EditValue:=date();
end;

procedure TFLap_Buku_Harian_Kas_Kecil.SpeedButton1Click(Sender: TObject);
var
  query:string;
  tglawal,tglakhir : string;
  tgl1:tdate;
  dd,mm,yy:word;
  ketemu:boolean;
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


    query:='SELECT zzz.*,sum(sa+debit-kredit) over (ORDER BY nomor asc )  saldo  FROM '+
            '(SELECT  "row_number"() over (ORDER BY urutan)+1 nomor,trans_date,voucher_no,description,actors_name,order_no,actors_code,code '+
            ',jumdebit,jumkredit,penjualan,adm,bop,urutan,0 sa,jumdebit debit,jumkredit kredit '+
            'FROM '+
            '(select distinct a.trans_date,a.voucher_no,a.description,a.actors_name,a.order_no,a.actors_code,a.code,'+
            '(case when debit.jumlah is null then 0 else debit.jumlah end)jumdebit,(case when kredit.jumlah is null then 0 else kredit.jumlah end)jumkredit,'+
            '(case when d.jumlah is null then 0 else d.jumlah end)penjualan,(case when b.jumlah is null then 0 else b.jumlah end)adm,(case when c.jumlah is null then 0 else c.jumlah end)bop,(case when debit.jumlah>0 then 1 else 10 end)urutan from '+
            '(select distinct c.trans_date,c.voucher_no,c.description,c.actors_name,c.order_no,c.actors_code,b.code from t_petty_cash_det a '+
            'INNER JOIN t_petty_cash c ON a.voucher_no=a.voucher_no '+
            'LEFT JOIN t_cost_actors b on c.actors_code=b.code '+
            'where trans_date = '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.Date))+' and code_account=''1112''  order by trans_date,voucher_no)a '+
            'left join (select voucher_no,sum(paid_amount)as jumlah from t_petty_cash_det where (code_account=''1112'' )and("position"=''D'') group by voucher_no order by voucher_no)debit on a.voucher_no=debit.voucher_no '+
            'left join (select voucher_no,sum(paid_amount)as jumlah from t_petty_cash_det where ("position"=''K'')and(code_account=''1112'' ) group by voucher_no order by voucher_no)kredit on a.voucher_no=kredit.voucher_no '+
            'left join (select a.voucher_no,sum(a.paid_amount)as jumlah from t_petty_cash_det a,t_ak_account b '+
            'where (a."position"=''D'') and '+
            '(a.code_account=b.code)and (b.type_id=2)group by voucher_no order by voucher_no)b on a.voucher_no=b.voucher_no '+
            'left join '+
            '(select voucher_no,sum(a.paid_amount)as jumlah from t_petty_cash_det a,t_ak_account b '+
            'where (a."position"=''D'') and '+
            '(a.code_account=b.code)and (b.type_id=3) group by voucher_no order by voucher_no)c on a.voucher_no=c.voucher_no '+
            'left join '+
            '(select voucher_no,sum(a.paid_amount)as jumlah from t_petty_cash_det a,t_ak_account b '+
            'where (a.code_account=b.code)and (b.type_id=4) group by voucher_no order by voucher_no)d on a.voucher_no=d.voucher_no order by trans_date,urutan,order_no,voucher_no)xxx '+
            'UNION ALL '+
            'SELECT 1 nomor,null as tgltrans,'''' as voucher,''Saldo Awal'' ket,'''' kepada,0 nourut,''0'' id_pelaku,'''' kode_tp '+
            ',0 jum_debit,0 jum_kredit,0 penjualan,0 adm,0 bop,0 urutan,0 sa,0 debit,0 kredit '+
            'FROM '+
            '(select yy.kodesp,yy.balance,xx.jum_debit,xx.jum_kredit,sum(yy.balance+xx.jum_debit-xx.jum_kredit) as saldo_awal from '+
            '(select code as kodesp,balance from t_ak_account where  code='+QuotedStr(txtkdacckredit.Text)+')yy '+
            'left join '+
            '(select x.kodesp,(case when a.jum_debit is null then 0 else a.jum_debit end)jum_debit ,(case when b.jum_kredit is null then 0 else b.jum_kredit end)jum_kredit from '+
            '(select code as kodesp from t_ak_account where code='+QuotedStr(txtkdacckredit.Text)+')x '+
            'left join '+
            '(select r.code_account,(case when sum(r.paid_amount)is null then 0 else sum(r.paid_amount) end)jum_debit  from t_petty_cash_det r '+
            'INNER JOIN t_petty_cash s on r.voucher_no=s.voucher_no '+
            'where (s.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.Date-1)) +') and  r.code_account='+QuotedStr(txtkdacckredit.Text)+' and "position"=''D'' '+
            'group by code_account order by code_account)a on a.code_account=x.kodesp '+
            'left join (select j.code_account,(case when sum(j.paid_amount)is null then 0 else sum(j.paid_amount) end)jum_kredit from t_petty_cash_det j '+
            'INNER JOIN t_petty_cash k on j.voucher_no=k.voucher_no '+
            'where (k.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.Date-1)) +') and j.code_account='+QuotedStr(txtkdacckredit.Text)+' and "position"=''K'' group by code_account order by code_account)b on b.code_account=x.kodesp)xx on yy.kodesp=xx.kodesp '+
            'GROUP BY  yy.kodesp,yy.balance,xx.jum_debit,xx.jum_kredit)yyy '+
            ')zzz '+
            'GROUP BY zzz.nomor, zzz.trans_date,zzz.voucher_no, zzz.description,zzz.actors_name,zzz.order_no,zzz.actors_code,zzz.code,zzz.jumdebit,zzz.jumkredit,zzz.penjualan,zzz.adm,zzz.bop,zzz.urutan,zzz.sa,zzz.debit,zzz.kredit ORDER BY nomor ASC ';

    with QKasKecil do
    begin
      close;
      sql.clear;
      sql.Add(query);
      open;
    end;
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Buku_Harian_Kas_Kecil.fr3');
    Tfrxmemoview(frxReport1.FindObject('Memoperiode')).Memo.Text:='Tanggal  : '+FormatDateTime('dd mmmm yyyy',DTPick1.date);
    frxreport1.showreport;



end;

Initialization
  RegisterClasses([TFLap_Buku_Harian_Kas_Kecil]);

end.
