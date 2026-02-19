unit u_rencana_lunas_hutang;

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
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Vcl.StdCtrls, RzButton, Vcl.ComCtrls, Vcl.ExtCtrls, RzPanel, Data.DB, MemDS,
  DBAccess, Uni, MemTableDataEh, MemTableEh, RzCmboBx;

type
  TFList_Rencana_Lunas_Hutang = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DBGrid_List_Rencana: TDBGridEh;
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
    Cari_supp: TButton;
    Label3: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    txtkdsupp: TEdit;
    txtnmsupp: TEdit;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    BCari: TRzBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    CBstatus: TComboBox;
    DateTimePicker1: TDateTimePicker;
    QRencana: TUniQuery;
    DSRencana: TDataSource;
    QRencanajumlah: TFloatField;
    QRencanaid: TLargeintField;
    QRencanafaktur_no: TStringField;
    QRencanaperiode1: TDateField;
    QRencanaperiode2: TDateField;
    QRencanabank: TStringField;
    QRencanacek_no: TStringField;
    QRencanaplan_to: TSmallintField;
    QRencanasupplier_code: TStringField;
    QRencanasupplier_name: TStringField;
    QRencanapaid_date: TDateField;
    QRencanaperiodetempo1: TDateField;
    QRencanaperiodetempo2: TDateField;
    QRencanapaid_status: TSmallintField;
    QRencanaapprove_status: TBooleanField;
    QRencanadebt_type: TIntegerField;
    QRencanaaccount_code: TStringField;
    QRencanaaccount_name: TStringField;
    QRencanainv_no: TStringField;
    QRencanasj_no: TStringField;
    QRencanafaktur_date: TDateField;
    QRencanatrans_date: TDateField;
    QRencanatrans_no: TStringField;
    QRencanabank_name: TStringField;
    QRencanasource_plan_id: TIntegerField;
    QRencanabank_code: TStringField;
    QRencana_det: TUniQuery;
    DSRencana_det: TDataSource;
    QRencana_detjumlah: TFloatField;
    QRencana_detid: TLargeintField;
    QRencana_detfaktur_no: TStringField;
    QRencana_detinv_no: TStringField;
    QRencana_detsj_no: TStringField;
    QRencana_detfaktur_date: TDateField;
    QRencana_detperiode1: TDateField;
    QRencana_detperiode2: TDateField;
    QRencana_detbank: TStringField;
    QRencana_detcek_no: TStringField;
    QRencana_detplan_to: TSmallintField;
    QRencana_detsupplier_code: TStringField;
    QRencana_detsupplier_name: TStringField;
    QRencana_detpaid_date: TDateField;
    QRencana_detperiodetempo1: TDateField;
    QRencana_detperiodetempo2: TDateField;
    QRencana_detpaid_status: TSmallintField;
    QRencana_detapprove_status: TBooleanField;
    QRencana_detdebt_type: TIntegerField;
    QRencana_detsource_plan_id: TIntegerField;
    QRencana_detaccount_code: TStringField;
    QRencana_detaccount_name: TStringField;
    QRencana_dettrans_date: TDateField;
    QRencana_dettrans_no: TStringField;
    QRencana_detbank_name: TStringField;
    QRencana_detbank_code: TStringField;
    Label8: TLabel;
    CbRencanake: TRzComboBox;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure BCariClick(Sender: TObject);
    procedure Cari_suppClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure load_rencanake;
  end;

//var
function
  FList_Rencana_Lunas_Hutang: TFList_Rencana_Lunas_Hutang;

implementation

{$R *.dfm}

uses u_rencana_lunas_hutang_input, UDataModule, USearch_Supplier;

var
  RealFList_Rencana_Lunas_Hutang: TFList_Rencana_Lunas_Hutang;

function FList_Rencana_Lunas_Hutang: TFList_Rencana_Lunas_Hutang;
begin
  if RealFList_Rencana_Lunas_Hutang <> nil then
     FList_Rencana_Lunas_Hutang:= RealFList_Rencana_Lunas_Hutang
  else
    Application.CreateForm(TFList_Rencana_Lunas_Hutang, Result);
end;

procedure TFList_Rencana_Lunas_Hutang.ActBaruExecute(Sender: TObject);
begin
   FRencana_Lunas_Hutang.vcall:='new';
   FRencana_Lunas_Hutang.Show;
end;

