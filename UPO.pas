unit UPO;

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
  dxSkinXmas2008Blue, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxCore, dxRibbonSkins, dxRibbonCustomizationForm, dxRibbon, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxBar, cxClasses, DataDriverEh, frxClass, frxDBSet,
  MemDS, DBAccess, Uni, MemTableEh, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ExtCtrls, RzPanel,
  Vcl.ComCtrls, Vcl.StdCtrls, RzButton;

type
  TFPO = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
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
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridPO: TDBGridEh;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label2: TLabel;
    DTP2: TDateTimePicker;
    Cari: TRzBitBtn;
    RptPO: TfrxReport;
    Qrptdetailpo2: TUniQuery;
    Dbrpt: TfrxDBDataset;
    DbRptDetailpo: TfrxDBDataset;
    DsRptPO: TDataSource;
    QRptPO: TUniQuery;
    DsDetailPo: TDataSource;
    Qdetailpo: TUniQuery;
    DsdPO: TDataSetDriverEh;
    DsPo: TDataSource;
    Mempo: TMemTableEh;
    QPo: TUniQuery;
    DBGridEh3: TDBGridEh;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActPrintExecute(Sender: TObject);
    procedure ActCloseExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure CariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure clear;
 //   procedure load;
    Procedure PrintPO;
    Procedure PrintPodmlt;
  end;

function
  FPO: TFPO;

var
  realPO: TFPO;

implementation

{$R *.dfm}

uses UNew_PO, UDataModule,UMainMenu;
// implementasi function
function FPO: TFPO;
begin
  if realPO <> nil then
    FPO:= realPO
  else
    Application.CreateForm(TFPO, Result);
end;

procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);
var
  memo: TfrxMemoView;
begin
  memo := aReport.FindObject(aMemoName) as TfrxMemoView;
  if memo <> nil then
    memo.Text := aText;
end;

// Terbilang Indonesia
function Terbilang(sValue: string):string;
const
Angka : array [1..20] of string =
('', 'Satu', 'Dua', 'Tiga', 'Empat',
'Lima', 'Enam', 'Tujuh', 'Delapan',
'Sembilan', 'Sepuluh', 'Sebelas',
'Duabelas', 'Tigabelas', 'Empatbelas',
'Limabelas', 'Enambelas', 'Tujuhbelas',
'Delapanbelas', 'Sembilanbelas');
sPattern: string = '000000000000000';
var
S,kata : string;
Satu, Dua, Tiga, Belas, Gabung: string;
Sen, Sen1, Sen2: string;
Hitung : integer;
one, two, three: integer;
begin
One := 4;
Two := 5;
Three := 6;
Hitung := 1;
Kata := '';
S := copy(sPattern, 1, length(sPattern) - length(trim(sValue))) + sValue;
Sen1 := Copy(S, 14, 1);
Sen2 := Copy(S, 15, 1);
Sen := Sen1 + Sen2;
while Hitung < 5 do
begin
Satu := Copy(S, One, 1);
Dua := Copy(S, Two, 1);
Tiga := Copy(S, Three, 1);
Gabung := Satu + Dua + Tiga;

if StrToInt(Satu) = 1 then
Kata := Kata + 'Seratus '
else
if StrToInt(Satu) > 1 Then
Kata := Kata + Angka[StrToInt(satu)+1] + ' Ratus ';

if StrToInt(Dua) = 1 then
begin
Belas := Dua + Tiga;
Kata := Kata + Angka[StrToInt(Belas)+1];
end
else
if StrToInt(Dua) > 1 Then
Kata := Kata + Angka[StrToInt(Dua)+1] + ' Puluh ' +
Angka[StrToInt(Tiga)+1]
else
if (StrToInt(Dua) = 0) and (StrToInt(Tiga) > 0) Then
begin
if ((Hitung = 3) and (Gabung = '001')) or
((Hitung = 3) and (Gabung = ' 1')) then
Kata := Kata + 'Seribu '
else
Kata := Kata + Angka[StrToInt(Tiga)+1];
end;
if (hitung = 1) and (StrToInt(Gabung) > 0) then
Kata := Kata + ' Milyar '
else
if (Hitung = 2) and (StrToInt(Gabung) > 0) then
Kata := Kata + ' Juta '
else
if (Hitung = 3) and (StrToInt(Gabung) > 0) then
begin
if (Gabung = '001') or (Gabung = ' 1') then
Kata := Kata + ''
else
Kata := Kata + ' Ribu ';
end;
Hitung := Hitung + 1;
One := One + 3;
Two := Two + 3;
Three := Three + 3;
end;
if length(Kata) > 1 then Kata := Kata;
Result := Kata;
end;

// Fungsi Untuk Convert Angka Jadi Huruf
function ConvKeHuruf(inp: string): string;
var
a,b,c,Poskoma,PosTitik : integer;
temp,angka,dpnKoma,BlkKoma : string;
AdaKoma: boolean;
begin
  PosKoma:= pos(',',Inp);
  PosTitik:= pos('.',Inp);
    if (Poskoma<>0) or (posTitik<> 0) then
        begin
        adaKoma:= true;
        if PosKoma= 0 then posKoma:= PosTitik;
        end else
        begin
        adakoma:= False;
        DpnKoma:= inp;
        end;
