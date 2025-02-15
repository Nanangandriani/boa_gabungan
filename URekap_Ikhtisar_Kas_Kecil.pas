unit URekap_Ikhtisar_Kas_Kecil;

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
  DynVarsEh, MemTableDataEh, Data.DB, cxCalendar, cxButtonEdit, cxCheckBox,
  DataDriverEh, dxBar, cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, MemTableEh, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, RzButton, Vcl.ExtCtrls, dxRibbon, frxClass, frxDBSet,
  MemDS, DBAccess, Uni;

type
  TFRekap_Ikhtisar_Kas_Kecil = class(TForm)
    frxReport2: TfrxReport;
    QCetak_Rekap_KasKecil_BOP: TUniQuery;
    frxDBDataset2: TfrxDBDataset;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    DBGridKasKecilADM: TDBGridEh;
    DSKasKecilADM: TDataSource;
    QKasKecilADM: TUniQuery;
    MemKasKecilADM: TMemTableEh;
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
    DTPick1: TcxBarEditItem;
    DTPick2: TcxBarEditItem;
    QCetak_Rekap_KasKecil_ADM: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
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
    frxDBDatasetPers: TfrxDBDataset;
    frxReport1: TfrxReport;
    DataSetDriverEh1: TDataSetDriverEh;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    QRekap_KasKecil_Biaya_Penjualan: TUniQuery;
    frxReport3: TfrxReport;
    QRekap_KasKecil_ADM2: TUniQuery;
    procedure dxPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRekap_Ikhtisar_Kas_Kecil: TFRekap_Ikhtisar_Kas_Kecil;

implementation

{$R *.dfm}

uses UDataModule, UMy_Function;

