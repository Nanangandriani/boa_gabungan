unit URpt_NeracaLajur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, MemTableDataEh, Data.DB, frxClass, MemTableEh, MemDS,
  DBAccess, Uni, frxDBSet, Vcl.ComCtrls, Vcl.Samples.Gauges, dxSkinsCore,
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
  dxSkinXmas2008Blue, cxCalendar, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  dxRibbon, dxBar, cxBarEditItem, cxClasses, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  cxDropDownEdit, cxSpinEdit, cxLabel,DateUtils, DataDriverEh;

type
  TFRpt_NeracaLajur = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    DtMulai1: TRzDateTimeEdit;
    DtSelesai1: TRzDateTimeEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    DbNeraca_lajur: TfrxDBDataset;
    QNeraca_lajur: TUniQuery;
    MemNeraca_lajur: TMemTableEh;
    Rpt: TfrxReport;
    GProses: TGauge;
    ProgressBar1: TProgressBar;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    spTahun: TcxBarEditItem;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridEh1: TDBGridEh;
    DsNeraca_lajur: TDataSource;
    CbBulan: TComboBox;
    DataSetDriverEh1: TDataSetDriverEh;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure RptGetValue(const VarName: string; var Value: Variant);
    procedure DxRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Autonumber;
  end;

//var
Function  FRpt_NeracaLajur: TFRpt_NeracaLajur;
var  EditNo,yr,Status,bln,thn,periode1,periode2,prd1,prd2: string;
dd,mm,yy:word;

implementation

{$R *.dfm}

uses UDataModule, UMainmenu, UHomeLogin, UDataKelompokBiaya;

var
//  FPakai_BahanPersbu: TFPakai_BahanPersbu;
  RealFrpt_NeracaLajur: TFRpt_NeracaLajur;

function FRpt_NeracaLajur: TFRpt_NeracaLajur;
begin
  if RealFrpt_NeracaLajur <> nil then
    FRpt_NeracaLajur:= RealFrpt_NeracaLajur
  else
    Application.CreateForm(TFRpt_NeracaLajur, Result);
end;

procedure TFRpt_NeracaLajur.Autonumber;
  var i      : integer;
    urut   : integer;
    mt,dy,noSJ,noEX ,yn : string;
    yy,d,M : word;
    code   : string;
    //urutan   : string;
    maxmy  : string;
begin
(*Find encode of the date*)
 DecodeDate(DtMulai.EditValue, yy,M,d );
 yr:=intTostr(yy);
 yn:=copy(yr,3,2);
 mt:=IntToStr(M);
 dy:=IntToStr(d);
 (*looking for max mm/yy*)
 //maxmy:= (IntToRoman(strToint(mt)))+'/'+yn;
 thn:=FormatDateTime('yyy',DtMulai.EditValue);
 bln:=FormatDateTime('mm',DtMulai.EditValue);
 with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select max(LEFT(notrans,3)) urut from t_neraca_lajur1 where thn='+QuotedStr(thn);
    open;
  end;
   if dm.Qtemp.Fields[0].AsString = '' then
      code := '1'
   else
      code:= IntToStr(dm.Qtemp['urut']+ 1);
   if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;
  EditNo:=CODE+ '/'+yn+'/' + Kd_SBU;
 // EdNo_ST.Text:=EditNo;
end;

procedure TFRpt_NeracaLajur.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFRpt_NeracaLajur.BPrintClick(Sender: TObject);
var q:TUniQuery;
  subquery,subquery2,subquery3:string;
begin
  mm:=cbBulan.ItemIndex;
  yy:=spTahun.EditValue;
  QNeraca_lajur.Close;
//  MemNeraca_lajur.Active:=false;
 DBGridEh1.StartLoadingStatus();