// Jika ada Koma
if adakoma then
   begin
    dpnkoma:= copy(inp,1,posKoma-1);
    blkKoma:= Copy(inp,posKoma+1,length(inp)-posKoma);
    if trim(DpnKoma)='0' then
       temp:= 'Nol'+ ' Koma ' + terbilang(blkKoma)
        else
          temp:= Terbilang(dpnKoma)+ ' Koma ' + Terbilang(blkKoma);
// Jika Tidak ada Koma
   end else begin
   temp:=Terbilang(dpnKoma);
   end;
   Result:= temp;
end;

// Fucntion Untuk Bahasa Inggris
const
  Digits: array [1 .. 9] of string = (
    'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine');

  Teens: array [1 .. 9] of string = (
    'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen');

  TenTimes: array [1 .. 9] of string = (
    'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety');

function DoTriplet(TheNumber: Integer): string;
var
  Digit, Num: Integer;
begin
  Result := '';
  Num := TheNumber mod 100;
  if (Num > 10) and (Num < 20) then
  begin
    Result := Teens[Num - 10];
    Num := TheNumber div 100;
  end
  else
  begin
    Num := TheNumber;
    Digit := Num mod 10;
    Num := Num div 10;
    if Digit > 0 then Result := Digits[Digit];
    Digit := Num mod 10;
    Num := Num div 10;
    if Digit > 0 then Result := TenTimes[Digit] + ' ' + Result;
    Result := Trim(Result);
  end;
  Digit := Num mod 10;
 // if (Result <> '') and (Digit > 0) then Result := '- ' + Result;
  if Digit > 0 then Result := Digits[Digit] + ' hundred ' + Result;
  Result := Trim(Result);
end;

function NumberInWords(TheNumber: Integer): string;
var
  Num, Triplet, Pass: Integer;
begin
  if TheNumber < 0 then Result := 'Minus ' + NumberInWords(-TheNumber)
  else
  begin
    Result := '';
    Num := TheNumber;
    if Num > 999999999 then
        raise Exception.Create('Can''t express more than 999,999,999 in words');
    for Pass := 1 to 3 do
    begin
      Triplet := Num mod 1000;
      Num := Num div 1000;
      if Triplet > 0 then
      begin
        if (Pass > 1) and (Result <> '') then Result := ' ' + Result;
        case Pass of
          2: Result := ' thousand' + Result;
          3: Result := ' million' + Result;
        end;
        Result := Trim(DoTriplet(Triplet) + Result);
      end;
    end;
  end;
end;

