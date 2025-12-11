unit URpt_Rekap_Persendiaan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableEh, frxClass, frxDBSet, MemDS,
  DBAccess, Uni, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  DataDriverEh, RzCmboBx, Vcl.ComCtrls, dxSkinsCore, dxSkinBasic, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel, cxSpinEdit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, dxRibbon, dxBar, cxBarEditItem, cxClasses,cxTextEdit,
  dxBarExtItems, Vcl.Samples.Spin;

type
  TFRpt_Rekap_Persediaan = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    DtMulai: TRzDateTimeEdit;
    DtSelesai: TRzDateTimeEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    Rpt: TfrxReport;
    Qstokawal: TUniQuery;
    DsMaterial: TDataSource;
    DBRekap_Persediaan: TfrxDBDataset;
    DBGridEh1: TDBGridEh;
    DsPersediaan: TDataSource;
    QInOut: TUniQuery;
    Qharga: TUniQuery;
    Label1: TLabel;
    Label4: TLabel;
    QPersBahan: TUniQuery;
    DSPersBahan: TDataSource;
    DbPersBahan: TfrxDBDataset;
    Qpersediaan: TUniQuery;
    RzBitBtn1: TRzBitBtn;
    dbpersediaan: TfrxDBDataset;
    frxDBPersed_jadi: TfrxDBDataset;
    QPersed_jadi: TUniQuery;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    SpTahun: TcxBarEditItem;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    CbBulan2: TComboBox;
    ProgressBar1: TProgressBar;
    CbCategory: TRzComboBox;
    Edit1: TEdit;
    dxBarSpinEdit1: TdxBarSpinEdit;
    Sptahun2: TSpinEdit;
    procedure BBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Autonumber;
  end;

//var
Function  FRpt_Rekap_Persediaan: TFRpt_Rekap_Persediaan;

implementation

{$R *.dfm}

uses UMainmenu, UDataModule, UMy_Function;
var
  realfrptrp : TFRpt_Rekap_Persediaan;
  var  EditNo,yr,Status,bln,thn: string;
       row: integer; number:real;
// implementasi function
function frpt_rekap_persediaan: TFRpt_Rekap_Persediaan;
begin
  if realfrptrp<> nil then
    FRpt_Rekap_Persediaan:= realfrptrp
  else
    Application.CreateForm(TFRpt_Rekap_Persediaan, Result);
end;

procedure TFRpt_Rekap_Persediaan.Autonumber;
  var i      : integer;
    urut   : integer;
    mt,dy,noSJ,noEX ,yn : string;
    yy,d,M : word;
    code   : string;
    //urutan   : string;
    maxmy  : string;
begin
(*Find encode of the date*)
 DecodeDate(DtMulai.Date, yy,M,d );
 yr:=intTostr(yy);
 yn:=copy(yr,3,2);
 mt:=IntToStr(M);
 dy:=IntToStr(d);
 (*looking for max mm/yy*)
 //maxmy:= (IntToRoman(strToint(mt)))+'/'+yn;
 thn:=FormatDateTime('yyy',DtMulai.Date);
 bln:=FormatDateTime('mm',DtMulai.Date);
 with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select max(right(LEFT(trans_no,6),3)) urut from t_sa_persediaan where trans_year='+QuotedStr(Sptahun2.Text);
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
  EditNo:='SA/'+CODE+ '/'+Sptahun2.Text+'/' + Kd_SBU;
 // Edit1.Text:=EditNo;
 //ShowMessage(editno);
end;


