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
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, dxBarExtItems;

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
    QListPenagihanPiutangcode_karesidenan: TStringField;
    QListPenagihanPiutangname_karesidenan: TStringField;
    QListPenagihanPiutangcode_regency: TStringField;
    QListPenagihanPiutangname_regency: TStringField;
    dxBarManager1Bar2: TdxBar;
    dtTanggal1: TdxBarDateCombo;
    dtTanggal2: TdxBarDateCombo;
    dxBarLargeButton1: TdxBarLargeButton;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure QListPenagihanPiutangwilayahGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dtTanggal1Change(Sender: TObject);
    procedure dtTanggal2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
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

procedure TFListPenagihanPiutang.Refresh;
begin
  DBGridOrder.StartLoadingStatus();
  try
   with QListPenagihanPiutang do
   begin
       close;
       sql.Clear;
       sql.Text:=' SELECT "date_dpp", "date_print", "code_collector" , "name_collector",  '+
                 'b."wilayah", count(a.no_invoice) as tot_lmbr_invoice, SUM(a.paid_amount) jum_tagihan,'+
                 'b.code_karesidenan,b.name_karesidenan ,b.code_regency,b.name_regency '+
                 ' from "public"."t_dpp" a  LEFT JOIN (SELECT tc.code AS kd_master, '+
                 'tc.name AS nm_master,   concat(''Kares. '', tc.name_kares, '', Kabupaten. '', tc.name_regency)  AS wilayah ,'+
                 'tc.code_regency,d.name name_regency,d.code_karesidenan, '+
                 'e.name name_karesidenan  from "public"."t_collector" tc  '+
                 ' LEFT JOIN t_region_regency d ON d.code=tc.code_regency '+
                 ' LEFT JOIN t_region_karesidenan e ON e.code=d.code_karesidenan '+
                 '  ) b ON a."code_collector"=b."kd_master" '+
                 ' where a.deleted_at is null AND '+
                 '(date_dpp BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal1.Date))+' AND '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date))+') GROUP BY "date_dpp", "date_print", '+
                 '"code_collector", "name_collector", b."wilayah",b.code_regency,'+
                 'b.name_regency,b.code_karesidenan,b.name_karesidenan  '+
                 'ORDER BY "date_dpp", "date_print", "code_collector", "name_collector", b."wilayah" Desc ';
       open;
   end;
  finally
  DBGridOrder.FinishLoadingStatus();
  end;
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
  Refresh;
end;

procedure TFListPenagihanPiutang.ActUpdateExecute(Sender: TObject);
begin
  FDataPenagihanPiutang.Clear;
  FDataPenagihanPiutang.dtTagih.Date:=QListPenagihanPiutang.FieldByName('date_dpp').AsDateTime;
  FDataPenagihanPiutang.dtCetak.Date:=QListPenagihanPiutang.FieldByName('date_print').AsDateTime;
  FDataPenagihanPiutang.edKodeKolektor.Text:=QListPenagihanPiutang.FieldByName('code_collector').AsString;
  FDataPenagihanPiutang.edNamaKolektor.Text:=QListPenagihanPiutang.FieldByName('name_collector').AsString;
  FDataPenagihanPiutang.edKaresidenan.Text:=QListPenagihanPiutang.FieldByName('name_karesidenan').AsString;
  FDataPenagihanPiutang.edKdWilayah.Text:=QListPenagihanPiutang.FieldByName('code_regency').AsString;
  FDataPenagihanPiutang.edKabupaten.Text:=QListPenagihanPiutang.FieldByName('name_regency').AsString;
  FDataPenagihanPiutang.strKabupatenID:=QListPenagihanPiutang.FieldByName('code_regency').AsString;

  FDataPenagihanPiutang.dtCetak.Enabled:=False;
  FDataPenagihanPiutang.dtTagih.Enabled:=False;
  FDataPenagihanPiutang.edKabupaten.Enabled:=False;
  FDataPenagihanPiutang.edKaresidenan.Enabled:=False;
  FDataPenagihanPiutang.edNamaKolektor.Enabled:=False;
  FDataPenagihanPiutang.btTampilkan.Enabled:=False;
  FDataPenagihanPiutang.DBGridDetail.Columns[1].EditButton.Enabled:=False;
  FDataPenagihanPiutang.DBGridDetail.Columns[2].EditButton.Enabled:=False;

  FDataPenagihanPiutang.RefreshGrid;
  FDataPenagihanPiutang.Show;
  FDataPenagihanPiutang.Status := 1;
end;

procedure TFListPenagihanPiutang.dtTanggal1Change(Sender: TObject);
begin
  if dtTanggal1.Date>dtTanggal2.Date then dtTanggal2.Date:=dtTanggal1.Date;
end;

procedure TFListPenagihanPiutang.dtTanggal2Change(Sender: TObject);
begin
  if dtTanggal2.Date<dtTanggal1.Date then dtTanggal1.Date:=dtTanggal2.Date;
end;

procedure TFListPenagihanPiutang.dxBarLargeButton1Click(Sender: TObject);
begin
  Refresh;
end;

procedure TFListPenagihanPiutang.FormShow(Sender: TObject);
begin
  dtTanggal1.Date:=NOW;
  dtTanggal2.Date:=NOW;
  Refresh;
end;

procedure TFListPenagihanPiutang.QListPenagihanPiutangwilayahGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
Text := Copy(QListPenagihanPiutangwilayah.AsString, 1, 500);
end;

Initialization
  RegisterClasses([TFListPenagihanPiutang]);

end.