Procedure TFPO.PrintPO;
begin
  if DBGridPO.Fields[15].AsString='LOKAL' then
    begin
      QRptPO.Close;
      with QRptPO do
      begin
        close;
        sql.Clear;
        sql.Text:=' SELECT	a.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit,a.wh_code,d.trans_category,'+
                  ' a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph,a.pph_rp, '+
                  ' a.subtotal,a.status,a.grandtotal,sum(a.qty)as qtysum, sum(a.subtotal)as subtotalsum,d.po_date,'+
                  ' d.delivery_date, E.supplier_name,e.address,d.valas,d.remarks,d.delivery2_date,d.po2_no,sumtotal, '+
                  ' c.category_id ,i.wh_name,a.account_pph_code,a.account_ppn_code,d.um_value'+
                  ' FROM t_podetail AS "a" '+
                  ' INNER JOIN t_item_stock AS b ON a.item_stock_code = b.item_stock_code '+
                  ' INNER JOIN t_item AS "c" ON b.item_code = c.item_code  '+
                  ' INNER JOIN t_item_category h on c.category_id=h.category_id '+
                  ' INNER JOIN t_po d on a.po_no=d.po_no '+
                  ' INNER JOIN t_supplier e on d.supplier_code=e.supplier_code '+
                  ' INNER JOIN t_wh i on a.wh_code=i.wh_code  '+
                  ' INNER JOIN (select sum(Grandtotal)as sumtotal,po_no from t_podetail GROUP BY po_no) f on d.po_no=f.po_no '+
                  ' LEFT JOIN t_user g on d.approval=g.user_name'+
                  ' WHERE a.po_no='+QuotedStr(Mempo['po_no'])+''+
                  ' GROUP BY a.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit, '+
                  ' a.wh_code,d.type,a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph, '+
                  ' a.pph_rp,a.subtotal,a.status,a.grandtotal,d.po_date,d.delivery_date, e.supplier_name,e.address,d.valas,'+
                  ' d.remarks,d.delivery2_date,i.wh_name,d.po2_no,sumtotal,c.category_id,g.user_name,d.trans_category ,a.account_pph_code,a.account_ppn_code,d.um_value'+
                  ' Order By a.detail_id asc ';
        ExecSQL;
      end;
      QRptPO.Open;
      Qrptdetailpo2.Open;
      if QRptPO.FieldByName('po_no').AsString=''  then
      begin
         ShowMessage('Maaf data po kosong');
      end
      else
      if ((QRptPO['valas']='IDR') and (QRptPO['trans_category']='PRODUKSI') and (QRptPO['ppn']='0') ) then
      begin
        RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_PONoPPN.Fr3');
       // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
        SetMemo(Rptpo,'MTerbilang',' '+ConvKeHuruf(Qrptdetailpo2['qtysum'])+' ');
        SetMemo(Rptpo,'MTerbilang2',' '+ConvKeHuruf(Qrptpo['sumtotal'])+' Rupiah ');
        RptPO.ShowReport();
      end;
      if ((QRptPO['valas']='IDR') and (QRptPO['trans_category']='PRODUKSI') and (QRptPO['ppn']<>'0') ) then
      begin
        RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_PO.Fr3');
        //TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
        SetMemo(Rptpo,'MTerbilang',' '+ConvKeHuruf(Qrptdetailpo2['qtysum'])+' ');
        SetMemo(Rptpo,'MTerbilang2',' '+ConvKeHuruf(Qrptpo['sumtotal'])+' Rupiah ');
        RptPO.ShowReport();
      end;
      if (QRptPO['valas']='USD') and (QRptPO['trans_category']='PRODUKSI')and (QRptPO['ppn']<>'0') then
      begin
        RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_PO.Fr3');
        //TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
        SetMemo(Rptpo,'MTerbilang',' '+ConvKeHuruf(Qrptdetailpo2['qtysum'])+' ');
        SetMemo(Rptpo,'MTerbilang2',' '+ConvKeHuruf(Qrptpo['sumtotal'])+' US Dolar  ');
        RptPO.ShowReport();
      end;
      if (QRptPO['valas']='USD') and (QRptPO['trans_category']='PRODUKSI') and (QRptPO['ppn']='0') then
      begin
        RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_PONoPPN.Fr3');
        //TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
        SetMemo(Rptpo,'MTerbilang',' '+ConvKeHuruf(Qrptdetailpo2['qtysum'])+' ');
        SetMemo(Rptpo,'MTerbilang2',' '+ConvKeHuruf(Qrptpo['sumtotal'])+' US Dolar  ');
        RptPO.ShowReport();
      end;
      if ((QRptPO['valas']='IDR') and (QRptPO['trans_category']<>'PRODUKSI')and (QRptPO['ppn']<>'0')) then
      begin
        RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_PO.Fr3');
        //TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
        TfrxPictureView(RptPO.FindObject('Sumqty')).Visible:=False;
        SetMemo(Rptpo,'MTerbilang','  ');
        SetMemo(Rptpo,'MTerbilang2','  '+ConvKeHuruf(Qrptpo['sumtotal'])+' Rupiah ');
        RptPO.ShowReport();
      end;
      if ((QRptPO['valas']='IDR') and (QRptPO['trans_category']<>'PRODUKSI') and (QRptPO['ppn']='0')) then
      begin
        RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_PONoPPN.Fr3');
        //TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
        TfrxPictureView(RptPO.FindObject('Sumqty')).Visible:=False;
        SetMemo(Rptpo,'MTerbilang','  ');
        SetMemo(Rptpo,'MTerbilang2','  '+ConvKeHuruf(Qrptpo['sumtotal'])+' Rupiah ');
        RptPO.ShowReport();
      end;
      if (QRptPO['valas']='USD') and (QRptPO['trans_category']<>'PRODUKSI')and (QRptPO['ppn']<>'0') then
      begin
        RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_PO.Fr3');
        //TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
        TfrxPictureView(RptPO.FindObject('Sumqty')).Visible:=False;
        SetMemo(Rptpo,'MTerbilang',' ');
        SetMemo(Rptpo,'MTerbilang2',' '+ConvKeHuruf(Qrptpo['sumtotal'])+' US Dolar  ');
        RptPO.ShowReport();
      end;
      if (QRptPO['valas']='USD') and (QRptPO['trans_category']<>'PRODUKSI') and (QRptPO['ppn']='0') then
      begin
        RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_PONoPPN.Fr3');
        //TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
        TfrxPictureView(RptPO.FindObject('Sumqty')).Visible:=False;
        SetMemo(Rptpo,'MTerbilang',' ');
        SetMemo(Rptpo,'MTerbilang2',' '+ConvKeHuruf(Qrptpo['sumtotal'])+' US Dolar ');
        RptPO.ShowReport();
      end;
    end;
    if DBGridPO.Fields[15].AsString='IMPORT' then
    begin
      QRptPO.Close;
      with QRptPO do
      begin
          close;
          sql.Clear;
          sql.Text:=' SELECT	c.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit,a.wh_code,i.wh_name, '+
                    ' a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph,a.pph_rp, '+
                    ' a.subtotal,a.status,a.grandtotal,sum(a.qty)as qtysum, sum(a.subtotal)as subtotalsum,d.po_date,'+
                    ' d.delivery_date, e.supplier_name,e.address,d.valas,d.remarks,d.delivery2_date,d.po2_no,sumtotal, '+
                    ' c.category_id,g.user_name,d.trans_category,d."type" ,i.wh_name,a.account_pph_code,a.account_ppn_code,d.um_value'+
                    ' FROM t_podetail AS "a" '+
                    ' INNER JOIN t_item_stock AS b ON a.item_stock_code = b.item_stock_code '+
                    ' INNER JOIN t_item AS "c" ON b.item_code = c.item_code '+
                    ' INNER JOIN t_po d on a.po_no=d.po_no '+
                    ' INNER JOIN t_wh i on a.wh_code=i.wh_code '+
                    ' INNER JOIN t_supplier e on d.supplier_code=e.supplier_code '+
                    ' INNER JOIN t_item_category h on c.category_id=h.category_id '+
                    ' INNER JOIN t_wh i on a.wh_code=i.wh_code '+
                    ' INNER JOIN (select sum(Grandtotal)as sumtotal,po_no from t_podetail GROUP BY po_no) f on '+
                    ' d.po_no=f.po_no INNER JOIN t_user g on d.approval=g.user_name '+
                    ' WHERE a.po_no='+QuotedStr(Mempo['po_no'])+''+
                    ' GROUP BY c.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit,a.wh_code,i.wh_name, '+
                    ' a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph, '+
                    ' a.pph_rp,a.subtotal,a.status,a.grandtotal,d.po_date,d.delivery_date,e.supplier_name,e.address,d.valas,'+
                    ' d.remarks,i.wh_name,d.delivery2_date,d.po2_no,sumtotal,c.category_id,g.user_name,d.trans_category,d."type",a.account_pph_code,a.account_ppn_code,d.um_value '+
                    ' ORDER by a.detail_id ASC ';
          ExecSQL;
      end;
      QRptPO.Open;
      Qrptdetailpo2.Open;
      if QRptPO.FieldByName('po_no').AsString=''  then
      begin
        ShowMessage('Maaf data kosong');
      end;
      if QRptPO.FieldByName('nopo').AsString<>''  then
      begin
         if QRptPO['ppn']<>'0' then
         begin
           RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_po_import.Fr3');
          // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
           SetMemo(Rptpo,'MTerbilang',' '+NumberInWords(Qrptdetailpo2['qtysum'])+' ');
           SetMemo(Rptpo,'MTerbilang2',' '+NumberInWords(Qrptpo['sumtotal'])+' US Dolar ');
           RptPO.ShowReport();
         end;
         if QRptPO['ppn']='0' then
         begin
           RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_po_import2.Fr3');
           //TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
           SetMemo(Rptpo,'MTerbilang',' '+NumberInWords(Qrptdetailpo2['qtysum'])+' ');
           SetMemo(Rptpo,'MTerbilang2',' '+NumberInWords(Qrptpo['sumtotal'])+' US Dolar ');
           RptPO.ShowReport();
         end;
      end;
    end;