procedure TFRekap_Ikhtisar_Kas_Kecil.dxPrintClick(Sender: TObject);
begin
    if DTPick1.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DTPick1.SetFocus;
      Exit;
    end;
    if DTPick2.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DTPick2.SetFocus;
      Exit;
    end;

    with QCetak_Rekap_KasKecil_ADM do
    begin
      close;
      sql.Clear;
      sql.Text:='select tanggal,sum(b1)+sum(b2)+sum(b3)+sum(b4)+sum(b5)+sum(b6)+sum(b7)+sum(b8)+sum(b9)+sum(b10)+sum(b11)+sum(b12) as total, sum(b1)as b1,sum(b2)as b2,sum(b3)as b3,sum(b4)as b4,sum(b5)as b5,sum(b6)as b6, '+
                'sum(b7)as b7,sum(b8)as b8,sum(b9)as b9,sum(b10)as b10,sum(b11)as b11,sum(b12)as b12 from '+
                '(select a.tanggal,a.actors_name,a.voucher_no,a.description,a."name",b.total, '+
                '(case when b1.amount is null then 0 else b1.amount end)b1, '+
                '(case when b2.amount is null then 0 else b2.amount end)b2, '+
                '(case when b3.amount is null then 0 else b3.amount end)b3, '+
                '(case when b4.amount is null then 0 else b4.amount end)b4, '+
                '(case when b5.amount is null then 0 else b5.amount end)b5, '+
                '(case when b6.amount is null then 0 else b6.amount end)b6, '+
                '(case when b7.amount is null then 0 else b7.amount end)b7, '+
                '(case when b8.amount is null then 0 else b8.amount end)b8, '+
                '(case when b9.amount is null then 0 else b9.amount end)b9, '+
                '(case when b10.amount is null then 0 else b10.amount end)b10, '+
                '(case when b11.amount is null then 0 else b11.amount end)b11, '+
                '(case when b12.amount is null then 0 else b12.amount end)b12  '+
                'from '+
                '(select distinct  a.voucher_no  from t_petty_cash a INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick2.EditValue))+' and code_account=''1112''  and position=''K'')xx '+
                'left join (select distinct a.trans_date as tanggal,a.actors_name,a.voucher_no,a.code_account,a.trans_date,a.description,a.order_no,b.code,c."name" from '+
                '(SELECT a.voucher_no,a.actors_name,a.trans_date,a.description,b.code_account,a.order_no,a.actors_code from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no) a,t_ak_account b,t_cost_actors c where a.code_account=b.code and a.actors_code=c.code and b.type_id=2 and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick2.EditValue))+' order by voucher_no)a on a.voucher_no=xx.voucher_no '+

                'left join (select voucher_no,a.code_account,a."position",sum(amount)as total from (select a.voucher_no,b.code_account,b."position",a.amount FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account,b."position") a,t_ak_account b where a.code_account=b.code and b.type_id=2 and a."position"=''D'' '+
                'group by voucher_no,a.code_account,a."position" order by voucher_no)b on a.voucher_no=b.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''SBG'')b1 on a.voucher_no=b1.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''ASR'')b2 on a.voucher_no=b2.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''JMT'')b3 on a.voucher_no=b3.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''PD2'')b4 on a.voucher_no=b4.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''ATK'')b5 on a.voucher_no=b5.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''LNA'')b6 on a.voucher_no=b6.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''PTM'')b7 on a.voucher_no=b7.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''MRA'')b8 on a.voucher_no=b8.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''PDK'')b9 on a.voucher_no=b9.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''PDP'')b10 on a.voucher_no=b10.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''KPK'')b11 on a.voucher_no=b11.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''HMS'')b12 on a.voucher_no=b12.voucher_no '+
                'where a.voucher_no is not null order by a.trans_date,a.voucher_no,a.order_no)xx '+
                'group by tanggal order by tanggal ';

      open;
    end;

    with QCetak_Rekap_KasKecil_BOP do
    begin
      close;
      sql.Clear;
      sql.Text:='select tanggal,sum(b1)+sum(b2)+sum(b3)+sum(b4)+sum(b5)+sum(b6)+sum(b7)+sum(b8)+sum(b9)+sum(b10)+sum(b11) as total, sum(b1)as b1,sum(b2)as b2,sum(b3)as b3,sum(b4)as b4,sum(b5)as b5,sum(b6)as b6, '+
                'sum(b7)as b7,sum(b8)as b8,sum(b9)as b9,sum(b10)as b10,sum(b11)as b11 from '+
                '(select a.tanggal,a.actors_name,a.voucher_no,a.description,a."name",b.total, '+
                '(case when b1.amount is null then 0 else b1.amount end)b1, '+
                '(case when b2.amount is null then 0 else b2.amount end)b2, '+
                '(case when b3.amount is null then 0 else b3.amount end)b3, '+
                '(case when b4.amount is null then 0 else b4.amount end)b4, '+
                '(case when b5.amount is null then 0 else b5.amount end)b5, '+
                '(case when b6.amount is null then 0 else b6.amount end)b6, '+
                '(case when b7.amount is null then 0 else b7.amount end)b7, '+
                '(case when b8.amount is null then 0 else b8.amount end)b8, '+
                '(case when b9.amount is null then 0 else b9.amount end)b9, '+
                '(case when b10.amount is null then 0 else b10.amount end)b10, '+
                '(case when b11.amount is null then 0 else b11.amount end)b11  '+
                'from '+
                '(select  DISTINCT a.voucher_no from t_petty_cash a INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick2.EditValue))+' and code_account=''1112''  and position=''K'')xx '+
                'left join (select distinct a.trans_date as tanggal,a.actors_name,a.voucher_no,a.code_account,a.trans_date,a.description,a.order_no,b.code,c."name" from '+
                '(SELECT a.voucher_no,a.actors_name,a.trans_date,a.description,b.code_account,a.order_no,a.actors_code from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no) a,t_ak_account b,t_cost_actors c where a.code_account=b.code and a.actors_code=c.code and b.type_id=3 and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick2.EditValue))+' order by voucher_no)a on a.voucher_no=xx.voucher_no '+
                'left join (select voucher_no,a.code_account,a."position",sum(amount)as total from (select a.voucher_no,b.code_account,b."position",a.amount FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account,b."position") a,t_ak_account b '+
                'where a.code_account=b.code and b.type_id=3 and a."position"=''D'' group by voucher_no,a.code_account,a."position" order by voucher_no)b on a.voucher_no=b.voucher_no '+

                'left join (select voucher_no,amount from(SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''SBG1'')b1 on a.voucher_no=b1.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''PD1'')b2 on a.voucher_no=b2.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''MRA1'')b3 on a.voucher_no=b3.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''PBP'')b4 on a.voucher_no=b4.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''ALP'')b5 on a.voucher_no=b5.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''MRM'')b6 on a.voucher_no=b6.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''MR1'')b7 on a.voucher_no=b7.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''MG1'')b8 on a.voucher_no=b8.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''BBM'')b9 on a.voucher_no=b9.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''AKP'')b10 on a.voucher_no=b10.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''KPP'')b11 on a.voucher_no=b11.voucher_no '+
                'where a.voucher_no is not null order by a.trans_date,a.voucher_no,a.order_no)xx group by tanggal order by tanggal ';
      open;
    end;

    with dm.qtemp do
    begin
       close;
       sql.Clear;
       sql.Text:='select (case when sum(jumlah)is null then 0 else sum(jumlah) end)jumlah from '+
                 '(select distinct  a.voucher_no  from t_petty_cash a INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick2.EditValue))+' and code_account=''1112''  and position=''K'' order by voucher_no)a '+
                 'left join(select voucher_no,sum(amount)as jumlah from (select a.voucher_no,b.code_account,b."position",a.amount,a.trans_date FROM t_petty_cash a '+
                 'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account,b."position") a,t_ak_account b where  a.code_account=b.code and b.type_id=2 and a."position"=''D'' '+
                 // and a.kodeprsh='XXX'
                 'and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick2.EditValue))+' group by voucher_no order by voucher_no)b on a.voucher_no=b.voucher_no ';
       open;
    end;

    with dm.qtemp1 do
    begin
       close;
       sql.Clear;
       sql.Text:='select (case when sum(jumlah)is null then 0 else sum(jumlah) end)jumlah from '+
                 '(select distinct  a.voucher_no  from t_petty_cash a INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick2.EditValue))+' and code_account=''1112''  and position=''K'' order by voucher_no)a '+
                 'left join(select voucher_no,sum(amount)as jumlah from (select a.voucher_no,b.code_account,b."position",a.amount,a.trans_date FROM t_petty_cash a '+
                 'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account,b."position") a,t_ak_account b where  a.code_account=b.code and b.type_id=3 and a."position"=''D'' '+
                  //a.kode='KK' and a.kodeprsh='MJL'
                 'and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd', DTPick2.EditValue))+' group by voucher_no order by voucher_no)b on a.voucher_no=b.voucher_no ';
       open;
    end;

    if (dm.Qtemp.fieldbyname('jumlah').AsCurrency <>0) or (dm.Qtemp1.fieldbyname('jumlah').AsCurrency <> 0) then
    begin
     frxReport2.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rekap_Ikhtisar_KasKecil.fr3');
     Tfrxmemoview(frxReport2.FindObject('Memojumlah')).Memo.Text:='TOTAL BIAYA ADM.UMUM & BOP  : '+formatcurr('Rp. #,##',dm.Qtemp.fieldbyname('jumlah').AsCurrency+dm.Qtemp1.fieldbyname('jumlah').AsCurrency)+'  ('+UraikanAngka(currtostr(dm.Qtemp.fieldbyname('jumlah').ascurrency+dm.Qtemp1.fieldbyname('jumlah').ascurrency))+')';
     Tfrxmemoview(frxReport2.FindObject('Memoperiode')).Memo.Text:=uppercase('Periode : '+formatdatetime('dd',FRekap_Ikhtisar_Kas_Kecil.DTPick1.EditValue)+' s/d '+   formatdatetime('dd mmmm yyyy',FRekap_Ikhtisar_Kas_Kecil.DTPick2.EditValue));
     frxReport2.showreport;
    end
    else
    begin
     frxReport2.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rekap_Ikhtisar_KasKecil.fr3');
     Tfrxmemoview(frxReport2.FindObject('Memojumlah')).Memo.Text:='TOTAL BIAYA ADM.UMUM & BOP  : '+formatcurr('Rp. #,##',dm.Qtemp.fieldbyname('jumlah').AsCurrency+dm.Qtemp1.fieldbyname('jumlah').AsCurrency)+'  ('+UraikanAngka(currtostr(dm.Qtemp.fieldbyname('jumlah').ascurrency+dm.Qtemp1.fieldbyname('jumlah').ascurrency))+')';
     Tfrxmemoview(frxReport2.FindObject('Memoperiode')).Memo.Text:=uppercase('Periode : '+formatdatetime('dd',FRekap_Ikhtisar_Kas_Kecil.DTPick1.EditValue)+' s/d '+   formatdatetime('dd mmmm yyyy',FRekap_Ikhtisar_Kas_Kecil.DTPick2.EditValue));
     frxReport2.showreport;
    end;


    //frxReport2.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rekap_Ikhtisar_KasKecil.fr3');
    //frxReport2.showreport;
    //Tfrxmemoview(frxReport2.FindObject('Memojumlah')).Memo.Text:='TOTAL BIAYA ADM.UMUM & BOP  : '+formatcurr('Rp. #,##',dm.Qtemp.fieldbyname('jumlah').AsCurrency+dm.Qtemp1.fieldbyname('jumlah').AsCurrency)+'  ('+UraikanAngka(currtostr(dm.Qtemp.fieldbyname('jumlah').ascurrency+dm.Qtemp1.fieldbyname('jumlah').ascurrency))+')';
    //Tfrxmemoview(frxReport2.FindObject('Memoperiode')).Memo.Text:=uppercase('Periode : '+formatdatetime('dd',FRekap_Ikhtisar_Kas_Kecil.DTPick1.EditValue)+' s/d '+   formatdatetime('dd mmmm yyyy',FRekap_Ikhtisar_Kas_Kecil.DTPick2.EditValue));
end;

Initialization
  RegisterClasses([TFRekap_Ikhtisar_Kas_Kecil]);

end.