procedure TFList_Rencana_Lunas_Hutang.ActDelExecute(Sender: TObject);
begin
    if Qrencana.RecordCount=0 then
    begin
      MessageDlg('Data Kosong!!',mtInformation,[mbRetry],0);
    end
    else
    if Qrencana.FieldByName('paid_status').value=true then
    begin
      MessageDlg('Rencana sudah lunas, tidak dapat dihapus!!',mtInformation,[mbRetry],0);
    end
    else
    begin
      if application.MessageBox('Yakin data akan dihapus?','confirm',mb_yesno or MB_ICONQUESTION)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.text:=' delete from t_paid_debt_det '+
                    ' where paid_status='+IntToStr(CBstatus.ItemIndex)+' and  '+
                    ' periode1 ='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and '+
                    ' periode2 ='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date))+' and '+
                    ' plan_to='+QuotedStr(CbRencanake.Text)+' and '+
                    ' supplier_code='+QuotedStr(QRencana.fieldbyname('supplier_code').AsString)+' and '+
                    ' cek_no='+QuotedStr(QRencana.fieldbyname('cek_no').AsString)+' ';

         {           ' where periode1=:periode1 and periode2=:periode2 and supplier_code=:kd_sup '+
                    ' and plan_to=:rencanake';
          params.ParamByName('periode1').value:=Qrencana.fieldbyname('periode1').asstring;
          params.ParamByName('periode2').value:=Qrencana.fieldbyname('periode2').asstring;
          params.ParamByName('kd_sup').value:=Qrencana.fieldbyname('supplier_code').asstring;
          params.ParamByName('rencanake').value:=Qrencana.fieldbyname('plan_to').asstring;  }
          //params.ParamByName('stat_approve').asstring:=Qrencana.fieldbyname('approve_status').asstring;
          Execute;
        end;
        //Qrencana.close;
        //Qrencana.open;
      end;
    end;
end;

procedure TFList_Rencana_Lunas_Hutang.ActROExecute(Sender: TObject);
begin
    DBGrid_List_Rencana.StartLoadingStatus();
    CBstatus.ItemIndex:=0;
    txtkdsupp.Text:='';
    txtnmsupp.Text:='';
    BCariClick(sender);
    DBGrid_List_Rencana.FinishLoadingStatus();
end;

procedure TFList_Rencana_Lunas_Hutang.ActUpdateExecute(Sender: TObject);
begin

  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    Sql.Text:=' SELECT bank,supplier_code,inv_no,faktur_no,faktur_date,cek_no,cek_date,'+
              ' paid_date,periode1,periode2,periodetempo1,periodetempo2,amount,debt_type,'+
              ' username,npph,pph_account,pph_name ,paid_status,exchange_rate,dolar_amount,'+
              ' approve_status,sj_no,factory_code,plan_to,source_plan_id '+
              ' from t_paid_debt_det  '+
              ' where paid_status='+IntToStr(CBstatus.ItemIndex)+' and  '+
              ' periode1 ='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and '+
              ' periode2 ='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date))+' and '+
              ' plan_to='+QuotedStr(CbRencanake.Text)+' and '+
              ' supplier_code='+QuotedStr(QRencana.fieldbyname('supplier_code').AsString)+' and '+
              ' cek_no='+QuotedStr(QRencana.fieldbyname('cek_no').AsString)+' ';
    Open;
  end;

  if dm.Qtemp.RecordCount=0 then
  begin
    ShowMessage('Tidak Ditemukan Data') ;
    Exit;
  end;
  if dm.Qtemp.RecordCount<>0 then
  begin
  with FRencana_Lunas_Hutang do
  begin
    MemRencana.active:=false;
    MemRencana.active:=true;
    MemRencana.EmptyTable;

    if dm.Qtemp.FieldByName('bank').asstring='' then
    begin
      cbbank.Text:='';
      rbbank.Checked:=false;
      rbkas.Checked:=true;
    end else
    begin
      cbbank.Text:=dm.Qtemp.FieldByName('bank').asstring;
      rbbank.Checked:=true;
      rbkas.Checked:=false;
    end;

    txtnocek.Text:=dm.Qtemp.FieldByName('cek_no').asstring;
    dptglcek.Date:=Dm.Qtemp.FieldByName('cek_date').AsDateTime;
    dptgllunas.Date:=Dm.Qtemp.FieldByName('paid_date').AsDateTime;
    dpperiode1.Date:=Dm.Qtemp.FieldByName('periode1').AsDateTime;
    dpperiode2.Date:=Dm.Qtemp.FieldByName('periode2').AsDateTime;
    dpperiodetmp1.Date:=Dm.Qtemp.FieldByName('periodetempo1').AsDateTime;
    dpperiodetmp2.Date:=Dm.Qtemp.FieldByName('periodetempo2').AsDateTime;
    CBrencanake.Text:=dm.Qtemp.FieldByName('plan_to').asstring;
    id_source.Text:=dm.Qtemp.FieldByName('source_plan_id').asstring;
    CbSumber.Text:='Hutang';

  MemRencana.active:=false;
  MemRencana.active:=true;
  MemRencana.EmptyTable;

  dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    MemRencana.insert;
    MemRencana['kd_sup']:=dm.Qtemp.FieldByName('supplier_code').asstring;
    MemRencana['noinv']:=dm.Qtemp.FieldByName('inv_no').asstring;
    MemRencana['nosj']:=dm.Qtemp.FieldByName('inv_no').asstring;
    MemRencana['nofaktur']:=dm.Qtemp.FieldByName('faktur_no').asstring;
    MemRencana['tglfaktur']:=dm.Qtemp.FieldByName('faktur_date').AsDateTime;
    MemRencana['akun_pph']:=dm.Qtemp.FieldByName('pph_account').asstring;
    MemRencana['npph']:=dm.Qtemp.FieldByName('npph').asstring;
    MemRencana['jumlah']:=dm.Qtemp.FieldByName('amount').value;
    MemRencana['source_id']:=dm.Qtemp.FieldByName('source_plan_id').asstring;
    MemRencana.post;
    dm.Qtemp.Next;
  end;


  end;

  FRencana_Lunas_Hutang.Show;
  end;
