unit UListTujualAwal;

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
  TFListTujualAwal = class(TForm)
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
    QLokasiAwal: TUniQuery;
    DsLokasiAwal: TDataSource;
    QLokasiAwalcode: TStringField;
    QLokasiAwalname: TStringField;
    QLokasiAwaladdress: TMemoField;
    QLokasiAwalcode_regency: TStringField;
    QLokasiAwalname_regency: TStringField;
    procedure ActROExecute(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure QLokasiAwaladdressGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
  end;

var
  FListTujualAwal: TFListTujualAwal;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UNew_TujuanAwal;
procedure TFListTujualAwal.Refresh;
begin
  DBGrid.StartLoadingStatus();
  try
   with QLokasiAwal do
   begin
       close;
       sql.Clear;
       sql.Text:=' SELECT "code", "name", "address", "code_regency", "name_regency" '+
                 ' FROM "db_center"."t_starting_location" '+
                 ' WHERE deleted_at IS NULL '+
                 ' ORDER BY "code" asc ';
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListTujualAwal.ActBaruExecute(Sender: TObject);
begin
    FNew_TujuanAwal.Clear;
    FNew_TujuanAwal.Autocode;
    FNew_TujuanAwal.Edkode.Enabled:=true;
    Status:=0;
    FNew_TujuanAwal.ShowModal;
end;

procedure TFListTujualAwal.ActDelExecute(Sender: TObject);
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

  MessageDlg('Buatkan Validasi Tujuan Awal Sudah Digunakan Atau Belum...',mtInformation,[MBOK],0);

  if MessageDlg('Apakah anda yakin ingin Menghapus Tujuan ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "db_center"."t_starting_location"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(QLokasiAwal.FieldByName('code').AsString);
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

procedure TFListTujualAwal.ActROExecute(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QLokasiAwal do
   begin
       close;
       sql.Clear;
       sql.Text:=' SELECT "code", "name", "address", "code_regency", "name_regency" '+
                 ' FROM "db_center"."t_starting_location" '+
                 ' WHERE deleted_at IS NULL '+
                 ' ORDER BY "code" asc ';
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListTujualAwal.ActUpdateExecute(Sender: TObject);
begin
   FNew_TujuanAwal.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select "code", "name", "address", '+
                 ' "code_regency", "name_regency", "latitude", "longitude", '+
                 ' "code_province", "name_province", "code_subdistrict", "name_subdistrict" '+
                 ' from "db_center"."t_starting_location" a '+
                 ' WHERE "code"='+QuotedSTr(QLokasiAwal.FieldByName('code').AsString)+' '+
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
  with FNew_TujuanAwal do
  begin
    edKode.Text:=Dm.Qtemp.FieldByName('code').AsString;
    edNama.Text:=Dm.Qtemp.FieldByName('name').AsString;
    edLatitude.Text:=Dm.Qtemp.FieldByName('latitude').AsString;
    edLongitude.Text:=Dm.Qtemp.FieldByName('longitude').AsString;
    edNamaProvinsi.Text:=Dm.Qtemp.FieldByName('name_province').AsString;
    edNamaKabupaten.Text:=Dm.Qtemp.FieldByName('name_regency').AsString;
    edNamaKecamatan.Text:=Dm.Qtemp.FieldByName('name_subdistrict').AsString;
    MemAlamat.Text:=Dm.Qtemp.FieldByName('address').AsString;
    edKodeProvinsi.Text:=Dm.Qtemp.FieldByName('code_province').AsString;
    edKodeKabupaten.Text:=Dm.Qtemp.FieldByName('code_regency').AsString;
    edKodeKecamatan.Text:=Dm.Qtemp.FieldByName('code_subdistrict').AsString;
  end;
  end;
  FNew_TujuanAwal.edKode.Enabled:=false;
  FNew_TujuanAwal.Show;
  Status := 1;
end;


procedure TFListTujualAwal.QLokasiAwaladdressGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QLokasiAwaladdress.AsString, 1, 255);
end;

initialization
  RegisterClass(TFListTujualAwal);

end.
