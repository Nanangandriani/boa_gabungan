unit UListMasterAkunTrans;

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
  DynVarsEh, Data.DB, MemDS, DBAccess, Uni, dxBar, cxClasses, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFListMasterAkunTrans = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridOrder: TDBGridEh;
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
    dxBarLargeNew: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    QAkunTransaksi: TUniQuery;
    DsAkunTransaksi: TDataSource;
    QAkunTransaksiid: TGuidField;
    QAkunTransaksicreated_at: TDateTimeField;
    QAkunTransaksicreated_by: TStringField;
    QAkunTransaksiupdated_at: TDateTimeField;
    QAkunTransaksiupdated_by: TStringField;
    QAkunTransaksideleted_at: TDateTimeField;
    QAkunTransaksideleted_by: TStringField;
    QAkunTransaksicode_module: TStringField;
    QAkunTransaksiname_module: TStringField;
    QAkunTransaksicode_trans: TStringField;
    QAkunTransaksiname_trans: TStringField;
    QAkunTransaksidescription: TMemoField;
    QAkunTransaksiaccount_number_bank: TStringField;
    QAkunTransaksiaccount_name_bank: TStringField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure QAkunTransaksidescriptionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListMasterAkunTrans: TFListMasterAkunTrans;

implementation

{$R *.dfm}

uses UDataMasterAkunTrans, UDataModule, UMy_Function;

procedure TFListMasterAkunTrans.ActBaruExecute(Sender: TObject);
begin
  FDataMasterAkunTrans.Clear;
  //FDataMasterAkunTrans.Autocode;
  FDataMasterAkunTrans.Status:=0;
  //Beli
    FDataMasterAkunTrans.edKodeModulBeli.Enabled:=true;
    FDataMasterAkunTrans.edNamaModulBeli.Enabled:=true;
    FDataMasterAkunTrans.edKodeTransBeli.Enabled:=true;
    FDataMasterAkunTrans.edNamaTransBeli.Enabled:=true;
    FDataMasterAkunTrans.TabPembelian.TabVisible:=true;
  //Jual
    FDataMasterAkunTrans.edKodeModulJual.Enabled:=true;
    FDataMasterAkunTrans.edNamaModulJual.Enabled:=true;
    FDataMasterAkunTrans.edKodeTransJual.Enabled:=true;
    FDataMasterAkunTrans.edNamaTransJual.Enabled:=true;
    FDataMasterAkunTrans.TabPenjualan.TabVisible:=true;
  //Bank
    FDataMasterAkunTrans.edKodeModul.Enabled:=true;
    FDataMasterAkunTrans.edNamaModul.Enabled:=true;
    FDataMasterAkunTrans.edKodeTrans.Enabled:=true;
    FDataMasterAkunTrans.edNamaTrans.Enabled:=true;
    FDataMasterAkunTrans.edNamaBank.Enabled:=true;
    FDataMasterAkunTrans.edNorekening.Enabled:=true;
    FDataMasterAkunTrans.MemDetail.EmptyTable;
    FDataMasterAkunTrans.MemDetail.active:=false;
    FDataMasterAkunTrans.MemDetail.active:=true;
    FDataMasterAkunTrans.TabBank.TabVisible:=true;
  //Kas
    FDataMasterAkunTrans.edKodeModulKas.Enabled:=true;
    FDataMasterAkunTrans.edNamaModulKas.Enabled:=true;
    FDataMasterAkunTrans.edKodeTransKas.Enabled:=true;
    FDataMasterAkunTrans.edNamaTransKas.Enabled:=true;
    FDataMasterAkunTrans.MemDetailKas.EmptyTable;
    FDataMasterAkunTrans.MemDetailKas.active:=false;
    FDataMasterAkunTrans.MemDetailKas.active:=true;
    FDataMasterAkunTrans.TabKas.TabVisible:=true;
  //
  FDataMasterAkunTrans.RzPageControl2.ActivePage:=FDataMasterAkunTrans.TabPembelian;
  FDataMasterAkunTrans.ShowModal;
end;

procedure TFListMasterAkunTrans.ActDelExecute(Sender: TObject);
begin
  ShowMessage('Hapus');
end;

procedure TFListMasterAkunTrans.ActROExecute(Sender: TObject);
begin
  DBGridOrder.StartLoadingStatus();
  try
   with QAkunTransaksi do
   begin
       close;
       sql.Clear;
       sql.add(' select * from "public"."t_master_trans_account"   '+
               ' where deleted_at is null ');
       sql.add(' order by code_module, account_number_bank, code_trans asc ');
       open;
   end;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
end;

