unit u_daf_keluar_kas_bank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, dxSkinsCore, dxSkinBasic, dxSkinBlack,
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
  RzButton, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel, dxRibbon, dxBar,
  cxClasses, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Data.DB, MemDS,
  DBAccess, Uni;

type
  TFdaf_pengeluaran_kas_bank = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DBGridSupplier: TDBGridEh;
    DBGridEh1: TDBGridEh;
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
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    DateTimePicker2: TDateTimePicker;
    BCari: TRzBitBtn;
    DateTimePicker1: TDateTimePicker;
    QDaf_Pengeluaran_Kas_Bank: TUniQuery;
    DSKeluarKasBank: TDataSource;
    QDaf_Pengeluaran_Kas_Bankid: TLargeintField;
    QDaf_Pengeluaran_Kas_Bankvoucher_no: TStringField;
    QDaf_Pengeluaran_Kas_Bankvoucher_tmp: TStringField;
    QDaf_Pengeluaran_Kas_Banksubvoucher: TFloatField;
    QDaf_Pengeluaran_Kas_Bankremark: TStringField;
    QDaf_Pengeluaran_Kas_Bankentry_date: TDateField;
    QDaf_Pengeluaran_Kas_Banktrans_date: TDateField;
    QDaf_Pengeluaran_Kas_Bankperiode1: TDateField;
    QDaf_Pengeluaran_Kas_Bankperiode2: TDateField;
    QDaf_Pengeluaran_Kas_Bankamount: TFloatField;
    QDaf_Pengeluaran_Kas_Bankaccount_code: TStringField;
    QDaf_Pengeluaran_Kas_Bankgroup_code: TStringField;
    QDaf_Pengeluaran_Kas_Bankgroup_name: TStringField;
    QDaf_Pengeluaran_Kas_Banktp_code: TStringField;
    QDaf_Pengeluaran_Kas_Bankaccount_name: TStringField;
    QDaf_Pengeluaran_Kas_Bankdk: TStringField;
    QDaf_Pengeluaran_Kas_Bankperpetrator_id: TIntegerField;
    QDaf_Pengeluaran_Kas_Bankdebit: TFloatField;
    QDaf_Pengeluaran_Kas_Bankkredit: TFloatField;
    QDaf_Pengeluaran_Kas_Bankheader_code: TStringField;
    QDaf_Pengeluaran_Kas_Bankref_no: TStringField;
    QDaf_Pengeluaran_Kas_Bankposting: TStringField;
    QDaf_Pengeluaran_Kas_Bankcustomer_code: TStringField;
    QDaf_Pengeluaran_Kas_Banksupplier_code: TStringField;
    QDaf_Pengeluaran_Kas_Bankcash_type: TStringField;
    QDaf_Pengeluaran_Kas_Bankjob_no: TStringField;
    QDaf_Pengeluaran_Kas_Bankcompany_code: TStringField;
    QDaf_Pengeluaran_Kas_Banktrans_year: TSmallintField;
    QDaf_Pengeluaran_Kas_Banktrans_month: TSmallintField;
    QDaf_Pengeluaran_Kas_Banktrans_day: TSmallintField;
    QDaf_Pengeluaran_Kas_Bankorder_no: TIntegerField;
    QDaf_Pengeluaran_Kas_Bankgiro_no: TStringField;
    QDaf_Pengeluaran_Kas_Bankbank_giro_name: TStringField;
    QDaf_Pengeluaran_Kas_Bankgiro_due_date: TDateField;
    QDaf_Pengeluaran_Kas_Bankcustomer_name: TStringField;
    QDaf_Pengeluaran_Kas_Banksupplier_name: TStringField;
    QDaf_Pengeluaran_Kas_Bankto_: TStringField;
    QDaf_Pengeluaran_Kas_Bankdeposit: TStringField;
    QDaf_Pengeluaran_Kas_Bankdeposit_date: TDateField;
    QDaf_Pengeluaran_Kas_Banktgup: TDateField;
    QDaf_Pengeluaran_Kas_Bankvoucher_code: TStringField;
    QDaf_Pengeluaran_Kas_Bankto_getout: TStringField;
    QDaf_Pengeluaran_Kas_Bankstat: TSmallintField;
    QDaf_Pengeluaran_Kas_Banktime_lock: TDateTimeField;
    QDaf_Pengeluaran_Kas_Bankupdate_time: TDateTimeField;
    QDaf_Pengeluaran_Kas_Bankstat_lock: TBooleanField;
    QDaf_Pengeluaran_Kas_Bankcurrency: TStringField;
    QDaf_Pengeluaran_Kas_Bankkurs: TFloatField;
    QDaf_Pengeluaran_Kas_Bankbon_no: TStringField;
    QDaf_Pengeluaran_Kas_Bankpost_status: TSmallintField;
    QDaf_Pengeluaran_Kas_Bankcreated_at: TDateTimeField;
    QDaf_Pengeluaran_Kas_Bankcreated_by: TStringField;
    QDaf_Pengeluaran_Kas_Bankupdated_at: TDateTimeField;
    QDaf_Pengeluaran_Kas_Bankupdated_by: TStringField;
    QDaf_Pengeluaran_Kas_Bankdeleted_at: TDateTimeField;
    QDaf_Pengeluaran_Kas_Bankdeleted_by: TStringField;
    QDaf_Pengeluaran_Kas_Bankbank_norek: TStringField;
    QDaf_Pengeluaran_Kas_Bankbank_name: TStringField;
    QDaf_Pengeluaran_Kas_Bankcek_no: TStringField;
    QDaf_Pengeluaran_Kas_Banktrans_type_code: TStringField;
    QDaf_Pengeluaran_Kas_Banktrans_type_name: TStringField;
    QDaf_Pengeluaran_Kas_Bankbank_number_account: TStringField;
    QDaf_Pengeluaran_Kas_Bankbank_name_account: TStringField;
    QDaf_Pengeluaran_Kas_Bankadditional_code: TStringField;
    procedure ActBaruExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdaf_pengeluaran_kas_bank: TFdaf_pengeluaran_kas_bank;

implementation

{$R *.dfm}

uses UDataPengeluaranKasBank, UDataModule;


procedure TFdaf_pengeluaran_kas_bank.ActBaruExecute(Sender: TObject);
begin
   FDataPengeluaranKasBank.Show;
end;

procedure TFdaf_pengeluaran_kas_bank.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date:=Now;
  DateTimePicker2.Date:=Now;
  if QDaf_Pengeluaran_Kas_Bank.Active=false then
     QDaf_Pengeluaran_Kas_Bank.Active:=true;
end;

initialization
RegisterClass(TFdaf_pengeluaran_kas_bank);

end.
