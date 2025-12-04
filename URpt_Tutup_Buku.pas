unit URpt_Tutup_Buku;

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
  dxRibbonCustomizationForm, cxCalendar, cxLabel, cxSpinEdit, dxBar,
  cxBarEditItem, cxClasses, dxRibbon, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls,DateUtils, Data.DB, MemDS, DBAccess, Uni, frxClass;

type
  TFRpt_Tutup_Buku = class(TForm)
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
    cxBarEditItem1: TcxBarEditItem;
    SpTahun: TcxBarEditItem;
    DBGridEh1: TDBGridEh;
    CbBulan: TComboBox;
    QTutup_Buku: TUniQuery;
    DSTutup_Buku: TDataSource;
    frxReport1: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  dd,mm,yy:word;
  bln_akhir,tgl1,tgl2:tdate;

  end;

var
  FRpt_Tutup_Buku: TFRpt_Tutup_Buku;

implementation

{$R *.dfm}

uses UMy_Function, UDataModule, UPengajuanApproval_JurnalTrans;

procedure TFRpt_Tutup_Buku.DxRefreshClick(Sender: TObject);
var q:TUniQuery;
begin
  mm:=cbBulan.ItemIndex;
  yy:=spTahun.EditValue;
 DBGridEh1.StartLoadingStatus();
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
                      ' select account_code2,0,'+QuotedStr(spTahun.EditValue)+','+QuotedStr(inttostr(cbBulan.ItemIndex))+' '+
                      ' from t_ak_account_sub';
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
      with QTutup_Buku do
         begin
           Close;
           sql.Clear;
          sql.Text:='select account_code,account_name,trans_year,trans_month,sum(saldo_d) saldo_d,sum(saldo_k) saldo_k,sum(trdb) trdb,sum(trkd) trkd,sum(dbend) dbend,sum(kdend) kdend'+
          ' from (select *,case when posisi_dk=''D'' then saldo_d+trdb-trkd else 0 end dbend,case when posisi_dk=''K'' then coalesce(saldo_k+trkd-trdb::NUMERIC,0) else 0 end kdend'+
          ' from (SELECT case when taa.posisi_dk=''D'' then  coalesce(sum(balance)::int, 0) else 0 end saldo_d, case when taa.posisi_dk=''K'' then coalesce(sum(balance)::int, 0) else 0 end saldo_k,'+
          ' taa.account_code2, case when status_dk=''D'' then sum(gl.amount) else 0 end  trdb,case when status_dk=''K''  then sum(gl.amount) else 0 end trkd, taa.account_name,trans_year,'+
          ' trans_month,taa.account_code,taa.posisi_dk,gl.status_dk FROM (select * from t_ak_account_balance WHERE trans_year='+QuotedStr(dm.Qtemp2['trans_year'])+' and '+
          ' trans_month='+QuotedStr(dm.Qtemp2['trans_month'])+')taab RIGHT JOIN  (select a.account_code,a.account_code2,b.account_name,a.posisi_dk from t_ak_account_sub a'+
          ' INNER JOIN t_ak_account b on a.account_code=b.code) taa on taab.account_code=taa.account_code2 '+
          ' left join (select * from t_general_ledger_real where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
          ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+') gl on taa.account_code2=gl.account_code  '+
          ' GROUP BY taa.account_code2,taa.account_name,trans_year,trans_month,taa.posisi_dk,gl.status_dk,taa.account_code)a  '+
          ' )x GROUP BY account_code,account_name,trans_year,trans_month order by account_code asc ';
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
        with QTutup_Buku do
           begin
             Close;
             sql.Clear;
            sql.Text:='select account_code,account_name,trans_year,trans_month,sum(saldo_d) saldo_d,sum(saldo_k) saldo_k,sum(trdb) trdb,sum(trkd) trkd,sum(dbend) dbend,sum(kdend) kdend'+
            ' from (select *,case when posisi_dk=''D'' then saldo_d+trdb-trkd else 0 end dbend,case when posisi_dk=''K'' then coalesce(saldo_k+trkd-trdb::NUMERIC,0) else 0 end kdend'+
            ' from (SELECT case when taa.posisi_dk=''D'' then  coalesce(sum(balance)::int, 0) else 0 end saldo_d, case when taa.posisi_dk=''K'' then coalesce(sum(balance)::int, 0) else 0 end saldo_k,'+
            ' taa.account_code2, case when status_dk=''D'' then sum(gl.amount) else 0 end  trdb,case when status_dk=''K''  then sum(gl.amount) else 0 end trkd, taa.account_name,trans_year,'+
            ' trans_month,taa.account_code,taa.posisi_dk,gl.status_dk FROM (select * from t_ak_account_balance WHERE trans_year='+QuotedStr(dm.Qtemp['trans_year'])+' and '+
            ' trans_month='+QuotedStr(dm.Qtemp['trans_month'])+')taab RIGHT JOIN  (select a.account_code,a.account_code2,b.account_name,a.posisi_dk from t_ak_account_sub a'+
            ' INNER JOIN t_ak_account b on a.account_code=b.code) taa on taab.account_code=taa.account_code2 '+
            ' left join (select * from t_general_ledger_real where extract(year from trans_date) = '+QuotedStr(spTahun.EditValue)+''+
            ' and extract(month from trans_date) = '+QuotedStr(inttostr(cbBulan.ItemIndex))+') gl on taa.account_code2=gl.account_code  '+
            ' GROUP BY taa.account_code2,taa.account_name,trans_year,trans_month,taa.posisi_dk,gl.status_dk,taa.account_code)a  '+
            ' )x GROUP BY account_code,account_name,trans_year,trans_month order by account_code asc';
             open;
           end;
      end;
      DBGridEh1.FinishLoadingStatus();
end;

procedure TFRpt_Tutup_Buku.FormShow(Sender: TObject);
begin
  spTahun.EditValue := YearOf(Now);
  cbBulan.ItemIndex:= MonthOf(Now);
  dtmulai.EditValue:=FormatDateTime('dd-mm-yyy',Now());
  DtSelesai.EditValue:=FormatDateTime('dd-mm-yyy',Now());
end;

initialization
RegisterClass(TFRpt_Tutup_Buku);

end.
