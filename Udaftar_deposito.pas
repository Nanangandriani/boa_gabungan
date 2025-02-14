unit Udaftar_deposito;

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
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, dxBar, cxClasses, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, RzButton,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni;

type
  TFdaftar_deposito = class(TForm)
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
    dxBarManager1Bar2: TdxBar;
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
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid_Daf_Deposito: TDBGridEh;
    DBGridEh1: TDBGridEh;
    PnFilter: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dptgldep1: TDateTimePicker;
    dptgldep2: TDateTimePicker;
    cbrek: TComboBox;
    cbbank: TComboBox;
    BCari: TRzBitBtn;
    Qdaftar_deposito: TUniQuery;
    DSdaftar_deposito: TDataSource;
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbbankChange(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    stat,kd_bank,kd_bank2,norek:string;
    next_proses:boolean;
    procedure stamp_bk(nobk:string);
  end;

//var
  //Fdaftar_deposito: TFdaftar_deposito;

function Fdaftar_deposito: TFdaftar_deposito;

implementation

{$R *.dfm}

uses UDataModule,Utrx_deposito,Utrx_deposito2;

var
  RealFdaftar_deposito : TFdaftar_deposito;
// implementasi function
function Fdaftar_deposito: TFdaftar_deposito;
begin
  if RealFdaftar_deposito <> nil then
     Fdaftar_deposito:= RealFdaftar_deposito
  else
    Application.CreateForm(TFdaftar_deposito, Result);
end;

procedure TFdaftar_deposito.stamp_bk(nobk:string);
var
   bitmap:tbitmap;
begin
   try
    bitmap:=tbitmap.Create;
    Bitmap.PixelFormat := pf24bit;
    //bitmap.Assign(frmfotodeposito.Image1.Picture.Graphic);
    bitmap.Canvas.Font.Name:='arial' ;
    bitmap.Canvas.Font.Size:=54;
    bitmap.Canvas.Brush.Style:=bsClear;
    bitmap.Canvas.Font.Style:=[fsBold];
    bitmap.Canvas.TextOut(1500,100,'VERIFIED  '+nobk);
    //frmfotodeposito.image1.Picture.assign(bitmap);
  finally
    bitmap.Free;
  end;
end;

procedure TFdaftar_deposito.ActBaruExecute(Sender: TObject);
begin
   //Ftrx_deposito.Show;
    if stat='deposito1' then
    begin
      Ftrx_deposito.btnnewClick(sender);
      Ftrx_deposito.Show;
    end
    else
    if stat='deposito2' then
    begin
      Ftrx_deposito2.btnnewClick(sender);
      Ftrx_deposito2.show;
    end;
end;

procedure TFdaftar_deposito.ActDelExecute(Sender: TObject);
begin
  if (Qdaftar_deposito.RecordCount<>0) and  (application.messagebox('Yakin data akan dihapus?','confirm',mb_yesno or mb_iconquestion)=id_yes) then
  begin
     next_proses:=true;

     if next_proses=true then showmessage('true') else showmessage('false');
     if (next_proses=true)  then
     begin
        showmessage('1');
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.add('delete from t_deposito where bank_norek=:norek and deposito_date=:tgl');
          params.parambyname('norek').AsString:=Qdaftar_deposito.fieldbyname('bank_norek').AsString;
          params.parambyname('tgl').Asdatetime:=Qdaftar_deposito.fieldbyname('deposito_date').Asdatetime;
          Execute;
        end;
        showmessage('Data berhasil dihapus !');
        Qdaftar_deposito.close;
        Qdaftar_deposito.Open;
     end;
  end;
end;

procedure TFdaftar_deposito.ActROExecute(Sender: TObject);
var
  query:string;
begin
   query:='select a.*,b.bank_name from t_deposito a,t_bank b where a.bank_norek=b.rekening_no ';// and a.norekbank='+QuotedStr(cbrek.Text)+' and (tgl_deposito between '+QuotedStr(formatdatetime('yyyy-mm-dd',dptgldep1.date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dptgldep2.date))+')';

   DBGrid_Daf_Deposito.StartLoadingStatus();
   Qdaftar_deposito.Close;
   Qdaftar_deposito.SQL.Clear;
   Qdaftar_deposito.SQL.Add(query);
   Qdaftar_deposito.Open;
   DBGrid_Daf_Deposito.FinishLoadingStatus();
   DBGrid_Daf_Deposito.Refresh;
end;

procedure TFdaftar_deposito.ActUpdateExecute(Sender: TObject);
var query:string;
    Mystream :TMemoryStream;
    //jpeg:tjpegimage;
begin

end;

procedure TFdaftar_deposito.cbbankChange(Sender: TObject);
begin
    with dm.Qtemp do
    begin
       close;
       sql.clear;
       sql.add('select account_no as kode3,bank_name as nabank,bank_code as kdbank,rekening_no as no_rekbank from t_bank');
       sql.add('where bank_name=:nb');
       Params.ParamByName('nb').AsString:=cbbank.Text;
       open;
    end;

    if dm.Qtemp.RecordCount<>0 then
    begin
     kd_bank:=dm.Qtemp.fieldbyname('kdbank').AsString;
     dm.Qtemp.First;
     cbrek.clear;
     while not dm.Qtemp.Eof do
     begin
       cbrek.Items.Add(dm.Qtemp.fieldbyname('no_rekbank').asstring);
       dm.Qtemp.Next;
     end;
    end;
end;

procedure TFdaftar_deposito.dxBarLargeButton1Click(Sender: TObject);
begin
   PnFilter.Visible:=True;
end;

procedure TFdaftar_deposito.FormCreate(Sender: TObject);
begin
    RealFdaftar_deposito:=self;
end;

procedure TFdaftar_deposito.FormDestroy(Sender: TObject);
begin
   RealFdaftar_deposito:=Nil;
end;

procedure TFdaftar_deposito.FormShow(Sender: TObject);
var
   query:string;
begin
  Fdaftar_deposito.stat:='daftar';
  Fdaftar_deposito.show;
  dptgldep1.Date:=date;
  dptgldep2.Date:=date;
  cbbank.Clear;

  with dm.Qtemp do
  begin
     close;
     sql.clear;
     sql.add(' select account_no as kode3,bank_name as nabank from t_bank order by bank_name');
     open;
     first;
  end;

  cbbank.Items.Add('');
  while not dm.Qtemp.Eof do
  begin
     cbbank.Items.Add(dm.Qtemp.fieldbyname('nabank').AsString);
     dm.Qtemp.Next;
  end;
end;

initialization
  RegisterClass(TFdaftar_deposito);

end.