end;

Procedure TFPO.PrintPodmlt;
begin
    if DBGridPO.Fields[15].AsString='LOKAL' then
    begin
      QRptPO.Close;
      with QRptPO do
      begin
        close;
        sql.Clear;
        sql.Text:=' SELECT	a.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit,a.wh_code,d.trans_category,'+
                  ' a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph,a.pph_rp, '+
                  ' a.subtotal,a.status,a.grandtotal,sum(a.qty)as qtysum, sum(a.subtotal)as subtotalsum,d.po_date,'+
                  ' d.delivery_date, E.supplier_name,e.address,d.valas,d.remarks,d.delivery2_date,d.po2_no,sumtotal, '+
                  ' c.category_id ,i.wh_name,a.account_pph_code,a.account_ppn_code,d.um_value,a.pemb_ppn'+
                  ' FROM t_podetail AS "a" '+
                  ' INNER JOIN t_item_stock AS b ON a.item_stock_code = b.item_stock_code '+
                  ' INNER JOIN t_item AS "c" ON b.item_code = c.item_code  '+
                  ' INNER JOIN t_item_category h on c.category_id=h.category_id '+
                  ' INNER JOIN t_po d on a.po_no=d.po_no '+
                  ' INNER JOIN t_supplier e on d.supplier_code=e.supplier_code '+
                  ' INNER JOIN t_wh i on a.wh_code=i.wh_code  '+
                  ' INNER JOIN (select sum(Grandtotal)as sumtotal,po_no from t_podetail GROUP BY po_no) f on d.po_no=f.po_no '+
                  ' LEFT JOIN t_user g on d.approval=g.user_name'+
                  ' WHERE a.po_no='+QuotedStr(Mempo['po_no'])+''+
                  ' GROUP BY a.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit, '+
                  ' a.wh_code,d.type,a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph, '+
                  ' a.pph_rp,a.subtotal,a.status,a.grandtotal,d.po_date,d.delivery_date, e.supplier_name,e.address,d.valas,'+
                  ' d.remarks,d.delivery2_date,i.wh_name,d.po2_no,sumtotal,c.category_id,g.user_name,d.trans_category '+
                  ' ,a.account_pph_code,a.account_ppn_code,d.um_value,a.pemb_ppn'+
                  ' Order By a.detail_id asc ';
        ExecSQL;
      end;
      QRptPO.Open;
      Qrptdetailpo2.Open;
      if QRptPO.FieldByName('po_no').AsString=''  then
      begin
         ShowMessage('Maaf data po kosong');
      end
      else
        RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_POgb.Fr3');
       // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
      //  SetMemo(Rptpo,'MTerbilang',' '+ConvKeHuruf(Qrptdetailpo2['qtysum'])+' ');
      //  SetMemo(Rptpo,'MTerbilang2',' '+ConvKeHuruf(Qrptpo['sumtotal'])+' Rupiah ');
        RptPO.ShowReport();
    end;
    if DBGridPO.Fields[15].AsString='IMPORT' then
    begin
      QRptPO.Close;
      with QRptPO do
      begin
          close;
          sql.Clear;
          sql.Text:=' SELECT	c.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit,a.wh_code,i.wh_name, '+
                    ' a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph,a.pph_rp, '+
                    ' a.subtotal,a.status,a.grandtotal,sum(a.qty)as qtysum, sum(a.subtotal)as subtotalsum,d.po_date,'+
                    ' d.delivery_date, e.supplier_name,e.address,d.valas,d.remarks,d.delivery2_date,d.po2_no,sumtotal, '+
                    ' c.category_id,g.user_name,d.trans_category,d."type" ,i.wh_name,a.account_pph_code,a.account_ppn_code,d.um_value,a.pemb_ppn'+
                    ' FROM t_podetail AS "a" '+
                    ' INNER JOIN t_item_stock AS b ON a.item_stock_code = b.item_stock_code '+
                    ' INNER JOIN t_item AS "c" ON b.item_code = c.item_code '+
                    ' INNER JOIN t_po d on a.po_no=d.po_no '+
                    ' INNER JOIN t_wh i on a.wh_code=i.wh_code '+
                    ' INNER JOIN t_supplier e on d.supplier_code=e.supplier_code '+
                    ' INNER JOIN t_item_category h on c.category_id=h.category_id '+
                    ' INNER JOIN t_wh i on a.wh_code=i.wh_code '+
                    ' INNER JOIN (select sum(Grandtotal)as sumtotal,po_no from t_podetail GROUP BY po_no) f on '+
                    ' d.po_no=f.po_no INNER JOIN t_user g on d.approval=g.user_name '+
                    ' WHERE a.po_no='+QuotedStr(Mempo['po_no'])+''+
                    ' GROUP BY c.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit,a.wh_code,i.wh_name, '+
                    ' a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph, '+
                    ' a.pph_rp,a.subtotal,a.status,a.grandtotal,d.po_date,d.delivery_date,e.supplier_name,e.address,d.valas,'+
                    ' d.remarks,i.wh_name,d.delivery2_date,d.po2_no,sumtotal,c.category_id,g.user_name,d.trans_category,d."type" ,'+
                    ' a.account_pph_code,a.account_ppn_code,d.um_value,a.pemb_ppn'+
                    ' ORDER by a.detail_id ASC ';
          ExecSQL;
      end;
      QRptPO.Open;
      Qrptdetailpo2.Open;
      if QRptPO.FieldByName('po_no').AsString=''  then
      begin
        ShowMessage('Maaf data kosong');
      end;
      if QRptPO.FieldByName('nopo').AsString<>''  then
      begin
         if QRptPO['ppn']<>'0' then
         begin
           RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_POgb.Fr3');
          // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
           SetMemo(Rptpo,'MTerbilang',' '+NumberInWords(Qrptdetailpo2['qtysum'])+' ');
           SetMemo(Rptpo,'MTerbilang2',' '+NumberInWords(Qrptpo['sumtotal'])+' US Dolar ');
           RptPO.ShowReport();
         end;
         if QRptPO['ppn']='0' then
         begin
       // podmlt    RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\frx_KolektifPOPPN.Fr3');
           RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_POgb.Fr3');
           //TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
           SetMemo(Rptpo,'MTerbilang',' '+NumberInWords(Qrptdetailpo2['qtysum'])+' ');
           SetMemo(Rptpo,'MTerbilang2',' '+NumberInWords(Qrptpo['sumtotal'])+' US Dolar ');
           RptPO.ShowReport();
         end;
      end;
    end;