// MemNeraca_lajur.Active:=true;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select trans_year,trans_month from t_ak_account_balance  where trans_year='+QuotedStr(spTahun.EditValue)+' '+
    ' and trans_month <'+QuotedStr(inttostr(cbBulan.ItemIndex))+' GROUP BY trans_year,trans_month order by trans_month desc limit 1';
    Open;
  end;
    if dm.Qtemp.RecordCount=0 then
    begin
 {    with dm.Qtemp1 do
          begin
            close;
            sql.Clear;
            sql.Text:=' delete from t_ak_account_balance where trans_year='+QuotedStr(spTahun.EditValue)+' and trans_month='+QuotedStr(inttostr(cbBulan.ItemIndex));
            Execute;
          end;
      with dm.Qtemp2 do
      begin
        close;
        sql.Clear;
        sql.Text:='select trans_year,trans_month from t_ak_account_balance  where trans_year='+QuotedStr(inttostr(strtoint(spTahun.EditValue)-1))+' '+
        ' and trans_month <=''12'' GROUP BY trans_year,trans_month order by trans_month desc limit 1';
        Open;
      end;
          with dm.Qtemp1 do
          begin
            close;
            sql.Clear;
            sql.Text:=' insert into t_ak_account_balance(account_code,balance,trans_year,trans_month) '+
                      ' select account_code2,0,'+QuotedStr(spTahun.EditValue)+','+QuotedStr(inttostr(cbBulan.ItemIndex))+' from t_ak_account_sub';
            Execute;
          end;
        with dm.Qtemp3 do
        begin
          close;
          sql.Clear;
          sql.Text:='select * from (select *,case when posisi_dk=''D'' then saldo_d+trdb-trkd else 0 end dbend,case when posisi_dk=''K'' then coalesce(saldo_k+trkd-trdb::NUMERIC,0) else 0 end kdend'+
          ' from (SELECT case when taa.posisi_dk=''D'' then  coalesce(sum(balance)::int, 0) else 0 end saldo_d, case when taa.posisi_dk=''K'' then coalesce(sum(balance)::int, 0) else 0 end saldo_k,'+
          ' taa.account_code2, case when status_dk=''D'' then sum(gl.amount) else 0 end  trdb,case when status_dk=''K''  then sum(gl.amount) else 0 end trkd, taa.account_name,trans_year,'+
          ' trans_month,taa.account_code,taa.posisi_dk,gl.status_dk FROM (select * from t_ak_account_balance WHERE trans_year='+QuotedStr(dm.Qtemp2['trans_year'])+' and '+
          ' trans_month='+QuotedStr(dm.Qtemp2['trans_month'])+')taab RIGHT JOIN  (select a.account_code,a.account_code2,b.account_name,a.posisi_dk from t_ak_account_sub a'+
          ' INNER JOIN t_ak_account b on a.account_code=b.code) taa on taab.account_code=taa.account_code2 '+
          ' left join (select * from t_general_ledger_real where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
          ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+') gl on taa.account_code2=gl.account_code  '+
          ' GROUP BY taa.account_code2,taa.account_name,trans_year,trans_month,taa.posisi_dk,gl.status_dk,taa.account_code)a  '+
          ' )x  where dbend>0 or kdend>0 ';
          open;
        end;
        dm.Qtemp3.First;
        while not dm.Qtemp3.eof do
        begin
          with dm.Qtemp1 do
          begin
            close;
            sql.Clear;
              SQL.Text:='update t_ak_account_balance set balance='+QuotedStr(dm.Qtemp3['dbend']+dm.Qtemp3['kdend'])+
              ' where account_code='+QuotedStr(dm.Qtemp3['account_code2'])+' and trans_year='+QuotedStr(spTahun.EditValue)+''+
              ' and trans_month='+QuotedStr(inttostr(cbBulan.ItemIndex));
            Execute;
          end;
          dm.Qtemp3.Next;
        end;       }
        subquery:='select account_code,account_name,trans_year,trans_month,sum(saldo_d) debit,sum(saldo_k) kredit'+
            ' from (select *,case when posisi_dk=''D'' then saldo_d+trdb-trkd else 0 end dbend,case when posisi_dk=''K'' then coalesce(saldo_k+trkd-trdb::NUMERIC,0) else 0 end kdend'+
            ' from (SELECT case when taa.posisi_dk=''D'' then  coalesce(sum(balance)::int, 0) else 0 end saldo_d, case when taa.posisi_dk=''K'' then coalesce(sum(balance)::int, 0) else 0 end saldo_k,'+
            ' taa.account_code2, case when status_dk=''D'' then sum(gl.amount) else 0 end  trdb,case when status_dk=''K''  then sum(gl.amount) else 0 end trkd, taa.account_name,trans_year,'+
            ' trans_month,taa.account_code,taa.posisi_dk,gl.status_dk FROM (select * from t_ak_account_balance WHERE trans_year='+QuotedStr(dm.Qtemp2['trans_year'])+' and '+
            ' trans_month='+QuotedStr(dm.Qtemp2['trans_month'])+')taab RIGHT JOIN  (select a.account_code,a.account_code2,b.account_name,a.posisi_dk from t_ak_account_sub a'+
            ' INNER JOIN t_ak_account b on a.account_code=b.code) taa on taab.account_code=taa.account_code2 '+
            ' left join (select * from t_general_ledger_real where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
            ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+') gl on taa.account_code2=gl.account_code  '+
            ' GROUP BY taa.account_code2,taa.account_name,trans_year,trans_month,taa.posisi_dk,gl.status_dk,taa.account_code)a  '+
            ' )x GROUP BY account_code,account_name,trans_year,trans_month';
        subquery2:='select * ,case when (balance_status=1 and dbnr2>0) then dbnr2 else 0 end dbnr3,'+
              ' case when (balance_status=1 and kdnr2>0 ) then kdnr2 else 0 end kdnr3,'+
              ' case when (balance_status=2 and dbnr2 >0) then dbnr2 else 0 end dblr, '+
              ' case when (balance_status=2  and kdnr2>0) then kdnr2 else 0 end kdlr,0 notr from '+
              ' (select *,case when (dbnr-kdnr)+(dbpy-kdpy)>0 then (dbnr-kdnr)+(dbpy-kdpy) else 0 end dbnr2,'+
              ' case when (kdnr-dbnr)+(kdpy-dbpy)>0 then (kdnr-dbnr)+(kdpy-dbpy) else 0 end kdnr2 from'+
              ' (select balance_status,account_code,account_name,posisi_dk,trans_year,trans_month,debit,kredit,db,kd,dbpy,kdpy, '+
              ' case when posisi_dk=''D'' then debit-kredit+db-kd else 0 end dbnr, case when posisi_dk=''K'' then kredit-debit+kd-db '+
              ' else 0 end kdnr from (select aa.posisi_dk,aa.balance_status,sa.*,case when mts.db>0 then mts.db else 0 end db,'+
              ' case when mts.kd>0 then mts.kd else 0 end kd,case when bm.debit>0 then bm.debit else 0 end dbpy,'+
              ' case when bm.kredit>0 then bm.kredit else 0 end kdpy'+
              ' from  ('+subquery+') sa left join '+
              ' (select account_code,account_name,notr,case when sum(db)>0 then sum(db) else 0 end db,case when sum(kd)>0 then sum(kd) else 0 end kd'+
              ' from  (select * from "VRekap_Mutasi" where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
              ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+') a  GROUP BY account_code,account_name,notr) mts '+
              ' on sa.account_code=mts.account_code'+
              ' left join (select account_code,sum(debit) debit,sum(kredit) kredit from "V_BukuMemorial" '+
              ' where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
              ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+''+
              ' group by account_code) bm on sa.account_code=bm.account_code '+
              ' inner join t_ak_account aa on sa.account_code=aa.code where trans_year <> 0 and trans_month <> 0 )'+
              ' nr)nr2)nr3 order by account_code asc';
      with QNeraca_lajur do
         begin
           Close;
           sql.Clear;
              sql.Text:=subquery2;
           open;
         end;
    end;
      if dm.Qtemp.RecordCount<>0 then
      begin
       { with dm.Qtemp1 do
          begin
            close;
            sql.Clear;
            sql.Text:=' delete from t_ak_account_balance where trans_year='+QuotedStr(spTahun.EditValue)+' and trans_month='+QuotedStr(inttostr(cbBulan.ItemIndex));
            Execute;
          end;
       with dm.Qtemp1 do
          begin
            close;
            sql.Clear;
            sql.Text:=' insert into t_ak_account_balance(account_code,balance,trans_year,trans_month) '+
                      ' select account_code2,0,'+QuotedStr(spTahun.EditValue)+','+QuotedStr(inttostr(cbBulan.ItemIndex))+' from t_ak_account_sub';
            Execute;
          end;
        with dm.Qtemp3 do
        begin
          close;
          sql.Clear;
          sql.Text:='select * from (select *,case when posisi_dk=''D'' then saldo_d+trdb-trkd else 0 end dbend,case when posisi_dk=''K'' then coalesce(saldo_k+trkd-trdb::NUMERIC,0) else 0 end kdend'+
          ' from (SELECT case when taa.posisi_dk=''D'' then  coalesce(sum(balance)::int, 0) else 0 end saldo_d, case when taa.posisi_dk=''K'' then coalesce(sum(balance)::int, 0) else 0 end saldo_k,'+
          ' taa.account_code2, case when status_dk=''D'' then sum(gl.amount) else 0 end  trdb,case when status_dk=''K''  then sum(gl.amount) else 0 end trkd, taa.account_name,trans_year,'+
          ' trans_month,taa.account_code,taa.posisi_dk,gl.status_dk FROM (select * from t_ak_account_balance WHERE trans_year='+QuotedStr(dm.Qtemp['trans_year'])+' and '+
          ' trans_month='+QuotedStr(dm.Qtemp['trans_month'])+')taab RIGHT JOIN  (select a.account_code,a.account_code2,b.account_name,a.posisi_dk from t_ak_account_sub a'+
          ' INNER JOIN t_ak_account b on a.account_code=b.code) taa on taab.account_code=taa.account_code2 '+
          ' left join (select * from t_general_ledger_real where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
          ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+') gl on taa.account_code2=gl.account_code  '+
          ' GROUP BY taa.account_code2,taa.account_name,trans_year,trans_month,taa.posisi_dk,gl.status_dk,taa.account_code)a  '+
          ' )x  where dbend>0 or kdend>0 ';
          open;
        end;
        dm.Qtemp3.First;
        while not dm.Qtemp3.eof do
        begin
          with dm.Qtemp1 do
          begin
            close;
            sql.Clear;
              SQL.Text:='update t_ak_account_balance set balance='+QuotedStr(dm.Qtemp3['dbend']+dm.Qtemp3['kdend'])+
              ' where account_code='+QuotedStr(dm.Qtemp3['account_code2'])+' and trans_year='+QuotedStr(spTahun.EditValue)+''+
              ' and trans_month='+QuotedStr(inttostr(cbBulan.ItemIndex));
            Execute;
          end;
          dm.Qtemp3.Next;
        end;           }
        subquery:='select account_code,account_name,trans_year,trans_month,sum(saldo_d) debit,sum(saldo_k) kredit,sum(trdb) trdb,sum(trkd) trkd,sum(dbend) dbend,sum(kdend) kdend'+
            ' from (select *,case when posisi_dk=''D'' then saldo_d+trdb-trkd else 0 end dbend,case when posisi_dk=''K'' then coalesce(saldo_k+trkd-trdb::NUMERIC,0) else 0 end kdend'+
            ' from (SELECT case when taa.posisi_dk=''D'' then  coalesce(sum(balance)::int, 0) else 0 end saldo_d, case when taa.posisi_dk=''K'' then coalesce(sum(balance)::int, 0) else 0 end saldo_k,'+
            ' taa.account_code2, case when status_dk=''D'' then sum(gl.amount) else 0 end  trdb,case when status_dk=''K''  then sum(gl.amount) else 0 end trkd, taa.account_name,trans_year,'+
            ' trans_month,taa.account_code,taa.posisi_dk,gl.status_dk FROM (select * from t_ak_account_balance WHERE trans_year='+QuotedStr(dm.Qtemp['trans_year'])+' and '+
            ' trans_month='+QuotedStr(dm.Qtemp['trans_month'])+')taab RIGHT JOIN  (select a.account_code,a.account_code2,b.account_name,a.posisi_dk from t_ak_account_sub a'+
            ' INNER JOIN t_ak_account b on a.account_code=b.code) taa on taab.account_code=taa.account_code2 '+
            ' left join (select * from t_general_ledger_real where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
            ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+') gl on taa.account_code2=gl.account_code  '+
            ' GROUP BY taa.account_code2,taa.account_name,trans_year,trans_month,taa.posisi_dk,gl.status_dk,taa.account_code)a  '+
            ' )x GROUP BY account_code,account_name,trans_year,trans_month ';
        subquery2:='select * ,case when (balance_status=1 and dbnr2>0) then dbnr2 else 0 end dbnr3,'+
              ' case when (balance_status=1 and kdnr2>0 ) then kdnr2 else 0 end kdnr3,'+
              ' case when (balance_status=2 and dbnr2 >0) then dbnr2 else 0 end dblr, '+
              ' case when (balance_status=2  and kdnr2>0) then kdnr2 else 0 end kdlr,0 notr from '+
              ' (select *,case when (dbnr-kdnr)+(dbpy-kdpy)>0 then (dbnr-kdnr)+(dbpy-kdpy) else 0 end dbnr2,'+
              ' case when (kdnr-dbnr)+(kdpy-dbpy)>0 then (kdnr-dbnr)+(kdpy-dbpy) else 0 end kdnr2 from'+
              ' (select balance_status,account_code,account_name,posisi_dk,trans_year,trans_month,debit,kredit,db,kd,dbpy,kdpy, '+
              ' case when posisi_dk=''D'' then debit-kredit+db-kd else 0 end dbnr, case when posisi_dk=''K'' then kredit-debit+kd-db '+
              ' else 0 end kdnr from (select aa.posisi_dk,aa.balance_status,sa.*,case when mts.db>0 then mts.db else 0 end db,'+
              ' case when mts.kd>0 then mts.kd else 0 end kd,case when bm.debit>0 then bm.debit else 0 end dbpy,'+
              ' case when bm.kredit>0 then bm.kredit else 0 end kdpy'+
              ' from  ('+subquery+') sa left join '+
              ' (select account_code,account_name,notr,case when sum(db)>0 then sum(db) else 0 end db,case when sum(kd)>0 then sum(kd) else 0 end kd'+
              ' from  (select * from "VRekap_Mutasi" where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
              ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+') a  GROUP BY account_code,account_name,notr) mts '+
              ' on sa.account_code=mts.account_code'+
              ' left join (select account_code,sum(debit) debit,sum(kredit) kredit from "V_BukuMemorial" '+
              ' where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
              ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+''+
              ' group by account_code) bm on sa.account_code=bm.account_code '+
              ' inner join t_ak_account aa on sa.account_code=aa.code where trans_year <> 0 and trans_month <> 0 )'+
              ' nr)nr2)nr3 order by account_code asc';
      with QNeraca_lajur do
         begin
           Close;
           sql.Clear;
              sql.Text:=subquery2;
           open;
         end;
      end;
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='select sum(kdlr)-sum(dblr) saldo from ('+subquery2+') xx WHERE balance_status=''2''';
        open;
      end;
      with dm.Qtemp1 do
      begin
        close;
        sql.Clear;
        sql.Text:='select account_code from t_ak_account_master  WHERE master_id=''5''';
        open;
      end;
      with dm.Qtemp2 do
      begin
        close;
        sql.Clear;
        sql.Text:='select balance from t_ak_account_balance WHERE account_code='+QuotedStr(dm.Qtemp1['account_code'])+''+
        ' and trans_year='+QuotedStr(spTahun.EditValue)+' and trans_month='+QuotedStr(inttostr(cbBulan.ItemIndex));
        Open;
      end;
      with dm.Qtemp3 do
      begin
        close;
        sql.Clear;
        sql.Text:='update t_ak_account_balance set balance=:balance WHERE account_code='+QuotedStr(dm.Qtemp1['account_code'])+''+
          ' and trans_year='+QuotedStr(spTahun.EditValue)+' and trans_month='+QuotedStr(inttostr(cbBulan.ItemIndex));
          ParamByName('balance').Value:=dm.QTemp['saldo']+DM.QTemp2['balance'];
        ExecSQL;
      end;
      DBGridEh1.FinishLoadingStatus();
   //   QNeraca_lajur.Open;
      //MemNeraca_lajur.Active:=true;
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\rpt_neracalajur.fr3');
      TfrxMemoView(Rpt.FindObject('Mtgl')).Memo.Text:='Periode : '+cbBulan.Text+' - '+QuotedStr(sptahun.editvalue);
      Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+FHomeLogin.vNamaPRSH;
   // GProses.Progress:=row+100;
      Rpt.ShowReport();
    //ProgressBar1.Visible:=false;
