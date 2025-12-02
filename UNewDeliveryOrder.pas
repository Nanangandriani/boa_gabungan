unit UNewDeliveryOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Vcl.ExtCtrls, RzTabs,
  Vcl.ComCtrls, RzDTP, RzPanel, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.Buttons,
  Vcl.Samples.Spin, MemTableDataEh, MemTableEh, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, uJSON;

type
  TFNewDeliveryOrder = class(TForm)
    RzPageControl1: TRzPageControl;
    TabDataMuatan: TRzTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Panel5: TPanel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    edKodeDOMuatan: TEdit;
    Panel2: TPanel;
    btNextStep: TRzBitBtn;
    TabDataBiaya: TRzTabSheet;
    Panel6: TPanel;
    Panel1: TPanel;
    btBatalSumberJual: TRzBitBtn;
    btSimpanSumberJual: TRzBitBtn;
    DBGridSumberPenjualan: TDBGridEh;
    TabDokumenPendukung: TRzTabSheet;
    Panel3: TPanel;
    btBatalParameter: TRzBitBtn;
    btSaveParameter: TRzBitBtn;
    Panel4: TPanel;
    dtTanggalMuatan: TRzDateTimePicker;
    edNamaJenisMuatan: TRzButtonEdit;
    edKodeJenisMuatan: TEdit;
    RzGroupBox1: TRzGroupBox;
    Label39: TLabel;
    Label38: TLabel;
    edKodeVendorMuatan: TRzButtonEdit;
    edNamaVendorMuatan: TEdit;
    MemVendorMuatan: TMemo;
    Label8: TLabel;
    Label9: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    edReffSumberMuatan: TEdit;
    Label29: TLabel;
    RzGroupBox2: TRzGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    edKodeVendorTransMuatan: TRzButtonEdit;
    edNamaVendorTransMuatan: TEdit;
    edNamaKenek: TEdit;
    edNomorReffUtamaMuatan: TRzButtonEdit;
    edKelompokKendaraan: TRzButtonEdit;
    edKodeJenisKendMuatan: TEdit;
    btMasterSumber: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edKodeDOBiaya: TEdit;
    edNamaJenisBiaya: TEdit;
    dtTanggalBiaya: TRzDateTimePicker;
    Label20: TLabel;
    Label21: TLabel;
    Label44: TLabel;
    edNamaLokasi: TRzButtonEdit;
    edNamaProvinsi: TRzButtonEdit;
    edNamaKabupaten: TRzButtonEdit;
    edKodeKabupaten: TEdit;
    edKodeProvinsi: TEdit;
    edKodeLokasi: TEdit;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    spTotalTitik: TSpinEdit;
    MemKeteranganBiaya: TMemo;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    spKapasitas: TSpinEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edKodeDODok: TEdit;
    dtTanggalDoc: TRzDateTimePicker;
    edNamaJenisDoc: TEdit;
    Label17: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edNomorTagihanVendor: TEdit;
    Label58: TLabel;
    dtTerimaTagihan: TRzDateTimePicker;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    edTotalBiaya: TRzNumericEdit;
    edNoKendMuatan: TRzButtonEdit;
    dsDataBiaya: TDataSource;
    MemDataBiaya: TMemTableEh;
    MemDataBiayakd_biaya: TStringField;
    MemDataBiayanm_biaya: TStringField;
    MemDataBiayadpp: TFloatField;
    MemDataBiayappn: TFloatField;
    MemDataBiayapph: TFloatField;
    MemDataBiayatotal: TFloatField;
    Label62: TLabel;
    edNomorPIB: TEdit;
    Label63: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edNamaSupir: TEdit;
    btAddDetail: TRzBitBtn;
    dsDataMuatan: TDataSource;
    DBGrid_SumberOrder: TDBGridEh;
    edPICMuatan: TEdit;
    MemDataMuatan: TMemTableEh;
    MemDataMuatannotrans: TStringField;
    MemDataMuatankode_vendor: TStringField;
    MemDataMuatanname_vendor: TStringField;
    MemDataMuatanno_reff: TStringField;
    MemDataMuatankd_barang: TStringField;
    MemDataMuatannm_barang: TStringField;
    MemDataMuatanjumlah: TFloatField;
    MemDataMuatansatuan: TStringField;
    MemDataMuatanpilih: TBooleanField;
    MemDataBiayaakun_ppn: TStringField;
    MemDataBiayanama_ppn: TStringField;
    MemDataBiayapersen_ppn: TFloatField;
    MemDataBiayaakun_pph: TStringField;
    MemDataBiayanama_pph: TStringField;
    MemDataBiayapersen_pph: TFloatField;
    MemDataBiayaketerangan: TWideStringField;
    MemDataBiayano_invoice: TStringField;
    MemDataBiayatgl_invoice: TDateField;
    btBackStep: TRzBitBtn;
    BtnCekBiaya: TRzBitBtn;
    Memo1: TMemo;
    IdHTTP1: TIdHTTP;
    MemoAPI: TMemo;
    edlokasiregencyid: TEdit;
    BCorrection: TRzBitBtn;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    edNamaJenisKendMuatan: TRzEdit;
    Label64: TLabel;
    Label65: TLabel;
    btMasterLokasiMuat: TSpeedButton;
    btMasterLokasiBongkar: TSpeedButton;
    edLokasiMuat: TRzButtonEdit;
    edLokasiBongkar: TRzButtonEdit;
    procedure edNamaJenisMuatanButtonClick(Sender: TObject);
    procedure edKodeVendorMuatanButtonClick(Sender: TObject);
    procedure edNomorReffUtamaMuatanButtonClick(Sender: TObject);
    procedure btMasterSumberClick(Sender: TObject);
    procedure edNoKendMuatanButtonClick(Sender: TObject);
    procedure edKelompokKendaraanButtonClick(Sender: TObject);
    procedure edNamaLokasiButtonClick(Sender: TObject);
    procedure edNamaProvinsiButtonClick(Sender: TObject);
    procedure edNamaKabupatenButtonClick(Sender: TObject);
    procedure btNextStepClick(Sender: TObject);
    procedure edKodeVendorTransMuatanButtonClick(Sender: TObject);
    procedure btAddDetailClick(Sender: TObject);
    procedure TabDataBiayaClick(Sender: TObject);
    procedure DBGridSumberPenjualanKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridSumberPenjualanColEnter(Sender: TObject);
    procedure DBGridSumberPenjualanColumns0CellButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridSumberPenjualanEnter(Sender: TObject);
    procedure DBGridSumberPenjualanExit(Sender: TObject);
    procedure DBGridSumberPenjualanMouseEnter(Sender: TObject);
    procedure RzPageControl1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSimpanSumberJualClick(Sender: TObject);
    procedure dtTanggalMuatanChange(Sender: TObject);
    procedure btBatalSumberJualClick(Sender: TObject);
    procedure btBatalParameterClick(Sender: TObject);
    procedure btSaveParameterClick(Sender: TObject);
    procedure edTotalBiayaExit(Sender: TObject);
    procedure DBGridSumberPenjualanColumns4CellButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridSumberPenjualanColumns8CellButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure btBackStepClick(Sender: TObject);
    procedure DBGridSumberPenjualanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCekBiayaClick(Sender: TObject);
    procedure BCorrectionClick(Sender: TObject);
    procedure edNamaLokasiChange(Sender: TObject);
    procedure edNamaKabupatenChange(Sender: TObject);
    procedure spTotalTitikClick(Sender: TObject);
    procedure edKodeJenisKendMuatanChange(Sender: TObject);
    procedure spTotalTitikChange(Sender: TObject);
    procedure btMasterLokasiMuatClick(Sender: TObject);
    procedure edLokasiMuatButtonClick(Sender: TObject);
    procedure edLokasiBongkarButtonClick(Sender: TObject);
    procedure btMasterLokasiBongkarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sumber_do,IntAdaPerubahan: Integer;
    Grand_Tot: Real;
    vFormSumber01,vFormSumber02, kd_kares, strtgl, strbulan, strtahun,
    strLastKodeJenisKendMuatan,strLastNamaLokasi,
    strLastNamaKabupaten,strLastTotalTitik,strPlateNo,kodelokasimuat,kodelokasibongkar,strVehicleGroupId : string;
    IntStatusDO,IntStatusKoreksi: Integer;
    StatusCekBiaya,StatusPerubahanBiaya: Integer;
    Year, Month, Day: Word;
    procedure RefreshGridRincianBiaya;
    procedure HitungGrid;
    procedure Clear;
    procedure Autonumber;
    procedure Save;
    procedure Update;
    procedure InsertDetailCost;
    procedure InsertDetailLoad;
    procedure InsertDetailService;
    procedure GetApiBiayaChakra;
    procedure UpdateStatusTele;
    procedure InsertStatus;
    procedure GetApiBiayaKoreksiChakra;
    procedure CekGetApiBiayaKoreksiChakra;
    procedure UpdateStatusDO(status: Integer);
  end;

var
  FNewDeliveryOrder: TFNewDeliveryOrder;
  Status,StatusDO: Integer;
  AClass: TPersistentClass;
  AFormClass: TFormClass;
  AForm: TForm;
  AForm1: TForm;
  json: TMyJSON;

implementation

{$R *.dfm}

uses UMasterData, UTemplate_Temp, UCari_DaftarPerk, UDataModule,
  Ubrowse_pelanggan, UMy_Function, USearch_Supplier, UDelivery_Order_Sumber,
  UListDeliveryOrder, UHomeLogin, UDaftarKendaraan, UDataPool, ulkJSON,
  UListPerbandinganBiayaDo, UMainMenu, UKoreksi, UListKelompokKendaraan,
  ULokasiMuat, ULokasiBongkar;

