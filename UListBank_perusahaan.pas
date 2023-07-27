unit UListBank_perusahaan;

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
  dxRibbon, dxBar, cxClasses, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFListBank = class(TForm)
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
    dxBarLargeBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    Dsbank: TDataSource;
    Qbank: TUniQuery;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure dxBarLargeBaruClick(Sender: TObject);
    procedure dxBarRefreshClick(Sender: TObject);
    procedure dxBarUpdateClick(Sender: TObject);
    procedure dxBarDeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
  end;

var
  FListBank: TFListBank;

implementation

{$R *.dfm}

uses UNewBank, UDataModule;


procedure TFListBank.Refresh;
begin
   with QBank do
   begin
       close;
       sql.Clear;
       sql.Text:='select * from t_Bank where deleted_at is null order by created_at Desc ';
       open;
   end;
   QBank.Active:=False;
   QBank.Active:=True;
   QBank.Close;
   QBank.Open;
   {DBGridEh1.StartLoadingStatus();
    try
      Qbank.close;
      Qbank.open;
    finally
    DBGridEh1.FinishLoadingStatus();
    end;}
end;

procedure TFListBank.dxBarRefreshClick(Sender: TObject);
begin
   self.Refresh;
end;

procedure TFListBank.dxBarUpdateClick(Sender: TObject);
begin
    FNewBank.Clear;
    with Qbank do
    begin
      FNewBank.edbank.Text:=FieldByName('bank_name').AsString;
      FNewBank.edno_rek.Text:=FieldByName('rekening_no').AsString;
      FNewBank.edkode_bank.Text:=FieldByName('bank_code').AsString;
      FNewBank.CBmata_uang.Text:=FieldByName('Currency').AsString;
      FNewBank.edid.Text:=FieldByName('id').AsString;
    end;
    Status:=1;
    FNewBank.edkode_bank.Enabled:=false;
    FNewBank.ShowModal;
end;

procedure TFListBank.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Qbank.Close;
end;

procedure TFListBank.FormShow(Sender: TObject);
begin
    Refresh;
    Qbank.Close;
    Qbank.Open;
end;

procedure TFListBank.dxBarDeleteClick(Sender: TObject);
begin
    if MessageDlg('Apakah anda yakin ingin menghapus data ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      with Dm.Qtemp do
      begin
        close;
        sql.Clear;
        //sql.Text:='Delete From t_bank where id = '+QuotedStr(DBGridEh1.Fields[0].AsString);
        sql.Text:=' Update t_bank set deleted_at=:deleted_at,deleted_by=:deleted_by '+
                  ' where id='+QuotedStr(DBGridEh1.Fields[0].AsString);
        parambyname('deleted_at').AsDateTime:=Now;
        parambyname('deleted_by').AsString:='Admin';
        execsql;
      end;
      MessageDlg('Hapus Berhasil..!!',mtInformation,[MBOK],0);
      Refresh;
    end;
end;

procedure TFListBank.dxBarLargeBaruClick(Sender: TObject);
begin
  FNewBank.Clear;
  FNewBank.edkode_bank.Enabled:=true;
  Status:=0;
  FNewBank.showmodal;
end;

end.
