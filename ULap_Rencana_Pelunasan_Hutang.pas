unit ULap_Rencana_Pelunasan_Hutang;

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
  Vcl.ActnMan, DataDriverEh, MemTableEh, frxClass, MemDS, DBAccess, Uni,
  frxDBSet, cxCheckBox;

type
  TFlap_Rencana_Pelunasan_Hutang = class(TForm)
    DS_renc_pelunasan_hutang: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    DSsupp: TDataSource;
    Qsupp: TUniQuery;
    frxReport1: TfrxReport;
    QCetak: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
    DSQTgl_Hutang: TDataSource;
    QTgl_hutang: TUniQuery;
    QLap_renc_pelunasan_hutang: TUniQuery;
    Mem_renc_pelunasan_hutang: TMemTableEh;
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
    code_supp: TcxBarEditItem;
    Jenis_Hutang: TdxBarCombo;
    Cb_Valas: TdxBarCombo;
    dtp1: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    dtp2: TcxBarEditItem;
    dxRefresh: TdxBarLargeButton;
    ed_code_supp: TcxBarEditItem;
    frxDBDatasetPers: TfrxDBDataset;
    QPerusahaan: TUniQuery;
    DBGridLapRencLunasHutang: TDBGridEh;
    DBGridEh1: TDBGridEh;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarEdit1: TdxBarEdit;
    supp_name: TdxBarEdit;
    dxBarLargeButton5: TdxBarLargeButton;
    CbRencana: TdxBarCombo;
    dxBarEdit3: TdxBarEdit;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    Cb_semua: TcxBarEditItem;
    procedure FormShow(Sender: TObject);
    procedure Ed_supplierPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure Jenis_HutangChange(Sender: TObject);
    procedure dxRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall, vKODEPRSH,vnamapershfull,vkd_jenis_hutang:string;
    tgl_htg,l,tgl_mulai,tgl_saldobank:TDateTime;
    function conv_bulan(bulan:integer):string;
    procedure load_item_type;
    procedure load_rencana;
  end;

//var
function
  Flap_Rencana_Pelunasan_Hutang: TFlap_Rencana_Pelunasan_Hutang;

implementation

{$R *.dfm}

uses UDataModule, USearch_Supplier;

var
 realFlap_Rencana_Pelunasan_Hutang: TFlap_Rencana_Pelunasan_Hutang;

  // implementasi function
function Flap_Rencana_Pelunasan_Hutang: TFlap_Rencana_Pelunasan_Hutang;
begin
  if realFlap_Rencana_Pelunasan_Hutang <> nil then
     Flap_Rencana_Pelunasan_Hutang:= realFlap_Rencana_Pelunasan_Hutang
  else
    Application.CreateForm(TFlap_Rencana_Pelunasan_Hutang, Result);
end;

procedure TFlap_Rencana_Pelunasan_Hutang.load_rencana;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='SELECT plan_to FROM t_plan_to order by id ASC ';
        Open;
      end;
      Dm.Qtemp.First;
      CbRencana.Items.Clear;
      while not dm.Qtemp.Eof do
      begin
         CbRencana.Items.Add(Dm.Qtemp.FieldByName('plan_to').AsString);
         Dm.Qtemp.Next;
      end;
end;

procedure TFlap_Rencana_Pelunasan_Hutang.dxBarLargeButton4Click(
  Sender: TObject);
var
  tgl_trans,tgl_trans2,tgl1,tgl2:tdate;
  yy1,mm1,dd1,yy2,mm2,dd2:word;
  query,kd_tp:string;
  lanjut:boolean;
  hitung:integer;
  gtotal:real;