procedure TFNewDeliveryOrder.InsertStatus;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='INSERT INTO t_delivery_order_log_status (no_trans,status,date,user_cretae) '+
              ' VALUES ('+QuotedStr(edKodeDOMuatan.Text)+','+IntToStr(StatusDO)+',NOW(),'+
              ''+QuotedStr(FHomeLogin.Eduser.Text)+')';
    Execute;
  end;
end;

//procedure TFNewDeliveryOrder.UpdateStatusTele;
//var
//  key,url,s,BaseUrl,Vpath,Vtoken,str : string;
//  vBody,vBody2  : string;
//  jumdata : Real;
//  xxx: Integer;
//  cnt,cnt2: Integer;
//  iii,iiii: Integer;
//  sss, row, row1, row2: String;
//  res: String;
//  date: TDate;
//  max,min: Integer;
//        //component
//  gNet:TIdHTTP;
//  //respon component
//  httpresult: TIdHTTP ;
//  resp: TMemoryStream;
//begin
//  with dm.Qtemp do
//  begin
//    close;
//    sql.Clear;
//    sql.Text:= 'select c.no_reference no_tiket from t_delivery_order_load a '+
//               'left join t_selling b on b.trans_no=a.notrans_load and b.deleted_at is null '+
//               'left JOIN t_sales_order c on c.notrans=b.no_reference and c.deleted_at is null '+
//               'WHERE a.notrans='+QuotedStr(edKodeDOMuatan.Text)+' and c.no_reference is not null';
//    open;
//  end;
//  if dm.Qtemp.RecordCount>0 then
//  begin
//    dm.Qtemp.First;
//    while not dm.Qtemp.Eof do
//    begin
//    try
//        //BaseUrl:=edBaseURL.Text;
//    BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurltele''');
//    key:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''keyapitele''');
//    vtoken:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''tokenapitele''');
//    vBody:='?ticket_number='+dm.Qtemp.FieldByName('no_tiket').AsString+
//           '&status=4';
//    Vpath:='/update-order';
//    url:= BaseUrl+Vpath+vBody;
//    try
//    gNet :=  TIdHTTP.Create(nil);
//    gNet.Request.Accept := 'application/json';
//    gNet.Request.CustomHeaders.Values[key] := Vtoken;
//    gNet.Request.ContentType := 'application/x-www-form-urlencoded';
//    UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url);
//    UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url);
//    res:=  gNet.get(url);
//    jumdata:=1;
//    memo1.text := res;
//    except
//    on E: EIdHTTPProtocolException do
//
//    if Application.MessageBox('Maaf, Data Tidak Ditemukan ...','confirm',MB_OK or mb_iconquestion)=id_yes then
//    begin
//      jumdata:=0;
//      gNet.free;
//      resp.Free;
//    end;
//
//
//   on E: Exception do
//   ShowMessage('A non-Indy related exception has been raised!');
//   end;
//    finally
//      gNet.free;
//      resp.Free;
//    end;
//
//    //MOVE JSON
//    json.JSONText := memo1.text;
//  end;
//  end;
//end;

procedure TFNewDeliveryOrder.UpdateStatusTele;
var
  key, url, BaseUrl, Vpath, Vtoken, vBody, res: string;
  gNet: TIdHTTP;
begin
  with dm.Qtemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select c.no_reference no_tiket from t_delivery_order_load a ' +
                'left join t_selling b on b.trans_no=a.notrans_load and b.deleted_at is null ' +
                'left JOIN t_sales_order c on c.notrans=b.no_reference and c.deleted_at is null ' +
                'WHERE a.notrans=' + QuotedStr(edKodeDOMuatan.Text) + ' and c.no_reference is not null';
    Open;
  end;
  if dm.Qtemp.RecordCount > 0 then
  begin
  //  Progress.MaxValue := dm.Qtemp.RecordCount;
  //  Progress.Progress := 0;
    dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
      Application.ProcessMessages; // Penting agar UI tidak freeze
      try
        BaseUrl := SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurltele''');
        key := SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''keyapitele''');
        vtoken := SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''tokenapitele''');
        vBody := '?ticket_number=' + dm.Qtemp.FieldByName('no_tiket').AsString +
                 '&status=4';
        Vpath := '/update-order';
        url := BaseUrl + Vpath + vBody;
        gNet := TIdHTTP.Create(nil);
        try
          gNet.Request.Accept := 'application/json';
          gNet.Request.CustomHeaders.Values[key] := Vtoken;
          gNet.Request.ContentType := 'application/x-www-form-urlencoded';
          res := gNet.Get(url);
          memo1.Lines.Add(res); // Menampilkan hasil update
        except
          on E: EIdHTTPProtocolException do
            memo1.Lines.Add('Data tidak ditemukan untuk tiket ' + dm.Qtemp.FieldByName('no_tiket').AsString + ': ' + E.Message);
          on E: Exception do
            memo1.Lines.Add('Kesalahan saat update tiket ' + dm.Qtemp.FieldByName('no_tiket').AsString + ': ' + E.Message);
        end;
      finally
        gNet.Free;
      end;
  //    Inc(Progress.Progress);
      dm.Qtemp.Next;
    end;
  end;
//  ShowMessage('Proses update status selesai.');
end;

procedure TFNewDeliveryOrder.UpdateStatusDO(status: Integer);
var
  key, url, BaseUrl, Vpath, Vtoken, res: string;
  gNet: TIdHTTP;
  jsonBody: TStringStream;
  TotPPH,PPHPercent: Currency;
begin
  Application.ProcessMessages; // agar UI tetap responsif
  try
    with dm.Qtemp2 do
    begin
      Close;
      SQl.Clear;
      SQl.Text:='select SUM(pph_value) pph_value,COALESCE((SELECT DISTINCT percent_pph FROM t_delivery_order_cost '+
                'WHERE notrans='+QuotedStr(edKodeDOMuatan.Text)+' AND percent_pph<>0),0) percent_pph  from t_delivery_order_cost '+
                'WHERE notrans='+QuotedStr(edKodeDOMuatan.Text)+';';
      Open;
    end;

    TotPPH:= dm.Qtemp2.FieldValues['pph_value'];
    PPHPercent:= dm.Qtemp2.FieldValues['percent_pph'];

    // Ambil konfigurasi API
    BaseUrl := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''baseurlchakra''');
    key := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''keyapichakra''');
    Vtoken := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''tokenapichakra''');
    Vpath := '/api/update-status';
    url := BaseUrl + Vpath;
    // Buat JSON body langsung dari edKodeDOMuatan dan parameter status
    jsonBody := TStringStream.Create(
      '{"notrans": "' + edKodeDOMuatan.Text + '",'+
      ' "status": ' + IntToStr(status) + ','+
      ' "percent_pph": ' + CurrToStr(PPHPercent) + ','+
      ' "pph_value": ' + CurrToStr(TotPPH) + '}',
      TEncoding.UTF8
    );
    Memo1.Text := jsonBody.DataString;

    gNet := TIdHTTP.Create(nil);
    try
      gNet.Request.Accept := 'application/json';
      gNet.Request.ContentType := 'application/json';
      gNet.Request.CustomHeaders.Values[key] := Vtoken;
      // PUT request
      res := gNet.Put(url, jsonBody);
      memo1.Text:=res;
//      ShowMessage('tes');
//      Exit;
      memo1.Lines.Add('Response: ' + res); // tampilkan hasil
    except
      on E: EIdHTTPProtocolException do
        memo1.Lines.Add('Data tidak ditemukan: ' + E.Message);
      on E: Exception do
        memo1.Lines.Add('Kesalahan saat update: ' + E.Message);
    end;
  finally
    jsonBody.Free;
    gNet.Free;
  end;
end;