procedure TFListMasterAkunTrans.ActUpdateExecute(Sender: TObject);
begin
   FDataMasterAkunTrans.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_master_trans_account"  a '+
                 ' WHERE code_module='+QuotedSTr(QAkunTransaksi.FieldByName('code_module').AsString)+' '+
                 ' AND code_trans='+QuotedSTr(QAkunTransaksi.FieldByName('code_trans').AsString)+' '+
                 ' AND account_number_bank='+QuotedSTr(QAkunTransaksi.FieldByName('account_number_bank').AsString)+'' ;
       open;
   end;
  if Dm.Qtemp.RecordCount=0 then
  begin
    ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
    exit;
  end;
  if Dm.Qtemp.RecordCount<>0 then
  begin
    //Pembelian
    if (QAkunTransaksi.FieldByName('code_module').AsString='2') then
    begin
      with FDataMasterAkunTrans do
      begin
        edKodeModulBeli.Text:=Dm.Qtemp.FieldByName('code_module').AsString;
        edNamaModulBeli.Text:=Dm.Qtemp.FieldByName('name_module').AsString;
        edKodeTransBeli.Text:=Dm.Qtemp.FieldByName('code_trans').AsString;
        edNamaTransBeli.Text:=Dm.Qtemp.FieldByName('name_trans').AsString;
        MemKeteranganBeli.Text:=Dm.Qtemp.FieldByName('description').AsString;
        EdKodeInitialBeli.Text:=Dm.Qtemp.FieldByName('initial_code').AsString;
        edKodeModulBeli.Enabled:=false;
        edNamaModulBeli.Enabled:=false;
        edKodeTransBeli.Enabled:=false;
        edNamaTransBeli.Enabled:=false;
        RefreshPembelian;
        TabPembelian.TabVisible:=true;
        TabPenjualan.TabVisible:=false;
        TabBank.TabVisible:=false;
        TabKas.TabVisible:=false;
        RzPageControl2.ActivePage:=FDataMasterAkunTrans.TabPembelian;
      end;
    end;
    //Penjualan
    if (QAkunTransaksi.FieldByName('code_module').AsString='1') then
    begin
      with FDataMasterAkunTrans do
      begin
        rgPPH.ItemIndex:=StrToInt(SelectRow('select value_parameter from t_parameter where key_parameter=''stat_pph_jual'' '));
        rgPPN.ItemIndex:=StrToInt(SelectRow('select value_parameter from t_parameter where key_parameter=''stat_ppn_jual'' '));
        rgPotongan.ItemIndex:=StrToInt(SelectRow('select value_parameter from t_parameter where key_parameter=''stat_klasifikasi_jual'' '));
        rgMenejFee.ItemIndex:=StrToInt(SelectRow('select value_parameter from t_parameter where key_parameter=''stat_menej_fee_jual'' '));
        edPersenPPNJual.Text:=SelectRow('select value_parameter from t_parameter where key_parameter=''persen_pajak_jual'' ');
        edPersenPPHJual.Text:=SelectRow('select value_parameter from t_parameter where key_parameter=''persen_pajak_pph_jual'' ');
        edAkunJenisTax.Text:=SelectRow('select value_parameter from t_parameter where key_parameter=''default_kode_tax'' ');
        edNamaJenisTax.Text:=SelectRow('select name from t_parameter a LEFT JOIN t_sales_transaction_source b ON a.value_parameter=b.code where key_parameter=''default_kode_tax'' ');
        edAkunPPNJual.Text:=SelectRow('select value_parameter from t_parameter where key_parameter=''akun_pajak_jual'' ');
        edNamaPPNJual.Text:=SelectRow('select account_name from t_parameter a LEFT JOIN t_ak_account b ON a.value_parameter=b.code where key_parameter=''akun_pajak_jual'' ');
        edAkunPPHJual.Text:=SelectRow('select value_parameter from t_parameter where key_parameter=''akun_pajak_pph_jual'' ');
        edNamaPPHJual.Text:=SelectRow('select account_name from t_parameter a LEFT JOIN t_ak_account b ON a.value_parameter=b.code where key_parameter=''akun_pajak_pph_jual'' ');
        edKodeModulJual.Text:=Dm.Qtemp.FieldByName('code_module').AsString;
        edNamaModulJual.Text:=Dm.Qtemp.FieldByName('name_module').AsString;
        edKodeTransJual.Text:=Dm.Qtemp.FieldByName('code_trans').AsString;
        edNamaTransJual.Text:=Dm.Qtemp.FieldByName('name_trans').AsString;
        MemKeteranganJual.Text:=Dm.Qtemp.FieldByName('description').AsString;
        EdKodeInitialJual.Text:=Dm.Qtemp.FieldByName('initial_code').AsString;
        edKodeModulJual.Enabled:=false;
        edNamaModulJual.Enabled:=false;
        edKodeTransJual.Enabled:=false;
        edNamaTransJual.Enabled:=false;
        RefreshPenjualan;
        TabPembelian.TabVisible:=false;
        TabPenjualan.TabVisible:=true;
        TabBank.TabVisible:=false;
        TabKas.TabVisible:=false;
        RzPageControl2.ActivePage:=FDataMasterAkunTrans.TabPenjualan;
      end;
    end;
    //Bank
    if (QAkunTransaksi.FieldByName('code_module').AsString='3') or (QAkunTransaksi.FieldByName('code_module').AsString='5') then
    begin
      with FDataMasterAkunTrans do
      begin
        edKodeModul.Text:=Dm.Qtemp.FieldByName('code_module').AsString;
        edNamaModul.Text:=Dm.Qtemp.FieldByName('name_module').AsString;
        edKodeTrans.Text:=Dm.Qtemp.FieldByName('code_trans').AsString;
        edNamaTrans.Text:=Dm.Qtemp.FieldByName('name_trans').AsString;
        edNamaBank.Text:=Dm.Qtemp.FieldByName('account_name_bank').AsString;
        edNorekening.Text:=Dm.Qtemp.FieldByName('account_number_bank').AsString;
        MemKeterangan.Text:=Dm.Qtemp.FieldByName('description').AsString;
        EdKodeInitial.Text:=Dm.Qtemp.FieldByName('initial_code').AsString;
        rgTagihan.ItemIndex:=Dm.Qtemp.FieldByName('status_bill').AsInteger;
        edKodeModul.Enabled:=false;
        edNamaModul.Enabled:=false;
        edKodeTrans.Enabled:=false;
        edNamaTrans.Enabled:=false;
        edNamaBank.Enabled:=false;
        edNorekening.Enabled:=false;
        TabPembelian.TabVisible:=false;
        TabPenjualan.TabVisible:=false;
        TabBank.TabVisible:=true;
        TabKas.TabVisible:=false;
        RefreshGridBank;
        if edKodeModul.Text='3' then
        begin
          rgTagihan.Caption:='Ambil Data Piutang';
        end;
        if edKodeModul.Text='5' then
        begin
          rgTagihan.Caption:='Ambil Data Hutang';
        end;
        RzPageControl2.ActivePage:=FDataMasterAkunTrans.TabBank;
      end;
    end;
    //Kas
    if (QAkunTransaksi.FieldByName('code_module').AsString='4') or (QAkunTransaksi.FieldByName('code_module').AsString='6') then
    begin
      with FDataMasterAkunTrans do
      begin
        edKodeModulKas.Text:=Dm.Qtemp.FieldByName('code_module').AsString;
        edNamaModulKas.Text:=Dm.Qtemp.FieldByName('name_module').AsString;
        edKodeTransKas.Text:=Dm.Qtemp.FieldByName('code_trans').AsString;
        edNamaTransKas.Text:=Dm.Qtemp.FieldByName('name_trans').AsString;
        MemKeteranganKas.Text:=Dm.Qtemp.FieldByName('description').AsString;
        EdKodeInitialKas.Text:=Dm.Qtemp.FieldByName('initial_code').AsString;
        rgTagihanKas.ItemIndex:=Dm.Qtemp.FieldByName('status_bill').AsInteger;
        edKodeModulKas.Enabled:=false;
        edNamaModulKas.Enabled:=false;
        edKodeTransKas.Enabled:=false;
        edNamaTransKas.Enabled:=false;
        RefreshGridKas;
        TabPembelian.TabVisible:=false;
        TabPenjualan.TabVisible:=false;
        TabBank.TabVisible:=false;
        TabKas.TabVisible:=true;
        if edKodeModulKas.Text='4' then
        begin
          rgTagihanKas.Caption:='Ambil Data Piutang';
        end;
        if edKodeModulKas.Text='6' then
        begin
          rgTagihanKas.Caption:='Ambil Data Hutang';
        end;
        RzPageControl2.ActivePage:=FDataMasterAkunTrans.TabKas;
      end;
    end;

  end;
  FDataMasterAkunTrans.Show;
  FDataMasterAkunTrans.Status := 1;
end;

procedure TFListMasterAkunTrans.QAkunTransaksidescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QAkunTransaksidescription.AsString, 1, 255);
end;

initialization
RegisterClass(TFListMasterAkunTrans);
end.
