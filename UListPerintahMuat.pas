unit UListPerintahMuat;

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
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, frxClass, frxDBSet;

type
  TFListPerintahMuat = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridList: TDBGridEh;
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
    QListPerintahMuat: TUniQuery;
    DsListPerintahMuat: TDataSource;
    QListPerintahMuatnotrans: TStringField;
    QListPerintahMuatloading_date: TDateField;
    QListPerintahMuatdelivery_date: TDateField;
    QListPerintahMuatcode_vendor: TStringField;
    QListPerintahMuatname_vendor: TStringField;
    QListPerintahMuatnumber_of_vehicles: TStringField;
    QListPerintahMuatdescription: TMemoField;
    dxBarLargeButton1: TdxBarLargeButton;
    QCetak: TUniQuery;
    frxDBDPerintahMuat: TfrxDBDataset;
    Report: TfrxReport;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    QCetaknotrans: TStringField;
    QCetaknotrans_do: TStringField;
    QCetaknotrans_sale: TStringField;
    QCetakcust_vendor: TStringField;
    QCetakcust_name_vendor: TStringField;
    QCetakan_terima: TStringField;
    QCetakcode_items: TStringField;
    QCetakname_item: TStringField;
    QCetakamount: TFloatField;
    QCetakunit: TStringField;
    QCetakbanyaknya: TMemoField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure QListPerintahMuatdescriptionGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure dxBarLargeButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListPerintahMuat: TFListPerintahMuat;
  Status: Integer;

implementation

{$R *.dfm}

uses UDataPerintahMuat, UDataModule, UMy_Function, UHomeLogin;

procedure TFListPerintahMuat.ActBaruExecute(Sender: TObject);
begin
  FDataPerintahMuat.Clear;
  FDataPerintahMuat.Autonumber;
  FDataPerintahMuat.MemDetail.EmptyTable;
  FDataPerintahMuat.Status:=0;
  FDataPerintahMuat.edKodeMuat.Enabled:=true;
  FDataPerintahMuat.ShowModal;
end;