//procedure TFNewDeliveryOrder.GetApiBiayaChakra;
//var
//  key,url,s,BaseUrl,Vpath,Vtoken,str : string;
//  vBody,vBody2  : string;
//  jumdata : Real;
//  xxx: Integer;
//  cnt,cnt2, IntTitikTambahan: Integer;
//  iii,iiii: Integer;
//  sss, row, row1, row2: String;
//  res: String;
//  date: TDate;
//  max,min: Integer;
//        //component
//  gNet:TIdHTTP;
//  //respon component
//  httpresult: TIdHTTP ;
//  resp: TMemoryStream;
//begin
//  try
//  IntTitikTambahan:=StrToInt(spTotalTitik.Text)-1;
//  //BaseUrl:=edBaseURL.Text;
//  BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurlchakra''');
//  key:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''keyapichakra''');
//  vtoken:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''tokenapichakra''');
////  vBody:='?type_id='+edKodeJenisKendMuatan.Text+
////         '&regencie_from_id='+edlokasiregencyid.Text+
////         '&regencie_to_id='+edKodeKabupaten.Text+'&point='+IntToStr(IntTitikTambahan);
//  vBody:='?type_id='+edKodeJenisKendMuatan.Text+'&regencie_from_id='+edlokasiregencyid.Text+'&regencie_to_id='+edlokasiregencyid.Text+'&point='+spTotalTitik.Text+'';
//  Vpath:='/api/get-tariff';
//  url:= BaseUrl+Vpath+vBody;
//  MemoAPI.Text:=url;
//  try
//  gNet :=  TIdHTTP.Create(nil);
//  gNet.Request.Accept := 'application/json';
//  gNet.Request.CustomHeaders.Values[key] := Vtoken;
//  gNet.Request.ContentType := 'application/x-www-form-urlencoded';
//  UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url);
//  UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url);
//  res:=  gNet.get(url);
//  jumdata:=1;
//  MemoAPI.text := res;
//  json.JSONText := MemoAPI.text;
//  if json.StringTree['status']='false' then
//  begin
//    MessageDlg(json.StringTree['message']+'..!!',mtInformation,[mbRetry],0);
//    Exit;
//  end;
//
//  except
//  on E: EIdHTTPProtocolException do
//    if Application.MessageBox('Maaf, Data Tidak Ditemukan ...','confirm',MB_OK or mb_iconquestion)=id_yes then
//    begin
//      jumdata:=0;
////      gNet.free;
////      resp.Free;
//      Exit;
//    end;
//    on E: Exception do
//    ShowMessage('A non-Indy related exception has been raised!');
//    end;
//    finally
//      gNet.free;
////      resp.Free;
//  end;
//
//  //MOVE JSON
////  json.JSONText := MemoAPI.text;
//  cnt := json.TreeCount['data'];
//
//  if cnt = 0 then
//  begin
//    Showmessage('Data Tidak Ditemukan');
//    exit;
//  end;
//
//  MemDataBiaya.First;
//  while not MemDataBiaya.Eof do
//  begin
//    MemDataBiaya.Edit;
//    if MemDataBiaya['kd_biaya']='BTT' then
//    begin
//     MemDataBiaya['dpp']:=json.StringTree['data/additional_point'];
//     MemDataBiaya['total']:=json.StringTree['data/additional_point'];
//    end;
//    if MemDataBiaya['kd_biaya']='BKM' then
//    begin
//      MemDataBiaya['dpp']:=json.StringTree['data/additional_km'];
//      MemDataBiaya['total']:=json.StringTree['data/additional_km'];
//    end;
//    if MemDataBiaya['kd_biaya']='BANG' then
//    begin
//      MemDataBiaya['dpp']:=json.StringTree['data/transport_cost'];
//      MemDataBiaya['total']:=json.StringTree['data/transport_cost'];
//    end;
//    if MemDataBiaya['kd_biaya']='BONGKAR' then
//    begin
//      MemDataBiaya['dpp']:=json.StringTree['data/unloading_fee'];
//      MemDataBiaya['total']:=json.StringTree['data/unloading_fee'];
//    end;
//    MemDataBiaya.Post;
//    MemDataBiaya.Next;
//  end;
//  StatusCekBiaya:=True;
//
//end;

procedure TFNewDeliveryOrder.GetApiBiayaChakra;
var
  key, url, s, BaseUrl, Vpath, Vtoken, str: string;
  vBody: string;
  jumdata: Real;
  IntTitikTambahan: Integer;
  cnt: Integer;
  res: string;
  gNet: TIdHTTP;
  resp: TMemoryStream;
begin
//  ShowMessage('tes');

  gNet := nil;
  resp := nil;
  try
    // Hitung titik tambahan
    IntTitikTambahan := StrToIntDef(spTotalTitik.Text, 1) - 1;
    // Ambil konfigurasi parameter dari database
    BaseUrl := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''baseurlchakra''');
    key := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''keyapichakra''');
    Vtoken := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''tokenapichakra''');
    // Susun parameter API
    vBody := '?type_id='+edKodeJenisKendMuatan.Text +
             '&regencie_from_id=' + edlokasiregencyid.Text +
             '&regencie_to_id=' + edKodeKabupaten.Text +
             '&point=' + spTotalTitik.Text;
    Vpath := '/api/get-tariff';
    url := BaseUrl + Vpath + vBody;
    MemoAPI.Text := url;
//    Exit;
    // Buat komponen HTTP dan memory stream
    gNet := TIdHTTP.Create(nil);
    resp := TMemoryStream.Create;
    // Set konfigurasi HTTP
    gNet.Request.Accept := 'application/json';
    gNet.Request.CustomHeaders.Values[key] := Vtoken;
    gNet.Request.ContentType := 'application/x-www-form-urlencoded';
    // Logging URL dan Token
    UpdateLogErrorAPI(BaseUrl, Vpath, Vtoken, False, url);
    UpdateLogErrorAPI(BaseUrl, Vpath, Vtoken, True, url);

    // Panggil API
    try
      res := gNet.Get(url);
    except
      on E: EIdHTTPProtocolException do
      begin
        Application.MessageBox('Maaf, Data Tidak Ditemukan ...', 'Konfirmasi', MB_OK or MB_ICONWARNING);
        Exit;
      end;
      on E: Exception do
      begin
        ShowMessage('Kesalahan koneksi API: ' + E.Message);
        Exit;
      end;
    end;
    // Simpan hasil response ke memo
    MemoAPI.Text := res;
    // Pastikan JSON sudah siap
    if not Assigned(json) then
      raise Exception.Create('Komponen JSON belum diinisialisasi.');
    json.JSONText := MemoAPI.Text;
    // Cek status response JSON
    if json.StringTree['status'] = 'false' then
    begin
      MessageDlg(json.StringTree['message'] + '..!!', mtInformation, [mbOK], 0);
      Exit;
    end;
    // Ambil jumlah data di JSON
    cnt := json.TreeCount['data'];
    if cnt = 0 then
    begin
      ShowMessage('Data Tidak Ditemukan');
      Exit;
    end;
    // Update dataset biaya
    MemDataBiaya.First;
    while not MemDataBiaya.Eof do
    begin
      MemDataBiaya.Edit;
      if MemDataBiaya['kd_biaya'] = 'BTT' then
      begin
        MemDataBiaya['dpp'] := json.StringTree['data/additional_point'];
        MemDataBiaya['total'] := json.StringTree['data/additional_point'];
      end;
      if MemDataBiaya['kd_biaya'] = 'BKM' then
      begin
        MemDataBiaya['dpp'] := json.StringTree['data/additional_km'];
        MemDataBiaya['total'] := json.StringTree['data/additional_km'];
      end;
      if MemDataBiaya['kd_biaya'] = 'BANG' then
      begin
        MemDataBiaya['dpp'] := json.StringTree['data/transport_cost'];
        MemDataBiaya['total'] := json.StringTree['data/transport_cost'];
      end;
      if MemDataBiaya['kd_biaya'] = 'BONGKAR' then
      begin
        MemDataBiaya['dpp'] := json.StringTree['data/unloading_fee'];
        MemDataBiaya['total'] := json.StringTree['data/unloading_fee'];
      end;
      MemDataBiaya.Post;
      MemDataBiaya.Next;
    end;
    StatusCekBiaya := 1;
  finally
    // Pastikan objek dibebaskan dengan aman
    if Assigned(gNet) then
      FreeAndNil(gNet);
    if Assigned(resp) then
      FreeAndNil(resp);
  end;
end;


procedure TFNewDeliveryOrder.GetApiBiayaKoreksiChakra;
var
  key,url,s,BaseUrl,Vpath,Vtoken,str,notrans : string;
  vBody,vBody2  : string;
  jumdata : Real;
  xxx: Integer;
  cnt,cnt2: Integer;
  iii,iiii: Integer;
  sss, row, row1, row2: String;
  res: String;
  date: TDate;
  max,min: Integer;
        //component
  gNet:TIdHTTP;
  //respon component
  httpresult: TIdHTTP ;
  resp: TMemoryStream;
begin
  try
//  IntTitikTambahan:=StrToInt(spTotalTitik.Text)-1;
  notrans:=edKodeDOMuatan.Text;
//  notrans:='DO/001/13/III/2025/HLJ';
  //BaseUrl:=edBaseURL.Text;
  BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurlchakra''');
  key:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''keyapichakra''');
  vtoken:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''tokenapichakra''');
  vBody:='?notrans='+notrans;
  Vpath:='/api/get-correction-cost';
  url:= BaseUrl+Vpath+vBody;
  try
  gNet :=  TIdHTTP.Create(nil);
  gNet.Request.Accept := 'application/json';
  gNet.Request.CustomHeaders.Values[key] := Vtoken;
  gNet.Request.ContentType := 'application/x-www-form-urlencoded';
  UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url);
  UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url);
  res:=  gNet.get(url);
  jumdata:=1;
  MemoAPI.text := res;
  json.JSONText := MemoAPI.text;
  if json.StringTree['status']='false' then
  begin
    MessageDlg(json.StringTree['message']+'..!!',mtInformation,[mbRetry],0);
    Exit;
  end;

  except
  on E: EIdHTTPProtocolException do

    if Application.MessageBox('Maaf, Data Tidak Ditemukan ...','confirm',MB_OK or mb_iconquestion)=id_yes then
    begin

      jumdata:=0;
      gNet.free;
      resp.Free;
    end;
    on E: Exception do
    ShowMessage('A non-Indy related exception has been raised!');
    end;
    finally
      gNet.free;
      resp.Free;
  end;

  //MOVE JSON
//  json.JSONText := MemoAPI.text;
  cnt := json.TreeCount['data'];

  if cnt = 0 then
  begin
    Showmessage('Data Tidak Ditemukan');
    exit;
  end;

  xxx := 0;
  for iii := 0 to cnt - 1 do
  begin
    inc(xxx);

    row1 := format('data/%d/', [iii]);

    with FListPerbandinganBiayaDo do
    begin
      MemDataBiayaCorrection.First;
      while not MemDataBiayaCorrection.Eof do
      begin
        MemDataBiayaCorrection.Edit;
        if MemDataBiayaCorrection['kd_biaya']='BTT' then
        begin
         MemDataBiayaCorrection['dpp']:=json.StringTree[row1+'additional_point'];
        end;
        if MemDataBiayaCorrection['kd_biaya']='BKM' then
        begin
          MemDataBiayaCorrection['dpp']:=json.StringTree[row1+'additional_km'];
        end;
        if MemDataBiayaCorrection['kd_biaya']='BANG' then
        begin
          MemDataBiayaCorrection['dpp']:=json.StringTree[row1+'transport_cost'];
        end;
        if MemDataBiayaCorrection['kd_biaya']='BONGKAR' then
        begin
          MemDataBiayaCorrection['dpp']:=json.StringTree[row1+'unloading_fee'];
        end;
        MemDataBiayaCorrection.Next;
      end;
    end;
    strPlateNo:=json.StringTree[row1+'plate_number'];
  end;
