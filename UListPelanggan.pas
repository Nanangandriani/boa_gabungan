unit UListPelanggan;

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
  TFListPelanggan = class(TForm)
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
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    QPelanggan: TUniQuery;
    DsPelanggan: TDataSource;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    QPelanggancustomer_code: TStringField;
    QPelanggancustomer_name: TStringField;
    QPelanggantelp: TStringField;
    QPelangganemail: TStringField;
    QPelangganaddress: TMemoField;
    QPelangganpayment_term: TSmallintField;
    DBGridCustomer: TDBGridEh;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    procedure dxBarLargeNewClick(Sender: TObject);
    procedure dxBarUpdateClick(Sender: TObject);
    procedure dxBarRefreshClick(Sender: TObject);
    procedure dxBarDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QPelangganaddressGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;

  end;

var
  FListPelanggan: TFListPelanggan;

implementation

{$R *.dfm}

uses UNew_Pelanggan, UDataModule, UMy_Function, UDataProspekPelanggan,
  UDataBankGaransi;

procedure TFListPelanggan.Refresh;
begin
   with QPelanggan do
   begin
       close;
       sql.Clear;
       sql.Text:=' select a.customer_code, customer_name, email, address, contact_person1 as telp, '+
                 ' payment_term from t_customer a '+
                 ' LEFT JOIN (select customer_code, address, contact_person1 '+
                   ' from t_customer_address where code_details=''001'') b ON a.customer_code=b.customer_code '+
                 ' where deleted_at is null order by created_at Desc ';
       open;
   end;
   QPelanggan.Active:=False;
   QPelanggan.Active:=True;
   QPelanggan.Close;
   QPelanggan.Open;
end;

{procedure TFListPelanggan.Refresh;
begin
  DBGridEh1.StartLoadingStatus();
  try
    Qpelanggan.Close;
    Qpelanggan.Open;
  finally
  DBGridEh1.FinishLoadingStatus();
  end;
end;}

procedure TFListPelanggan.dxBarDeleteClick(Sender: TObject);
begin
  if MessageDlg('Apakah anda yakin ingin menghapus data ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    with Dm.Qtemp do
    begin
      close;
      sql.Clear;
      //sql.Text:='Delete From t_pelanggan where kode_pelanggan = '+QuotedStr(DBGridEh1.Fields[0].AsString);
      sql.Text:=' Update t_customer set deleted_at=:deleted_at,deleted_by=:deleted_by '+
                ' where customer_code='+QuotedStr(DBGridCustomer.Fields[0].AsString);
      parambyname('deleted_at').AsDateTime:=Now;
      parambyname('deleted_by').AsString:='Admin';
      execsql;
    end;
    MessageDlg('Hapus Berhasil..!!',mtInformation,[MBOK],0);
    Refresh;
  end;
end;

procedure TFListPelanggan.dxBarUpdateClick(Sender: TObject);
begin
  with Dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' select * from t_customer a '+
             ' WHERE customer_code='+QuotedSTr(QPelanggan.FieldByName('customer_code').AsString)+' '+
             ' AND deleted_at is null order by created_at Desc ';
    open;
  end;
  if Dm.Qtemp.RecordCount=0 then
  begin
    ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
    exit;
  end;

  if Dm.Qtemp.RecordCount<>0 then
  begin
    with FNew_Pelanggan do
    begin
      Edkode.Text:=Dm.Qtemp.FieldByName('customer_code').AsString;
      Edautocode.Text:=Dm.Qtemp.FieldByName('customer_code').AsString;
      Ednama.Text:=Dm.Qtemp.FieldByName('customer_name').AsString;
      Edemail.Text:=Dm.Qtemp.FieldByName('email').AsString;
      Edtempo.Text:=Dm.Qtemp.FieldByName('payment_term').AsString;
      Ednamapkp.Text:=Dm.Qtemp.FieldByName('customer_name_pkp').AsString;
      Ednpwp.Text:=Dm.Qtemp.FieldByName('no_npwp').AsString;
      Ednik.Text:=Dm.Qtemp.FieldByName('no_nik').AsString;
      edKd_Jenis_Pajak.Text:=Dm.Qtemp.FieldByName('cust_type_code_tax').AsString;
      edNm_Jenis_Pajak.Text:=Dm.Qtemp.FieldByName('cust_type_name_tax').AsString;
      edKd_Negara.Text:=Dm.Qtemp.FieldByName('country_code_tax').AsString;
      edNm_Negara.Text:=Dm.Qtemp.FieldByName('country_name_tax').AsString;
      EdNitKu.Text:=Dm.Qtemp.FieldByName('no_nitku').AsString;
      EdPaspor.Text:=Dm.Qtemp.FieldByName('no_passport').AsString;
      Ednomorva.Text:=Dm.Qtemp.FieldByName('number_va').AsString;
      Edkodewilayah.Text:=Dm.Qtemp.FieldByName('code_region').AsString;
      Ednamawilayah.Text:=Dm.Qtemp.FieldByName('name_region').AsString;
      Edkodepos.Text:=Dm.Qtemp.FieldByName('postal_code').AsString;
      edKode_jnispel.Text:=Dm.Qtemp.FieldByName('code_type').AsString;
      edJenisPelanggan.Text:=Dm.Qtemp.FieldByName('name_type').AsString;
      edKode_typejual.Text:=Dm.Qtemp.FieldByName('code_selling_type').AsString;
      edTypePenjualan.Text:=Dm.Qtemp.FieldByName('name_selling_type').AsString;
      edKode_gol.Text:=Dm.Qtemp.FieldByName('code_group').AsString;
      edGolonganPelanggan.Text:=Dm.Qtemp.FieldByName('name_group').AsString;
      if dm.Qtemp.FieldValues['idprospek']<>NULL then
      vid_prospek:=Dm.Qtemp.FieldByName('idprospek').AsInteger else vid_prospek:=0;
      edAkunPiutang.Text:=Dm.Qtemp.FieldByName('account_code').AsString;
      edNamaPiutang.Text:=SelectRow('select account_name from t_ak_account_sub where account_code2='+QuotedSTR(Dm.Qtemp.FieldByName('account_code').AsString));
      KodeHeaderPiutang:=Dm.Qtemp.FieldByName('header_code').AsString;
      edAkunPiutangLainLain.Text:=Dm.Qtemp.FieldByName('account_code2').AsString;
      edNamaPiutangLain.Text:=SelectRow('select account_name from t_ak_account_sub where account_code2='+QuotedSTR(Dm.Qtemp.FieldByName('account_code2').AsString));
      KodeHeaderPiutang:=Dm.Qtemp.FieldByName('header_code2').AsString;
      Edkodeinitial.Text:=Dm.Qtemp.FieldByName('initial_code').AsString;
      edKodeKantorPusat.Text:=Dm.Qtemp.FieldByName('code_head_office').AsString;
      edNamaKantorPusat.Text:=Dm.Qtemp.FieldByName('name_head_office').AsString;
      edKode_JenisUsaha.Text:=Dm.Qtemp.FieldByName('code_type_business').AsString;
      edJenisUsaha.Text:=Dm.Qtemp.FieldByName('name_type_business').AsString;
      if Dm.Qtemp.FieldByName('stat_pkp').AsBoolean=false then
      begin
        cbpkp.Checked:=false;
      end;
      if Dm.Qtemp.FieldByName('stat_pkp').AsBoolean=true then
      begin
        cbpkp.Checked:=true;
      end;
    end;
  end;
  FNew_Pelanggan.Edkode.Enabled:=false;
  FNew_Pelanggan.edAkunPiutang.Enabled:=false;
  FNew_Pelanggan.edAkunPiutangLainLain.Enabled:=false;
  FNew_Pelanggan.edAkunPiutang.ReadOnly:=true;
  FNew_Pelanggan.edAkunPiutangLainLain.ReadOnly:=true;
  FNew_Pelanggan.RzPageControl2.ActivePage:=FNew_Pelanggan.TabMasterPelanggan;
  FNew_Pelanggan.Show;
  Status := 1;
end;

procedure TFListPelanggan.FormShow(Sender: TObject);
begin
  Refresh;
end;

procedure TFListPelanggan.QPelangganaddressGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QPelangganaddress.AsString, 1, 200);
end;