procedure TFListPerintahMuat.ActDelExecute(Sender: TObject);
begin
  MessageDlg('Buatkan Validasi SPM Sudah Dibuat Tahap Lanjut Belum...',mtInformation,[MBOK],0);

  if MessageDlg('Apakah anda yakin ingin Membatalkan Muatan ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "sale"."t_spm"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "notrans"='+QuotedStr(QListPerintahMuat.FieldByName('notrans').AsString);
          ExecSQL;
        end;
        MessageDlg('Proses Hapus Berhasil..!!',mtInformation,[MBOK],0);
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

procedure TFListPerintahMuat.ActROExecute(Sender: TObject);
begin
  DBGridList.StartLoadingStatus();
  try
   with QListPerintahMuat do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_spm"   '+
                 ' where deleted_at is null order by created_at Desc ';
       open;
   end;
  finally
  DBGridList.FinishLoadingStatus();
  end;
end;

procedure TFListPerintahMuat.ActUpdateExecute(Sender: TObject);
begin
   FDataPerintahMuat.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_spm" a '+
                 ' WHERE "notrans"='+QuotedSTr(QListPerintahMuat.FieldByName('notrans').AsString)+' '+
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
  with FDataPerintahMuat do
  begin
    edKodeMuat.Text:=Dm.Qtemp.FieldByName('notrans').AsString;
    dtKirim.Date:=Dm.Qtemp.FieldByName('delivery_date').AsDateTime;
    dtMuat.Date:=Dm.Qtemp.FieldByName('loading_date').AsDateTime;
    edKode_Vendor_Kend.Text:=Dm.Qtemp.FieldByName('code_vendor').AsString;
    edNama_Vendor_Kend.Text:=Dm.Qtemp.FieldByName('name_vendor').AsString;
    edNoKendMuatan.Text:=Dm.Qtemp.FieldByName('number_of_vehicles').AsString;
    MemKeterangan.Text:=Dm.Qtemp.FieldByName('description').AsString;
    order_no:=Dm.Qtemp.FieldByName('order_no').AsString;
    //_kares:=Dm.Qtemp.FieldByName('additional_code').AsString;
    strtgl:=Dm.Qtemp.FieldByName('trans_day').AsString;
    strbulan:=Dm.Qtemp.FieldByName('trans_month').AsString;
    strtahun:=Dm.Qtemp.FieldByName('trans_year').AsString;
  end;

  //Detail
   with Dm.Qtemp1 do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_spm_det" a '+
                 ' WHERE "notrans"='+QuotedSTr(QListPerintahMuat.FieldByName('notrans').AsString)+' '+
                 ' order by notrans Desc ';
       open;
   end;

    if Dm.Qtemp1.RecordCount<>0 then
    begin
    FDataPerintahMuat.MemDetail.active:=false;
    FDataPerintahMuat.MemDetail.active:=true;
    FDataPerintahMuat.MemDetail.EmptyTable;
    Dm.Qtemp1.first;
    while not Dm.Qtemp1.Eof do
    begin
    with FDataPerintahMuat do
    begin
     MemDetail.insert;
     MemDetail['nodo']:=Dm.Qtemp1.fieldbyname('notrans_do').value;
     MemDetail['kode_vendor']:=Dm.Qtemp1.fieldbyname('code_cust').value;
     MemDetail['name_vendor']:=Dm.Qtemp1.fieldbyname('name_cust').value;
     MemDetail['notrans']:=Dm.Qtemp1.fieldbyname('notrans_sale').value;
     MemDetail['kd_barang']:=Dm.Qtemp1.fieldbyname('code_items').value;
     MemDetail['nm_barang']:=Dm.Qtemp1.fieldbyname('name_item').value;
     MemDetail['jumlah']:=Dm.Qtemp1.fieldbyname('amount').value;
     MemDetail['satuan']:=Dm.Qtemp1.fieldbyname('unit').value;
     MemDetail.post;
    end;
    Dm.Qtemp1.next;
    end;
    end;
  //end Detail

  FDataPerintahMuat.edKodeMuat.Enabled:=false;
  FDataPerintahMuat.Status := 1;
  FDataPerintahMuat.Show;
  //ShowMessage(IntToStr(FDataPerintahMuat.Status));
end;
end;


procedure TFListPerintahMuat.dxBarLargeButton2Click(Sender: TObject);
begin
   with QCetak do
    begin
     close;
     sql.clear;
     sql.add(' select "notrans", "notrans_do", "notrans_sale", a."code_cust" as cust_vendor, '+
             ' a."name_cust" as cust_name_vendor, b."name_cust" as an_terima, "code_items", '+
             ' "name_item", "amount", "unit", '+
             ' concat("name_item",'' = '',CAST("amount" AS INTEGER),'' '',"unit") as banyaknya '+
             ' from "sale"."t_spm_det" a '+
             ' LEFT JOIN "sale"."t_selling" b ON a."notrans_sale"=b."trans_no" '+
             ' WHERE a."notrans"='+QuotedStr(QListPerintahMuat.FieldByName('notrans').AsString)+' '+
             ' order by a."notrans" Desc');
     open;
    end;


 if QCetak.RecordCount=0 then
 begin
  showmessage('Tidak ada data yang bisa dicetak !');
  exit;
 end;

 if QCetak.RecordCount<>0 then
 begin
   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   Report.LoadFromFile(cLocation +'report/rpt_perintahmuat'+ '.fr3');
   SetMemo(Report,'kota_tanggal',FHomeLogin.vKotaPRSH+', '+formatdatetime('dd mmmm yyyy',NOW()));
   //Report.DesignReport();
   Report.ShowReport();
 end;

end;

procedure TFListPerintahMuat.QListPerintahMuatdescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QListPerintahMuatdescription.AsString, 1, 255);
end;

initialization
  RegisterClass(TFListPerintahMuat);


end.
