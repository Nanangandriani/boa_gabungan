unit UAmplopPelanggan;

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
  dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, cxSpinEdit, cxLabel, cxDropDownEdit, cxProgressBar, cxButtonEdit,
  MemTableDataEh, Data.DB, DataDriverEh, MemTableEh, MemDS, DBAccess, Uni,
  dxBarExtItems, cxBarEditItem, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon, Vcl.StdCtrls, RzLabel, frxClass, frxDBSet,
  RzButton, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ComCtrls, RzDTP, Vcl.ExtCtrls,
  RzPanel;

type
  TFAmplopPelanggan = class(TForm)
    QAmplopPelanggan: TUniQuery;
    Report1: TfrxReport;
    frxDBDBAmplopPelanggan: TfrxDBDataset;
    dtTanggal: TRzDateTimePicker;
    edKaresidenan: TRzButtonEdit;
    Label1: TLabel;
    Label2: TLabel;
    RzPanel2: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    edPelanggan: TRzButtonEdit;
    Label3: TLabel;
    procedure Report1GetValue(const VarName: string; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure edKaresidenanButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edPelangganButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StrKaresidananID,strKodePelanggan:String;

  end;

//  function FAmplopPelanggan: TFAmplopPelanggan;

var
  FAmplopPelanggan: TFAmplopPelanggan;

implementation

{$R *.dfm}

uses UMasterData, UMy_Function, UHomeLogin, UDataModule, Ubrowse_pelanggan;
//var
//  realamploppelanggan : TFAmplopPelanggan;

//function FAmplopPelanggan: TFAmplopPelanggan;
//begin
//  if realamploppelanggan <> nil then
//    FAmplopPelanggan:= realamploppelanggan
//  else
//    Application.CreateForm(TFAmplopPelanggan, Result);
//end;


procedure TFAmplopPelanggan.edPelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='amplop_pelanggan';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFAmplopPelanggan.FormCreate(Sender: TObject);
begin
//  realamploppelanggan:=self;
end;

procedure TFAmplopPelanggan.FormDestroy(Sender: TObject);
begin
//  realamploppelanggan:=nil;
end;

procedure TFAmplopPelanggan.FormShow(Sender: TObject);
begin
  edKaresidenan.Text:='';
  StrKaresidananID:='';
  dtTanggal.Date:=NOW();
  strKodePelanggan:='';
  edPelanggan.Text:='';
end;

procedure TFAmplopPelanggan.Report1GetValue(const VarName: string;
  var Value: Variant);
begin
if CompareText(VarName, 'NamaPerusahaan') = 0 then
  Value := FHomeLogin.vNamaPRSH;
  if CompareText(VarName, 'KotaPerusahaan') = 0 then
  Value := FHomeLogin.vKotaPRSH;
end;

procedure TFAmplopPelanggan.RzBitBtn1Click(Sender: TObject);
var strKdPelanggan : String;
begin
  if edKaresidenan.Text='' then
  begin
    MessageDlg('Karesidenan wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    if edPelanggan.Text<>'' then
    begin
      strKdPelanggan:=' AND a.code_cust='+QuotedStr(strKodePelanggan)+' ';
    end else
    begin
      strKdPelanggan:='';
    end;

    with QAmplopPelanggan do
    begin
      close;
      sql.Clear;
      sql.Text:='select DISTINCT a.code_cust,a.name_cust,b.address,b.contact_person1 from t_selling a left join get_customer() b on b.customer_code=a.code_cust '+
                'where a.trans_date='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal.Date))+' and '+
                'b.code_karesidenan='+QuotedStr(StrKaresidananID)+strKdPelanggan+' '+
                'AND a.deleted_at is NULL;';
      open;
    end;
    if QAmplopPelanggan.RecordCount=0 then
    begin
       MessageDlg('Tidak ada data ..!!',mtInformation,[mbRetry],0);
    end else begin
      with dm.Qtemp3 do
      begin
        Close;
        SQl.Clear;
        SQl.Text:='CALL "InsertSPLogActivity" ('+QuotedStr(FHomeLogin.Eduser.Text)+',''Penjualan'',''M13002'', '+
                  ' ''1.0'','+QuotedStr(GetLocalIP)+',False,False,False, False, '+
                  ' ''Cetak Amplop Pelanggan'', '+
                  'True,NULL);';
        ExecSQL;
      end;
      cLocation := ExtractFilePath(Application.ExeName);
      Report1.LoadFromFile(cLocation +'report/rpt_amploppelanggan'+ '.fr3');
      Report1.ShowReport();
    end;
  end;
end;

procedure TFAmplopPelanggan.edKaresidenanButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='amploppelanggankaresidenan';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

//initialization
//  RegisterClass(TFAmplopPelanggan);

end.
