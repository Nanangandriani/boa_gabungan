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
  Vcl.StdCtrls,DateUtils, Data.DB, MemDS, DBAccess, Uni;

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

uses UMy_Function, UDataModule;

procedure TFRpt_Tutup_Buku.DxRefreshClick(Sender: TObject);
begin
  mm:=cbBulan.ItemIndex;
  yy:=spTahun.EditValue;
{  tgl1:=encodedate(yy,mm,1);
  tgl2:=encodedate(yy,mm,LastDayOfMonth(yy,mm));
  //bln_akhir:=encodedate(yy,mm-1,LastDayOfMonth(yy,mm-1));
  //tgl2:=encodedate(yy,12,LastDayOfMonth(yy,12));

  if mm=1 then
  bln_akhir:=EncodeDate(yy-1,12,LastDayOfMonth(yy,mm-1))
  else
  bln_akhir:=EncodeDate(yy,mm-1,LastDayOfMonth(yy,mm-1));   }

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
      with dm.Qtemp2 do
      begin
        close;
        sql.Clear;
        sql.Text:='select trans_year,trans_month from t_ak_account_balance  where trans_year='+QuotedStr(inttostr(strtoint(spTahun.EditValue)-1))+' '+
        ' and trans_month <=''12'' GROUP BY trans_year,trans_month order by trans_month desc limit 1';
        Open;
      end;
      with QTutup_Buku do
         begin
           Close;
           sql.Clear;
           sql.Text:='select *,saldo_d+trdb dbend,saldo_k+trkd kdend from (SELECT case when taa.posisi_dk=''D'' then sum(balance) else 0 end saldo_d,'+
           ' case when taa.posisi_dk=''K'' then sum(balance) else 0 end saldo_k,taa.account_code,'+
           ' case when sum(c.db)>0 then sum(c.db) else 0 end  trdb,case when sum(c.kd)>0 then sum(c.kd) else 0 end trkd,'+
           ' taa.account_name,trans_year,trans_month FROM t_ak_account_balance taab INNER JOIN '+
           ' (select a.account_code,a.account_code2,b.account_name,a.posisi_dk from t_ak_account_sub a '+
           ' INNER JOIN t_ak_account b on a.account_code=b.code) taa on taab.account_code=taa.account_code2'+
           ' LEFT JOIN "VTrans_JournalReal" c on taa.account_code =c.account_code'+
           ' WHERE trans_year='+QuotedStr(dm.Qtemp2['trans_year'])+' and trans_month='+QuotedStr(dm.Qtemp2['trans_month'])+' '+
           ' GROUP BY taa.account_code,taa.account_name,trans_year,trans_month,taa.posisi_dk)a '+
           ' order by account_code asc';
           open;
         end;
    end;
    // dm.Qtemp.RecordCount=0
      if dm.Qtemp.RecordCount<>0 then
      begin
        with QTutup_Buku do
         begin
           Close;
           sql.Clear;
           sql.Text:='select *,saldo_d+trdb dbend,saldo_k+trkd kdend from (SELECT case when taa.posisi_dk=''D'' then sum(balance) else 0 end saldo_d,'+
           ' case when taa.posisi_dk=''K'' then sum(balance) else 0 end saldo_k,taa.account_code,'+
           ' case when sum(c.db)>0 then sum(c.db) else 0 end  trdb,case when sum(c.kd)>0 then sum(c.kd) else 0 end trkd,'+
           ' taa.account_name,trans_year,trans_month FROM t_ak_account_balance taab INNER JOIN '+
           ' (select a.account_code,a.account_code2,b.account_name,a.posisi_dk from t_ak_account_sub a '+
           ' INNER JOIN t_ak_account b on a.account_code=b.code) taa on taab.account_code=taa.account_code2'+
           ' LEFT JOIN "VTrans_JournalReal" c on taa.account_code =c.account_code'+
           ' WHERE trans_year='+QuotedStr(dm.Qtemp['trans_year'])+' and trans_month<'+QuotedStr(dm.Qtemp['trans_month'])+'  '+
           ' GROUP BY taa.account_code,taa.account_name,trans_year,trans_month,taa.posisi_dk)a'+
            ' order by account_code asc';
           open;
         end;
      end;


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
