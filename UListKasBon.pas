unit UListKasBon;

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
  TFListKasBon = class(TForm)
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
    QKasBon: TUniQuery;
    DsKasBon: TDataSource;
    QKasBonvoucher_no: TStringField;
    QKasBontrans_date: TDateField;
    QKasBonactors_code: TStringField;
    QKasBonactors_name: TStringField;
    QKasBonamount: TFloatField;
    QKasBondescription: TStringField;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure QKasBondescriptionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ActPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListKasBon: TFListKasBon;

implementation

{$R *.dfm}

uses UDataModule, UDataKasBon, UHomeLogin, UMy_Function;

procedure TFListKasBon.ActBaruExecute(Sender: TObject);
begin
  FDataKasBon.Clear;
  FDataKasBon.Status:=0;
  FDataKasBon.edNoTrans.Enabled:=true;
  FDataKasBon.ShowModal;
end;

procedure TFListKasBon.ActDelExecute(Sender: TObject);
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
          sql.Text:=' UPDATE "public"."t_petty_cash_receipt" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "voucher_no"='+QuotedStr(QKasBon.FieldByName('voucher_no').AsString);
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

procedure TFListKasBon.ActPrintExecute(Sender: TObject);
begin
  ShowMessage('Menampilkan Data BON Yang Belum Penyelesaian');
end;

procedure TFListKasBon.ActROExecute(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QKasBon do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_petty_cash_receipt"   '+
                 ' where deleted_at is null order by created_at Desc ';
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListKasBon.ActUpdateExecute(Sender: TObject);
begin
   FDataKasBon.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_petty_cash_receipt"  a '+
                 ' WHERE "voucher_no"='+QuotedSTr(QKasBon.FieldByName('voucher_no').AsString)+' '+
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
  with FDataKasBon do
  begin
    //Master
    edNoTrans.Text:=Dm.Qtemp.FieldByName('voucher_no').AsString;
    dtTrans.date:=Dm.Qtemp.FieldByName('trans_date').AsDateTime;
    edKodeKepada.Text:=Dm.Qtemp.FieldByName('actors_code').AsString;
    edNamaKepada.Text:=Dm.Qtemp.FieldByName('actors_name').AsString;
    MemKeterangan.Text:=Dm.Qtemp.FieldByName('description').AsString;
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
              ' SELECT * from "public"."t_petty_cash_receipt_det"'+
              ' WHERE "voucher_no"='+QuotedStr(QKasBon.FieldByName('voucher_no').AsString)+' ) a '+
              ' Order By position asc');
      open;
    end;

    MemDetailAkun.EmptyTable;
    Dm.Qtemp1.First;
    while not Dm.Qtemp1.Eof do
    begin
        FDataKasBon.MemDetailAkun.Insert;
        FDataKasBon.MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('code_account').AsString;
        FDataKasBon.MemDetailAkun['nm_akun']:=Dm.Qtemp1.fieldbyname('name_account').AsString;
        if Dm.Qtemp1.fieldbyname('position').AsString='D' then
        begin
          FDataKasBon.MemDetailAkun['kredit']:=0;
          FDataKasBon.MemDetailAkun['debit']:=Dm.Qtemp1.fieldbyname('paid_amount').Value;
        end;
        if Dm.Qtemp1.fieldbyname('position').AsString='K' then
        begin
          FDataKasBon.MemDetailAkun['kredit']:=Dm.Qtemp1.fieldbyname('paid_amount').Value;
          FDataKasBon.MemDetailAkun['debit']:=0;
        end;
        FDataKasBon.MemDetailAkun['keterangan']:=Dm.Qtemp1.fieldbyname('description').AsString;
        FDataKasBon.MemDetailAkun['kd_header_akun']:=Dm.Qtemp1.fieldbyname('code_account_header').AsString;
        FDataKasBon.MemDetailAkun['kd_group_biaya']:=Dm.Qtemp1.fieldbyname('code_group_cost').AsString;
        FDataKasBon.MemDetailAkun['nm_group_biaya']:=Dm.Qtemp1.fieldbyname('name_group_cost').AsString;
        FDataKasBon.MemDetailAkun.post;
    Dm.Qtemp1.Next;
    end;

  end;
  end;
  FDataKasBon.edNoTrans.Enabled:=false;
  FDataKasBon.Status := 1;
  FDataKasBon.Show;
end;

procedure TFListKasBon.QKasBondescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QKasBondescription.AsString, 1, 255);
end;

Initialization
  RegisterClasses([TFListKasBon]);


end.