end;

procedure TFPO.ActCloseExecute(Sender: TObject);
begin
  if messageDlg ('Yakin Close PO No. '+DBGridPO.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Update t_po set status=''False'' and correction_status=''0'' where po_no='+QuotedStr(DBGridPO.Fields[0].AsString);
      Execute;
    end;
    ActROExecute(sender);
    ShowMessage('PO Berhasil di Close');
  end;
end;

procedure TFPO.ActDelExecute(Sender: TObject);
var
  OldNo, NewNo: string;
begin
    OldNo := DBGridPO.Fields[0].AsString;
    NewNo := OldNo + '-DEL';

    if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridPO.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
    begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      //sql.Text:='Delete From t_po where po_no='+QuotedStr(DBGridPO.Fields[0].AsString);
      sql.Text:='Update t_po set po_no=:new_no,deleted_at=now(),deleted_by=:deleted_by where po_no=:old_no';

      ParamByName('new_no').AsString := NewNo;
      parambyname('deleted_by').AsString:=Nm;
      ParamByName('old_no').AsString := OldNo;
      Execute;
    end;
    with dm.Qtemp1 do
    begin
      Close;
      sql.Clear;
      //sql.Text:='Delete From t_podetail where contract_no='+QuotedStr(DBGridPO.Fields[0].AsString);
      sql.Text:='Update t_podetail set po_no=:new_no where po_no=:old_no ';
      ParamByName('new_no').AsString := NewNo;
      ParamByName('old_no').AsString := OldNo;
      Execute;
    end;
    ActROExecute(sender);
    ShowMessage('Data Berhasil di Hapus');
    end;
end;

procedure TFPO.ActPrintExecute(Sender: TObject);
begin
  PrintPodmlt;
end;

procedure TFPO.ActRoExecute(Sender: TObject);
begin
    DBGridPO.StartLoadingStatus();
    DBGridPO.FinishLoadingStatus();
    QPo.Close;
    Mempo.Close;
    Qdetailpo.Close;
    if QPo.Active=False then Qpo.Active:=True;
    if Mempo.Active=False then Mempo.Active:=True;
    if Qdetailpo.Active=False then Qdetailpo.Active:=True;
    //if QRptPO.Active=False then QRptPO.Active:=True;
    //if Qrptdetailpo2.Active=False then Qrptdetailpo2.Active:=True;
end;

procedure TFPO.ActUpdateExecute(Sender: TObject);
begin
    try
      with FNew_PO do
      begin
        Show;
        EdStatus.Enabled:=false;
        EdNm_supp.Enabled:=false;
        StatusTr:=1;
        Caption:='Update Purchase Order';
        BSimpan.Visible:=false;
        BEdit.Visible:=true;
        Self.Clear;
        if ((DBGridPO.Fields[12].AsString='APPROVE') and (DBGridPO.Fields[20].AsString = '1')) then
        begin
          Statustr2:=1;
        end;
        if (DBGridPO.Fields[12].AsString<>'APPROVE') then
        begin
          Statustr2:=0;
        end;
        with Mempo do
        begin
          FNew_PO.EdNopo.Text:=Mempo.FieldByName('po_no').AsString;
          FNew_PO.EdNm_supp.Text:=Mempo.FieldByName('supplier_name').AsString;
          FNew_PO.EdKd_supp.Text:=Mempo.FieldByName('supplier_code').AsString;
          FNew_PO.EdStatus.Text:=Mempo.FieldByName('po_type').AsString;
          FNew_PO.EdNo.Text:=Mempo.FieldByName('order_no').AsString;
          FNew_PO.DtPO.Text:=Mempo.FieldByName('po_date').AsString;
          FNew_PO.Edno_kontrak.Text:=Mempo.FieldByName('contract_no').AsString;
          FNew_PO.EdPPh23.Text:=Mempo.FieldByName('pph23').AsString;
          FNew_PO.EdPPn.Text:=Mempo.FieldByName('ppn').AsString;
          FNew_PO.EdCurr.Text:=Mempo.FieldByName('valas').AsString;
          FNew_PO.Ednilai_curr.Text:=Mempo.FieldByName('valas_value').AsString;
          FNew_PO.EdKet.Text:=Mempo.FieldByName('remarks').AsString;
          FNew_PO.Edjenispo.Text:=Mempo.FieldByName('type').AsString;
          FNew_PO.EdJenisAngkut.Text:=Mempo.FieldByName('transportation_type').AsString;
          FNew_PO.Edjatuh_tempo.Text:=Mempo.FieldByName('due_date').AsString;
          status:=Mempo.FieldByName('status').AsString;
          FNew_PO.CbKategori.Text:=Mempo.FieldByName('trans_category').AsString;
          FNew_PO.Ed_kd_wh.Text:=Mempo.FieldByName('wh_code').AsString;
          Ed_kd_whChange(sender);
          FNew_PO.DtDelivery.Date:=Mempo['delivery_date'];
          FNew_PO.DtDelivery2.Date:=Mempo['delivery2_date'];
          FNew_PO.Edsbu.Text:=Mempo['sbu_code'];
          FNew_PO.NoTransUM.Text:=Mempo.FieldByName('um_no').AsString;
          FNew_PO.EdUM.Value:=Mempo.FieldByName('um_value').Value;
          FNew_PO.Edkd_akun.Text:=Mempo.FieldByName('um_account_code').AsString;
          CkUangmk.Checked:=Mempo.FieldByName('um_status').AsBoolean;
          ckAs.Checked:=Mempo.FieldByName('as_status').AsBoolean;

        end;
        EdCurrChange(sender);

        if EdCurr.Text<>'IDR' then
        begin
            Qdetailpo.First;
            while not Qdetailpo.eof do
            begin
              with Qdetailpo do
              begin
                FNew_PO.MemItempo.Insert;
                FNew_PO.MemItempo['kd_material_stok']:=Qdetailpo.FieldByName('item_stock_code').AsString;
                FNew_PO.MemItempo['kd_material']:=Qdetailpo.FieldByName('item_code').AsString;
                FNew_PO.MemItempo['nm_material']:=Qdetailpo.FieldByName('item_name').AsString;
                FNew_PO.MemItempo['qty']:=Qdetailpo.FieldByName('qty').AsString;
                FNew_PO.MemItempo['harga']:=Qdetailpo.FieldByName('price').AsString;
                FNew_PO.MemItempo['satuan']:=Qdetailpo.FieldByName('unit').AsString;
                FNew_PO.MemItempo['gudang']:=Qdetailpo.FieldByName('wh_code').AsString;
                FNew_PO.MemItempo['totalbayar']:=Qdetailpo.FieldByName('total_payment').AsString;
                FNew_PO.MemItempo['sisabayar']:=Qdetailpo.FieldByName('remaining_payment').AsString;
                FNew_PO.MemItempo['sisaqty']:=Qdetailpo.FieldByName('remaining_qty').AsString;
                FNew_PO.MemItempo['qtyterkirim']:=Qdetailpo.FieldByName('qty_sent').AsString;
                FNew_PO.MemItempo['subtotal']:=Qdetailpo.FieldByName('subtotal').Value-Qdetailpo.FieldByName('pemb_dpp').value;
                FNew_PO.MemItempo['pemb_dpp']:=Qdetailpo.FieldByName('pemb_dpp').AsString;
                FNew_PO.MemItempo['ppn']:=Qdetailpo.FieldByName('ppn').AsString;
                FNew_PO.MemItempo['ppn_us']:=Qdetailpo.FieldByName('ppn_rp').AsString;
                FNew_PO.MemItempo['pemb_dpp']:=Qdetailpo.FieldByName('pemb_dpp').Value;
                FNew_PO.MemItempo['pph']:=Qdetailpo.FieldByName('pph').AsString;
                FNew_PO.MemItempo['pph_rp']:=Qdetailpo.FieldByName('pph_rp').AsString;
                //FNew_PO.MemItempo['grandtotal']:=Qdetailpo.FieldByName('Grandtotal').AsString;
                FNew_PO.MemItempo['grandtotal']:=Qdetailpo.FieldByName('Grandtotal').Value;
                FNew_PO.MemItempo['pemb_ppn_us']:=Qdetailpo.FieldByName('pemb_ppn').AsString;
                FNew_PO.MemItempo['grandtotal']:=Qdetailpo.FieldByName('Grandtotal').Value;
                FNew_PO.MemItempo['pemb_ppn_us']:=Qdetailpo.FieldByName('pemb_ppn').AsString;
                FNew_PO.MemItempo['grandtotal']:=Qdetailpo.FieldByName('Grandtotal').Value;
                FNew_PO.MemItempo['pemb_ppn_us']:=Qdetailpo.FieldByName('pemb_ppn').AsString;
                FNew_PO.memitempo['id_pengajuan_asset']:=Qdetailpo['id_pengajuan_asset'];
                FNew_PO.memitempo['no_pengajuan_asset']:=Qdetailpo['no_pengajuan_asset'];
                FNew_PO.memitempo['id_detail_asset']:=Qdetailpo['id_detail_asset'];
                FNew_PO.memitempo['spesifikasi_asset']:=Qdetailpo['spesifikasi_asset'];
                FNew_PO.MemItempo.Post;
                Qdetailpo.Next;
              end;
            end;
        end;

        if EdCurr.Text='IDR' then
        begin
          Qdetailpo.First;
          while not Qdetailpo.eof do
          begin
              with Qdetailpo do
              begin
                FNew_PO.MemItempo.Insert;
                FNew_PO.MemItempo['kd_material_stok']:=Qdetailpo.FieldByName('item_stock_code').AsString;
                FNew_PO.MemItempo['kd_material']:=Qdetailpo.FieldByName('item_code').AsString;
                FNew_PO.MemItempo['nm_material']:=Qdetailpo.FieldByName('item_name').AsString;
                FNew_PO.MemItempo['qty']:=Qdetailpo.FieldByName('qty').AsString;
                FNew_PO.MemItempo['harga_rp']:=Qdetailpo.FieldByName('price').AsString;
                FNew_PO.MemItempo['satuan']:=Qdetailpo.FieldByName('unit').AsString;
                FNew_PO.MemItempo['gudang']:=Qdetailpo.FieldByName('wh_code').AsString;
                FNew_PO.MemItempo['totalbayar']:=Qdetailpo.FieldByName('total_payment').AsString;
                FNew_PO.MemItempo['sisabayar']:=Qdetailpo.FieldByName('remaining_payment').AsString;
                FNew_PO.MemItempo['sisaqty']:=Qdetailpo.FieldByName('remaining_qty').AsString;
                FNew_PO.MemItempo['qtyterkirim']:=Qdetailpo.FieldByName('qty_sent').AsString;
                FNew_PO.MemItempo['subtotal_rp']:=Qdetailpo.FieldByName('subtotal').Value-Qdetailpo.FieldByName('pemb_dpp').Value;
                FNew_PO.MemItempo['pemb_dpp']:=Qdetailpo.FieldByName('pemb_dpp').AsString;
                FNew_PO.MemItempo['ppn']:=Qdetailpo.FieldByName('ppn').AsString;
                FNew_PO.MemItempo['ppn_rp']:=Qdetailpo.FieldByName('ppn_rp').AsString;
                FNew_PO.MemItempo['pph']:=Qdetailpo.FieldByName('pph').AsString;
                FNew_PO.MemItempo['pph_rp']:=Qdetailpo.FieldByName('pph_rp').AsString;
                //FNew_PO.MemItempo['grandtotalrp']:=Qdetailpo.FieldByName('Grandtotal').AsString;
                FNew_PO.MemItempo['grandtotalrp']:=Qdetailpo.FieldByName('Grandtotal').Value;
                FNew_PO.MemItempo['pemb_ppn']:=Qdetailpo.FieldByName('pemb_ppn').AsString;
                FNew_PO.memitempo['id_pengajuan_asset']:=Qdetailpo['id_pengajuan_asset'];
                FNew_PO.memitempo['no_pengajuan_asset']:=Qdetailpo['no_pengajuan_asset'];
                FNew_PO.memitempo['id_detail_asset']:=Qdetailpo['id_detail_asset'];
                FNew_PO.memitempo['spesifikasi_asset']:=Qdetailpo['spesifikasi_asset'];
                FNew_PO.MemItempo.Post;
                Qdetailpo.Next;
              end;
          end;
        end;

        if FNew_PO.EdStatus.Text='Kontrak Kerjasama' then
        begin
          FNew_PO.Edno_kontrak.ReadOnly:=false;
        end
        else
          FNew_PO.Edno_kontrak.ReadOnly:=True;
          FNew_PO.Totalpo;
      end;

      with dm.Qtemp do
      begin
        Close;
        sql.Clear;
        sql.Text:='select * from t_ref_po a inner join t_po b on a.ref_name=b.po_type WHERE ref_name='+QuotedStr(FNew_PO.EdStatus.Text)+' and b.po_no='+QuotedStr(FNew_PO.EdNopo.Text)+' ';
        ExecSQL;
      end;
      ref_code:=dm.Qtemp['ref_code'];
      //showmessage(dm.Qtemp['ref_code']);

      with FNew_PO do
      begin
        if Edno_kontrak.Text<>'0' then
        begin
          MemItempo.First;
          while not MemItempo.Eof do
          begin
            with dm.Qtemp do
            begin
              close;
              sql.Clear;
              sql.Text:=' select * from t_coop_contract_det where contract_no='+QuotedStr(Edno_kontrak.Text)+''+
                        ' and item_stock_code='+QuotedStr(MemItempo['kd_material_stok']);
              Execute;
            end;
            MemItempo.Edit;
            if dm.QTemp['remaining_qty']=Null then
            MemItempo['qtykontrak']:=0
            else MemItempo['qtykontrak']:=Dm.Qtemp['remaining_qty'];
            MemItempo.Post;
            MemItempo.Next;
          end;
        end
        else
        MemItempo.First;
        while not MemItempo.Eof do
        begin
            MemItempo.Edit;
            MemItempo['qtykontrak']:=0;
            MemItempo.Post;
            MemItempo.Next;
        end;
      end;
       FNew_PO.CkUangmkClick(sender);
      finally
    end;
end;

procedure TFPO.CariClick(Sender: TObject);
begin
   DBGridPO.StartLoadingStatus();
   with Qpo do
   begin
     close;
     sql.Clear;
     sql.Text:='select 	(case WHEN a."approval_status"=0 THEN ''PENGAJUAN'' WHEN a."approval_status"=1 THEN ''APPROVE'' else ''REJECT'' '+
               'END) AS status_app, (case WHEN a.status=''1'' THEN ''AKTIF'' WHEN a.status=''0'' THEN ''SELESAI'' '+
               'END) AS status,a.po_no,a.contract_no,a.po_date,a.supplier_code,a.pph23,a.ppn,a.order_no,a.valas_value,a.po_type, '+
               'a.valas,a.remarks,a.type,a.status,a.transportation_type,a.division_code,a.delivery_date,B.supplier_name,a.trans_category, '+
               'a.due_date,a."approval_status",a.approval,a.wh_code,c.wh_name,a.delivery2_date,a.id,a.trans_day,a.trans_month,a.trans_year,a.sbu_code,a.correction_status,a.um_status,a.um_value, '+
               'a.um_account_code,a.as_status,um_no '+
               'from t_po A '+
               'Inner join t_supplier B on A.supplier_code=B.supplier_code '+
               'INNER JOIN t_wh c on a.wh_code=c.wh_code '+
               'WHERE a.po_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.DateTime))+' and '+ QuotedStr(formatdatetime('yyyy-mm-dd',DTP2.DateTime))+' Order by a.po_date,A.po_no ASC ';//and a.pic='+Quotedstr(Nm)+' ';
     open;
   end;
   Qpo.Close;
   Qpo.Open;
   mempo.Close;
   mempo.Open;
   DBGridPO.FinishLoadingStatus();
end;

procedure TFPO.clear;
begin
  with FNew_PO do
  begin
     EdNo.Text:='';
     EdKd_supp.Text:='';
     EdNm_supp.Text:='';
     EdStatus.Text:='';
     EdPPh23.Text:='10';
     EdPPn.Text:='10';
     EdKet.Text:='';
     EdCurr.Text:='';
     Edjenispo.Text:='';
     DtPO.Date:=Now;
     DtDelivery.Date:=Now;
     DtDelivery2.Date:=Now;
     MemItempo.EmptyTable;
     EdNopo.Text:='';
     nopo.Text:='';
     Edurut.Text:='';
  end;
end;

procedure TFPO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=caFree;
end;

procedure TFPO.FormCreate(Sender: TObject);
begin
  realPO:=self;
end;

procedure TFPO.FormDestroy(Sender: TObject);
begin
  realPO:=nil;
end;

procedure TFPO.FormShow(Sender: TObject);
begin
   ActRoExecute(sender);
   DTP1.Date:=Now;
   DTP2.Date:=Now;
end;

procedure TFPO.ActBaruExecute(Sender: TObject);
begin
    with FNew_PO do
    begin
      Show;
      EdStatus.Enabled:=true;
      EdNm_supp.Enabled:=true;
      Self.Clear;
      CkUangmk.Checked:=false;
      ckAs.Checked:=false;
      BSimpan.visible:=true;
      BEdit.Visible:=false;
      Caption:='New Purchase Order';
      StatusTr:=0;
      load_currency;
      EdJenisAngkut.Text:='SUPPLIER';
    //  load_ref_po;
    end;
end;

// Contoh RegisterClass
Initialization
  RegisterClass(TFPO);

end.
