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
  Vcl.ActnMan, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, RzButton,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel;

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
    QRKasBon: TUniQuery;
    frxDBDKasBon: TfrxDBDataset;
    frxReport1: TfrxReport;
    dxBarLargeButton6: TdxBarLargeButton;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Cari: TRzBitBtn;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure QKasBondescriptionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ActPrintExecute(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure CariClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListKasBon: TFListKasBon;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UMy_Function, UDataKasbon2, UKoreksi;

procedure TFListKasBon.ActBaruExecute(Sender: TObject);
begin
  with FDataKasBon2 do
  begin
    Clear;
    Status:=0;
    edNoTrans.Enabled:=true;
    CariDefaultSumber;
    edNoTrans.Enabled:=true;
    isCancel:=0;
    BCorrection.Visible:=False;
  end;
  FDataKasBon2.ShowModal;

  {FDataKasBon.Clear;
  FDataKasBon.Status:=0;
  FDataKasBon.edNoTrans.Enabled:=true;
  FDataKasBon.ShowModal;}
end;

procedure TFListKasBon.ActDelExecute(Sender: TObject);
begin
   with Dm.Qtemp1 do
   begin
       close;
       sql.Clear;
       sql.Text:=' SELECT voucher_no_receipt, '+
                 ' COALESCE(sum(amount_realization),0) as amount_realization '+
                 ' from t_petty_cash_receipt_history '+
                 ' where voucher_no_receipt='+QuotedSTr(QKasBon.FieldByName('voucher_no').AsString)+' '+
                 ' GROUP BY voucher_no_receipt ';
       open;
   end;
  if Dm.Qtemp1.FieldByName('amount_realization').value>0 then
  begin
    ShowMessage('Data Sudah Dilakukan Realisasi Tidak Bisa Diubah...!!!');
    exit;
  end;


  with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:=' SELECT * from t_correction_trans WHERE is_delete =true and '+
              ' no_transaksi='+QuotedSTr(QKasBon.FieldByName('voucher_no').AsString)+' '+
              ' and status=0 and deleted_at is null ';
    open;
  end;

  if dm.Qtemp2.RecordCount>0 then
  begin
    MessageDlg('Data ada pengajuan koreksi atau pengajuan hapus..!!',mtInformation,[mbRetry],0);
  end else if CheckJurnalPosting(QKasBon.FieldByName('voucher_no').AsString)>0 then
  begin
    MessageDlg('Nota sudah approve jurnal tidak bisa melakukan pembatalan..!!',mtInformation,[mbRetry],0);
  end else begin
    if MessageDlg('Apakah Anda Yakin Ingin Membatalkan Transaksi ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      FKoreksi.vcall:=SelectRow('select Upper(submenu) menu from t_menu_sub '+
                      'where link='+QuotedStr('FListKasBon'));
      FKoreksi.Status:=0;
      FKoreksi.AksiTipe:='DELETE';
      FKoreksi.vnotransaksi:=QKasBon.FieldByName('voucher_no').AsString;
      FKoreksi.ShowModal;
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
   FDataKasBon2.Clear;

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


  with FDataKasbon2 do
  begin
    IntStatusKoreksi:=Dm.Qtemp.FieldValues['status_correction'];

    if (Dm.Qtemp.FindField('deleted_at') <> nil) and (not Dm.Qtemp.FieldByName('deleted_at').IsNull) then
    begin
      isCancel := 1;
    end else begin
      isCancel := 0;
    end;
    // baca status koreksi

    if Dm.Qtemp.FieldByName('is_no_replacement').AsBoolean=True then chkNomorPengganti.Checked:=True
      else chkNomorPengganti.Checked:=False;
  end;


  if Dm.Qtemp.RecordCount<>0 then
  begin
  with FDataKasBon2 do
  begin
    //Master
    edNoTrans.Text:=Dm.Qtemp.FieldByName('voucher_no').AsString;
    dtTrans.date:=Dm.Qtemp.FieldByName('trans_date').AsDateTime;
    edKodeKepada.Text:=Dm.Qtemp.FieldByName('actors_code').AsString;
    edNamaKepada.Text:=Dm.Qtemp.FieldByName('actors_name').AsString;
    MemKeterangan.Text:=Dm.Qtemp.FieldByName('description').AsString;
    edKodeSumber.Text:=Dm.Qtemp.FieldByName('source_code').AsString;
    edNamaSumber.Text:=SelectRow('select name from t_petty_cash_source where code='+QuotedStr(Dm.Qtemp.FieldByName('source_code').AsString)+' ');
    edJumlah.Value:=Dm.Qtemp.FieldByName('amount').Value;
    memTerbilang.Text:=Dm.Qtemp.FieldByName('spelled_out').AsString;
    edNoref.Text:=Dm.Qtemp.FieldByName('referensi_no').AsString;
    edkeperluan.Text:=Dm.Qtemp.FieldByName('needs').AsString;
    edkd_noref.Text:=Dm.Qtemp.FieldByName('referensi_code').AsString;

    order_no:=Dm.Qtemp.FieldByName('order_no').AsString;
    strtgl:=Dm.Qtemp.FieldByName('trans_day').AsString;
    strbulan:=Dm.Qtemp.FieldByName('trans_month').AsString;
    strtahun:=Dm.Qtemp.FieldByName('trans_year').AsString;

  end;
  end;
  FDataKasBon2.edNoTrans.Enabled:=false;
  FDataKasBon2.Status := 1;
  FDataKasBon2.Show;
end;

procedure TFListKasBon.CariClick(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QKasBon do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_petty_cash_receipt"   '+
                 ' where deleted_at is null and '+
                 ' trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.DateTime))+' '+
                 ' and '+ QuotedStr(formatdatetime('yyyy-mm-dd',DTP2.DateTime))+' '+
                 ' order by created_at Desc ';
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListKasBon.dxBarLargeButton4Click(Sender: TObject);
begin
  if QKasBon.RecordCount=0 then
  begin
    ShowMessage('Tidak Ditemukan Data !!!');
    Exit;
  end;
    with QRKasBon do
    begin
      close;
      sql.Clear;
      sql.Text:=' SELECT voucher_no, trans_date, actors_name, '+
                ' position as actors_position, amount, spelled_out, needs, description '+
                ' from t_petty_cash_receipt a '+
                ' left join t_cost_actors b on a.actors_code=b.code '+
                ' LEFT JOIN (SELECT a.*, "position" from t_employee a '+
                ' LEFT JOIN t_position b on a.position_code=b.position_code) c '+
                ' on b.nik_employee=c.nik '+
                ' where voucher_no='+QuotedStr(DBGrid.Fields[0].AsString)+' ';
      open;
    end;
    cLocation := ExtractFilePath(Application.ExeName);
    frxReport1.LoadFromFile(cLocation +'report/Bukti_KasBon'+'.fr3');
    SetMemo(frxReport1,'nama_pt','PT. ' +FHomeLogin.vKodePRSH);
    frxReport1.ShowReport();
end;

procedure TFListKasBon.dxBarLargeButton6Click(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if QKasBon.RecordCount=0 then
      begin
        ShowMessage('Tidak Ditemukan Data !!!');
        Exit;
      end else
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Menyelesaikan Data Ini ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        with dm.Qtemp do  //history
        begin
          close;
          sql.clear;
          sql.add(' UPDATE "public"."t_petty_cash_receipt_history" SET '+
                  ' "approve_at" = NOW(), ' +
                  ' "approve_by" = ' + QuotedStr(FHomeLogin.Eduser.Text) + ' ' +
                  ' Where voucher_no_receipt='+QuotedStr(DBGrid.Fields[0].AsString)+'');
          ExecSQL;
        end;
        Dm.Koneksi.Commit;
        ShowMessage('Proses Berhasil ...') ;
      end;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
end;

procedure TFListKasBon.FormShow(Sender: TObject);
begin
  DTP1.date:=now;
  DTP2.date:=now;
end;

procedure TFListKasBon.QKasBondescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QKasBondescription.AsString, 1, 255);
end;

Initialization
  RegisterClasses([TFListKasBon]);


end.