end;

procedure TFRpt_NeracaLajur.dxBarLargeButton2Click(Sender: TObject);
begin
  if CbBulan.Text= '' then
    begin
      MessageDlg('Bulan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      CbBulan.SetFocus;
      Exit;
    end;
    if sptahun.EditValue= null then
    begin
      MessageDlg('Tahun Tidak boleh Kosong ',MtWarning,[MbOk],0);
      spTahun.SetFocus;
      Exit;
    end;
    QNeraca_lajur.Close;
//MemNeraca_lajur.Open;
{with QNeraca_lajur do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT w.kelompok_akun ,w.kd_akun,w.notr,CASE	WHEN w.notr = 0 THEn concat ('''',w.nama_perkiraan ) ELSE w.'+
    ' nama_perkiraan END nama_perkiraan,SUM ( w.debit ) debit,SUM ( w.kredit ) kredit,SUM ( w.db ) db,SUM ( w.kd ) kd,SUM ( w.dbpy ) dbpy,'+
    ' SUM ( w.kdpy ) kdpy,SUM ( w.dbnr ) dbnr,SUM ( w.kdnr ) kdnr,SUM ( w.dbnr2 ) dbnr2,SUM ( w.kdnr2 ) kdnr2,SUM ( w.dbnr3 ) dbnr3,SUM ( w.kdnr3 ) kdnr3,SUM ( w.dblr ) dblr,SUM ( w.kdlr ) kdlr '+
    ' FROM /*Tambahan baru di atas*/  '+
    ' (SELECT xxx.*,CASE	WHEN yy.header_code IS NULL THEN	0 ELSE 1 END notr,yy.header_code FROM (SELECT	* ,CASE	WHEN ( xx4.kelompok_akun = 1 AND '+
    ' xx4.dbnr2 > 0 ) THEN xx4.dbnr2 ELSE 0 END dbnr3,CASE	WHEN ( xx4.kelompok_akun = 1 AND xx4.kdnr2 > 0 ) THEN	xx4.kdnr2 ELSE 0  END kdnr3,'+
    ' CASE WHEN (xx4.kelompok_akun = 2 AND xx4.dbnr2 > 0 ) THEN xx4.dbnr2 ELSE 0 END dblr,CASE	WHEN ( xx4.kelompok_akun = 2 AND xx4.kdnr2 > 0 ) THEN xx4.'+
    ' kdnr2 ELSE 0  END kdlr FROM (SELECT	*,CASE	WHEN ( xx3.dbnr-xx3.kdnr ) + (  xx3.dbpy-xx3.kdpy ) > 0 THEN	(xx3.dbnr- xx3.kdnr) + (xx3.dbpy-xx3.kdpy ) ELSE 0 END dbnr2,'+
    ' CASE	WHEN (xx3.kdnr -xx3.dbnr ) + (xx3.kdpy-xx3.dbpy ) > 0 THEN	(  xx3.kdnr -  xx3.dbnr ) + (  xx3.kdpy -  xx3.dbpy ) ELSE 0 END kdnr2 FROM '+
    ' (SELECT	*,CASE	WHEN xx2.debit - xx2.kredit + xx2.db - xx2.kd > 0 THEN	xx2.debit - xx2.kredit + xx2.db - xx2.kd ELSE 0 END dbnr,'+
    ' CASE	WHEN xx2.kredit - xx2.debit + xx2.kd - xx2.db > 0 THEN	xx2.kredit - xx2.debit + xx2.kd - xx2.db ELSE 0 END kdnr FROM	'+
    ' (SELECT	xx.kelompok_akun,xx.kd_akun,xx.nama_perkiraan,CASE WHEN xx.debit > 0 THEN	xx.debit ELSE 0 END debit,CASE WHEN xx.kredit > 0 THEN	xx.'+
    ' kredit ELSE 0 END kredit,CASE	WHEN xx.db > 0 THEN	0 ELSE xx.db END db,CASE	WHEN xx.kd > 0 THEN	0 ELSE xx.kd 	END kd,CASE WHEN xx.dbpy > 0 THEN 0 ELSE xx.dbpy 	END dbpy,CASE WHEN xx.kdpy > 0 THEN	0 ELSE xx.kdpy END kdpy FROM '+
    '	/* HEADER */ '+
    ' (SELECT	aa.group_id kelompok_akun,aa.kd_akun,aa.account_name nama_perkiraan,CASE WHEN aa.debit > 0 THEN aa.debit ELSE NULL END debit,CASE WHEN aa.kredit IS NULL THEN 0 ELSE aa.kredit END kredit,'+
    ' CASE	WHEN b.db IS NULL THEN 0 ELSE b.db END db,CASE	WHEN b.kd IS NULL THEN 0 ELSE b.kd 	END kd,CASE WHEN C.db IS NULL THEN	0 ELSE C.db 	END dbpy,CASE	WHEN C.kd IS NULL THEN	0 ELSE C.kd 	END kdpy FROM'+
    '	(SELECT C.code kd_akun,C.header_code,C.group_id,C.account_name,SUM (c.db ) debit,	SUM (C.kd ) kredit FROM  '+
    '	(SELECT DISTINCT A.code,A.header_code,A.account_name,A.balance_status,A.group_id,b.db,b.kd FROM	t_ak_account	A INNER JOIN "VSearch_Item_Neraca" b ON A.code = b.account_code WHERE '+
    ' /*balance_status=''1'' and*/ code = header_code AND header_code <> ''5400'' ) C  GROUP BY C.code,C.header_code,C.group_id,C.account_name ORDER BY	C.code ASC) AA'+
    ' LEFT JOIN LATERAL (SELECT CASE WHEN status_dk = ''D'' THEN SUM(amount) ELSE 0 END db,CASE WHEN status_dk = ''K'' THEN	SUM(amount)ELSE 0 END kd,b.code FROM	t_general_ledger_real	A '+
    ' INNER JOIN t_ak_account b ON A.account_code = b.code WHERE	b.code = aa.kd_akun AND A.module_id <> 7 AND'+
    ' (to_char( trans_date, ''yyyy'' ) = '+QuotedStr(spTahun.EditValue)+') AND ( to_char( trans_date, ''mm'' ) = '+QuotedStr(bln)+') GROUP BY b.code,A.status_dk) b ON 1 = 1  '+
    '	LEFT JOIN LATERAL (SELECT CASE WHEN status_dk = ''D'' THEN SUM ( amount ) ELSE 0 END db,CASE	WHEN status_dk = ''K'' THEN	SUM (amount) ELSE 0 	END kd,	b.code FROM'+
    '	t_general_ledger_real	A INNER JOIN t_ak_account b ON A.account_code = b.code WHERE	b.code = aa.kd_akun AND b.code <> ''1112.01'' 	AND A.module_id = 7 	AND '+
    ' ( to_char( trans_date, ''yyyy'' ) = '+QuotedStr(spTahun.EditValue)+') AND ( to_char( trans_date, ''mm'' ) = '+QuotedStr(bln)+')   GROUP BY	b.code,A.status_dk '+
    '	) C ON 1 = 1 ORDER BY	kd_akun ASC ) xx ) xx2) xx3  '+
    ' UNION '+
    ' SELECT	xx31.kelompok_akun,xx31.kd_akun,xx31.nama_perkiraan,xx31.debit,xx31.kredit,xx31.db,xx31.kd,xx31.dbpy,xx31.kdpy,xx31.dbnr,xx31.kdnr,'+
    ' CASE	WHEN ( xx31.dbnr - xx31.kdnr ) + ( xx31.dbpy - xx31.kdpy ) > 0 THEN	( xx31.dbnr - xx31.kdnr ) + ( xx31.dbpy - xx31.kdpy ) ELSE 0 END dbnr2,'+
    ' CASE	WHEN ( xx31.dbnr - xx31.dbnr ) + ( xx31.kdpy - xx31.dbpy ) > 0 THEN	( xx31.kdnr - xx31.dbnr ) + ( xx31.kdpy - xx31.dbpy ) ELSE 0 END kdnr2 FROM	'+
    ' (/*bop detail*/ SELECT	xx3.kelompok_akun,xx3.kd_akun,xx3.nama_perkiraan,xx3.debit,xx3.kredit,xx3.db,xx3.kd,xx3.dbpy,xx3.kdpy,xx3.dbnr,xx3.kdnr,0 dbnr2,0 kdnr2 FROM  '+
    ' (SELECT	*,CASE	WHEN xx2.debit - xx2.kredit + xx2.db - xx2.kd > 0 THEN	xx2.debit - xx2.kredit + xx2.db - xx2.kd ELSE 0 END dbnr,'+
    ' CASE	WHEN xx2.kredit -xx2.debit + xx2.kd - xx2.db > 0 THEN xx2.kredit - xx2.debit + xx2.kd - xx2.db ELSE 0 END kdnr FROM '+
    '	(SELECT	xx.kelompok_akun,xx.kd_akun,xx.nama_perkiraan,CASE	WHEN xx.debit > 0 THEN xx.debit ELSE 0 END debit,CASE	WHEN xx.kredit >0 THEN	xx.debit ELSE 0 END kredit,'+
    ' CASE	WHEN xx.db >0 THEN xx.db ELSE 0 END db,CASE	WHEN xx.kd >0 THEN xx.kd  ELSE 0 END kd,CASE	WHEN xx.dbpy>0  THEN xx.dbpy ELSE 0	END dbpy,CASE	WHEN xx.kdpy >0 THEN	xx.kdpy ELSE 0	END kdpy FROM'+
    ' (SELECT	aa.group_id kelompok_akun,aa.kd_akun,aa.account_name nama_perkiraan,CASE	WHEN aa.debit > 0 THEN	aa.debit ELSE NULL END debit,CASE	WHEN aa.kredit IS NULL THEN	0 ELSE aa.kredit END kredit,'+
    ' CASE	WHEN b.db IS NULL THEN 0 ELSE b.db END db,CASE	WHEN b.kd IS NULL THEN 0 ELSE b.kd END kd,CASE WHEN C.db IS NULL THEN 0 ELSE C.db END dbpy,CASE WHEN C.kd IS NULL THEN 0 ELSE C.kd END kdpy FROM '+
    '	(1)	A INNER JOIN '+
    ' t_neraca_lajur_det b ON A.trans_no = b.trans_no) d ON C.code = d.account_code GROUP BY	C.code,C.header_code,C.group_id,C.account_name,d.debit,d.kredit ORDER BY C.code SELECT C.code kd_akun,C.header_code,C.group_id,C.account_name,d.debit,d.kredit FROM '+
    ' (SELECT DISTINCT code, header_code, account_name, balance_status, group_id FROM t_ak_account A WHERE balance_status = ''1'') C '+
    ' INNER JOIN (SELECT	trans_year,A.periode1,A.periode2,trans_month,A.trans_no,b.debit,b.kredit,		account_code FROM	(SELECT trans_year, periode1, periode2, trans_month, trans_no FROM t_neraca_lajur WHERE '+
    ' (to_char( periode2, ''yyyy'' ) <= '+QuotedStr(spTahun.EditValue)+') AND ( to_char( periode2, ''mm'' ) < '+QuotedStr(bln)+')   ORDER BY periode2 DESC LIMIT ASC) AA   '+
    ' LEFT JOIN LATERAL (SELECT CASE WHEN status_dk = ''D'' THEN SUM ( amount ) ELSE 0 END db,CASE	WHEN status_dk = ''K'' THEN SUM ( amount ) ELSE 0 END kd,b.code FROM t_general_ledger_real	A'+
    ' INNER JOIN t_ak_account b ON A.account_code = b.code WHERE b.code = aa.kd_akun AND A.module_id <> 7 AND'+
    ' (to_char( trans_date, ''yyyy'' ) = '+QuotedStr(spTahun.EditValue)+') AND ( to_char( trans_date, ''mm'' ) = '+QuotedStr(bln)+')   GROUP BY b.code,A.status_dk) b ON 1 = 1  '+
    '	LEFT JOIN LATERAL (SELECT	CASE	WHEN	status_dk = ''D'' THEN	SUM ( amount ) ELSE 0 END db,CASE	WHEN status_dk = ''K'' THEN SUM ( amount ) ELSE 0 END kd,b.code FROM	t_general_ledger_real	A '+
    ' INNER JOIN t_ak_account b ON A.account_code = b.code WHERE	b.code = aa.kd_akun AND b.code <> ''1112.01'' AND A.module_id = 7 	AND'+
    ' (to_char( trans_date, ''yyyy'' ) = '+QuotedStr(spTahun.EditValue)+') AND ( to_char( trans_date, ''mm'' ) = '+QuotedStr(bln)+')   GROUP BY	b.code,	A.status_dk 	) C ON 1 = 1 ORDER BY '+
    '	kd_akun ASC) xx ) xx2) xx3) xx31) xx4 ORDER BY kd_akun) XXX /*Tambahan baru di atas*/LEFT JOIN t_ak_header yy ON xxx.kd_akun = yy.header_code) w GROUP BY	w.kelompok_akun,w.kd_akun,w.notr,w.nama_perkiraan ' ;
    Execute;
  end;      }
  QNeraca_lajur.Open;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\rpt_neracalajur.fr3');
 // Tfrxmemoview(Rpt.FindObject('Mtgl')).Memo.Text:='Periode : '+FormatDateTime('dd MMMM yyy',DtMulai.editvalue)+' - '+FormatDateTime('dd MMMM yyy',sptahun.editvalue);
  //GProses.Progress:=row+100;
  Rpt.ShowReport();
end;

procedure TFRpt_NeracaLajur.dxBarLargeButton4Click(Sender: TObject);
var q:TUniQuery;
  subquery,subquery2,subquery3:string;
begin
  mm:=cbBulan.ItemIndex;
  yy:=spTahun.EditValue;
  QNeraca_lajur.Close;
  MemNeraca_lajur.Active:=false;
 DBGridEh1.StartLoadingStatus();
// MemNeraca_lajur.Active:=true;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select trans_year,trans_month from t_ak_account_balance  where trans_year='+QuotedStr(spTahun.EditValue)+' '+
    ' and trans_month <'+QuotedStr(inttostr(cbBulan.ItemIndex))+' GROUP BY trans_year,trans_month order by trans_month desc limit 1';
    Open;
  end;
    if dm.Qtemp.RecordCount=0 then
    begin
     with dm.Qtemp1 do
          begin
            close;
            sql.Clear;
            sql.Text:=' delete from t_ak_account_balance where trans_year='+QuotedStr(spTahun.EditValue)+' and trans_month='+QuotedStr(inttostr(cbBulan.ItemIndex));
            Execute;
          end;
      with dm.Qtemp2 do
      begin
        close;
        sql.Clear;
        sql.Text:='select trans_year,trans_month from t_ak_account_balance  where trans_year='+QuotedStr(inttostr(strtoint(spTahun.EditValue)-1))+' '+
        ' and trans_month <=''12'' GROUP BY trans_year,trans_month order by trans_month desc limit 1';
        Open;
      end;
          with dm.Qtemp1 do
          begin
            close;
            sql.Clear;
            sql.Text:=' insert into t_ak_account_balance(account_code,balance,trans_year,trans_month) '+
                      ' select account_code2,0,'+QuotedStr(spTahun.EditValue)+','+QuotedStr(inttostr(cbBulan.ItemIndex))+' from t_ak_account_sub';
            Execute;
          end;
        with dm.Qtemp3 do
        begin
          close;
          sql.Clear;
          sql.Text:='select * from (select *,case when posisi_dk=''D'' then saldo_d+trdb-trkd else 0 end dbend,case when posisi_dk=''K'' then coalesce(saldo_k+trkd-trdb::NUMERIC,0) else 0 end kdend'+
          ' from (SELECT case when taa.posisi_dk=''D'' then  coalesce(sum(balance)::int, 0) else 0 end saldo_d, case when taa.posisi_dk=''K'' then coalesce(sum(balance)::int, 0) else 0 end saldo_k,'+
          ' taa.account_code2, case when status_dk=''D'' then sum(gl.amount) else 0 end  trdb,case when status_dk=''K''  then sum(gl.amount) else 0 end trkd, taa.account_name,trans_year,'+
          ' trans_month,taa.account_code,taa.posisi_dk,gl.status_dk FROM (select * from t_ak_account_balance WHERE trans_year='+QuotedStr(dm.Qtemp2['trans_year'])+' and '+
          ' trans_month='+QuotedStr(dm.Qtemp2['trans_month'])+')taab RIGHT JOIN  (select a.account_code,a.account_code2,b.account_name,a.posisi_dk from t_ak_account_sub a'+
          ' INNER JOIN t_ak_account b on a.account_code=b.code) taa on taab.account_code=taa.account_code2 '+
          ' left join (select * from t_general_ledger_real where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
          ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+') gl on taa.account_code2=gl.account_code  '+
          ' GROUP BY taa.account_code2,taa.account_name,trans_year,trans_month,taa.posisi_dk,gl.status_dk,taa.account_code)a  '+
          ' )x  where dbend>0 or kdend>0 ';
          open;
        end;
        dm.Qtemp3.First;
        while not dm.Qtemp3.eof do
        begin
          with dm.Qtemp1 do
          begin
            close;
            sql.Clear;
              SQL.Text:='update t_ak_account_balance set balance='+QuotedStr(dm.Qtemp3['dbend']+dm.Qtemp3['kdend'])+
              ' where account_code='+QuotedStr(dm.Qtemp3['account_code2'])+' and trans_year='+QuotedStr(spTahun.EditValue)+''+
              ' and trans_month='+QuotedStr(inttostr(cbBulan.ItemIndex));
            Execute;
          end;
          dm.Qtemp3.Next;
        end;
        subquery:='select account_code,account_name,trans_year,trans_month,sum(saldo_d) debit,sum(saldo_k) kredit'+
            ' from (select *,case when posisi_dk=''D'' then saldo_d+trdb-trkd else 0 end dbend,case when posisi_dk=''K'' then coalesce(saldo_k+trkd-trdb::NUMERIC,0) else 0 end kdend'+
            ' from (SELECT case when taa.posisi_dk=''D'' then  coalesce(sum(balance)::int, 0) else 0 end saldo_d, case when taa.posisi_dk=''K'' then coalesce(sum(balance)::int, 0) else 0 end saldo_k,'+
            ' taa.account_code2, case when status_dk=''D'' then sum(gl.amount) else 0 end  trdb,case when status_dk=''K''  then sum(gl.amount) else 0 end trkd, taa.account_name,trans_year,'+
            ' trans_month,taa.account_code,taa.posisi_dk,gl.status_dk FROM (select * from t_ak_account_balance WHERE trans_year='+QuotedStr(dm.Qtemp2['trans_year'])+' and '+
            ' trans_month='+QuotedStr(dm.Qtemp2['trans_month'])+')taab RIGHT JOIN  (select a.account_code,a.account_code2,b.account_name,a.posisi_dk from t_ak_account_sub a'+
            ' INNER JOIN t_ak_account b on a.account_code=b.code) taa on taab.account_code=taa.account_code2 '+
            ' left join (select * from t_general_ledger_real where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
            ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+') gl on taa.account_code2=gl.account_code  '+
            ' GROUP BY taa.account_code2,taa.account_name,trans_year,trans_month,taa.posisi_dk,gl.status_dk,taa.account_code)a  '+
            ' )x GROUP BY account_code,account_name,trans_year,trans_month';
        subquery2:='select * ,case when (balance_status=1 and dbnr2>0) then dbnr2 else 0 end dbnr3,'+
              ' case when (balance_status=1 and kdnr2>0 ) then kdnr2 else 0 end kdnr3,'+
              ' case when (balance_status=2 and dbnr2 >0) then dbnr2 else 0 end dblr, '+
              ' case when (balance_status=2  and kdnr2>0) then kdnr2 else 0 end kdlr,0 notr from '+
              ' (select *,case when (dbnr-kdnr)+(dbpy-kdpy)>0 then (dbnr-kdnr)+(dbpy-kdpy) else 0 end dbnr2,'+
              ' case when (kdnr-dbnr)+(kdpy-dbpy)>0 then (kdnr-dbnr)+(kdpy-dbpy) else 0 end kdnr2 from'+
              ' (select balance_status,account_code,account_name,posisi_dk,trans_year,trans_month,debit,kredit,db,kd,dbpy,kdpy, '+
              ' case when posisi_dk=''D'' then debit-kredit+db-kd else 0 end dbnr, case when posisi_dk=''K'' then kredit-debit+kd-db '+
              ' else 0 end kdnr from (select aa.posisi_dk,aa.balance_status,sa.*,case when mts.db>0 then mts.db else 0 end db,'+
              ' case when mts.kd>0 then mts.kd else 0 end kd,case when bm.debit>0 then bm.debit else 0 end dbpy,'+
              ' case when bm.kredit>0 then bm.kredit else 0 end kdpy'+
              ' from  ('+subquery+') sa left join '+
              ' (select account_code,account_name,notr,case when sum(db)>0 then sum(db) else 0 end db,case when sum(kd)>0 then sum(kd) else 0 end kd'+
              ' from  (select * from "VRekap_Mutasi" where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
              ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+') a  GROUP BY account_code,account_name,notr) mts '+
              ' on sa.account_code=mts.account_code'+
              ' left join (select account_code,sum(debit) debit,sum(kredit) kredit from "V_BukuMemorial" '+
              ' where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
              ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+''+
              ' group by account_code) bm on sa.account_code=bm.account_code '+
              ' inner join t_ak_account aa on sa.account_code=aa.code where trans_year <> 0 and trans_month <> 0 )'+
              ' nr)nr2)nr3 order by account_code asc';
      with QNeraca_lajur do
         begin
           Close;
           sql.Clear;
              sql.Text:=subquery2;
           open;
         end;
    end;
      if dm.Qtemp.RecordCount<>0 then
      begin
        with dm.Qtemp1 do
          begin
            close;
            sql.Clear;
            sql.Text:=' delete from t_ak_account_balance where trans_year='+QuotedStr(spTahun.EditValue)+' and trans_month='+QuotedStr(inttostr(cbBulan.ItemIndex));
            Execute;
          end;
       with dm.Qtemp1 do
          begin
            close;
            sql.Clear;
            sql.Text:=' insert into t_ak_account_balance(account_code,balance,trans_year,trans_month) '+
                      ' select account_code2,0,'+QuotedStr(spTahun.EditValue)+','+QuotedStr(inttostr(cbBulan.ItemIndex))+' from t_ak_account_sub';
            Execute;
          end;
        with dm.Qtemp3 do
        begin
          close;
          sql.Clear;
          sql.Text:='select * from (select *,case when posisi_dk=''D'' then saldo_d+trdb-trkd else 0 end dbend,case when posisi_dk=''K'' then coalesce(saldo_k+trkd-trdb::NUMERIC,0) else 0 end kdend'+
          ' from (SELECT case when taa.posisi_dk=''D'' then  coalesce(sum(balance)::int, 0) else 0 end saldo_d, case when taa.posisi_dk=''K'' then coalesce(sum(balance)::int, 0) else 0 end saldo_k,'+
          ' taa.account_code2, case when status_dk=''D'' then sum(gl.amount) else 0 end  trdb,case when status_dk=''K''  then sum(gl.amount) else 0 end trkd, taa.account_name,trans_year,'+
          ' trans_month,taa.account_code,taa.posisi_dk,gl.status_dk FROM (select * from t_ak_account_balance WHERE trans_year='+QuotedStr(dm.Qtemp['trans_year'])+' and '+
          ' trans_month='+QuotedStr(dm.Qtemp['trans_month'])+')taab RIGHT JOIN  (select a.account_code,a.account_code2,b.account_name,a.posisi_dk from t_ak_account_sub a'+
          ' INNER JOIN t_ak_account b on a.account_code=b.code) taa on taab.account_code=taa.account_code2 '+
          ' left join (select * from t_general_ledger_real where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
          ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+') gl on taa.account_code2=gl.account_code  '+
          ' GROUP BY taa.account_code2,taa.account_name,trans_year,trans_month,taa.posisi_dk,gl.status_dk,taa.account_code)a  '+
          ' )x  where dbend>0 or kdend>0 ';
          open;
        end;
        dm.Qtemp3.First;
        while not dm.Qtemp3.eof do
        begin
          with dm.Qtemp1 do
          begin
            close;
            sql.Clear;
              SQL.Text:='update t_ak_account_balance set balance='+QuotedStr(dm.Qtemp3['dbend']+dm.Qtemp3['kdend'])+
              ' where account_code='+QuotedStr(dm.Qtemp3['account_code2'])+' and trans_year='+QuotedStr(spTahun.EditValue)+''+
              ' and trans_month='+QuotedStr(inttostr(cbBulan.ItemIndex));
            Execute;
          end;
          dm.Qtemp3.Next;
        end;
        subquery:='select account_code,account_name,trans_year,trans_month,sum(saldo_d) debit,sum(saldo_k) kredit,sum(trdb) trdb,sum(trkd) trkd,sum(dbend) dbend,sum(kdend) kdend'+
            ' from (select *,case when posisi_dk=''D'' then saldo_d+trdb-trkd else 0 end dbend,case when posisi_dk=''K'' then coalesce(saldo_k+trkd-trdb::NUMERIC,0) else 0 end kdend'+
            ' from (SELECT case when taa.posisi_dk=''D'' then  coalesce(sum(balance)::int, 0) else 0 end saldo_d, case when taa.posisi_dk=''K'' then coalesce(sum(balance)::int, 0) else 0 end saldo_k,'+
            ' taa.account_code2, case when status_dk=''D'' then sum(gl.amount) else 0 end  trdb,case when status_dk=''K''  then sum(gl.amount) else 0 end trkd, taa.account_name,trans_year,'+
            ' trans_month,taa.account_code,taa.posisi_dk,gl.status_dk FROM (select * from t_ak_account_balance WHERE trans_year='+QuotedStr(dm.Qtemp['trans_year'])+' and '+
            ' trans_month='+QuotedStr(dm.Qtemp['trans_month'])+')taab RIGHT JOIN  (select a.account_code,a.account_code2,b.account_name,a.posisi_dk from t_ak_account_sub a'+
            ' INNER JOIN t_ak_account b on a.account_code=b.code) taa on taab.account_code=taa.account_code2 '+
            ' left join (select * from t_general_ledger_real where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
            ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+') gl on taa.account_code2=gl.account_code  '+
            ' GROUP BY taa.account_code2,taa.account_name,trans_year,trans_month,taa.posisi_dk,gl.status_dk,taa.account_code)a  '+
            ' )x GROUP BY account_code,account_name,trans_year,trans_month ';
        subquery2:= 'select * ,case when (balance_status=1 and dbnr2>0) then dbnr2 else 0 end dbnr3,'+
              ' case when (balance_status=1 and kdnr2>0 ) then kdnr2 else 0 end kdnr3,'+
              ' case when (balance_status=2 and dbnr2 >0) then dbnr2 else 0 end dblr, '+
              ' case when (balance_status=2  and kdnr2>0) then kdnr2 else 0 end kdlr,0 notr from '+
              ' (select *,case when (dbnr-kdnr)+(dbpy-kdpy)>0 then (dbnr-kdnr)+(dbpy-kdpy) else 0 end dbnr2,'+
              ' case when (kdnr-dbnr)+(kdpy-dbpy)>0 then (kdnr-dbnr)+(kdpy-dbpy) else 0 end kdnr2 from'+
              ' (select balance_status,account_code,account_name,posisi_dk,trans_year,trans_month,debit,kredit,db,kd,dbpy,kdpy, '+
              ' case when posisi_dk=''D'' then debit-kredit+db-kd else 0 end dbnr, case when posisi_dk=''K'' then kredit-debit+kd-db '+
              ' else 0 end kdnr from (select aa.posisi_dk,aa.balance_status,sa.*,case when mts.db>0 then mts.db else 0 end db,'+
              ' case when mts.kd>0 then mts.kd else 0 end kd,case when bm.debit>0 then bm.debit else 0 end dbpy,'+
              ' case when bm.kredit>0 then bm.kredit else 0 end kdpy'+
              ' from  ('+subquery+') sa left join '+
              ' (select account_code,account_name,notr,case when sum(db)>0 then sum(db) else 0 end db,case when sum(kd)>0 then sum(kd) else 0 end kd'+
              ' from  (select * from "VRekap_Mutasi" where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
              ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+') a  GROUP BY account_code,account_name,notr) mts '+
              ' on sa.account_code=mts.account_code'+
              ' left join (select account_code,sum(debit) debit,sum(kredit) kredit from "V_BukuMemorial" '+
              ' where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
              ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+''+
              ' group by account_code) bm on sa.account_code=bm.account_code '+
              ' inner join t_ak_account aa on sa.account_code=aa.code where trans_year <> 0 and trans_month <> 0)'+
              ' nr)nr2)nr3 order by account_code asc';
        with QNeraca_lajur do
           begin
             Close;
             sql.Clear;
              sql.Text:=subquery2;
              open;
           end;
      end;
      DBGridEh1.FinishLoadingStatus();
      QNeraca_lajur.Open;
      MemNeraca_lajur.Active:=true;
end;

procedure TFRpt_NeracaLajur.DxRefreshClick(Sender: TObject);
var
  dd,mm,yy:string;
begin
 {if cbbulan.Text= '' then
    begin
      MessageDlg('Bulan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      cbbulan.SetFocus;
      Exit;
    end;
    if spTahun.EditValue= null then
    begin
      MessageDlg('Tahun Tidak boleh Kosong ',MtWarning,[MbOk],0);
      spTahun.SetFocus;
      Exit;
    end;
  periode1:=FormatDateTime('yyy-mm-dd',DtMulai.EditValue);
 // periode2:=FormatDateTime('yyy-mm-dd',DtSelesai.EditValue);
  prd1:=formatdatetime('yyyy-mm',DtMulai.EditValue);
 // prd2:=formatdatetime('yyyy-mm',DtSelesai.EditValue);
 { if prd1<prd2 then
  begin
      MessageDlg('Periode Tidak boleh Kosong lebih dari 1 bulan',MtWarning,[MbOk],0);
   //   DtSelesai.SetFocus;
      Exit;
  end;}
  //MemNeraca_lajur.EmptyTable;
  QNeraca_lajur.Close;
  if CbBulan.Text= '' then
    begin
      MessageDlg('Bulan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      cbbulan.SetFocus;
      Exit;
    end;
    if sptahun.EditValue= null then
    begin
      MessageDlg('Tahun Tidak boleh Kosong ',MtWarning,[MbOk],0);
      sptahun.SetFocus;
      Exit;
    end;
    //mm:=IntToStr(CbBulan.ItemIndex);
   // yy:=sptahun.EditValue+'-'+IntToStr(CbBulan.ItemIndex);
   // edit1.Text:=sptahun.EditValue;//+'-'+IntToStr(CbBulan.ItemIndex);
// bln:=FormatDateTime('mm',DtMulai.EditValue);
 { with QNeraca_lajur do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT w.kelompok_akun ,w.kd_akun,w.notr,CASE	WHEN w.notr = 0 THEn concat ('''',w.nama_perkiraan ) ELSE w.'+
    ' nama_perkiraan END nama_perkiraan,SUM ( w.debit ) debit,SUM ( w.kredit ) kredit,SUM ( w.db ) db,SUM ( w.kd ) kd,SUM ( w.dbpy ) dbpy,'+
    ' SUM ( w.kdpy ) kdpy,SUM ( w.dbnr ) dbnr,SUM ( w.kdnr ) kdnr,SUM ( w.dbnr2 ) dbnr2,SUM ( w.kdnr2 ) kdnr2,SUM ( w.dbnr3 ) dbnr3,SUM ( w.kdnr3 ) kdnr3,SUM ( w.dblr ) dblr,SUM ( w.kdlr ) kdlr '+
    ' FROM /*Tambahan baru di atas*/  '+
    ' (SELECT xxx.*,CASE	WHEN yy.header_code IS NULL THEN	0 ELSE 1 END notr,yy.header_code FROM (SELECT	* ,CASE	WHEN ( xx4.kelompok_akun = 1 AND '+
    ' xx4.dbnr2 > 0 ) THEN xx4.dbnr2 ELSE 0 END dbnr3,CASE	WHEN ( xx4.kelompok_akun = 1 AND xx4.kdnr2 > 0 ) THEN	xx4.kdnr2 ELSE 0  END kdnr3,'+
    ' CASE WHEN (xx4.kelompok_akun = 2 AND xx4.dbnr2 > 0 ) THEN xx4.dbnr2 ELSE 0 END dblr,CASE	WHEN ( xx4.kelompok_akun = 2 AND xx4.kdnr2 > 0 ) THEN xx4.'+
    ' kdnr2 ELSE 0  END kdlr FROM (SELECT	*,CASE	WHEN ( xx3.dbnr-xx3.kdnr ) + (  xx3.dbpy-xx3.kdpy ) > 0 THEN	(xx3.dbnr- xx3.kdnr) + (xx3.dbpy-xx3.kdpy ) ELSE 0 END dbnr2,'+
    ' CASE	WHEN (xx3.kdnr -xx3.dbnr ) + (xx3.kdpy-xx3.dbpy ) > 0 THEN	(  xx3.kdnr -  xx3.dbnr ) + (  xx3.kdpy -  xx3.dbpy ) ELSE 0 END kdnr2 FROM '+
    ' (SELECT	*,CASE	WHEN xx2.debit - xx2.kredit + xx2.db - xx2.kd > 0 THEN	xx2.debit - xx2.kredit + xx2.db - xx2.kd ELSE 0 END dbnr,'+
    ' CASE	WHEN xx2.kredit - xx2.debit + xx2.kd - xx2.db > 0 THEN	xx2.kredit - xx2.debit + xx2.kd - xx2.db ELSE 0 END kdnr FROM	'+
    ' (SELECT	xx.kelompok_akun,xx.kd_akun,xx.nama_perkiraan,CASE WHEN xx.debit > 0 THEN	xx.debit ELSE 0 END debit,CASE WHEN xx.kredit > 0 THEN	xx.'+
    ' kredit ELSE 0 END kredit,CASE	WHEN xx.db > 0 THEN	0 ELSE xx.db END db,CASE	WHEN xx.kd > 0 THEN	0 ELSE xx.kd 	END kd,CASE WHEN xx.dbpy > 0 THEN 0 ELSE xx.dbpy 	END dbpy,CASE WHEN xx.kdpy > 0 THEN	0 ELSE xx.kdpy END kdpy FROM '+
    '	/* HEADER */ '+
    ' (SELECT	aa.group_id kelompok_akun,aa.kd_akun,aa.account_name nama_perkiraan,CASE WHEN aa.debit > 0 THEN aa.debit ELSE NULL END debit,CASE WHEN aa.kredit IS NULL THEN 0 ELSE aa.kredit END kredit,'+
    ' CASE	WHEN b.db IS NULL THEN 0 ELSE b.db END db,CASE	WHEN b.kd IS NULL THEN 0 ELSE b.kd 	END kd,CASE WHEN C.db IS NULL THEN	0 ELSE C.db 	END dbpy,CASE	WHEN C.kd IS NULL THEN	0 ELSE C.kd 	END kdpy FROM'+
    '	(SELECT C.code kd_akun,C.header_code,C.group_id,C.account_name,SUM (c.db ) debit,	SUM (C.kd ) kredit FROM  '+
    '	(SELECT DISTINCT A.code,A.header_code,A.account_name,A.balance_status,A.group_id,b.db,b.kd FROM	t_ak_account	A INNER JOIN "VSearch_Item_Neraca" b ON A.code = b.account_code WHERE '+
    ' /*balance_status=''1'' and*/ code = header_code AND header_code <> ''5400'' ) C  GROUP BY C.code,C.header_code,C.group_id,C.account_name ORDER BY	C.code ASC) AA'+
    ' LEFT JOIN LATERAL (SELECT CASE WHEN status_dk = ''D'' THEN SUM(amount) ELSE 0 END db,CASE WHEN status_dk = ''K'' THEN	SUM(amount)ELSE 0 END kd,b.code FROM	t_general_ledger_real	A '+
    ' INNER JOIN t_ak_account b ON A.account_code = b.code WHERE	b.code = aa.kd_akun AND A.module_id <> 7 AND'+
    ' (to_char( trans_date, ''yyyy'' ) = '+QuotedStr(spTahun.EditValue)+') AND ( to_char( trans_date, ''mm'' ) = '+QuotedStr(bln)+') GROUP BY b.code,A.status_dk) b ON 1 = 1  '+
    '	LEFT JOIN LATERAL (SELECT CASE WHEN status_dk = ''D'' THEN SUM ( amount ) ELSE 0 END db,CASE	WHEN status_dk = ''K'' THEN	SUM (amount) ELSE 0 	END kd,	b.code FROM'+
    '	t_general_ledger_real	A INNER JOIN t_ak_account b ON A.account_code = b.code WHERE	b.code = aa.kd_akun AND b.code <> ''1112.01'' 	AND A.module_id = 7 	AND '+
    ' ( to_char( trans_date, ''yyyy'' ) = '+QuotedStr(spTahun.EditValue)+') AND ( to_char( trans_date, ''mm'' ) = '+QuotedStr(bln)+')   GROUP BY	b.code,A.status_dk '+
    '	) C ON 1 = 1 ORDER BY	kd_akun ASC ) xx ) xx2) xx3  '+
    ' UNION '+
    ' SELECT	xx31.kelompok_akun,xx31.kd_akun,xx31.nama_perkiraan,xx31.debit,xx31.kredit,xx31.db,xx31.kd,xx31.dbpy,xx31.kdpy,xx31.dbnr,xx31.kdnr,'+
    ' CASE	WHEN ( xx31.dbnr - xx31.kdnr ) + ( xx31.dbpy - xx31.kdpy ) > 0 THEN	( xx31.dbnr - xx31.kdnr ) + ( xx31.dbpy - xx31.kdpy ) ELSE 0 END dbnr2,'+
    ' CASE	WHEN ( xx31.dbnr - xx31.dbnr ) + ( xx31.kdpy - xx31.dbpy ) > 0 THEN	( xx31.kdnr - xx31.dbnr ) + ( xx31.kdpy - xx31.dbpy ) ELSE 0 END kdnr2 FROM	'+
    ' (/*bop detail*/ SELECT	xx3.kelompok_akun,xx3.kd_akun,xx3.nama_perkiraan,xx3.debit,xx3.kredit,xx3.db,xx3.kd,xx3.dbpy,xx3.kdpy,xx3.dbnr,xx3.kdnr,0 dbnr2,0 kdnr2 FROM  '+
    ' (SELECT	*,CASE	WHEN xx2.debit - xx2.kredit + xx2.db - xx2.kd > 0 THEN	xx2.debit - xx2.kredit + xx2.db - xx2.kd ELSE 0 END dbnr,'+
    ' CASE	WHEN xx2.kredit -xx2.debit + xx2.kd - xx2.db > 0 THEN xx2.kredit - xx2.debit + xx2.kd - xx2.db ELSE 0 END kdnr FROM '+
    '	(SELECT	xx.kelompok_akun,xx.kd_akun,xx.nama_perkiraan,CASE	WHEN xx.debit > 0 THEN xx.debit ELSE 0 END debit,CASE	WHEN xx.kredit >0 THEN	xx.debit ELSE 0 END kredit,'+
    ' CASE	WHEN xx.db >0 THEN xx.db ELSE 0 END db,CASE	WHEN xx.kd >0 THEN xx.kd  ELSE 0 END kd,CASE	WHEN xx.dbpy>0  THEN xx.dbpy ELSE 0	END dbpy,CASE	WHEN xx.kdpy >0 THEN	xx.kdpy ELSE 0	END kdpy FROM'+
    ' (SELECT	aa.group_id kelompok_akun,aa.kd_akun,aa.account_name nama_perkiraan,CASE	WHEN aa.debit > 0 THEN	aa.debit ELSE NULL END debit,CASE	WHEN aa.kredit IS NULL THEN	0 ELSE aa.kredit END kredit,'+
    ' CASE	WHEN b.db IS NULL THEN 0 ELSE b.db END db,CASE	WHEN b.kd IS NULL THEN 0 ELSE b.kd END kd,CASE WHEN C.db IS NULL THEN 0 ELSE C.db END dbpy,CASE WHEN C.kd IS NULL THEN 0 ELSE C.kd END kdpy FROM '+
    '	(SELECT C.code kd_akun,C.header_code,C.group_id,C.account_name,d.debit,d.kredit FROM '+
    ' (SELECT DISTINCT code, header_code, account_name, balance_status, group_id FROM t_ak_account A WHERE balance_status = ''1'' ) C '+
    ' INNER JOIN (SELECT	trans_year,A.periode1,A.periode2,trans_month,A.trans_no,b.debit,b.kredit,		account_code FROM	(SELECT trans_year, periode1, periode2, trans_month, trans_no FROM t_neraca_lajur WHERE '+
    ' (to_char( periode2, ''yyyy'' ) <= '+QuotedStr(spTahun.EditValue)+') AND ( to_char( periode2, ''mm'' ) < '+QuotedStr(bln)+')   ORDER BY periode2 DESC LIMIT 1)	A INNER JOIN t_neraca_lajur_det b ON A.trans_no = b.trans_no) d ON C.code = d.account_code GROUP BY	C.code,C.header_code,C.group_id,C.account_name,d.debit,d.kredit ORDER BY C.code ASC) AA   '+
    ' LEFT JOIN LATERAL (SELECT CASE WHEN status_dk = ''D'' THEN SUM ( amount ) ELSE 0 END db,CASE	WHEN status_dk = ''K'' THEN SUM ( amount ) ELSE 0 END kd,b.code FROM t_general_ledger_real	A'+
    ' INNER JOIN t_ak_account b ON A.account_code = b.code WHERE b.code = aa.kd_akun AND A.module_id <> 7 AND'+
    ' (to_char( trans_date, ''yyyy'' ) = '+QuotedStr(spTahun.EditValue)+') AND ( to_char( trans_date, ''mm'' ) = '+QuotedStr(bln)+')   GROUP BY b.code,A.status_dk) b ON 1 = 1  '+
    '	LEFT JOIN LATERAL (SELECT	CASE	WHEN	status_dk = ''D'' THEN	SUM ( amount ) ELSE 0 END db,CASE	WHEN status_dk = ''K'' THEN SUM ( amount ) ELSE 0 END kd,b.code FROM	t_general_ledger_real	A '+
    ' INNER JOIN t_ak_account b ON A.account_code = b.code WHERE	b.code = aa.kd_akun AND b.code <> ''1112.01'' AND A.module_id = 7 	AND'+
    ' (to_char( trans_date, ''yyyy'' ) = '+QuotedStr(spTahun.EditValue)+') AND ( to_char( trans_date, ''mm'' ) = '+QuotedStr(bln)+')   GROUP BY	b.code,	A.status_dk 	) C ON 1 = 1 ORDER BY '+
    '	kd_akun ASC) xx ) xx2) xx3) xx31) xx4 ORDER BY	kd_akun ) XXX /*Tambahan baru di atas*/LEFT JOIN t_ak_header yy ON xxx.kd_akun = yy.header_code) w GROUP BY	w.kelompok_akun,w.kd_akun,w.notr,w.nama_perkiraan ' ;
    Execute;
  end;         }
  QNeraca_lajur.Open;
  MemNeraca_lajur.Active:=true;
end;

procedure TFRpt_NeracaLajur.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFRpt_NeracaLajur.FormCreate(Sender: TObject);
begin
  RealFrpt_NeracaLajur:=self;
end;

procedure TFRpt_NeracaLajur.FormDestroy(Sender: TObject);
begin
  RealFrpt_NeracaLajur:=nil;
end;

procedure TFRpt_NeracaLajur.FormShow(Sender: TObject);
begin
  spTahun.EditValue := YearOf(Now);
  cbBulan.ItemIndex:= MonthOf(Now);
end;

procedure TFRpt_NeracaLajur.RptGetValue(const VarName: string;
  var Value: Variant);
begin
//if QNeraca_lajur['notr']=0 then  memo30.Fill.color=clblue;
end;

initialization
RegisterClass(TFRpt_NeracaLajur);

end.
