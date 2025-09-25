unit UPot_Pembelian;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  dxRibbon, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MemTableDataEh, Data.DB, MemTableEh, DataDriverEh, frxClass, MemDS, DBAccess,
  Uni, frxDBSet;

type
  TFPot_Pembelian = class(TForm)
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
    DBGridReturnPemb: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DBPerusahaan: TfrxDBDataset;
    QPerusahaan: TUniQuery;
    frxReport1: TfrxReport;
    frxDBPotPemb: TfrxDBDataset;
    DsRptPot_Pemb: TDataSource;
    QRptPot_Pemb: TUniQuery;
    QRptDet: TUniQuery;
    DbrptDet: TfrxDBDataset;
    DsDetail: TDataSource;
    DsdReturn: TDataSetDriverEh;
    MemReturn: TMemTableEh;
    DsReturnPembelian: TDataSource;
    QReturnPembelian: TUniQuery;
    QDetail: TUniQuery;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure ActPrintExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

Function  FPot_Pembelian: TFPot_Pembelian;

implementation

{$R *.dfm}

uses UNew_Pot_Pembelian, UDataModule;

var
  realfpotp : TFPot_Pembelian;

function FPot_Pembelian: TFPot_Pembelian;
begin
  if realfpotp <> nil then
    FPot_Pembelian:= realfpotp
  else
    Application.CreateForm(TFPot_Pembelian, Result);
end;
  
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

procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);
var
  memo: TfrxMemoView;
begin
  memo := aReport.FindObject(aMemoName) as TfrxMemoView;
  if memo <> nil then
    memo.Text := aText;
end;

procedure TFPot_Pembelian.ActBaruExecute(Sender: TObject);
begin
    with FNew_Pot_Pembelian do
    begin
      Show;
      Clear;

      Refresh;
      Caption:='New Potongan Pembelian';
      status:=0;
    end;

end;

procedure TFPot_Pembelian.ActDelExecute(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridReturnPemb.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
    begin
      with dm.Qtemp do
      begin
        Close;
        sql.Clear;
        sql.Text:='delete From t_purchase_discount where discount_no='+QuotedStr(DBGridReturnPemb.Fields[0].AsString);
        Execute;
      end;
       ActRoExecute(sender);
      ShowMessage('Data Berhasil di Hapus');
    end;
end;

procedure TFPot_Pembelian.ActPrintExecute(Sender: TObject);
begin
    QPerusahaan.Close;
    QPerusahaan.Open;
    with QRptPot_Pemb do
    begin
      close;
      sql.Clear;
      sql.Text:=' select	d.supplier_name,f.faktur_date,d.address,d.npwp,a.discount_no,a.faktur_no,a.price,g.item_name,f.pib_no,f.receive_date,h.price price_unit,sum(a.price) price '+
                ' from t_purchase_discount a inner join t_supplier d on a.supplier_code=d.supplier_code  '+
                ' inner join t_item_receive f on a.faktur_no=f.faktur_no '+
                ' inner join t_item_receive_det h on f.receive_no=h.receive_no '+
                ' inner join t_item_stock g on h.item_stock_code=g.item_stock_code '+
                ' where a.discount_no='+QuotedStr(MemReturn['discount_no'])+' group by d.supplier_name,'+
                ' f.faktur_date,d.address,d.npwp, a.discount_no,a.discount_date,a.faktur_no,a.price,g.item_name,f.pib_no,f.receive_date,h.price';
      ExecSQL;
    end;
    QRptPot_Pemb.Open;
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_PotPemb.Fr3');
    SetMemo(frxReport1,'Mtgl',' Tegal,  '+DBGridReturnPemb.Fields[1].asstring); //In words:
    TfrxMemoView(frxReport1.FindObject('MTerbilang')).Memo.Text:='In Words : ' + NumberInWords(QRptPot_Pemb['price']) ;
    frxReport1.ShowReport();
end;

procedure TFPot_Pembelian.ActRoExecute(Sender: TObject);
begin
  DBGridReturnPemb.StartLoadingStatus();
  DBGridReturnPemb.FinishLoadingStatus();
  QReturnPembelian.Close;
  MemReturn.Close;
  QDetail.Close;
  if QReturnPembelian.Active=false then QReturnPembelian.Active:=True;
  if MemReturn.Active=False then MemReturn.Active:=True;
  if QDetail.Active=False then QDetail.Active:=True;
  if QRptPot_Pemb.Active=False then QRptPot_Pemb.Active:=True;
  if QRptDet.Active=False then QRptDet.Active:=True;
end;

procedure TFPot_Pembelian.ActUpdateExecute(Sender: TObject);
begin
   with FNew_Pot_Pembelian do
   begin
      Clear;
      Show;
      status:=1;
      Caption:='Update Potongan Pembelian';
      Edkd_supp.Text:=MemReturn['supplier_code'];
      Ednm_supp.Text:=MemReturn['supplier_name'];
      Edno.Text:=MemReturn['discount_no'];
      DtReturn.Date:=MemReturn['discount_date'];
      edno_terima.Text:=MemReturn['receive_no'];
      Ednofaktur.Text:=MemReturn['faktur_no'];
      edharga.Value:=MemReturn['price'];
      edcurr.Value:=MemReturn['n_valas'];
      Lbcurr.Caption:=MemReturn['valas'];
      edrp.Value:=MemReturn['price_rp'];
      edppn.Text:=MemReturn['ppn'];
      Edppnrp.Value:=MemReturn['ppnrp'];
      Edppn_rp.Value:=MemReturn['ppnrp']*MemReturn['n_valas'];
      Edgrandtotal.Value:=MemReturn['total'];
   end;
end;

procedure TFPot_Pembelian.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFPot_Pembelian.FormCreate(Sender: TObject);
begin
  realfpotp:=Self;
end;

procedure TFPot_Pembelian.FormDestroy(Sender: TObject);
begin
  realfpotp:=nil;
end;

procedure TFPot_Pembelian.FormShow(Sender: TObject);
begin
   ActRoExecute(sender);
end;

// Contoh RegisterClass
Initialization
  RegisterClass(TFPot_Pembelian);

end.