procedure TFListPelanggan.dxBarRefreshClick(Sender: TObject);
begin
  DBGridcustomer.StartLoadingStatus();
  try
    Qpelanggan.Close;
    Qpelanggan.Open;
  finally
  DBGridcustomer.FinishLoadingStatus();
  end;
end;

procedure TFListPelanggan.dxBarLargeButton1Click(Sender: TObject);
begin
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from t_customer a '+
                 ' WHERE customer_code='+QuotedSTr(QPelanggan.FieldByName('customer_code').AsString)+' '+
                 ' AND deleted_at is null order by created_at Desc ';
       open;
   end;
  if Dm.Qtemp.RecordCount=0 then
  begin
    ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
    exit;
  end;

  if Dm.Qtemp.RecordCount<>0 then
  begin
    with FDataBankGaransi do
    begin
      Edkode.Text:=Dm.Qtemp.FieldByName('customer_code').AsString;
      Ednama.Text:=Dm.Qtemp.FieldByName('customer_name').AsString;
      Ednamawilayah.Text:=Dm.Qtemp.FieldByName('name_region').AsString;
    end;
    FDataBankGaransi.RefreshGrid;
    FDataBankGaransi.show;
  end;
end;

procedure TFListPelanggan.dxBarLargeNewClick(Sender: TObject);
begin
  if SelectRow('select value_parameter from t_parameter where key_parameter=''sys_prospek'' ')= 'ya' then
  begin
    FDataProspekPelanggan.showmodal;
  end else
  begin
    FNew_Pelanggan.Clear;
    FNew_Pelanggan.Edkode.Enabled:=true;
    FNew_Pelanggan.edAkunPiutang.Enabled:=true;
    FNew_Pelanggan.edAkunPiutang.ReadOnly:=false;
    FNew_Pelanggan.edAkunPiutangLainLain.Enabled:=true;
    FNew_Pelanggan.edAkunPiutangLainLain.ReadOnly:=false;
    FNew_Pelanggan.RzPageControl2.ActivePage:=FNew_Pelanggan.TabMasterPelanggan;
    FNew_Pelanggan.Autocode;
    FNew_Pelanggan.ShowModal;
    Status:=0;
  end;
end;

initialization
  RegisterClass(TFListPelanggan);

end.