procedure TFRpt_Rekap_Persediaan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFRpt_Rekap_Persediaan.dxBarLargeButton1Click(Sender: TObject);
begin
 with Qpersediaan do
  begin
    Close;
    sql.Clear;
  //  SQL.Text:='select * from "vrekap_persediaan" where trans_year='+QuotedStr(Sptahun2.Text)+' and trans_month='+QuotedStr(inttostr(CbBulan2.ItemIndex)) ;
    sql.Text:='select * from  f_persediaan('+QuotedStr(Sptahun2.Text)+','+QuotedStr(inttostr(CbBulan2.ItemIndex))+')';
    open;
  end;
 { with dm.Qtemp1 do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_sa_persediaan where trans_year='+QuotedStr(Sptahun2.Text)+' and trans_month='+QuotedStr(inttostr(CbBulan2.ItemIndex));
    open;
  end;
  if dm.Qtemp1.RecordCount=0 then
  begin
    Autonumber;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='insert into t_sa_persediaan(trans_year,trans_month,trans_no,created_by)values(:tr_year,:tr_month,:trans_no,:cr_by)';
        ParamByName('tr_year').value:=Sptahun2.text;
        ParamByName('tr_month').value:=inttostr(CbBulan2.ItemIndex);
        ParamByName('trans_no').value:=EditNo;
        ParamByName('cr_by').AsString:=Nm;
      ExecSQL;
    end;
    Qpersediaan.First;
    while not Qpersediaan.eof do
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='insert into t_sa_persediaan_det(item_code,trans_no,qty,price,unit)values(:item_code,:trans_no,:qty,:price,:unit)';
          ParamByName('item_code').value:=Qpersediaan['item_code'];
          ParamByName('trans_no').value:=EditNo;
          ParamByName('qty').value:=Qpersediaan['qty_end'];
          ParamByName('price').AsString:=Qpersediaan['price_end'];
          ParamByName('unit').AsString:=qpersediaan['unit'];
        ExecSQL;
        Qpersediaan.Next;
      end;
    end;
  end;
  if dm.Qtemp1.RecordCount=1 then
  begin
    EditNo:=dm.Qtemp1['trans_no'];
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='update t_sa_persediaan set trans_year=:tr_year,trans_month=:tr_month,change_by=:cr_by where trans_no=:trans_no';
        ParamByName('tr_year').value:=Sptahun2.text;
        ParamByName('tr_month').value:=inttostr(CbBulan2.ItemIndex);
        ParamByName('trans_no').value:=EditNo;
        ParamByName('cr_by').AsString:=Nm;
      ExecSQL;
    end;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='delete from t_sa_persediaan_det where trans_no='+QuotedStr(EditNo);
      ExecSQL;
    end;
    Qpersediaan.First;
    while not Qpersediaan.eof do
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='insert into t_sa_persediaan_det(item_code,trans_no,qty,price,unit)values(:item_code,:trans_no,:qty,:price,:unit)';
          ParamByName('item_code').value:=Qpersediaan['item_code'];
          ParamByName('trans_no').value:=EditNo;
          ParamByName('qty').value:=Qpersediaan['qty_end'];
          ParamByName('price').AsString:=Qpersediaan['price_end'];
          ParamByName('unit').AsString:=qpersediaan['unit'];
        ExecSQL;
        Qpersediaan.Next;
      end;
    end;
  end;}
    dm.QPerusahaan.Open;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_persediaan.Fr3');
    SetMemo(Rpt,'mpt',' '+dm.qperusahaan['company_name']);
    SetMemo(Rpt,'mbln',' '+CbBulan2.Text+' - '+Sptahun2.Text);
    Rpt.ShowReport();
end;