end;

procedure TFList_Rencana_Lunas_Hutang.BCariClick(Sender: TObject);
var query:string;
begin
    query:='select * from v_plan_paid_debt ';
    if CBstatus.ItemIndex=0 then
    begin
      if txtkdsupp.Text='' then
      begin
        with Qrencana do
        begin
          close;
          sql.clear;
          sql.text:='select * from v_plan_paid_debt '+
                    'where paid_status=0 and periode1 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date))+' and plan_to='+Quotedstr(CbRencanake.Text)+' ';
          open;
        end;
      end
      else
      begin
        with Qrencana do
        begin
          close;
          sql.clear;
          sql.text:='select * from v_plan_paid_debt '+
                    'where paid_status=0 and  periode1 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date))+' and plan_to='+Quotedstr(CbRencanake.Text)+' and '+
                    'supplier_code='+QuotedStr(txtkdsupp.Text) ;
          open;
        end;
      end;
    end
    else
    begin
      if txtkdsupp.Text='' then
      begin
        with Qrencana do
        begin
          close;
          sql.clear;
          sql.text:='select * from v_plan_paid_debt '+
                    'where paid_status=1 and '+
                    'periode1 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date))+' and plan_to='+Quotedstr(CbRencanake.Text)+' ';
          open;
        end;
      end
      else
      begin
        with Qrencana do
        begin
          close;
          sql.clear;
          sql.text:='select * from v_plan_paid_debt '+
                    'where paid_status=1 and '+
                    'periode1 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date))+' and '+
                    'supplier_code='+QuotedStr(txtkdsupp.Text)+' and plan_to='+Quotedstr(CbRencanake.Text)+' ';

          open;
        end;
      end;
    end;
end;

procedure TFList_Rencana_Lunas_Hutang.Cari_suppClick(Sender: TObject);
begin
    with FSearch_Supplier do
    begin
       QSupplier.Close;
       QSupplier.Open;
    end;
    FSearch_Supplier.Caption:='Master Data Supplier';
    FSearch_Supplier.vcall:='rencanalunashutang';
    FSearch_Supplier.ShowModal;
end;

procedure TFList_Rencana_Lunas_Hutang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=cafree;
end;

procedure TFList_Rencana_Lunas_Hutang.FormCreate(Sender: TObject);
begin
   RealFList_Rencana_Lunas_Hutang:=self;
end;

procedure TFList_Rencana_Lunas_Hutang.FormDestroy(Sender: TObject);
begin
   RealFList_Rencana_Lunas_Hutang:=nil;
end;

procedure TFList_Rencana_Lunas_Hutang.FormShow(Sender: TObject);
begin
   DateTimePicker1.Date:=Now;
   DateTimePicker2.Date:=Now;
   load_rencanake;
end;


procedure TFList_Rencana_Lunas_Hutang.load_rencanake;
begin
   with Dm.Qtemp do
   begin
     close;
     sql.Text:='SELECT * from t_plan_to ';
     Open;
   end;
   Dm.Qtemp.First;
   CbRencanake.Items.Clear;
   while not dm.Qtemp.Eof do
   begin
     CbRencanake.Items.Add(Dm.Qtemp.FieldByName('plan_to').AsString);
     Dm.Qtemp.Next;
   end;
end;



initialization
RegisterClass(TFList_Rencana_Lunas_Hutang);

end.
