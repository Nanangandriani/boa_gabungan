unit UListPenagihanPiutang;

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
  TFListPenagihanPiutang = class(TForm)
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
    QListPenagihanPiutang: TUniQuery;
    DsListPenagihanPiutang: TDataSource;
    QListPenagihanPiutangdate_dpp: TDateField;
    QListPenagihanPiutangdate_print: TDateField;
    QListPenagihanPiutangcode_collector: TStringField;
    QListPenagihanPiutangname_collector: TStringField;
    QListPenagihanPiutangwilayah: TMemoField;
    QListPenagihanPiutangtot_lmbr_invoice: TLargeintField;
    QListPenagihanPiutangjum_tagihan: TFloatField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure QListPenagihanPiutangwilayahGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListPenagihanPiutang: TFListPenagihanPiutang;

implementation

{$R *.dfm}

uses UDataModule, UDataPenagihanPiutang, UHomeLogin;

procedure TFListPenagihanPiutang.ActBaruExecute(Sender: TObject);
begin
  FDataPenagihanPiutang.Clear;
  FDataPenagihanPiutang.Status:=0;
  FDataPenagihanPiutang.ShowModal;
end;

procedure TFListPenagihanPiutang.ActDelExecute(Sender: TObject);
begin
  MessageDlg('Buatkan Validasi Tagihan Sudah Dibuat Tahap Lanjut Belum...',mtInformation,[MBOK],0);
  if MessageDlg('Apakah anda yakin ingin Membatalkan Rencana ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "public"."t_dpp"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code_collector"='+QuotedStr(QListPenagihanPiutang.FieldByName('code_collector').AsString)+' AND '+
                    ' "date_trans"='+QuotedStr(formatdatetime('yyyy-mm-dd',QListPenagihanPiutang.FieldByName('date_dpp').AsDateTime));
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

procedure TFListPenagihanPiutang.ActROExecute(Sender: TObject);
begin
  DBGridOrder.StartLoadingStatus();
  try
   with QListPenagihanPiutang do
   begin
       close;
       sql.Clear;
       sql.Text:=' SELECT "date_dpp", "date_print", "code_collector" , "name_collector", '+
                 ' b."wilayah", count(no_invoice) as tot_lmbr_invoice, SUM("paid_amount") jum_tagihan '+
                 ' from "public"."t_dpp" a '+
                 ' LEFT JOIN (SELECT code AS kd_master, name AS nm_master,  '+
                 ' concat(''Kares. '', name_kares, '', Kabupaten. '', name_regency)  AS wilayah  '+
                 ' from "public"."t_collector"  WHERE	deleted_at IS NULL) b ON a."code_collector"=b."kd_master" '+
                 ' where deleted_at is null '+
                 ' GROUP BY "date_dpp", "date_print", "code_collector", "name_collector", b."wilayah" '+
                 ' ORDER BY "date_dpp", "date_print", "code_collector", "name_collector", b."wilayah" Desc ';
       open;
   end;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
end;

procedure TFListPenagihanPiutang.ActUpdateExecute(Sender: TObject);
begin
  FDataPenagihanPiutang.dtTagih.Date:=QListPenagihanPiutang.FieldByName('date_dpp').AsDateTime;
  FDataPenagihanPiutang.dtCetak.Date:=QListPenagihanPiutang.FieldByName('date_print').AsDateTime;
  FDataPenagihanPiutang.edKodeKolektor.Text:=QListPenagihanPiutang.FieldByName('code_collector').AsString;
  FDataPenagihanPiutang.edNamaKolektor.Text:=QListPenagihanPiutang.FieldByName('name_collector').AsString;
  FDataPenagihanPiutang.RefreshGrid;
  FDataPenagihanPiutang.Show;
  FDataPenagihanPiutang.Status := 1;
end;

procedure TFListPenagihanPiutang.QListPenagihanPiutangwilayahGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
Text := Copy(QListPenagihanPiutangwilayah.AsString, 1, 500);
end;

Initialization
  RegisterClasses([TFListPenagihanPiutang]);

end.
