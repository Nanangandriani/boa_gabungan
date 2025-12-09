unit UListUangMukaPenjualan;

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
  DynVarsEh, cxSpinEdit, cxLabel, cxDropDownEdit, MemTableDataEh, Data.DB,
  DataDriverEh, MemTableEh, MemDS, DBAccess, Uni, dxBarExtItems, cxBarEditItem,
  dxBar, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, RzButton, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzSpnEdt, RzCmboBx, Vcl.ExtCtrls, RzPanel, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, RzLabel;

type
  TFListUangMukaPenjualan = class(TForm)
    RzLabel1: TRzLabel;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid: TDBGridEh;
    DBGridKelompok: TDBGridEh;
    DBGridItem: TDBGridEh;
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
    dxBarManager1Bar3: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeNew: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxBarCombo1: TdxBarCombo;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    ActSearch: TdxBarLargeButton;
    cxBarEditItem3: TcxBarEditItem;
    dxBarCombo2: TdxBarCombo;
    cbBulan: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    cbSBU: TdxBarCombo;
    QUangMukaPenjualan: TUniQuery;
    DsUangMukaPenjualan: TDataSource;
    cxBarEditItem4: TcxBarEditItem;
    procedure ActBaruExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActSearchClick(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
  end;

var
  FListUangMukaPenjualan: TFListUangMukaPenjualan;

implementation

{$R *.dfm}

uses UNew_UangMukaPenjualan, UHomeLogin, UDataModule, UMy_Function, UMainMenu;

procedure TFListUangMukaPenjualan.ActDelExecute(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
    dm.Koneksi.StartTransaction;
  try
    if MessageDlg('Anda Yakin Mau Hapus Uang Muka Dengan No. '+QUangMukaPenjualan.FieldValues['no_trans']+' '+ '?', mtInformation, [mbYes]+[mbNo],0) = mrYes then
    begin
      with dm.Qtemp do
      begin
        Close;
        SQL.Clear;
        SQL.Text:='UPDATE t_down_payment_sales SET deleted_at=NOW(), '+
                  ' deleted_by='+QuotedStr(Nm)+' '+
                  ' WHERE no_trans='+QuotedStr(QUangMukaPenjualan.FieldValues['no_trans'])+' ';
        ExecSQL;
      end;

      if dm.Koneksi.InTransaction then
        dm.Koneksi.Commit;
      MessageDlg('Hapus Berhasil ..!!',mtInformation,[MBOK],0);
      Refresh;
    end;
  Except on E :Exception do
    begin
      MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
      if dm.Koneksi.InTransaction then
        Dm.koneksi.Rollback ;
    end;
  end;
end;

procedure TFListUangMukaPenjualan.ActROExecute(Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun.Text:=(year);
  cbBulan.ItemIndex:=StrToInt(month)-1;
  Refresh;
end;

procedure TFListUangMukaPenjualan.ActSearchClick(Sender: TObject);
begin
  Refresh;
end;

procedure TFListUangMukaPenjualan.ActUpdateExecute(Sender: TObject);
begin

  FNew_UangMukaPenjualan.Clear;
  Status:=1;
  with FNew_UangMukaPenjualan do
  begin
    edNoUangMuka.Text:=QUangMukaPenjualan.FieldValues['no_trans'];
    dtTanggal.Date:=QUangMukaPenjualan.FieldValues['trans_date'];
    strKodePelanggan:=QUangMukaPenjualan.FieldValues['customer_code'];
    edNama_Pelanggan.Text:=QUangMukaPenjualan.FieldValues['customer_name'];
    edAkunUangMuka.Text:=QUangMukaPenjualan.FieldValues['account_code'];
    edNamaAkunUangMuka.Text:=QUangMukaPenjualan.FieldValues['account_name'];
    edJumlah.value:=QUangMukaPenjualan.FieldValues['grand_tot'];
    kd_kares:='0';
  end;

  with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_cash_bank_acceptance_down_payment '+
              'where no_trans_down_payment='+QuotedStr(QUangMukaPenjualan.FieldValues['no_trans']);
    Open;
  end;

  if dm.Qtemp2.RecordCount>0 then
  begin
    MessageDlg('Uang Muka Sudah Dibayarkan..!!',mtInformation,[mbRetry],0);
    FNew_UangMukaPenjualan.BSave.Enabled:=False;
  end else begin
    FNew_UangMukaPenjualan.BSave.Enabled:=True;
  end;

  FNew_UangMukaPenjualan.ShowModal;
end;

procedure TFListUangMukaPenjualan.FormShow(Sender: TObject);
begin
  ActROExecute(sender);
  FillSBUBarCombo(cbSBU);
end;

procedure TFListUangMukaPenjualan.Refresh;
var mm: Integer;
strSBU : String;
begin
  if FHomeLogin.vStatOffice=0 then
  begin
    strSBU:=cbSBU.Text;
  end else
  begin
    strSBU:=FHomeLogin.vKodePRSH;
  end;

  mm:=cbBulan.ItemIndex+1;
  DBGrid.StartLoadingStatus();
  try
    with QUangMukaPenjualan do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select a.no_trans,a.trans_date,a.customer_code,c.account_name,b.customer_name,'+
                'a.account_code,a.grand_tot from t_down_payment_sales a '+
		            'LEFT JOIN get_customer() b on b.customer_code=a.customer_code '+
                'LEFT JOIN t_ak_account_sub c ON c.account_code2=a.account_code '+
                'WHERE a.sbu_code='+QuotedStr(strSBU)+' AND EXTRACT(YEAR FROM a.trans_date)='+edTahun.Text+' AND '+
                'EXTRACT(MONTH FROM a.trans_date)='+(IntToStr(mm))+' and a.deleted_at is NULL ORDER BY a.trans_date DESC, a.no_trans DESC;';
      Open;
    end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListUangMukaPenjualan.ActBaruExecute(Sender: TObject);
begin
  FNew_UangMukaPenjualan.Clear;
  Status:=0;
  FNew_UangMukaPenjualan.BSave.Enabled:=True;
  FNew_UangMukaPenjualan.ShowModal;
end;

initialization
  RegisterClass(TFListUangMukaPenjualan);

end.
