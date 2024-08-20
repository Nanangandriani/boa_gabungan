unit UListPenjualan;

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
  TFDataListPenjualan = class(TForm)
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
    QPenjualan: TUniQuery;
    QPenjualanno_trans: TStringField;
    QPenjualancode_cust: TStringField;
    QPenjualanname_cust: TStringField;
    QPenjualanpayment_term: TSmallintField;
    QPenjualanno_purchase: TStringField;
    QPenjualancode_source: TStringField;
    QPenjualanname_source: TStringField;
    DsPenjualan: TDataSource;
    QPenjualandate_trans: TDateField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataListPenjualan: TFDataListPenjualan;

implementation

{$R *.dfm}

uses UNew_DataPenjualan, UDataModule, UMy_Function, UHomeLogin;

procedure TFDataListPenjualan.ActBaruExecute(Sender: TObject);
begin
  FNew_Penjualan.Clear;
  //FNew_Penjualan.Autonumber;
  FNew_Penjualan.MemDetail.EmptyTable;
  Status:=0;
  FNew_Penjualan.edKode_Trans.Enabled:=true;
  FNew_Penjualan.ShowModal;
end;

procedure TFDataListPenjualan.ActDelExecute(Sender: TObject);
begin
   {with dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_selling"   '+
                 ' where no_reference='+QuotedStr(QPenjualan.FieldByName('notrans').AsString)+' '+
                 ' AND deleted_at is null order by created_at Desc ';
       open;
   end;
   if dm.Qtemp.RecordCount<>0 then
   begin
     ShowMessage('Maaf, Proses Tidak Dapat Dilanjutkan Dikarenakan Sudah Di Buat Tagihan...!!!');
     exit;
   end;}

  MessageDlg('Buatkan Validasi Tagihan Sudah Dibuat Tahap Lanjut Belum...',mtInformation,[MBOK],0);

  if MessageDlg('Apakah anda yakin ingin Membatalkan Tagihan ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "sale"."t_selling"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "no_trans"='+QuotedStr(QPenjualan.FieldByName('no_trans').AsString);
          ExecSQL;
        end;
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "sale"."t_selling_det"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "no_trans"='+QuotedStr(QPenjualan.FieldByName('no_trans').AsString);
          ExecSQL;
        end;
        MessageDlg('Proses Pembatalan Berhasil..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
  end;
end;

procedure TFDataListPenjualan.ActROExecute(Sender: TObject);
begin
  DBGridOrder.StartLoadingStatus();
  try
   with QPenjualan do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_selling"   '+
                 ' where deleted_at is null order by created_at Desc ';
       open;
   end;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
end;

procedure TFDataListPenjualan.ActUpdateExecute(Sender: TObject);
begin
   FNew_Penjualan.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_selling" a '+
                 ' WHERE "no_trans"='+QuotedSTr(QPenjualan.FieldByName('no_trans').AsString)+' '+
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
  with FNew_Penjualan do
  begin
    edKode_Trans.Text:=Dm.Qtemp.FieldByName('code_trans').AsString;
    edNomorFaktur.Text:=Dm.Qtemp.FieldByName('no_inv_tax').AsString;
    edNomorTrans.Text:=Dm.Qtemp.FieldByName('no_trans').AsString;
    edSuratJalanTrans.Text:=Dm.Qtemp.FieldByName('no_traveldoc').AsString;
    dtTanggal.Date:=Dm.Qtemp.FieldByName('date_trans').AsDateTime;
    edKode_Pelanggan.Text:=Dm.Qtemp.FieldByName('code_cust').AsString;
    edNama_Pelanggan.Text:=Dm.Qtemp.FieldByName('name_cust').AsString;
    edKodeSumber.Text:=Dm.Qtemp.FieldByName('code_source').AsString;
    edNamaSumber.Text:=Dm.Qtemp.FieldByName('name_source').AsString;
    spJatuhTempo.Text:=Dm.Qtemp.FieldByName('payment_term').AsString;
    edNoReff.Text:=Dm.Qtemp.FieldByName('no_reference').AsString;
    vFormSumber:=SelectRow('SELECT form_target from t_selling_source where code='+QuotedStr(Dm.Qtemp.FieldByName('code_source').AsString)+' ');
    order_no:=Dm.Qtemp.FieldByName('order_no').AsString;
    kd_kares:=Dm.Qtemp.FieldByName('additional_code').AsString;
    strtgl:=Dm.Qtemp.FieldByName('trans_day').AsString;
    strbulan:=Dm.Qtemp.FieldByName('trans_month').AsString;
    strtahun:=Dm.Qtemp.FieldByName('trans_year').AsString;
  end;
  end;
  FNew_Penjualan.edNomorTrans.Enabled:=false;
  FNew_Penjualan.edSuratJalanTrans.Enabled:=false;
  FNew_Penjualan.Show;
  Status := 1;
end;

initialization
  RegisterClass(TFDataListPenjualan);

end.