begin
     //cetak saldo bank
     tgl_trans:=Dtp1.EditValue;
     tgl_trans2:=Dtp2.EditValue;

     DecodeDate(tgl_trans,yy1,mm1,dd1);
     DecodeDate(tgl_trans2,yy2,mm2,dd2);

     with dm.Qtemp do
     begin
        close;
        sql.Clear;
        sql.Add('select * from t_tmpsyst');
        open;
     end;
     vKODEPRSH:=dm.Qtemp.FieldByName('sbu_code').AsString;
     tgl_htg:=dm.Qtemp.FieldByName('debt_date').asdatetime;
     vnamapershfull:=dm.Qtemp.FieldByName('nama_sbu').AsString;
     tgl_mulai:=dm.Qtemp.FieldByName('start_date').asdatetime;
     tgl_saldobank:=dm.Qtemp.FieldByName('bankbalance_date').asdatetime;


     tgl1:=tgl_saldobank;
     tgl2:=EncodeDate(yy2,mm2,dd2);

     gtotal:=0;

     //showmessage(dm.Qtemp.FieldByName('bankbalance_date').Value);
       if jenis_hutang.Text='' then
       begin
         MessageDlg('Jenis hutang tidak boleh Kosong ',MtWarning,[MbOk],0);
         jenis_hutang.SetFocus;
         Exit;
       end;
       if code_supp.EditValue='' then
       begin
         MessageDlg('Supplier tidak boleh Kosong ',MtWarning,[MbOk],0);
         code_supp.SetFocus;
         Exit;
       end;
       if cbrencana.Text='' then
       begin
         MessageDlg('rencana ke tidak boleh Kosong ',MtWarning,[MbOk],0);
         cbrencana.SetFocus;
         Exit;
       end;

       if  Jenis_Hutang.Text='DAGANG' then
       begin
         if Cb_semua.EditValue=true then
         begin
           if length(code_supp.EditValue)<>0 then
           begin
              with QCetak do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det WHERE factory_code='+QuotedStr(vKODEPRSH)+' and supplier_code='+QuotedStr(code_supp.EditValue)+' and  periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+'  and plan_to='+QuotedStr(CbRencana.Text)+' ORDER BY supplier_code ASC)a '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code where k.factory_code='+QuotedStr(vKODEPRSH)+'  and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and k.plan_to='+QuotedStr(CBrencana.Text)+' and  l.account_code='+Quotedstr(vkd_jenis_hutang)+' GROUP BY m.id,k.inv_no,n.item_name,n.unit ) z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no )x ';
                Open;
              end;
           end
           else
           begin
              with QCetak do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det WHERE factory_code='+QuotedStr(vKODEPRSH)+' and  periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+'  and plan_to='+QuotedStr(CbRencana.Text)+' ORDER BY supplier_code ASC)a '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code where k.factory_code='+QuotedStr(vKODEPRSH)+'  and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and k.plan_to='+QuotedStr(CBrencana.Text)+' and  l.account_code='+Quotedstr(vkd_jenis_hutang)+' GROUP BY m.id,k.inv_no,n.item_name,n.unit ) z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no )x ';
                Open;
              end;
           end;
         end;
         if Cb_semua.EditValue=false then
         begin
           if length(code_supp.EditValue)<>0 then
           begin
              with QCetak do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount,concat(a.bank,'''',a.cek_no)as ket from '+
                          '(select * from t_paid_debt_det '+
                          'where factory_code='+QuotedStr(vKODEPRSH)+' and supplier_code='+QuotedStr(code_supp.EditValue)+' and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' '+
                          'and approve_status=false)a '+
                          'left join t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'left join t_supplier b on a.supplier_code=b.supplier_code '+
                          'where c.account_code='+Quotedstr(vkd_jenis_hutang)+' order by a.supplier_code,c.trans_date,a.cek_no,c.trans_no,a.plan_to asc';
                Open;
              end;
           end
           else
           begin
              with QCetak do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det '+
                          'WHERE paid_status=0 and factory_code='+QuotedStr(vKODEPRSH)+' and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' '+
                          ')a '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code '+
                          'where k.paid_status=0 and k.factory_code='+QuotedStr(vKODEPRSH)+' and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and k.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' '+
                          'and k.plan_to='+QuotedStr(CbRencana.Text)+' and  l.account_code='+Quotedstr(vkd_jenis_hutang)+' '+
                          'GROUP BY m.id,k.inv_no,n.item_name,n.unit '+
                          ') z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no '+
                          'where c.account_code='+QuotedStr(CbRencana.Text)+' '+
                          'GROUP BY a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name,c.trans_date,c.faktur_no '+
                          ',c.sj_no,c.faktur_date+due_date,a.amount,bb.nm '+
                          'order by supplier_code,tanggal,nofakturpajak,urutan asc )x ';
                Open;
              end;
           end;
         end

       end
       else
       if  Jenis_Hutang.Text='BIAYA' then
       begin
         if Cb_semua.EditValue=true then
         begin
           if length(code_supp.EditValue)<>0 then
           begin
              with QCetak do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det WHERE factory_code='+QuotedStr(vKODEPRSH)+' and supplier_code='+QuotedStr(code_supp.EditValue)+' and  periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+'  and plan_to='+QuotedStr(CbRencana.Text)+' ORDER BY supplier_code ASC)a '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code where k.factory_code='+QuotedStr(vKODEPRSH)+'  and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and k.plan_to='+QuotedStr(CBrencana.Text)+' '+
                          'and  l.account_code in(SELECT account_code FROM t_expenses_payable_account) GROUP BY m.id,k.inv_no,n.item_name,n.unit ) z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no )x ';
                Open;
              end;
           end
           else
           begin
              with QCetak do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det WHERE factory_code='+QuotedStr(vKODEPRSH)+' and  periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+'  and plan_to='+QuotedStr(CbRencana.Text)+' ORDER BY supplier_code ASC)a '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code where k.factory_code='+QuotedStr(vKODEPRSH)+'  and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and k.plan_to='+QuotedStr(CBrencana.Text)+' '+
                          'and  l.account_code in(SELECT account_code FROM t_expenses_payable_account) GROUP BY m.id,k.inv_no,n.item_name,n.unit ) z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no )x ';
                Open;
              end;
           end;
         end;
         if Cb_semua.EditValue=false then
         begin
           if length(code_supp.EditValue)<>0 then
           begin
              with QCetak do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount,concat(a.bank,'''',a.cek_no)as ket from '+
                          '(select * from t_paid_debt_det '+
                          'where factory_code='+QuotedStr(vKODEPRSH)+' and supplier_code='+QuotedStr(code_supp.EditValue)+' and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' '+
                          'and approve_status=false)a '+
                          'left join t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'left join t_supplier b on a.supplier_code=b.supplier_code '+
                          'where c.account_code='+Quotedstr(vkd_jenis_hutang)+' order by a.supplier_code,c.trans_date,a.cek_no,c.trans_no,a.plan_to asc';
                Open;
              end;
           end
           else
           begin
              with QCetak do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det '+
                          'WHERE paid_status=0 and factory_code='+QuotedStr(vKODEPRSH)+' and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' '+
                          ')a '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code '+
                          'where k.paid_status=0 and k.factory_code='+QuotedStr(vKODEPRSH)+' and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and k.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' '+
                          'and k.plan_to='+QuotedStr(CbRencana.Text)+' '+
                          'and  l.account_code in(SELECT account_code FROM t_expenses_payable_account) '+
                          'GROUP BY m.id,k.inv_no,n.item_name,n.unit '+
                          ') z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no '+
                          'where c.account_code='+QuotedStr(CbRencana.Text)+' '+
                          'GROUP BY a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name,c.trans_date,c.faktur_no '+
                          ',c.sj_no,c.faktur_date+due_date,a.amount,bb.nm '+
                          'order by supplier_code,tanggal,nofakturpajak,urutan asc )x ';
                Open;
              end;
           end;
         end
       end
       else
       if  Jenis_Hutang.Text='AKTIVA' then
       begin
         if Cb_semua.EditValue=true then
         begin
           if length(code_supp.EditValue)<>0 then
           begin
              with QCetak do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det WHERE factory_code='+QuotedStr(vKODEPRSH)+' and supplier_code='+QuotedStr(code_supp.EditValue)+' and  periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+'  and plan_to='+QuotedStr(CbRencana.Text)+' ORDER BY supplier_code ASC)a '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code where k.factory_code='+QuotedStr(vKODEPRSH)+'  and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and k.plan_to='+QuotedStr(CBrencana.Text)+' '+
                          'and  l.account_code in(SELECT account_code FROM t_asset_payable_account) GROUP BY m.id,k.inv_no,n.item_name,n.unit ) z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no )x ';
                Open;
              end;
           end
           else
           begin
              with QCetak do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det WHERE factory_code='+QuotedStr(vKODEPRSH)+' and  periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+'  and plan_to='+QuotedStr(CbRencana.Text)+' ORDER BY supplier_code ASC)a '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code where k.factory_code='+QuotedStr(vKODEPRSH)+'  and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and k.plan_to='+QuotedStr(CBrencana.Text)+' '+
                          'and  l.account_code in(SELECT account_code FROM t_asset_payable_account) GROUP BY m.id,k.inv_no,n.item_name,n.unit ) z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no )x ';
                Open;
              end;
           end;

         end;
         if Cb_semua.EditValue=false then
         begin
           if length(code_supp.EditValue)<>0 then
           begin
              with QCetak do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount,concat(a.bank,'''',a.cek_no)as ket from '+
                          '(select * from t_paid_debt_det '+
                          'where factory_code='+QuotedStr(vKODEPRSH)+' and supplier_code='+QuotedStr(code_supp.EditValue)+' and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' '+
                          'and approve_status=false)a '+
                          'left join t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'left join t_supplier b on a.supplier_code=b.supplier_code '+
                          'where c.account_code='+Quotedstr(vkd_jenis_hutang)+' order by a.supplier_code,c.trans_date,a.cek_no,c.trans_no,a.plan_to asc';
                Open;
              end;
           end
           else
           begin
              with QCetak do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det '+
                          'WHERE paid_status=0 and factory_code='+QuotedStr(vKODEPRSH)+' and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' '+
                          ')a '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code '+
                          'where k.paid_status=0 and k.factory_code='+QuotedStr(vKODEPRSH)+' and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and k.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' '+
                          'and k.plan_to='+QuotedStr(CbRencana.Text)+' '+
                          'and  l.account_code in(SELECT account_code FROM t_asset_payable_account) '+
                          'GROUP BY m.id,k.inv_no,n.item_name,n.unit '+
                          ') z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no '+
                          'where c.account_code='+QuotedStr(CbRencana.Text)+' '+
                          'GROUP BY a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name,c.trans_date,c.faktur_no '+
                          ',c.sj_no,c.faktur_date+due_date,a.amount,bb.nm '+
                          'order by supplier_code,tanggal,nofakturpajak,urutan asc )x ';
                Open;
              end;
           end;
         end
       end;
       dm.Qtemp.Close;
       dm.Qtemp.Open;
       frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Lap_Rencana_Pelunasan_Hutang.fr3');
       Tfrxmemoview(frxreport1.FindObject('Memo_jenis_hutang')).Memo.Text:='RENCANA PELUNASAN HUTANG'+' '+Jenis_Hutang.text;
       Tfrxmemoview(frxreport1.FindObject('Memoperiode2')).Memo.Text:='Periode  : '+FormatDateTime('dd mmm yyyy',DTP1.EditValue)+' '+'S/D'+' '+FormatDateTime('dd mmm yyyy',DTP2.EditValue);
       frxreport1.showreport;
end;

procedure TFlap_Rencana_Pelunasan_Hutang.dxRefreshClick(Sender: TObject);
begin
       with dm.Qtemp do
       begin
          close;
          sql.Clear;
          sql.Add('select * from t_tmpsyst');
          open;
       end;
       vKODEPRSH:=dm.Qtemp.FieldByName('sbu_code').AsString;

       if jenis_hutang.Text='' then
       begin
         MessageDlg('Jenis hutang tidak boleh Kosong ',MtWarning,[MbOk],0);
         jenis_hutang.SetFocus;
         Exit;
       end;
       if code_supp.EditValue='' then
       begin
         MessageDlg('Supplier tidak boleh Kosong ',MtWarning,[MbOk],0);
         code_supp.SetFocus;
         Exit;
       end;
       if cbrencana.Text='' then
       begin
         MessageDlg('rencana ke tidak boleh Kosong ',MtWarning,[MbOk],0);
         cbrencana.SetFocus;
         Exit;
       end;
       DBGridLapRencLunasHutang.StartLoadingStatus();
       if  Jenis_Hutang.Text='DAGANG' then
       begin
         if Cb_semua.EditValue=true then
         begin
           if length(code_supp.EditValue)<>0 then
           begin
              with QLap_renc_pelunasan_hutang do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det WHERE factory_code='+QuotedStr(vKODEPRSH)+' and supplier_code='+QuotedStr(code_supp.EditValue)+' and  periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+'  and plan_to='+QuotedStr(CbRencana.Text)+' ORDER BY supplier_code ASC)a '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code where k.factory_code='+QuotedStr(vKODEPRSH)+'  and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and k.plan_to='+QuotedStr(CBrencana.Text)+' and  l.account_code='+Quotedstr(vkd_jenis_hutang)+' GROUP BY m.id,k.inv_no,n.item_name,n.unit ) z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no )x ';
                Open;
              end;
           end
           else
           begin
              with QLap_renc_pelunasan_hutang do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det WHERE factory_code='+QuotedStr(vKODEPRSH)+' and  periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+'  and plan_to='+QuotedStr(CbRencana.Text)+' ORDER BY supplier_code ASC)a '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code where k.factory_code='+QuotedStr(vKODEPRSH)+'  and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and k.plan_to='+QuotedStr(CBrencana.Text)+' and  l.account_code='+Quotedstr(vkd_jenis_hutang)+' GROUP BY m.id,k.inv_no,n.item_name,n.unit ) z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no )x ';
                Open;
              end;
           end;
         end;
         if Cb_semua.EditValue=false then
         begin
           if length(code_supp.EditValue)<>0 then
           begin
              with QLap_renc_pelunasan_hutang do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount,concat(a.bank,'''',a.cek_no)as ket from '+
                          '(select * from t_paid_debt_det '+
                          'where factory_code='+QuotedStr(vKODEPRSH)+' and supplier_code='+QuotedStr(code_supp.EditValue)+' and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' '+
                          'and approve_status=false)a '+
                          'left join t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'left join t_supplier b on a.supplier_code=b.supplier_code '+
                          'where c.account_code='+Quotedstr(vkd_jenis_hutang)+' order by a.supplier_code,c.trans_date,a.cek_no,c.trans_no,a.plan_to asc';
                Open;
              end;
           end
           else
           begin
              with QLap_renc_pelunasan_hutang do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det '+
                          'WHERE paid_status=0 and factory_code='+QuotedStr(vKODEPRSH)+' and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' '+
                          ')a '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code '+
                          'where k.paid_status=0 and k.factory_code='+QuotedStr(vKODEPRSH)+' and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and k.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' '+
                          'and k.plan_to='+QuotedStr(CbRencana.Text)+' and  l.account_code='+Quotedstr(vkd_jenis_hutang)+' '+
                          'GROUP BY m.id,k.inv_no,n.item_name,n.unit '+
                          ') z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no '+
                          'where c.account_code='+QuotedStr(CbRencana.Text)+' '+
                          'GROUP BY a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name,c.trans_date,c.faktur_no '+
                          ',c.sj_no,c.faktur_date+due_date,a.amount,bb.nm '+
                          'order by supplier_code,tanggal,nofakturpajak,urutan asc )x ';
                Open;
              end;
           end;
         end

       end
       else
       if  Jenis_Hutang.Text='BIAYA' then
       begin
         if Cb_semua.EditValue=true then
         begin
           if length(code_supp.EditValue)<>0 then
           begin
              with QLap_renc_pelunasan_hutang do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det WHERE factory_code='+QuotedStr(vKODEPRSH)+' and supplier_code='+QuotedStr(code_supp.EditValue)+' and  periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+'  and plan_to='+QuotedStr(CbRencana.Text)+' ORDER BY supplier_code ASC)a '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code where k.factory_code='+QuotedStr(vKODEPRSH)+'  and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and k.plan_to='+QuotedStr(CBrencana.Text)+' '+
                          'and  l.account_code in(SELECT account_code FROM t_expenses_payable_account) GROUP BY m.id,k.inv_no,n.item_name,n.unit ) z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no )x ';
                Open;
              end;
           end
           else
           begin
              with QLap_renc_pelunasan_hutang do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det WHERE factory_code='+QuotedStr(vKODEPRSH)+' and  periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+'  and plan_to='+QuotedStr(CbRencana.Text)+' ORDER BY supplier_code ASC)a '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code where k.factory_code='+QuotedStr(vKODEPRSH)+'  and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and k.plan_to='+QuotedStr(CBrencana.Text)+' '+
                          'and  l.account_code in(SELECT account_code FROM t_expenses_payable_account) GROUP BY m.id,k.inv_no,n.item_name,n.unit ) z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no )x ';
                Open;
              end;
           end;
         end;
         if Cb_semua.EditValue=false then
         begin
           if length(code_supp.EditValue)<>0 then
           begin
              with QLap_renc_pelunasan_hutang do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount,concat(a.bank,'''',a.cek_no)as ket from '+
                          '(select * from t_paid_debt_det '+
                          'where factory_code='+QuotedStr(vKODEPRSH)+' and supplier_code='+QuotedStr(code_supp.EditValue)+' and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' '+
                          'and approve_status=false)a '+
                          'left join t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'left join t_supplier b on a.supplier_code=b.supplier_code '+
                          'where c.account_code='+Quotedstr(vkd_jenis_hutang)+' order by a.supplier_code,c.trans_date,a.cek_no,c.trans_no,a.plan_to asc';
                Open;
              end;
           end
           else
           begin
              with QLap_renc_pelunasan_hutang do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det '+
                          'WHERE paid_status=0 and factory_code='+QuotedStr(vKODEPRSH)+' and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' '+
                          ')a '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code '+
                          'where k.paid_status=0 and k.factory_code='+QuotedStr(vKODEPRSH)+' and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and k.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' '+
                          'and k.plan_to='+QuotedStr(CbRencana.Text)+' '+
                          'and  l.account_code in(SELECT account_code FROM t_expenses_payable_account) '+
                          'GROUP BY m.id,k.inv_no,n.item_name,n.unit '+
                          ') z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no '+
                          'where c.account_code='+QuotedStr(CbRencana.Text)+' '+
                          'GROUP BY a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name,c.trans_date,c.faktur_no '+
                          ',c.sj_no,c.faktur_date+due_date,a.amount,bb.nm '+
                          'order by supplier_code,tanggal,nofakturpajak,urutan asc )x ';
                Open;
              end;
           end;
         end
       end
       else
       if  Jenis_Hutang.Text='AKTIVA' then
       begin
         if Cb_semua.EditValue=true then
         begin
           if length(code_supp.EditValue)<>0 then
           begin
              with QLap_renc_pelunasan_hutang do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det WHERE factory_code='+QuotedStr(vKODEPRSH)+' and supplier_code='+QuotedStr(code_supp.EditValue)+' and  periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+'  and plan_to='+QuotedStr(CbRencana.Text)+' ORDER BY supplier_code ASC)a '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code where k.factory_code='+QuotedStr(vKODEPRSH)+'  and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and k.plan_to='+QuotedStr(CBrencana.Text)+' '+
                          'and  l.account_code in(SELECT account_code FROM t_asset_payable_account) GROUP BY m.id,k.inv_no,n.item_name,n.unit ) z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no )x ';
                Open;
              end;
           end
           else
           begin
              with QLap_renc_pelunasan_hutang do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det WHERE factory_code='+QuotedStr(vKODEPRSH)+' and  periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+'  and plan_to='+QuotedStr(CbRencana.Text)+' ORDER BY supplier_code ASC)a '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code where k.factory_code='+QuotedStr(vKODEPRSH)+'  and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and k.plan_to='+QuotedStr(CBrencana.Text)+' '+
                          'and  l.account_code in(SELECT account_code FROM t_asset_payable_account) GROUP BY m.id,k.inv_no,n.item_name,n.unit ) z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no )x ';
                Open;
              end;
           end;

         end;
         if Cb_semua.EditValue=false then
         begin
           if length(code_supp.EditValue)<>0 then
           begin
              with QLap_renc_pelunasan_hutang do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount,concat(a.bank,'''',a.cek_no)as ket from '+
                          '(select * from t_paid_debt_det '+
                          'where factory_code='+QuotedStr(vKODEPRSH)+' and supplier_code='+QuotedStr(code_supp.EditValue)+' and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' '+
                          'and approve_status=false)a '+
                          'left join t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'left join t_supplier b on a.supplier_code=b.supplier_code '+
                          'where c.account_code='+Quotedstr(vkd_jenis_hutang)+' order by a.supplier_code,c.trans_date,a.cek_no,c.trans_no,a.plan_to asc';
                Open;
              end;
           end
           else
           begin
              with QLap_renc_pelunasan_hutang do
              begin
                close;
                sql.Clear;
                sql.Text:='SELECT inv_no,bank,supplier_code,paid_date,cek_no, principle_name,tanggal,nofakturpajak,sj_no,tgltempo,jumlah,urutan,ket '+
                          'FROM '+
                          '(SELECT a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name as principle_name,c.trans_date as tanggal,c.faktur_no as nofakturpajak,c.sj_no,c.faktur_date+due_date as tgltempo,a.amount as jumlah,1 as urutan,bb.nm as ket FROM '+
                          '(SELECT * FROM t_paid_debt_det '+
                          'WHERE paid_status=0 and factory_code='+QuotedStr(vKODEPRSH)+' and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' '+
                          ')a '+
                          'LEFT JOIN t_purchase_invoice c on a.inv_no=c.trans_no '+
                          'LEFT JOIN t_purchase_invoice_det d on c.trans_no=d.trans_no '+
                          'LEFT JOIN t_item_stock e ON d.item_stock_code=e.item_stock_code '+
                          'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                          'INNER JOIN v_ak_account f on c.account_code=f.account_code2 '+
                          'LEFT JOIN '+
                          '(select inv_no,string_agg(nm,'', '') nm from '+
                          '(SELECT distinct z.id,inv_no,string_agg (concat(item_name,'' '',REPLACE(TO_CHAR(qty,''FM999G999G990.00''), '','', ''.''),'' '',unit),'', '')nm from '+
                          '(SELECT distinct m.id,k.inv_no,n.item_name,sum(m.qty) qty,n.unit from t_paid_debt_det k '+
                          'LEFT JOIN t_purchase_invoice l ON k.inv_no=l.trans_no '+
                          'INNER JOIN t_purchase_invoice_det m ON l.trans_no=m.trans_no '+
                          'INNER JOIN t_item_stock n ON m.item_stock_code=n.item_stock_code '+
                          'where k.paid_status=0 and k.factory_code='+QuotedStr(vKODEPRSH)+' and k.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and k.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' '+
                          'and k.plan_to='+QuotedStr(CbRencana.Text)+' '+
                          'and  l.account_code in(SELECT account_code FROM t_asset_payable_account) '+
                          'GROUP BY m.id,k.inv_no,n.item_name,n.unit '+
                          ') z  group by z.inv_no,z.id ORDER BY inv_no,id desc )b GROUP BY inv_no )bb on bb.inv_no=a.inv_no '+
                          'where c.account_code='+QuotedStr(CbRencana.Text)+' '+
                          'GROUP BY a.inv_no,a.bank,a.supplier_code,a.paid_date,a.cek_no,b.supplier_name,c.trans_date,c.faktur_no '+
                          ',c.sj_no,c.faktur_date+due_date,a.amount,bb.nm '+
                          'order by supplier_code,tanggal,nofakturpajak,urutan asc )x ';
                Open;
              end;
           end;
         end
       end;
       QLap_renc_pelunasan_hutang.Close;
       QLap_renc_pelunasan_hutang.Open;
       Mem_renc_pelunasan_hutang.close;
       Mem_renc_pelunasan_hutang.Open;
       DBGridLapRencLunasHutang.FinishLoadingStatus();
end;

procedure TFlap_Rencana_Pelunasan_Hutang.Ed_supplierPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
    with FSearch_Supplier do
    begin
       QSupplier.Close;
       QSupplier.Open;
    end;
    FSearch_Supplier.Caption:='Master Data Supplier';
    FSearch_Supplier.vcall:='Lap_Rencana_Pelunasan_Hutang';
    FSearch_Supplier.ShowModal;
end;

procedure TFlap_Rencana_Pelunasan_Hutang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFlap_Rencana_Pelunasan_Hutang.FormCreate(Sender: TObject);
begin
   realFlap_Rencana_Pelunasan_Hutang:=self;
end;

procedure TFlap_Rencana_Pelunasan_Hutang.FormDestroy(Sender: TObject);
begin
   realFlap_Rencana_Pelunasan_Hutang:=nil;
end;

procedure TFlap_Rencana_Pelunasan_Hutang.FormShow(Sender: TObject);
begin
    DTP1.EditValue:=date();
    DTP2.EditValue:=date();
    Cb_semua.EditValue:=false;
    load_item_type;
    load_rencana;
end;

procedure TFlap_Rencana_Pelunasan_Hutang.Jenis_HutangChange(Sender: TObject);
begin
   with dm.Qtemp do
   begin
       close;
       sql.Text:='SELECT DISTINCT a.type,a.acc_code_pemb FROM t_item_type a '+
                 'INNER JOIN v_ak_account b on a.acc_code_pemb=b.code '+
                 'INNER JOIN t_purchase_invoice c on b.account_code2=c.account_code '+
                 'WHERE a.type='+Quotedstr(Jenis_Hutang.Text)+' ';
       Open;
       vkd_jenis_hutang:=fieldbyname('acc_code_pemb').AsString;
       //showmessage(vkd_jenis_hutang);
   end;
end;

procedure TFlap_Rencana_Pelunasan_Hutang.load_item_type;
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

function TFlap_Rencana_Pelunasan_Hutang.conv_bulan(bulan:integer):string;
begin
  case bulan of
  1: result:='01';
  2: result:='02';
  3: result:='03' ;
  4: result:='04' ;
  5: result:='05' ;
  6: result:='06' ;
  7: result:='07' ;
  8: result:='08' ;
  9: result:='09' ;
  10: result:='10' ;
  11: result:='11' ;
  12: result:='12';
  end;
end;

initialization
  RegisterClass(TFlap_Rencana_Pelunasan_Hutang);


end.
