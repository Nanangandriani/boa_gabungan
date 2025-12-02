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
  dxRibbonCustomizationForm, dxRibbon, dxBar, cxBarEditItem, cxClasses;

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
    MemData: TMemTableEh;
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
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh1ColEnter(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Autonumber;
    Procedure simpansa;
  end;

//var
Function  FRpt_Rekap_Persediaan: TFRpt_Rekap_Persediaan;

implementation

{$R *.dfm}

uses UMainmenu, UDataModule;
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
    sql.Text:='select max(right(LEFT(notrans,6),3)) urut from t_sa_persediaan where to_char(periode,''yyyy'')='+QuotedStr(thn);
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
  EditNo:='SA/'+CODE+ '/'+yn+'/' + Kd_SBU;
 // Edit1.Text:=EditNo;
end;


procedure TFRpt_Rekap_Persediaan.simpansa;
var tgl,tgl2:string;
begin
tgl:=FormatDateTime('yyyy-mm-dd',DtMulai.Date);
tgl2:=FormatDateTime('yyyy-mm-dd',DtSelesai.Date);
//MemData.EmptyTable;
 with dm.Qtemp3 do
  begin
    close;
    sql.Clear;
  //  sql.Text:='select * from t_sa_persediaan where periode='+QuotedStr(tgl)+' and periode2='+QuotedStr(tgl2)+' and category='+QuotedStr(CbCategory.Text)+'';
    ExecSQL;
  end;
    if DM.Qtemp3.RecordCount=0 then
    begin
      Autonumber;
      with DM.Qtemp2 do
      begin
        close;
        sql.Clear;
        sql.Text:='insert into t_sa_persediaan(notrans,periode,periode2,category)values(:notrans,:periode,:periode2,:category)';
                ParamByName('notrans').AsString:=Edit1.Text;
                ParamByName('periode').AsString:=tgl;
                ParamByName('periode2').AsString:=tgl2;
                ParamByName('category').AsString:=CbCategory.Text;
                Execute;
      end;
      MemData.First;
      row:=0;
      ProgressBar1.Min := 0;
      ProgressBar1.Max := MemData.RecordCount;
      while not MemData.eof do
        begin
        with dm.qtemp do
          begin
            close;
            sql.clear;
            sql.text:='INSERT INTO t_sa_persediaan_det(notrans,kd_material,qty,harga,qtypk,hargapk,harga_satuan)VALUES'+
            '(:notrans,:kd_material,:qty,:harga,:qtypk,:hargapk,:harga_satuan)';
            ParamByName('kd_material').AsString:=MemData['kd_material_stok'];
            ParamByName('notrans').AsString:=Edit1.Text;
            ParamByName('qty').AsString:=MemData['saldoakhir'];
            ParamByName('harga').AsString:=MemData['hargaakhir'];
            ParamByName('qtypk').AsString:=MemData['keluar'];
            ParamByName('hargapk').AsString:=MemData['hargakeluar'];
            ParamByName('harga_satuan').AsString:=MemData['hargarata2'];
            ExecSQL;
          end;
          ProgressBar1.Position:=row;
          MemData.Next;
          row:=row+10;
        end;
    end;
    if DM.Qtemp3.RecordCount<>0 then
    begin
      Edit1.Text:=DM.Qtemp3['notrans'];
      with DM.Qtemp2 do
      begin
        close;
        sql.Clear;
        sql.Text:='Update t_sa_persediaan set periode=:periode,periode2=:periode2,category=:category where notrans=:notrans';
                  ParamByName('notrans').AsString:=Edit1.Text;
                  ParamByName('periode').AsString:=tgl;
                  ParamByName('periode2').AsString:=tgl2;
                  ParamByName('category').AsString:=CbCategory.Text;
                  Execute;
      end;
      with DM.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='delete from t_sa_persediaan_det where notrans=:notrans';
                  ParamByName('notrans').AsString:=Edit1.Text;
                  Execute;
      end;
        MemData.First;
        row:=0;
        ProgressBar1.Min := 0;
        ProgressBar1.Max := MemData.RecordCount;
        while not MemData.eof do
          begin
          with dm.qtemp do
            begin
              close;
              sql.clear;
              sql.text:='INSERT INTO t_sa_persediaan_det(notrans,kd_material,qty,harga,qtypk,hargapk,harga_satuan)VALUES'+
              '(:notrans,:kd_material,:qty,:harga,:qtypk,:hargapk,:harga_satuan)';
              ParamByName('kd_material').AsString:=MemData['kd_material_stok'];
              ParamByName('notrans').AsString:=Edit1.Text;
              ParamByName('qty').AsString:=MemData['saldoakhir'];
              ParamByName('harga').AsString:=MemData['hargaakhir'];
              ParamByName('qtypk').AsString:=MemData['keluar'];
              ParamByName('hargapk').AsString:=MemData['hargakeluar'];
              ParamByName('harga_satuan').AsString:=MemData['hargarata2'];
              ExecSQL;
            end;
            ProgressBar1.Position:=row;
            MemData.Next;
            row:=row+10;
          end;
    end;
end;

procedure TFRpt_Rekap_Persediaan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFRpt_Rekap_Persediaan.DBGridEh1CellClick(Column: TColumnEh);
begin
  if ((CbCategory.Text<>'PROMOSI') AND (CbCategory.Text<>'PRODUK JADI'))then
  BEGIN
    MemData.Edit;
    MemData['totalstok']:=MemData['stokawal']+MemData['masuk'];
    MemData['saldoakhir']:=MemData['totalstok']-MemData['keluar'];
    MemData['hargaawal']:=MemData['stokawal']*MemData['harga'];
    MemData['hargamasuk']:=MemData['masuk']*MemData['harga'];
    MemData['hargastok']:=MemData['totalstok']*MemData['harga'];
    if MemData['hargastok']=0 then MemData['hargarata2']:=0 else
    MemData['hargarata2']:=MemData['hargastok']/MemData['totalstok'];
    MemData['hargakeluar']:=MemData['keluar']*MemData['harga'];
    MemData['hargaakhir']:=MemData['saldoakhir']*MemData['harga'];
    MemData.Post;
  END;
end;

procedure TFRpt_Rekap_Persediaan.DBGridEh1ColEnter(Sender: TObject);
begin
  if ((CbCategory.Text<>'PROMOSI') AND (CbCategory.Text<>'PRODUK JADI'))then
  BEGIN
    MemData.Edit;
    MemData['totalstok']:=MemData['stokawal']+MemData['masuk'];
    MemData['saldoakhir']:=MemData['totalstok']-MemData['keluar'];
    MemData['hargaawal']:=MemData['stokawal']*MemData['harga'];
    MemData['hargamasuk']:=MemData['masuk']*MemData['harga'];
    MemData['hargastok']:=MemData['totalstok']*MemData['harga'];
    if MemData['hargastok']=0 then MemData['hargarata2']:=0 else
    MemData['hargarata2']:=MemData['hargastok']/MemData['totalstok'];
    MemData['hargakeluar']:=MemData['keluar']*MemData['harga'];
    MemData['hargaakhir']:=MemData['saldoakhir']*MemData['harga'];
    MemData.Post;
  END;
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
end;

procedure TFRpt_Rekap_Persediaan.FormDestroy(Sender: TObject);
begin
  realfrptrp:=nil;
end;

initialization
RegisterClass(TFRpt_Rekap_Persediaan);

end.
