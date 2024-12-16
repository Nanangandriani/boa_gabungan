unit UListKasKecil;

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
  TFListKasKecil = class(TForm)
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
    QKasKecil: TUniQuery;
    QKasKecilvoucher_no: TStringField;
    QKasKeciltrans_date: TDateField;
    QKasKecilactors_code: TStringField;
    QKasKecilactors_name: TStringField;
    QKasKecilamount: TFloatField;
    QKasKecildescription: TStringField;
    DsKasKecil: TDataSource;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListKasKecil: TFListKasKecil;

implementation

{$R *.dfm}

uses UDataKasKecil, UDataModule, UHomeLogin, UMy_Function;

procedure TFListKasKecil.ActBaruExecute(Sender: TObject);
begin
  FDataKasKecil.Clear;
  FDataKasKecil.Status:=0;
  FDataKasKecil.edNoTrans.Enabled:=true;
  FDataKasKecil.ShowModal;
end;

procedure TFListKasKecil.ActDelExecute(Sender: TObject);
begin
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
          sql.Text:=' UPDATE "public"."t_petty_cash" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "voucher_no"='+QuotedStr(QKasKecil.FieldByName('voucher_no').AsString);
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

procedure TFListKasKecil.ActROExecute(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QKasKecil do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_petty_cash"   '+
                 ' where deleted_at is null order by created_at Desc ';
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListKasKecil.ActUpdateExecute(Sender: TObject);
begin
   FDataKasKecil.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_petty_cash"  a '+
                 ' WHERE "voucher_no"='+QuotedSTr(QKasKecil.FieldByName('voucher_no').AsString)+' '+
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
  with FDataKasKecil do
  begin
    //Master
    edNoTrans.Text:=Dm.Qtemp.FieldByName('voucher_no').AsString;
    dtTrans.date:=Dm.Qtemp.FieldByName('trans_date').AsDateTime;
    edKodeKepada.Text:=Dm.Qtemp.FieldByName('actors_code').AsString;
    edNamaKepada.Text:=Dm.Qtemp.FieldByName('actors_name').AsString;
    edKodeSumberKas.Text:=Dm.Qtemp.FieldByName('source_code').AsString;
    edNamaSumberKas.Text:=Dm.Qtemp.FieldByName('source_name').AsString;
    MemKeterangan.Text:=Dm.Qtemp.FieldByName('description').AsString;
    stat_bon:=Dm.Qtemp.FieldByName('stat_receipt').Value;
      if stat_bon=1 then
      begin
        edNomorKasBon.Text:=Dm.Qtemp.FieldByName('voucher_no_receipt').AsString;
        edJumlah.Value:=Dm.Qtemp.FieldByName('amount_receipt').Value;
        gbDataBON.Visible:=True;
      end;
      if stat_bon=0 then
      begin
        edNomorKasBon.Clear;
        edJumlah.Value:=0.00;
        gbDataBON.Visible:=False;
      end;

    order_no:=Dm.Qtemp.FieldByName('order_no').AsString;
    strtgl:=Dm.Qtemp.FieldByName('trans_day').AsString;
    strbulan:=Dm.Qtemp.FieldByName('trans_month').AsString;
    strtahun:=Dm.Qtemp.FieldByName('trans_year').AsString;

    //detailakun
    with Dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * from ('+
              ' SELECT * from "public"."t_petty_cash_det"'+
              ' WHERE "voucher_no"='+QuotedStr(QKasKecil.FieldByName('voucher_no').AsString)+' ) a '+
              ' Order By position asc');
      open;
    end;

    MemDetailAkun.EmptyTable;
    Dm.Qtemp1.First;
    while not Dm.Qtemp1.Eof do
    begin
        FDataKasKecil.MemDetailAkun.Insert;
        FDataKasKecil.MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('code_account').AsString;
        FDataKasKecil.MemDetailAkun['nm_akun']:=Dm.Qtemp1.fieldbyname('name_account').AsString;
        if Dm.Qtemp1.fieldbyname('position').AsString='D' then
        begin
          FDataKasKecil.MemDetailAkun['kredit']:=0;
          FDataKasKecil.MemDetailAkun['debit']:=Dm.Qtemp1.fieldbyname('paid_amount').Value;
        end;
        if Dm.Qtemp1.fieldbyname('position').AsString='K' then
        begin
          FDataKasKecil.MemDetailAkun['kredit']:=Dm.Qtemp1.fieldbyname('paid_amount').Value;
          FDataKasKecil.MemDetailAkun['debit']:=0;
        end;
        FDataKasKecil.MemDetailAkun['keterangan']:=Dm.Qtemp1.fieldbyname('description').AsString;
        FDataKasKecil.MemDetailAkun['kd_header_akun']:=Dm.Qtemp1.fieldbyname('code_account_header').AsString;
        FDataKasKecil.MemDetailAkun['kd_group_biaya']:=Dm.Qtemp1.fieldbyname('code_group_cost').AsString;
        FDataKasKecil.MemDetailAkun['nm_group_biaya']:=Dm.Qtemp1.fieldbyname('name_group_cost').AsString;
        FDataKasKecil.MemDetailAkun.post;
    Dm.Qtemp1.Next;
    end;

  end;
  end;
  FDataKasKecil.edNoTrans.Enabled:=false;
  FDataKasKecil.Status := 1;
  FDataKasKecil.Show;
end;

Initialization
  RegisterClasses([TFListKasKecil]);


end.
