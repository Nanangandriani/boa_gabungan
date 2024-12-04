unit UListKontrakTagihan;

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
  DynVarsEh, frxClass, frxDBSet, Data.DB, MemDS, DBAccess, Uni, dxBar,
  cxClasses, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFListKontrakTagihan = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid: TDBGridEh;
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
    dxBarLargeNew: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    QKontrakTagihan: TUniQuery;
    DsKontrakTagihan: TDataSource;
    QCetak: TUniQuery;
    QCetakno_inv_tax: TStringField;
    QCetakcode_cust: TStringField;
    QCetakname_cust: TStringField;
    QCetakaddress: TMemoField;
    QCetakcode_item: TStringField;
    QCetakname_item: TStringField;
    QCetakamount: TFloatField;
    QCetakcode_unit: TStringField;
    QCetakname_unit: TStringField;
    QCetakno_reference: TStringField;
    QCetakunit_price: TFloatField;
    QCetaksub_total: TFloatField;
    QCetakppn_account: TStringField;
    QCetakppn_percent: TFloatField;
    QCetakppn_value: TFloatField;
    QCetakpph_account: TStringField;
    QCetakpph_name: TStringField;
    QCetakpph_percent: TFloatField;
    QCetakpph_value: TFloatField;
    QCetaktot_piece_value: TFloatField;
    QCetaktot_piece_percent: TFloatField;
    QCetakgrand_tot: TFloatField;
    QCetakpiece_first: TFloatField;
    QCetakpiece_second: TFloatField;
    QCetakpiece_third: TFloatField;
    QCetakpiece_fourth: TFloatField;
    QCetaktrans_no: TStringField;
    QCetaktrans_date: TDateField;
    frxDBDPenjualan: TfrxDBDataset;
    Report: TfrxReport;
    QKontrakTagihannocontract: TStringField;
    QKontrakTagihancust_name: TStringField;
    QKontrakTagihanaddress: TMemoField;
    QKontrakTagihantype_contract_name: TStringField;
    QKontrakTagihanperiode_end: TDateField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure QKontrakTagihanaddressGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListKontrakTagihan: TFListKontrakTagihan;

implementation

{$R *.dfm}

uses UNewKontrakTagihan, UDataModule;

procedure TFListKontrakTagihan.ActBaruExecute(Sender: TObject);
begin
  FNewKontrakTagihan.Clear;
  FNewKontrakTagihan.MemDataBiaya.EmptyTable;
  Status:=0;
  FNewKontrakTagihan.edNoKontrak.Enabled:=true;
  FNewKontrakTagihan.ShowModal;
end;

procedure TFListKontrakTagihan.ActDelExecute(Sender: TObject);
begin
  Showmessage('Delete');
end;

procedure TFListKontrakTagihan.ActROExecute(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QKontrakTagihan do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_billing_contract"   '+
                 ' where deleted_at is null order by created_at Desc ';
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListKontrakTagihan.ActUpdateExecute(Sender: TObject);
begin
   FNewKontrakTagihan.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_billing_contract" a '+
                 ' WHERE "nocontract"='+QuotedSTr(QKontrakTagihan.FieldByName('nocontract').AsString)+' '+
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
  with FNewKontrakTagihan do
  begin
    edNoKontrak.Text:=Dm.Qtemp.FieldByName('nocontract').AsString;
    edKodePelanggan.Text:=Dm.Qtemp.FieldByName('cust_code').AsString;
    edNamaPelanggan.Text:=Dm.Qtemp.FieldByName('cust_name').AsString;
    edNPWP.Text:=Dm.Qtemp.FieldByName('cust_npwp').AsString;
    MemAlamat.Text:=Dm.Qtemp.FieldByName('address').AsString;
    EdKodeJenisKontrak.Text:=Dm.Qtemp.FieldByName('type_contract_code').AsString;
    edNamaJenisKontrak.Text:=Dm.Qtemp.FieldByName('type_contract_name').AsString;
    dtPeriodeAwal.Date:=Dm.Qtemp.FieldByName('periode_first').AsDateTime;
    dtPeriodeAkhir.Date:=Dm.Qtemp.FieldByName('periode_end').AsDateTime;
    edTermin.Value:=Dm.Qtemp.FieldByName('term_date').Value;
    edJatuhTempo.Value:=Dm.Qtemp.FieldByName('due_date').Value;
    edMenejFee.Value:=Dm.Qtemp.FieldByName('menj_fee').Value;
    rgIntegrasiBiaya.ItemIndex:=Dm.Qtemp.FieldByName('cost_integration').Value;
  end;
  end;


  //biaya
   with Dm.Qtemp1 do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_billing_contract_det" a '+
                 ' WHERE "nocontract"='+QuotedSTr(QKontrakTagihan.FieldByName('nocontract').AsString)+' '+
                 ' order by cost_code Desc ';
       open;
   end;

    if Dm.Qtemp1.RecordCount<>0 then
    begin
    FNewKontrakTagihan.MemDataBiaya.active:=false;
    FNewKontrakTagihan.MemDataBiaya.active:=true;
    FNewKontrakTagihan.MemDataBiaya.EmptyTable;
    Dm.Qtemp1.first;
    while not Dm.Qtemp1.Eof do
    begin
    with FNewKontrakTagihan do
    begin
     MemDataBiaya.insert;
     MemDataBiaya['kd_biaya']:=Dm.Qtemp1.fieldbyname('cost_code').value;
     MemDataBiaya['nm_biaya']:=Dm.Qtemp1.fieldbyname('cost_name').value;
     MemDataBiaya['menejmen_fee']:=Dm.Qtemp1.fieldbyname('menj_fee').value;
     MemDataBiaya['akun_ppn']:=Dm.Qtemp1.fieldbyname('account_code_ppn').value;
     MemDataBiaya['nama_ppn']:=Dm.Qtemp1.fieldbyname('account_name_ppn').value;
     MemDataBiaya['persen_ppn']:=Dm.Qtemp1.fieldbyname('ppn_percent').value;
     MemDataBiaya['akun_pph']:=Dm.Qtemp1.fieldbyname('account_code_pph').value;
     MemDataBiaya['nama_pph']:=Dm.Qtemp1.fieldbyname('account_name_pph').value;
     MemDataBiaya['persen_pph']:=Dm.Qtemp1.fieldbyname('pph_percent').value;
     MemDataBiaya['keterangan']:=Dm.Qtemp1.fieldbyname('description').value;
     MemDataBiaya.post;
    end;
    Dm.Qtemp1.next;
    end;
    end;
  //end biaya

  Status := 1;
  FNewKontrakTagihan.edNoKontrak.Enabled:=false;
  FNewKontrakTagihan.edNamaPelanggan.Enabled:=false;
  FNewKontrakTagihan.Show;
end;

procedure TFListKontrakTagihan.QKontrakTagihanaddressGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=Copy(QKontrakTagihanaddress.AsString,1,255);
end;

initialization
  RegisterClass(TFListKontrakTagihan);


end.