end;

procedure TFNewDeliveryOrder.CekGetApiBiayaKoreksiChakra;
var
  key,url,s,BaseUrl,Vpath,Vtoken,str,notrans : string;
  vBody,vBody2  : string;
  jumdata : Real;
  xxx: Integer;
  cnt,cnt2: Integer;
  iii,iiii: Integer;
  sss, row, row1, row2: String;
  res: String;
  date: TDate;
  max,min: Integer;
        //component
  gNet:TIdHTTP;
  //respon component
  httpresult: TIdHTTP ;
  resp: TMemoryStream;
begin
  try
  IntAdaPerubahan:=0;
//  notrans:=edKodeJenisKendMuatan.Text;
  notrans:='DO/001/13/III/2025/HLJ';
  //BaseUrl:=edBaseURL.Text;
  BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurlchakra''');
  key:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''keyapichakra''');
  vtoken:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''tokenapichakra''');
  vBody:='?notrans='+notrans;
  Vpath:='/api/get-correction-cost';
  url:= BaseUrl+Vpath+vBody;
  MemoAPI.Text:=url;
  try
  gNet :=  TIdHTTP.Create(nil);
  gNet.Request.Accept := 'application/json';
  gNet.Request.CustomHeaders.Values[key] := Vtoken;
  gNet.Request.ContentType := 'application/x-www-form-urlencoded';
  UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url);
  UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url);
  res:=  gNet.get(url);
  jumdata:=1;
  MemoAPI.text := res;
  json.JSONText := MemoAPI.text;
  if json.StringTree['status']='false' then
  begin
    MessageDlg(json.StringTree['message']+'..!!',mtInformation,[mbRetry],0);
    Exit;
  end;

  except
  on E: EIdHTTPProtocolException do

    if Application.MessageBox('Maaf, Data Tidak Ditemukan ...','confirm',MB_OK or mb_iconquestion)=id_yes then
    begin

      jumdata:=0;
      gNet.free;
      resp.Free;
    end;
    on E: Exception do
    ShowMessage('A non-Indy related exception has been raised!');
    end;
    finally
      gNet.free;
      resp.Free;
  end;

  //MOVE JSON
//  json.JSONText := MemoAPI.text;
  cnt := json.TreeCount['data'];

  if cnt = 0 then
  begin
    Showmessage('Data Tidak Ditemukan');
    exit;
  end;

  xxx := 0;
  for iii := 0 to cnt - 1 do
  begin
    inc(xxx);

    row1 := format('data/%d/', [iii]);

//    with FListPerbandinganBiayaDo do
//    begin
    MemDataBiaya.First;
    while not MemDataBiaya.Eof do
    begin
      if MemDataBiaya['kd_biaya']='BTT' then
      begin
        if MemDataBiaya['dpp']<>json.StringTree[row1+'additional_point'] then
        IntAdaPerubahan:=1;
      end;
      if MemDataBiaya['kd_biaya']='BKM' then
      begin
        if MemDataBiaya['dpp']<>json.StringTree[row1+'additional_km'] then
        IntAdaPerubahan:=1;
      end;
      if MemDataBiaya['kd_biaya']='BANG' then
      begin
        if MemDataBiaya['dpp']<>json.StringTree[row1+'transport_cost'] then
        IntAdaPerubahan:=1;
      end;
      if MemDataBiaya['kd_biaya']='BONGKAR' then
      begin
        if MemDataBiaya['dpp']<>json.StringTree[row1+'unloading_fee'] then
        IntAdaPerubahan:=1;
      end;
      MemDataBiaya.Next;
    end;
    if IntAdaPerubahan=1 then
    begin
      MessageDlg('Ada perubahan biaya..!!',mtInformation,[mbOK],0);
      BtnCekBiaya.Click;
      Exit;
    end;

//    end;
  end;
end;

procedure TFNewDeliveryOrder.Save;
begin

  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_delivery_order" ("created_at", "created_by", '+
            ' "notrans", "date_trans", "type_do_code", "type_do_name", "starting_loc_code", '+
            ' "starting_loc_name", "province_code", "province_name", "regency_code", '+
            ' "regency_name", "number_of_points", "description", "formsumbervendor", "order_no", '+
            //' "additional_code", '+
            ' "trans_day", "trans_month", "trans_year",status,starting_loc_regencie_id,'+
            'sbu_code) '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+QuotedStr(edKodeDOMuatan.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggalMuatan.Date))+', '+
            ' '+QuotedStr(edKodeJenisMuatan.Text)+', '+
            ' '+QuotedStr(edNamaJenisMuatan.Text)+', '+
            ' '+QuotedStr(edKodeLokasi.Text)+', '+
            ' '+QuotedStr(edNamaLokasi.Text)+', '+
            ' '+QuotedStr(edKodeProvinsi.Text)+', '+
            ' '+QuotedStr(edNamaProvinsi.Text)+', '+
            ' '+QuotedStr(edKodeKabupaten.Text)+', '+
            ' '+QuotedStr(edNamaKabupaten.Text)+', '+
            ' '+QuotedStr(IntToStr(spTotalTitik.Value))+', '+
            ' '+QuotedStr(MemKeteranganBiaya.Text)+', '+
            ' '+QuotedStr(vFormSumber01)+', '+
            ' '+QuotedStr(order_no)+', '+
            //' '+QuotedStr('0')+', '+
            ' '+QuotedStr(strtgl)+', '+
            ' '+QuotedStr(strbulan)+', '+
            ' '+QuotedStr(strtahun)+',1,'+QuotedStr(edlokasiregencyid.Text)+','+
            ' '+QuotedStr(FHomeLogin.vKodePRSH)+');');
    ExecSQL;
  end;
  InsertDetailLoad;
  InsertDetailCost;
  InsertDetailService;
  UpdateStatusTele;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListDeliveryOrder.Refresh;
end;

procedure TFNewDeliveryOrder.spTotalTitikChange(Sender: TObject);
begin
  if (Status=1) AND (IntStatusDO=3) then
  begin
    if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
    begin
      BtnCekBiaya.Caption:='Cek Biaya';
    end else begin
      BtnCekBiaya.Caption:='Cek Biaya Perubahan';
    end;
  end;

  if (Status=1) AND (IntStatusDO>3) then
  begin
    if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
    begin
      BtnCekBiaya.Caption:='Cek Biaya';
      BtnCekBiaya.Visible:=True;
    end else begin
      BtnCekBiaya.Visible:=False;
    end;
  end;

  if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
  begin
    StatusPerubahanBiaya:=1;
    StatusCekBiaya:=0;
  end else begin
    StatusPerubahanBiaya:=0;
    StatusCekBiaya:=1;
  end;

end;

procedure TFNewDeliveryOrder.spTotalTitikClick(Sender: TObject);
begin
  if (Status=1) AND (IntStatusDO=3) then
  begin
    if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
    begin
      BtnCekBiaya.Caption:='Cek Biaya';
    end else begin
      BtnCekBiaya.Caption:='Cek Biaya Perubahan';
    end;
  end;

  if (Status=1) AND (IntStatusDO>3) then
  begin
    if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
    begin
      BtnCekBiaya.Caption:='Cek Biaya';
      BtnCekBiaya.Visible:=True;
    end else begin
      BtnCekBiaya.Visible:=False;
    end;
  end;

  if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
  begin
    StatusPerubahanBiaya:=1;
    StatusCekBiaya:=0;
  end else begin
    StatusPerubahanBiaya:=0;
    StatusCekBiaya:=1;
  end;

end;

procedure TFNewDeliveryOrder.Update;
var strStatus: String;
begin

  if (StatusPerubahanBiaya=1) then
  begin
   strStatus:=',status=1';
  end else if (StatusCekBiaya=1) AND (IntStatusDO=3) then
  begin
   strStatus:=',status=4';
  end else strStatus:='';

  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' UPDATE "public"."t_delivery_order" SET '+
            ' updated_at=NOW(),'+
            ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
            ' date_trans='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggalMuatan.Date))+','+
            ' type_do_code='+QuotedStr(edKodeJenisMuatan.Text)+','+
            ' type_do_name='+QuotedStr(edNamaJenisMuatan.Text)+','+
            ' starting_loc_code='+QuotedStr(edKodeLokasi.Text)+','+
            ' starting_loc_name='+QuotedStr(edNamaLokasi.Text)+','+
            ' province_code='+QuotedStr(edKodeProvinsi.Text)+','+
            ' province_name='+QuotedStr(edNamaProvinsi.Text)+','+
            ' regency_code='+QuotedStr(edKodeKabupaten.Text)+','+
            ' regency_name='+QuotedStr(edNamaKabupaten.Text)+','+
            ' number_of_points='+QuotedStr(IntToStr(spTotalTitik.Value))+','+
            ' description='+QuotedStr(MemKeteranganBiaya.Text)+', '+
            ' order_no='+QuotedStr(order_no)+','+
            ' additional_code='+QuotedStr('0')+','+
            ' trans_day='+QuotedStr(strtgl)+','+
            ' trans_month='+QuotedStr(strbulan)+','+
            ' trans_year='+QuotedStr(strtahun)+strStatus+', '+
            ' status_correction=0 '+
            ' Where notrans='+QuotedStr(edKodeDOMuatan.Text)+'');
    ExecSQL;
  end;
  InsertDetailLoad;
  InsertDetailCost;
  InsertDetailService;

  if (StatusPerubahanBiaya=1) then
  begin
   UpdateStatusDO(1);
  end else if (StatusCekBiaya=1) AND (IntStatusDO=3) then
  begin
   UpdateStatusDO(4);
  end;

  MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
  Close;
//  FListDeliveryOrder.Refresh;
  FMainMenu.TampilTabForm2;
end;

procedure TFNewDeliveryOrder.InsertDetailLoad;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT * from "public"."t_delivery_order_load"'+
            ' WHERE "notrans"='+QuotedStr(edKodeDOMuatan.Text)+' ) a '+
            ' Order By notrans desc');
    open;
  end;

  if Dm.Qtemp1.RecordCount>0 then
  begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "public"."t_delivery_order_load" '+
            ' WHERE "notrans"='+QuotedStr(edKodeDOMuatan.Text)+';';
  ExecSQL;
  end;
  end;

  MemDataMuatan.First;
  while not MemDataMuatan.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "public"."t_delivery_order_load" ("notrans", "notrans_load", '+
              ' "code_vendor_load", "name_vendor_load", "no_ref_load", "item_code", '+
              ' "item_name","amount", "unit", "source_load") '+
              ' Values( '+
              ' '+QuotedStr(edKodeDOMuatan.Text)+', '+
              ' '+QuotedStr(MemDataMuatan['notrans'])+', '+
              ' '+QuotedStr(MemDataMuatan['kode_vendor'])+', '+
              ' '+QuotedStr(MemDataMuatan['name_vendor'])+', '+
              ' '+QuotedStr(MemDataMuatan['no_reff'])+', '+
              ' '+QuotedStr(MemDataMuatan['kd_barang'])+', '+
              ' '+QuotedStr(MemDataMuatan['nm_barang'])+', '+
              ' '+QuotedStr(MemDataMuatan['jumlah'])+', '+
              ' '+QuotedStr(MemDataMuatan['satuan'])+', '+
              ' '+IntToStr(sumber_do)+' );';
    ExecSQL;
    end;
  MemDataMuatan.Next;
  end;
end;

procedure TFNewDeliveryOrder.InsertDetailCost;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT * from "public"."t_delivery_order_cost"'+
            ' WHERE "notrans"='+QuotedStr(edKodeDOMuatan.Text)+' ) a '+
            ' Order By notrans desc');
    open;
  end;

  if Dm.Qtemp1.RecordCount>0 then
  begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "public"."t_delivery_order_cost" '+
            ' WHERE "notrans"='+QuotedStr(edKodeDOMuatan.Text)+';';
  ExecSQL;
  end;
  end;

  Grand_Tot:=0;
  MemDataBiaya.First;
  while not MemDataBiaya.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "public"."t_delivery_order_cost" ("notrans", '+
              ' "cost_code", "cost_name", '+
              ' "percent_pph", "code_pph", "name_pph", "percent_ppn", "code_ppn", "name_ppn", '+
              ' "sub_total", "ppn_value", "pph_value", '+
              ' "grand_total") '+
              ' Values( '+
              ' '+QuotedStr(edKodeDOMuatan.Text)+', '+
              ' '+QuotedStr(MemDataBiaya['kd_biaya'])+', '+
              ' '+QuotedStr(MemDataBiaya['nm_biaya'])+', '+
              ' '+QuotedStr(stringreplace(MemDataBiaya['persen_pph'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(MemDataBiaya['akun_pph'])+', '+
              ' '+QuotedStr(MemDataBiaya['nama_pph'])+', '+
              ' '+QuotedStr(stringreplace(MemDataBiaya['persen_ppn'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(MemDataBiaya['akun_ppn'])+', '+
              ' '+QuotedStr(MemDataBiaya['nama_ppn'])+', '+
              ' '+QuotedStr(stringreplace(MemDataBiaya['dpp'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(stringreplace(MemDataBiaya['ppn'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(stringreplace(MemDataBiaya['pph'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(stringreplace(MemDataBiaya['total'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+' );';
    ExecSQL;
    end;
  Grand_Tot:=Grand_Tot+MemDataBiaya['total'];
  MemDataBiaya.Next;
  end;
end;

procedure TFNewDeliveryOrder.InsertDetailService;
var
total : Real;
begin
  //total:=FloatToStr(DBGridSumberPenjualan.Columns[5].Footers);
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT * from "public"."t_delivery_order_services"'+
            ' WHERE "notrans"='+QuotedStr(edKodeDOMuatan.Text)+' ) a '+
            ' Order By notrans desc');
    open;
  end;

  if Dm.Qtemp1.RecordCount>0 then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:=' DELETE FROM  "public"."t_delivery_order_services" '+
                ' WHERE "notrans"='+QuotedStr(edKodeDOMuatan.Text)+';';
      ExecSQL;
    end;
  end;

  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "public"."t_delivery_order_services" ("notrans", '+
              ' "vendor_code", "vendor_name", "pic", "vehicles", '+
              ' "type_vehicles_code", "type_vehicles_name", "capacity", '+
              ' "driver_name", "helper_name", "number_pib", "no_invoice",'+
              //'  "date_invoice", '+
              ' "total_cost",pickup_location,delivery_location,vehicle_group_id) '+
              ' Values( '+
              ' '+QuotedStr(edKodeDOMuatan.Text)+', '+
              ' '+QuotedStr(edKodeVendorTransMuatan.Text)+', '+
              ' '+QuotedStr(edNamaVendorTransMuatan.Text)+', '+
              ' '+QuotedStr(edPICMuatan.Text)+', '+
              ' '+QuotedStr(edNoKendMuatan.Text)+', '+
              ' '+QuotedStr(edKodeJenisKendMuatan.Text)+', '+
              ' '+QuotedStr(edNamaJenisKendMuatan.Text)+', '+
              ' '+QuotedStr(IntToStr(spKapasitas.Value))+', '+
              ' '+QuotedStr(edNamaSupir.Text)+', '+
              ' '+QuotedStr(edNamaKenek.Text)+', '+
              ' '+QuotedStr(edNomorPIB.Text)+', '+
              ' '+QuotedStr('0')+', '+
              //' '+QuotedStr('0')+', '+
              ' '+QuotedStr(stringreplace(FloatToStr(Grand_Tot), ',', '.',[rfReplaceAll, rfIgnoreCase]))+','+
              ' '+QuotedStr(edLokasiMuat.Text)+','+QuotedStr(edLokasiBongkar.Text)+','+QuotedStr(edKelompokKendaraan.Text)+');';
              //' '+QuotedStr(VarToStr(DBGridSumberPenjualan.Columns[5].Footer.Value))+' );';
    ExecSQL;
  end;
end;

procedure TFNewDeliveryOrder.Autonumber;
var LOriginalName: string;
    LBaseName: string;
    LLastUnderscorePos: Integer;
    LSuffix: string;
    LDummyInt: Integer;
begin
  LOriginalName := FListDeliveryOrder.Name;
  LBaseName := LOriginalName;
  LLastUnderscorePos := LastDelimiter('_', LBaseName);
  if (LLastUnderscorePos > 0) and (LLastUnderscorePos < Length(LBaseName)) then
  begin
    LSuffix := Copy(LBaseName, LLastUnderscorePos + 1, MaxInt);
    if TryStrToInt(LSuffix, LDummyInt) then
    begin
      LBaseName := Copy(LBaseName, 1, LLastUnderscorePos - 1);
    end;
  end;
  idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(LBaseName)+'');
  strday2:=dtTanggalMuatan.Date;
  edKodeDOMuatan.Text:=getNourut(strday2,'public.t_delivery_order','0');
  edKodeDOBiaya.Text:=getNourut(strday2,'public.t_delivery_order','0');
  edKodeDODok.Text:=getNourut(strday2,'public.t_delivery_order','0');
end;


procedure TFNewDeliveryOrder.Clear;
begin
  MemDataBiaya.EmptyTable;
  MemDataMuatan.EmptyTable;
  strVehicleGroupId:='';
  //Muatan
  edKodeDOMuatan.Clear;
  dtTanggalMuatan.Date:=NOW();
  edKodeJenisMuatan.Clear;
  edNamaJenisMuatan.Clear;
  edKodeVendorMuatan.Clear;
  edNamaVendorMuatan.Clear;
  edKodeVendorTransMuatan.Clear;
  edNamaVendorTransMuatan.Clear;
  edPICMuatan.Clear;
  edNoKendMuatan.Clear;
  edKodeJenisKendMuatan.Clear;
  edNamaJenisKendMuatan.Clear;
  spKapasitas.Value:=0;
  edNamaSupir.Clear;
  edNamaKenek.Clear;
  edNomorPIB.Clear;
  edLokasiMuat.Clear;
  kodelokasimuat:='';
  kodelokasibongkar:='';
  edLokasiBongkar.Clear;
  edKelompokKendaraan.Clear;

  //Biaya
  edKodeDOBiaya.Clear;
  dtTanggalBiaya.Date:=NOW();
  edNamaJenisBiaya.Clear;
  edKodeLokasi.Clear;
  edNamaLokasi.Clear;
  edKodeProvinsi.Clear;
  edNamaProvinsi.Clear;
  edKodeKabupaten.Clear;
  edNamaKabupaten.Clear;
  spTotalTitik.Value:=0;
  MemKeteranganBiaya.Clear;

  //Dokumen
  edKodeDODok.Clear;
  dtTanggalDoc.Date:=NOW();
  edNamaJenisDoc.Clear;
  edNomorTagihanVendor.Clear;
  dtTerimaTagihan.Date:=NOW();
  edTotalBiaya.Clear;

  StatusPerubahanBiaya:=0;
  StatusCekBiaya:=1;



  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select supplier_code,supplier_name from t_supplier '+
              'where supplier_code='+
              '(select value_parameter from t_parameter where key_parameter=''default_penyedia_jasa'') '+
              'and deleted_at is null';
    open;
  end;
  if dm.Qtemp.RecordCount>0 then
  begin
    edKodeVendorTransMuatan.Text:=dm.Qtemp.FieldValues['supplier_code'];
    edNamaVendorTransMuatan.Text:=dm.Qtemp.FieldValues['supplier_name'];
  end;
end;

procedure TFNewDeliveryOrder.HitungGrid;
begin
  try
    begin
      if MemDataBiaya['kd_biaya']<>'0' then
      begin
        MemDataBiaya.Edit;
        MemDataBiaya['total']:=MemDataBiaya['dpp']+MemDataBiaya['ppn']-MemDataBiaya['pph'];
        //Validasi PPN
        if MemDataBiaya['persen_ppn']=0 then
        begin
          MemDataBiaya['persen_ppn']:=0;
        end;
        if (MemDataBiaya['persen_ppn']<>0) and (MemDataBiaya['nama_ppn']<>'-') then
        begin
          MemDataBiaya['ppn']:=(MemDataBiaya['dpp']*(MemDataBiaya['persen_ppn']/100));
        end;
        //Validasi PPH
        if MemDataBiaya['persen_pph']=0 then
        begin
          MemDataBiaya['pph']:=0;
        end;
        if (MemDataBiaya['persen_pph']<>0) and (MemDataBiaya['nama_pph']<>'-') then
        begin
          MemDataBiaya['pph']:=(MemDataBiaya['dpp']*(MemDataBiaya['persen_pph']/100));
        end;
        MemDataBiaya['total']:=MemDataBiaya['dpp']+MemDataBiaya['ppn']-MemDataBiaya['pph'];
        MemDataBiaya.Post;
      end;
    end;
    Except;
  end;
end;

procedure TFNewDeliveryOrder.RefreshGridRincianBiaya;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "code", "name", "description", "code_master" FROM '+
            ' "t_type_delivery_order_det" where deleted_at IS NULL ) a '+
            ' WHERE "code_master"='+QuotedStr(edKodeJenisMuatan.Text)+' '+
            ' Order By code, name desc');
    open;
  end;

    FNewDeliveryOrder.MemDataBiaya.active:=false;
    FNewDeliveryOrder.MemDataBiaya.active:=true;
    FNewDeliveryOrder.MemDataBiaya.EmptyTable;

    FNewDeliveryOrder.MemDataMuatan.active:=false;
    FNewDeliveryOrder.MemDataMuatan.active:=true;
    FNewDeliveryOrder.MemDataMuatan.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FNewDeliveryOrder.MemDataBiaya.active:=false;
      FNewDeliveryOrder.MemDataBiaya.active:=true;
      FNewDeliveryOrder.MemDataBiaya.EmptyTable;

      FNewDeliveryOrder.MemDataMuatan.active:=false;
      FNewDeliveryOrder.MemDataMuatan.active:=true;
      FNewDeliveryOrder.MemDataMuatan.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FNewDeliveryOrder.MemDataBiaya.insert;
     FNewDeliveryOrder.MemDataBiaya['kd_biaya']:=Dm.Qtemp.fieldbyname('code').value;
     FNewDeliveryOrder.MemDataBiaya['nm_biaya']:=Dm.Qtemp.fieldbyname('name').value;
     FNewDeliveryOrder.MemDataBiaya['dpp']:='0';
     FNewDeliveryOrder.MemDataBiaya['ppn']:='0';
     FNewDeliveryOrder.MemDataBiaya['akun_ppn']:='0';
     FNewDeliveryOrder.MemDataBiaya['nama_ppn']:='-';
     FNewDeliveryOrder.MemDataBiaya['persen_ppn']:='0';
     FNewDeliveryOrder.MemDataBiaya['pph']:='0';
     FNewDeliveryOrder.MemDataBiaya['akun_pph']:='0';
     FNewDeliveryOrder.MemDataBiaya['nama_pph']:='-';
     FNewDeliveryOrder.MemDataBiaya['persen_pph']:='0';
     FNewDeliveryOrder.MemDataBiaya['total']:='0';
     FNewDeliveryOrder.MemDataBiaya['keterangan']:='0';
     FNewDeliveryOrder.MemDataBiaya['no_invoice']:='0';
     FNewDeliveryOrder.MemDataBiaya['tgl_invoice']:=NOW();
     FNewDeliveryOrder.MemDataBiaya.post;
     Dm.Qtemp.next;
    end;
    end;
    FNewDeliveryOrder.MemDataMuatan.active:=false;
    if edKodeJenisMuatan.Text='002' then
    begin
      DBGridSumberPenjualan.Columns[13].Visible:=true;
      DBGridSumberPenjualan.Columns[14].Visible:=true;
    end
    else
    begin
      DBGridSumberPenjualan.Columns[13].Visible:=false;
      DBGridSumberPenjualan.Columns[14].Visible:=false;
    end;
end;

procedure TFNewDeliveryOrder.RzPageControl1Click(Sender: TObject);
begin
   if FNewDeliveryOrder.RzPageControl1.ActivePage=FNewDeliveryOrder.TabDataBiaya  then
   begin
     btNextStepClick(Sender);
   end;
end;

procedure TFNewDeliveryOrder.TabDataBiayaClick(Sender: TObject);
begin
  btNextStepClick(Sender);
end;

procedure TFNewDeliveryOrder.BCorrectionClick(Sender: TObject);
begin
  FKoreksi.vcall:=SelectRow('select Upper(submenu) menu from t_menu_sub '+
                'where link='+QuotedStr(FListDeliveryOrder.Name)); //Mendapatkan nama Menu
  FKoreksi.Status:=0;
  FKoreksi.vnotransaksi:=edKodeDOMuatan.Text; //Mendapatkan Nomor Transaksi
  FKoreksi.ShowModal;
end;

procedure TFNewDeliveryOrder.btAddDetailClick(Sender: TObject);
begin
  if (vFormSumber01='0') OR (vFormSumber01='')  then
  begin
    ShowMessage('Silakan Setting Form Target Sumber..');
    exit;
  end;
  if (vFormSumber01<>'0') AND (vFormSumber01<>'') then
  begin
    FDelivery_Order_Sumber.ShowModal;
  end;
end;

procedure TFNewDeliveryOrder.btBackStepClick(Sender: TObject);
begin
  FNewDeliveryOrder.RzPageControl1.ActivePage:=FNewDeliveryOrder.TabDataMuatan;
end;

procedure TFNewDeliveryOrder.btBatalParameterClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFNewDeliveryOrder.btBatalSumberJualClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFNewDeliveryOrder.btNextStepClick(Sender: TObject);
begin
  FNewDeliveryOrder.RzPageControl1.ActivePage:=FNewDeliveryOrder.TabDataBiaya;
  FNewDeliveryOrder.edKodeDOBiaya.Text:=edKodeDOMuatan.Text;
  FNewDeliveryOrder.edNamaJenisBiaya.Text:=edNamaJenisMuatan.Text;
  FNewDeliveryOrder.dtTanggalBiaya.Date:=dtTanggalMuatan.Date;

  FNewDeliveryOrder.edKodeDODok.Text:=edKodeDOMuatan.Text;
  FNewDeliveryOrder.edNamaJenisDoc.Text:=edNamaJenisMuatan.Text;
  FNewDeliveryOrder.dtTanggalDoc.Date:=dtTanggalMuatan.Date;
  FNewDeliveryOrder.dtTerimaTagihan.Date:=dtTanggalMuatan.Date;
end;

procedure TFNewDeliveryOrder.btMasterLokasiBongkarClick(Sender: TObject);
begin
  FLokasiBongkar.Show;
end;

procedure TFNewDeliveryOrder.btMasterLokasiMuatClick(Sender: TObject);
begin
  FLokasiMuat.Show;
end;

procedure TFNewDeliveryOrder.btMasterSumberClick(Sender: TObject);
begin
   vFormSumber01:='0';
  vFormSumber02:='0';
  FMasterData.Caption:='Master Data';
  FMasterData.vcall:='do_master_jenis';
  FMasterData.update_grid('code','name','description','t_type_delivery_order','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.Show;
end;

procedure TFNewDeliveryOrder.BtnCekBiayaClick(Sender: TObject);
begin
  if edNamaLokasi.Text='' then
  begin
    MessageDlg('Lokasi awal wajib diisi..!!',mtInformation,[mbRetry],0);
    Exit;
  end else if edNamaKabupaten.Text='' then
  begin
    MessageDlg('Kabupaten Tujuan wajib diisi..!!',mtInformation,[mbRetry],0);
    Exit;
  end else if spTotalTitik.Text='' then
  begin
    MessageDlg('Jumlah titik wajib diisi..!!',mtInformation,[mbRetry],0);
    Exit;
  end
  else if edNamaJenisKendMuatan.Text='' then
  begin
    MessageDlg('Nama lokasi wajib diisi..!!',mtInformation,[mbRetry],0);
    Exit;
  end
  else if (IntStatusDO=3) then
  begin
    FListPerbandinganBiayaDo.MemDataBiayaLast.Active:=False;
    FListPerbandinganBiayaDo.MemDataBiayaCorrection.Active:=False;
    FListPerbandinganBiayaDo.MemDataBiayaLast.Active:=True;
    FListPerbandinganBiayaDo.MemDataBiayaCorrection.Active:=True;

    FListPerbandinganBiayaDo.MemDataBiayaLast.EmptyTable;
    FListPerbandinganBiayaDo.MemDataBiayaCorrection.EmptyTable;
    with FListPerbandinganBiayaDo do
    begin
      MemDataBiaya.First;
      while not MemDataBiaya.Eof do
      begin
        MemDataBiayaLast.Insert;
        MemDataBiayaLast['kd_biaya']:=MemDataBiaya['kd_biaya'];
        MemDataBiayaLast['nm_biaya']:=MemDataBiaya['nm_biaya'];
        MemDataBiayaLast['dpp']:=MemDataBiaya['dpp'];
        MemDataBiayaLast.Post;

        MemDataBiayaCorrection.Insert;
        MemDataBiayaCorrection['kd_biaya']:=MemDataBiaya['kd_biaya'];
        MemDataBiayaCorrection['nm_biaya']:=MemDataBiaya['nm_biaya'];
        MemDataBiayaCorrection.Post;
        MemDataBiaya.Next
      end;
    end;

    GetApiBiayaKoreksiChakra;
    FListPerbandinganBiayaDo.ShowModal;
//    ShowMessage(inttostr(IntStatusDO));
  end else
  begin
    GetApiBiayaChakra;
  end;
end;

procedure TFNewDeliveryOrder.btSaveParameterClick(Sender: TObject);
begin
  //Cek Tanggal Tagihan Tidak Boleh Dibawah Tanggal Muatan
  if dtTerimaTagihan.Date < dtTanggalMuatan.date then
  begin
    ShowMessage('Tanggal Tagihan Tidak Boleh Dibawah Tanggal Muatan...!!!');
    exit;
  end;

  //Cek Balance
  Grand_Tot:=0;
  MemDataBiaya.First;
  while not MemDataBiaya.Eof do
  begin
    Grand_Tot:=Grand_Tot+MemDataBiaya['total'];
    MemDataBiaya.Next;
  end;

  if Grand_Tot<> edTotalBiaya.Value then
  begin
    ShowMessage('Total Biaya Dengan Total Tagihan Tidak Balance...!!!');
    //ShowMessage(FloatToStr(Grand_Tot)+'0'+FloatToStr(edTotalBiaya.Value));
    exit;
  end;


  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' UPDATE "public"."t_delivery_order" SET '+
            ' updated_at=NOW(), '+
            ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+',status=6 '+
            ' Where notrans='+QuotedStr(edKodeDODok.Text)+'');
    ExecSQL;
  end;
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' UPDATE "public"."t_delivery_order_services" SET '+
            ' date_invoice='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTerimaTagihan.Date))+','+
            ' no_invoice='+QuotedStr(edNomorTagihanVendor.Text)+','+
            ' total_cost='+QuotedStr(stringreplace(FloatToStr(Grand_Tot), ',', '.',[rfReplaceAll, rfIgnoreCase]))+' '+
            ' Where notrans='+QuotedStr(edKodeDODok.Text)+'');
    ExecSQL;
  end;

  ShowMessage('Data Berhasil Diperbarui..');
end;

procedure TFNewDeliveryOrder.btSimpanSumberJualClick(Sender: TObject);
var
  Year, Month, Day: Word;
  strMessage,strMessageBox:String;
begin

  DecodeDate(dtTanggalMuatan.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);

  if not dm.Koneksi.Connected then
  dm.Koneksi.Connected := True;

  if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
    if edKodeDOMuatan.Text='' then
    begin
      MessageDlg('Pastikan Nomor Transaksi Anda Sudah Benar..!!',mtInformation,[mbRetry],0);
      edKodeDOMuatan.SetFocus;
    end
    else if edKodeVendorTransMuatan.Text='' then
    begin
      MessageDlg('Data Jasa Transport Tidak Lengkap..!!',mtInformation,[mbRetry],0);
      edKodeVendorTransMuatan.SetFocus;
    end  else if (edLokasiMuat.Text='') then
    begin
      MessageDlg('Lokasi Muat Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end else if (edLokasiBongkar.Text='') then
    begin
      MessageDlg('Lokasi Bongkar Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end
    else if MemDataMuatan.RecordCount=0 then
    begin
      MessageDlg('Pastikan Detail Muatan Sudah Lengkap..!!',mtInformation,[mbRetry],0);
      edKodeDOMuatan.SetFocus;
    end
    else if MemDataBiaya.RecordCount=0 then
    begin
      MessageDlg('Pastikan Detail Biaya Sudah Lengkap..!!',mtInformation,[mbRetry],0);
      edKodeDOMuatan.SetFocus;
    end else if (StatusCekBiaya=0) then
    begin
      MessageDlg('Silahkan melakukan Cek Biaya..!!',mtInformation,[mbRetry],0);
    end else if (edKelompokKendaraan.Text='') then
    begin
      MessageDlg('Kelompok Barang Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end
    else if Status = 0 then
    begin
      FNewDeliveryOrder.Autonumber;
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Order No. '+edKodeDOMuatan.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        Save;
        Dm.Koneksi.Commit;
      end;
    end
    else if Status = 1 then
    begin
//      CekGetApiBiayaKoreksiChakra;
//      if IntAdaPerubahan=0 then
//      begin
//        if StatusPerubahanBiaya=True then strMessage:='Apa Anda Yakin Memperbarui Data Ini Status akan menjadi DO Dibuat ? '
        if (StatusPerubahanBiaya=1) then
        begin
          strMessageBox:='Ada Perubahan Biaya, Status Akan Menjadi DO Di Buat, Apa Anda Yakin Memperbarui Data Ini ?';
        end else begin
          strMessageBox:='Apa Anda Yakin Memperbarui Data Ini ?';
        end;
        if application.MessageBox(PChar(strMessageBox),'confirm',mb_yesno or mb_iconquestion)=id_yes then
        begin
          Update;
          Dm.Koneksi.Commit;
        end;
//      end;
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


procedure TFNewDeliveryOrder.DBGridSumberPenjualanColEnter(Sender: TObject);
begin
  HitungGrid;
  spTotalTitik.Text:=IntToStr(MemDataMuatan.RecordCount);
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanColumns0CellButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  if edKodeJenisMuatan.Text='002' then
  begin
    FSearch_Supplier.Caption:='Master Data Supplier Kendaraan';
    FSearch_Supplier.vcall:='delivery_order_reimburst';
    FSearch_Supplier.QSupplier.Close;
    FSearch_Supplier.QSupplier.Open;
    FSearch_Supplier.ShowModal;
  end;
  if edKodeJenisMuatan.Text='004' then
  begin
    ShowMessage('Data Transit');
  end;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanColumns4CellButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='do_ppn';
    with QDaftar_Perk do
    begin
      Close;
      Sql.Clear;
      SQL.Text:=' SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                ' left join t_ak_header c on b.header_code=c.header_code'+
                ' GROUP BY b.code,b.account_name,c.header_name '+
                ' ORDER BY b.code,b.account_name,c.header_name';
      Execute;
    end;
  end;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanColumns8CellButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='do_pph';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                ' left join t_ak_header c on b.header_code=c.header_code '+
                ' GROUP BY b.code,b.account_name,c.header_name '+
                ' ORDER BY b.code,b.account_name,c.header_name';
      Execute;
    end;
  end;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanEnter(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanExit(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DELETE then
  begin
    MemDataBiaya.Delete;
  end;
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanKeyPress(Sender: TObject;
  var Key: Char);
begin
{  if ((Key = #13)) then // Enter key
  begin
    // Membatalkan operasi insert
    MemDataBiaya.Cancel;
    // Tampilkan pesan jika diperlukan
    ShowMessage('Tidak Dapat Menambah Item Baru');
    Key := #0; // Mematikan key event
  end;  }
end;

procedure TFNewDeliveryOrder.DBGridSumberPenjualanMouseEnter(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFNewDeliveryOrder.dtTanggalMuatanChange(Sender: TObject);
begin
//  if Status=0 then
//  begin
//    Autonumber;
//  end;
  edKelompokKendaraan.Text:='';
  edNamaJenisKendMuatan.Text:='';
  edKodeJenisKendMuatan.Text:='';
  edNoKendMuatan.Text:='';
  strVehicleGroupId:='';
  spKapasitas.Value:=0;
  MemDataMuatan.EmptyTable;
end;

procedure TFNewDeliveryOrder.edKodeJenisKendMuatanChange(Sender: TObject);
begin
  if (Status=1) AND (IntStatusDO=3) then
  begin
    if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
    begin
      BtnCekBiaya.Caption:='Cek Biaya';
    end else begin
      BtnCekBiaya.Caption:='Cek Biaya Perubahan';
    end;
  end;

  if (Status=1) AND (IntStatusDO>3) then
  begin
    if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
    begin
      BtnCekBiaya.Caption:='Cek Biaya';
      BtnCekBiaya.Visible:=True;
    end else begin
      BtnCekBiaya.Visible:=False;
    end;
  end;

  if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
  begin
    StatusPerubahanBiaya:=1;
    StatusCekBiaya:=0;
  end else begin
    StatusPerubahanBiaya:=0;
    StatusCekBiaya:=1;
  end;

end;

procedure TFNewDeliveryOrder.edKodeVendorMuatanButtonClick(Sender: TObject);
begin
  if (vFormSumber01='0') OR (vFormSumber01='')  then
  begin
    ShowMessage('Silakan Setting Form Target Sumber..');
    exit;
  end;
  if (vFormSumber01<>'0') AND (vFormSumber01<>'') then
  begin
        {AClass := FindClass('T'+vFormSumber01);
        AFormClass := TFormClass(AClass);
        AForm := AFormClass.Create(Application.MainForm);
        AForm.Parent:=FTemplate_Temp.PanelParent;
        AForm.Align:=Alclient;
        AForm.BorderStyle:=BsNone;
        FTemplate_Temp.Height:=AForm.Height;
        FTemplate_Temp.Width:=AForm.Width;

        AForm.Show;
        FTemplate_Temp.Caption:='';
        FTemplate_Temp.TabForm.Caption:=AForm.Caption;
        vStatusTrans:='delivery_order';
        FTemplate_Temp.ShowModal;
        //FTambah_Barang.ShowModal;}

        if vFormSumber01=Fbrowse_data_pelanggan.Name then
        begin
          Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
          Fbrowse_data_pelanggan.vcall:='delivery_order';
          Fbrowse_data_pelanggan.ShowModal;
        end;
        if vFormSumber01=FSearch_Supplier.Name then
        begin
          FSearch_Supplier.Caption:='Master Data Supplier';
          FSearch_Supplier.vcall:='delivery_order';
          FSearch_Supplier.QSupplier.Close;
          FSearch_Supplier.QSupplier.Open;
          FSearch_Supplier.ShowModal;
        end;
  end;
end;

procedure TFNewDeliveryOrder.edKodeVendorTransMuatanButtonClick(
  Sender: TObject);
begin
  FSearch_Supplier.Caption:='Master Data Supplier Kendaraan';
  FSearch_Supplier.vcall:='delivery_order_kend';
  FSearch_Supplier.QSupplier.Close;
  FSearch_Supplier.QSupplier.Open;
  FSearch_Supplier.ShowModal;
end;

procedure TFNewDeliveryOrder.edLokasiBongkarButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data';
  FMasterData.vcall:='do_lokasi_bongkar';
  FMasterData.update_grid('id','name','NULL','t_location_unloading','WHERE	deleted_at IS NULL ORDER BY name ASC');
  FMasterData.Show;
end;

procedure TFNewDeliveryOrder.edLokasiMuatButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data';
  FMasterData.vcall:='do_lokasi_muat';
  FMasterData.update_grid('id','name','NULL','t_location_loading','WHERE	deleted_at IS NULL ORDER BY name ASC');
  FMasterData.Show;
end;

procedure TFNewDeliveryOrder.edNoKendMuatanButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Kendaraan';
  FMasterData.vcall:='do_jenis_kend';
  FMasterData.update_grid('code','name','capacity','"public"."t_transportation_type"','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
end;

procedure TFNewDeliveryOrder.edNamaJenisMuatanButtonClick(Sender: TObject);
begin
  vFormSumber01:='0';
  vFormSumber02:='0';
  FMasterData.Caption:='Master Data';
  FMasterData.vcall:='do_jenis';
  FMasterData.update_grid('code','name','description','t_type_delivery_order','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
  RefreshGridRincianBiaya;
end;

procedure TFNewDeliveryOrder.edNamaKabupatenButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='do_lokasi_awal_kab';
  FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_province='+QuotedStr(edKodeProvinsi.text)+'');
  FMasterData.ShowModal;
end;

procedure TFNewDeliveryOrder.edNamaKabupatenChange(Sender: TObject);
begin
  if (Status=1) AND (IntStatusDO=3) then
  begin
    if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
    begin
      BtnCekBiaya.Caption:='Cek Biaya';
    end else begin
      BtnCekBiaya.Caption:='Cek Biaya Perubahan';
    end;
  end;

  if (Status=1) AND (IntStatusDO>3) then
  begin
    if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
    begin
      BtnCekBiaya.Caption:='Cek Biaya';
      BtnCekBiaya.Visible:=True;
    end else begin
      BtnCekBiaya.Visible:=False;
    end;
  end;

  if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
  begin
    StatusPerubahanBiaya:=1;
    StatusCekBiaya:=0;
  end else begin
    StatusPerubahanBiaya:=0;
    StatusCekBiaya:=1;
  end;

end;

procedure TFNewDeliveryOrder.edNamaLokasiButtonClick(Sender: TObject);
begin
//  FMasterData.Caption:='Master Data Lokasi Awal';
//  FMasterData.vcall:='do_lokasi_awal';
//  FMasterData.update_grid('code','name','address','"public"."t_starting_location"','WHERE	deleted_at IS NULL ORDER BY code DESC');
//  FMasterData.ShowModal;
  FDataPool.GetApiPool;
  FDataPool.Show;
end;

procedure TFNewDeliveryOrder.edNamaLokasiChange(Sender: TObject);
begin
  if (Status=1) AND (IntStatusDO=3) then
  begin
    if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
    begin
      BtnCekBiaya.Caption:='Cek Biaya';
    end else begin
      BtnCekBiaya.Caption:='Cek Biaya Perubahan';
    end;
  end;

  if (Status=1) AND (IntStatusDO>3) then
  begin
    if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
    begin
      BtnCekBiaya.Caption:='Cek Biaya';
      BtnCekBiaya.Visible:=True;
    end else begin
      BtnCekBiaya.Visible:=False;
    end;
  end;

  if (edNamaKabupaten.Text<>strLastNamaKabupaten) OR (edNamaLokasi.Text<>strLastNamaLokasi)
    OR (spTotalTitik.Text<>strLastTotalTitik) OR (edKodeJenisKendMuatan.Text<>strLastKodeJenisKendMuatan) then
  begin
    StatusPerubahanBiaya:=1;
    StatusCekBiaya:=0;
  end else begin
    StatusPerubahanBiaya:=0;
    StatusCekBiaya:=1;
  end;
end;

procedure TFNewDeliveryOrder.edNamaProvinsiButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Provinsi';
  FMasterData.vcall:='do_lokasi_awal_prov';
  FMasterData.update_grid('code','name','description','t_region_province','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFNewDeliveryOrder.edKelompokKendaraanButtonClick(Sender: TObject);
begin
  if edNamaJenisMuatan.Text<>'' then
  begin
    FListKelompokKendaraan.Refresh;
    FListKelompokKendaraan.show;
  end else begin
    ShowMessage('Jenis Muatan Wajib Diisi..!');
  end;
end;

procedure TFNewDeliveryOrder.edNomorReffUtamaMuatanButtonClick(Sender: TObject);
begin
  if (vFormSumber02='0') OR (vFormSumber02='')  then
  begin
    ShowMessage('Silakan Setting Form Target Sumber..');
    exit;
  end;
  if (vFormSumber02<>'0') AND (vFormSumber02<>'') then
  begin
        AClass := FindClass('T'+vFormSumber02);
        AFormClass := TFormClass(AClass);
        AForm := AFormClass.Create(Application.MainForm);
        AForm.Parent:=FTemplate_Temp.PanelParent;
        AForm.Align:=Alclient;
        AForm.BorderStyle:=BsNone;
        FTemplate_Temp.Height:=AForm.Height;
        FTemplate_Temp.Width:=AForm.Width;

        AForm.Show;
        FTemplate_Temp.Caption:='delivery_order';
        FTemplate_Temp.TabForm.Caption:=AForm.Caption;
        //vStatusTrans:='master_vendor';
        FTemplate_Temp.ShowModal;
  end;
end;

procedure TFNewDeliveryOrder.edTotalBiayaExit(Sender: TObject);
begin
  edTotalBiaya.Text := FormatFloat('#,##0.##', edTotalBiaya.Value);
end;

procedure TFNewDeliveryOrder.FormShow(Sender: TObject);
begin
  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')<> 'dev' then
  begin
    btMasterSumber.Visible:=false;
  end else begin
    btMasterSumber.Visible:=true;
  end;
  json := TMyJSON.Create(Self);

  if (Status = 0) or (IntStatusDO = 3) then
  StatusCekBiaya := 0
  else
  StatusCekBiaya := 1;

  StatusPerubahanBiaya:=0;

//  ShowMessage(inttostr(IntStatusKoreksi));

  if (Status=1) AND (IntStatusKoreksi=2) AND (IntStatusDO=5) then
  begin
    btSimpanSumberJual.Enabled:=True;
    BCorrection.Visible:=True;
    BCorrection.Enabled:=False;
  end else if (Status=1) AND (IntStatusKoreksi<>2) AND (IntStatusDO=5) then
  begin
    btSimpanSumberJual.Enabled:=False;
    BCorrection.Visible:=True;
    BCorrection.Enabled:=True;
  end else if (Status=0) OR (IntStatusDO<5) then
  begin
    btSimpanSumberJual.Enabled:=True;
    BCorrection.Visible:=False;
  end else begin
    btSimpanSumberJual.Enabled:=False;
    btSaveParameter.Enabled:=False;
    BCorrection.Visible:=False;
    BCorrection.Enabled:=False;
  end;

  if (IntStatusDO<5) then
  begin
    btSimpanSumberJual.Enabled:=True;
    BCorrection.Visible:=False;
    BCorrection.Enabled:=False;
    btSaveParameter.Enabled:=False;
  end;
  if (IntStatusDO=5) AND (IntStatusKoreksi<>2) then
  begin
    btSimpanSumberJual.Enabled:=False;
    BCorrection.Visible:=True;
    BCorrection.Enabled:=True;
    btSaveParameter.Enabled:=True;
  end;
  if (IntStatusDO=5) AND (IntStatusKoreksi=2) then
  begin
    btSimpanSumberJual.Enabled:=True;
    BCorrection.Visible:=False;
    BCorrection.Enabled:=False;
    btSaveParameter.Enabled:=True;
  end;
  if (IntStatusDO>5) then
  begin
    btSimpanSumberJual.Enabled:=False;
    BCorrection.Visible:=False;
    BCorrection.Enabled:=False;
    btSaveParameter.Enabled:=False;
  end;
end;

Initialization
  //RegisterClasses([TFNewDeliveryOrder,TFTemplate_Temp,TFbrowse_data_pelanggan]);
  RegisterClasses([TFNewDeliveryOrder,TFbrowse_data_pelanggan]);

end.