procedure TFRpt_Rekap_Persediaan.DxRefreshClick(Sender: TObject);
begin
  with Qpersediaan do
  begin
    Close;
    sql.Clear;
  //  SQL.Text:='select * from "vrekap_persediaan" where trans_year='+QuotedStr(Sptahun2.Text)+' and trans_month='+QuotedStr(inttostr(CbBulan2.ItemIndex)) ;
    sql.Text:='select * from  f_persediaan('+QuotedStr(Sptahun2.Text)+','+QuotedStr(inttostr(CbBulan2.ItemIndex))+')';
    open;
  end;
  with dm.Qtemp1 do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_sa_persediaan where trans_year='+QuotedStr(Sptahun2.Text)+' and trans_month='+QuotedStr(inttostr(CbBulan2.ItemIndex));
    open;
  end;
  if dm.Qtemp1.RecordCount=0 then
  begin
    Autonumber;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='insert into t_sa_persediaan(trans_year,trans_month,trans_no,created_by)values(:tr_year,:tr_month,:trans_no,:cr_by)';
        ParamByName('tr_year').value:=Sptahun2.text;
        ParamByName('tr_month').value:=inttostr(CbBulan2.ItemIndex);
        ParamByName('trans_no').value:=EditNo;
        ParamByName('cr_by').AsString:=Nm;
      ExecSQL;
    end;
    Qpersediaan.First;
    while not Qpersediaan.eof do
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='insert into t_sa_persediaan_det(item_code,trans_no,qty,price,unit)values(:item_code,:trans_no,:qty,:price,:unit)';
          ParamByName('item_code').value:=Qpersediaan['item_code'];
          ParamByName('trans_no').value:=EditNo;
          ParamByName('qty').value:=Qpersediaan['qty_end'];
          ParamByName('price').AsString:=Qpersediaan['price_end'];
          ParamByName('unit').AsString:=qpersediaan['unit'];
        ExecSQL;
        Qpersediaan.Next;
      end;
    end;
  end;
  if dm.Qtemp1.RecordCount=1 then
  begin
    EditNo:=dm.Qtemp1['trans_no'];
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='update t_sa_persediaan set trans_year=:tr_year,trans_month=:tr_month,change_by=:cr_by where trans_no=:trans_no';
        ParamByName('tr_year').value:=Sptahun2.text;
        ParamByName('tr_month').value:=inttostr(CbBulan2.ItemIndex);
        ParamByName('trans_no').value:=EditNo;
        ParamByName('cr_by').AsString:=Nm;
      ExecSQL;
    end;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='delete from t_sa_persediaan_det where trans_no='+QuotedStr(EditNo);
      ExecSQL;
    end;
    Qpersediaan.First;
    while not Qpersediaan.eof do
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='insert into t_sa_persediaan_det(item_code,trans_no,qty,price,unit)values(:item_code,:trans_no,:qty,:price,:unit)';
          ParamByName('item_code').value:=Qpersediaan['item_code'];
          ParamByName('trans_no').value:=EditNo;
          ParamByName('qty').value:=Qpersediaan['qty_end'];
          ParamByName('price').AsString:=Qpersediaan['price_end'];
          ParamByName('unit').AsString:=qpersediaan['unit'];
        ExecSQL;
        Qpersediaan.Next;
      end;
    end;
  end;
end;

procedure TFRpt_Rekap_Persediaan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//Dm.Koneksi.Close;
  Action:=cafree;
end;

procedure TFRpt_Rekap_Persediaan.FormCreate(Sender: TObject);
begin
  realfrptrp:=self;
 { if SpTahun.Properties is TcxTextEditProperties then
begin
  TcxTextEditProperties(cxBarEditItem1.Properties).ImmediatePost := False;
  TcxTextEditProperties(cxBarEditItem1.Properties).ReadOnly := False;
  TcxTextEditProperties(cxBarEditItem1.Properties).UseNullString := False;
end;    }

end;

procedure TFRpt_Rekap_Persediaan.FormDestroy(Sender: TObject);
begin
  realfrptrp:=nil;
end;

procedure TFRpt_Rekap_Persediaan.FormShow(Sender: TObject);
begin
  SpTahun2.Value:=strtoint(FormatDateTime('yyyy',now));
end;

procedure TFRpt_Rekap_Persediaan.RzBitBtn1Click(Sender: TObject);
begin
  Autonumber;
end;

initialization
RegisterClass(TFRpt_Rekap_Persediaan);

end.
