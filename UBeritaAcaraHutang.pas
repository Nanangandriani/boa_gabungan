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
      sql.Text:=' SELECT supplier_code as "kodesup", supplier_name as namasup, '+
                ' COALESCE(SUM(sisa_hutang), 0) as sisa_hutang from '+
                ' (select * from t_supplier a LEFT JOIN t_item_type b on a.header_code=b.acc_code_pemb '+
                ' where type='+QuotedStr(Jenis_Hutang.Text)+' )a '+
                ' LEFT JOIN (SELECT * from get_details_debt ('+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+')) b on a.supplier_code=b.kodesup '+
                ' LEFT JOIN (SELECT trans_no, faktur_no, faktur_date  from t_purchase_invoice  '+
                ' union all  SELECT faktur_no as trans_no, faktur_no, date as faktur_date '+
                ' from t_initial_balance_debt_det)  c on b.trans_no=c.trans_no '+
                //' or b.faktur_no=c.faktur_no '+
                ' GROUP BY supplier_code,supplier_name '+
                ' HAVING COALESCE(SUM(sisa_hutang), 0) > 0 '+
                ' ORDER BY supplier_code,supplier_name asc; ';
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
      sql.Text:=' SELECT supplier_code as "kodesup", supplier_name as namasup, '+
                ' COALESCE(SUM(sisa_hutang), 0) as sisa_hutang from '+
                ' (select * from t_supplier a LEFT JOIN t_item_type b on a.header_code=b.acc_code_pemb '+
                ' where type='+QuotedStr(Jenis_Hutang.Text)+' )a '+
                ' LEFT JOIN (SELECT * from get_details_debt ('+QuotedStr(formatdatetime('yyyy-mm-dd',dp1.EditValue))+')) b on a.supplier_code=b.kodesup '+
                ' LEFT JOIN (SELECT trans_no, faktur_no, faktur_date  from t_purchase_invoice  '+
                ' union all  SELECT faktur_no as trans_no, faktur_no, date as faktur_date '+
                ' from t_initial_balance_debt_det)  c on b.trans_no=c.trans_no or b.faktur_no=c.faktur_no '+
                ' GROUP BY supplier_code,supplier_name '+
                ' HAVING COALESCE(SUM(sisa_hutang), 0) > 0 '+
                ' ORDER BY supplier_code,supplier_name asc; ';
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
