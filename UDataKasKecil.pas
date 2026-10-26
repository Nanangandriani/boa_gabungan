unit UDataKasKecil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, RzButton,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, MemTableEh, Vcl.Mask,
  RzEdit, RzBtnEdt, Vcl.StdCtrls, Vcl.ComCtrls, RzDTP, Vcl.ExtCtrls, RzCmboBx,
  RzRadChk, RzPanel, RzRadGrp, MemDS, DBAccess, Uni, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, uJSON, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  System.Net.HttpClient, System.Net.HttpClientComponent;

type
  TFDataKasKecil = class(TForm)
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edKodeKepada: TEdit;
    dtTrans: TRzDateTimePicker;
    MemKeterangan: TMemo;
    edNoTrans: TEdit;
    edNamaKepada: TRzButtonEdit;
    MemDetailAkun: TMemTableEh;
    MemDetailAkunkd_akun: TStringField;
    MemDetailAkunnm_akun: TStringField;
    MemDetailAkunketerangan: TStringField;
    MemDetailAkundebit: TCurrencyField;
    MemDetailAkunkredit: TCurrencyField;
    MemDetailAkunkd_header_akun: TStringField;
    MemDetailAkunkd_group_biaya: TStringField;
    MemDetailAkunnm_group_biaya: TStringField;
    DSDetailAkun: TDataSource;
    PGC: TRzPageControl;
    TabDetailAkun: TRzTabSheet;
    DBGridAkun: TDBGridEh;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    edNamaSumberKas: TRzButtonEdit;
    edKodeSumberKas: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    gbDataBON: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    edNomorKasBon: TRzButtonEdit;
    Label19: TLabel;
    edJumlah: TRzNumericEdit;
    Label20: TLabel;
    BtnAmbil_Data: TRzBitBtn;
    GbHutang: TGroupBox;
    dtPeriode2: TRzDateTimePicker;
    Label10: TLabel;
    dtPeriode1: TRzDateTimePicker;
    Label11: TLabel;
    Label14: TLabel;
    edKurs: TRzNumericEdit;
    Label16: TLabel;
    Label15: TLabel;
    edNamaMataUang: TRzButtonEdit;
    Label17: TLabel;
    Label18: TLabel;
    edKodeMataUang: TEdit;
    Ed_Jumlah_Hutang: TRzNumericEdit;
    Label21: TLabel;
    Label22: TLabel;
    ak_account: TEdit;
    edKode_supplier: TRzButtonEdit;
    TabDetailFaktur: TRzTabSheet;
    DBGridTagihan: TDBGridEh;
    dsDetailHutang: TDataSource;
    MemDetailHutang: TMemTableEh;
    MemDetailHutangno_tagihan: TStringField;
    MemDetailHutangtgl_faktur: TDateField;
    MemDetailHutangketerangan: TStringField;
    MemDetailHutangno_faktur: TStringField;
    MemDetailHutangno_sj: TStringField;
    MemDetailHutangjum_hutang: TCurrencyField;
    MemDetailHutangjum_hutang_real: TCurrencyField;
    QAkun: TUniQuery;
    GBRincian: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    edtravel_id: TRzButtonEdit;
    edno_doc: TEdit;
    RzPageControl1: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    DBGridRincian: TDBGridEh;
    RzTabSheet2: TRzTabSheet;
    DBGridEh2: TDBGridEh;
    MemRincian: TMemTableEh;
    DSRincian: TDataSource;
    IdHTTP1: TIdHTTP;
    MemoAPI: TMemo;
    MemRinciancomponent_id: TStringField;
    MemRinciancost: TCurrencyField;
    MemRinciancomponent: TStringField;
    MemRincianid: TStringField;
    dtawal: TRzDateTimePicker;
    Label27: TLabel;
    dtakhir: TRzDateTimePicker;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    chkNomorPengganti: TRzCheckBox;
    btnNoTransaksi: TRzBitBtn;
    BCorrection: TRzBitBtn;
    Memo1: TMemo;
    procedure DBGridAkunColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridAkunColumns4EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure edNamaKepadaButtonClick(Sender: TObject);
    procedure edNamaSumberKasButtonClick(Sender: TObject);
    procedure edNomorKasBonButtonClick(Sender: TObject);
    procedure dtTransChange(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure BtnAmbil_DataClick(Sender: TObject);
    procedure edKodeMataUangChange(Sender: TObject);
    procedure edKode_supplierChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MemKeteranganKeyPress(Sender: TObject; var Key: Char);
    procedure edtravel_idButtonClick(Sender: TObject);
    procedure btnNoTransaksiClick(Sender: TObject);
    procedure chkNomorPenggantiClick(Sender: TObject);
    procedure BCorrectionClick(Sender: TObject);
    procedure edNamaSumberKasKeyPress(Sender: TObject; var Key: Char);
    procedure edNamaKepadaKeyPress(Sender: TObject; var Key: Char);
    procedure edtravel_idKeyPress(Sender: TObject; var Key: Char);
  private
    vtotal_debit, vtotal_kredit, vtotal_piutang : real;
    { Private declarations }
  public
    IntStatusKoreksi, iserror, isCancel: integer;
    Status, stat_bon : Integer;
    additional_code1, additional_code2, additional_code3, additional_code4,
    additional_code5, code_tp, vno_karyawan, strNoTransaksiDiGanti : String;
    strtgl, strbulan, strtahun: string;
    Year, Month, Day: Word;
    next_proses:boolean;
    { Public declarations }
    procedure Autonumber;
    procedure VCekBalance;
    procedure Save;
    procedure Update;
    procedure InsertDetailAkun;
    procedure InsertDetailHutang;
    procedure InsertRincianHarmoni;
    procedure RefreshForm;
    procedure RefreshFormBON;
    procedure Clear;
    procedure AddDefaultKasKecil;
    function GetKodeKasKecil: string;
    function GetHeaderKodeKasKecil: string;
    procedure balanceRow;
    procedure UpdateHarmoni(v_nik, vstart_date, vend_date, vtravel_id, vcomponent_id, vstatus, vtrans_code, vjns_trans: string);
  end;

var
  FDataKasKecil: TFDataKasKecil;
  json: TMyJSON;
  SSL: TIdSSLIOHandlerSocketOpenSSL;

implementation

{$R *.dfm}

uses UMasterData, UCari_DaftarPerk, UDataModule, UMy_Function, UListKasKecil,
  UHomeLogin,udafajuankeluarkasbank,UMainMenu, ulkJSON, UListNoTransaksi,
  UKoreksi, UDataRincianHarmoni;

procedure TFDataKasKecil.UpdateHarmoni(v_nik, vstart_date, vend_date, vtravel_id, vcomponent_id, vstatus, vtrans_code, vjns_trans: string);
var
  key, url, BaseUrl, Vpath, Vtoken, res: string;
  gNet: TIdHTTP;
  jsonBody: TStringStream;
begin
  Application.ProcessMessages; // agar UI tetap responsif
  try

  //vjns_trans = 0 kas bon, 1 kas kecil

    // Ambil konfigurasi API
    BaseUrl := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''baseurlharmoni''');
    key := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''keyapiharmoni''');
    Vtoken := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''tokenapiharmoni''');
    Vpath:='/update-status-bop';
    url := BaseUrl + Vpath;

    if vjns_trans='0' then //kas bon
    begin
      jsonBody := TStringStream.Create(
        '{'+
        '"employee_nik":"'+v_nik+'",'+
        '"start_date":"'+vstart_date+'",'+
        '"end_date":"'+vend_date+'",'+
        '"official_travel_id":"'+vtravel_id+'",'+
        '"component_id":"'+vcomponent_id+'",'+
        '"status":"'+vstatus+'",'+
        '"transaction_code":"'+vtrans_code+'"'+
        '}',
        TEncoding.UTF8
      );
    end;
    if vjns_trans='1' then //kas kecil
    begin
      jsonBody := TStringStream.Create(
        '{'+
        '"employee_nik":"'+v_nik+'",'+
        '"start_date":"'+vstart_date+'",'+
        '"end_date":"'+vend_date+'",'+
        '"official_travel_id":"'+vtravel_id+'",'+
        '"component_id":"'+vcomponent_id+'",'+
        '"status":"'+vstatus+'"'+
        '}',
        TEncoding.UTF8
      );
    end;
    Memo1.Text := jsonBody.DataString;
      UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url+jsonBody.DataString);
      UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url+jsonBody.DataString);
    gNet := TIdHTTP.Create(nil);
    try
      gNet.Request.Accept := 'application/json';
      gNet.Request.ContentType := 'application/json';
      gNet.Request.CustomHeaders.Values[key] := Vtoken;
      // PUT request
      res := gNet.Post(url, jsonBody);
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

function TFDataKasKecil.GetKodeKasKecil: string;
begin
  Result := '';

  with QAkun do
  begin
    close;
    sql.Clear;
    sql.text :='SELECT * FROM t_ak_account '+
               'WHERE account_name iLIKE ''%kas kecil%'' '+
               'ORDER BY code LIMIT 1';
    Open;
  end;

  if not QAkun.IsEmpty then
    Result := QAkun.FieldByName('code').AsString;
end;

function TFDataKasKecil.GetHeaderKodeKasKecil: string;
begin
  Result := '';

  with QAkun do
  begin
    close;
    sql.Clear;
    sql.text :='SELECT * FROM t_ak_account '+
               'WHERE account_name iLIKE ''%kas kecil%'' '+
               'ORDER BY code LIMIT 1';
    Open;
  end;

  if not QAkun.IsEmpty then
    Result := QAkun.FieldByName('header_code').AsString;
end;

{procedure TFDataKasKecil.GetApiSuratTugas;
var
  key, url, BaseUrl, Vpath, Vtoken, vid_cost_actor: string;
  vBody: string;
  cnt, iii: Integer;
  row1: string;
  LClient: THTTPClient;
  LResponse: IHTTPResponse;
  LJson: TMyJSON;
  OldMemoEvent: TNotifyEvent; // Menyimpan event temporer
begin
  LClient := nil;
  LJson := nil;
  try
    LJson := TMyJSON.Create(Self);
    // Backup event OnChange MemoAPI dan matikan sementara
    if Assigned(MemoAPI) then
    begin
      OldMemoEvent := MemoAPI.OnChange;
      MemoAPI.OnChange := nil;
    end;
    try
      // 1. Ambil data parameter dari DB
      vno_karyawan := SelectRow('SELECT nik_employee from t_cost_actors where code=' + QuotedStr(edKodeKepada.Text));
      vid_cost_actor:=SelectRow('SELECT type_cost from t_cost_actors where code=' + QuotedStr(edKodeKepada.Text));
      BaseUrl := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''baseurlharmoni''');
      key := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''keyapiharmoni''');
      Vtoken := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''tokenapiharmoni''');
      // 2. Susun Parameter & Endpoint
      vno_karyawan := '13250315002';
      vid_cost_actor := '1';
      vBody := '?employee_nik=' + vno_karyawan +
               '&start_date=' + FormatDateTime('yyyy-mm-dd', dtawal.date) +
               '&end_date=' + FormatDateTime('yyyy-mm-dd', dtAkhir.date);
      Vpath := '/bop-realization';
      url := BaseUrl + Vpath + vBody;
      if Assigned(MemoAPI) then
        MemoAPI.Text := url;
      // 3. Request HTTP Client Native
      LClient := THTTPClient.Create;
      LClient.Accept := 'application/json';
      LClient.CustomHeaders[key] := Vtoken;
      try
        LResponse := LClient.Get(url);
        if Assigned(MemoAPI) then
          MemoAPI.Text := LResponse.ContentAsString;
      except
        on E: Exception do
        begin
          ShowMessage('Kesalahan koneksi API: ' + E.Message);
          Exit;
        end;
      end;
      // 4. Parsing JSON
      LJson.JSONText := LResponse.ContentAsString;
      if (LowerCase(LJson.StringTree['status']) = 'false') or
      (LJson.StringTree['status'] = '') then
      begin
        MessageDlg(LJson.StringTree['message'] + '..!!', mtInformation, [mbOK], 0);
        // Hentikan proses tanpa mengeksekusi pengolahan MemTable
        Exit;
      end;
      cnt := LJson.TreeCount['data'];
      if cnt = 0 then
      begin
        ShowMessage('Data Tidak Ditemukan');
        Exit;
      end;
      MemRincian.active:=false;
      MemRincian.active:=true;
      MemRincian.EmptyTable;
      // Loop pengisian data
      for iii := 0 to cnt - 1 do
      begin
        row1 := Format('data/%d/', [iii]);
        ShowMessage(LJson.StringTree[row1 + 'id']);
        // isi rincian
        MemRincian.insert;
        MemRincian['component_id']:=LJson.StringTree[row1 + 'component_id'];
        MemRincian['cost']:=LJson.StringTree[row1 + 'cost'];
        MemRincian['component']:=LJson.StringTree[row1 + 'component'];
        MemRincian['id']:=LJson.StringTree[row1 + 'id'];
        MemRincian.Post;
        edtravel_id.Text:=LJson.StringTree[row1 + 'official_travel_id'];
        edno_doc.Text:=LJson.StringTree[row1 + 'document_number'];
        //isi akun
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.text :=' SELECT kd_account,c.account_name from t_harmoni_component a '+
                     ' left join t_ak_account_sub b on a.kd_account=b.account_code2   '+
                     ' left join t_ak_account c on b.account_code=c.code '+
                     ' where cost_type_id='+vid_cost_actor+' and '+
                     ' component_id='''+LJson.StringTree[row1 + 'component_id']+'''';
          Open;
        end;
        MemDetailAkun.Active:=false;
        MemDetailAkun.Active:=true;
        MemDetailAkun.insert;
        MemDetailAkun['kd_akun']:=dm.Qtemp.fieldbyname('kd_account').AsString;
        MemDetailAkun['nm_akun']:=dm.Qtemp.fieldbyname('account_name').AsString;
        MemDetailAkun['kredit']:=0;
        MemDetailAkun['debit']:=LJson.StringTree[row1 + 'cost'];
        MemDetailAkun['keterangan']:='-';
        MemDetailAkun['kd_group_biaya']:=SelectRow('SELECT cost_st_id from t_ak_account where code='+QuotedStr(dm.Qtemp.fieldbyname('kd_account').AsString)+'');
        MemDetailAkun['nm_group_biaya']:=SelectRow('SELECT cost_type from t_ak_type_cost a left join t_ak_account b on a.id=b.cost_st_id where code='+QuotedStr(dm.Qtemp.fieldbyname('kd_account').AsString)+'');
        MemDetailAkun['kd_header_akun']:=SelectRow('SELECT account_code2 from t_ak_account_sub where account_code2='+QuotedSTR(dm.Qtemp.fieldbyname('kd_account').AsString)+'') ;
        MemDetailAkun.post;
      end;
      MemRincian.active:=false;
      MemRincian.active:=true;
        if MemDetailAkun.Locate('kd_header_akun', '1101', []) then
        begin
          MemDetailAkun.Edit;
          MemDetailAkun['kredit'] := DBGridAkun.Columns[2].Footer.SumValue;
          MemDetailAkun.Post;
          MemDetailAkun.SortOrder := 'kd_akun ASC';
        end;
    finally
      // Kembalikan event OnChange MemoAPI seperti semula
      if Assigned(MemoAPI) then
        MemoAPI.OnChange := OldMemoEvent;
    end;
  finally
    if Assigned(LClient) then FreeAndNil(LClient);
    if Assigned(LJson) then FreeAndNil(LJson);
  end;
end; }

procedure TFDataKasKecil.InsertDetailHutang;
begin
    with Dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * from ('+
              ' SELECT * from "t_petty_cash_expenditure_payable" '+
              ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+' ) a '+
              ' Order By voucher_no desc');
      open;
    end;

    if Dm.Qtemp1.RecordCount>0 then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:=' DELETE FROM  "t_petty_cash_expenditure_payable" '+
                  ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+';';
        ExecSQL;
      end;
    end;

    MemDetailHutang.First;
    while not MemDetailHutang.Eof do
    begin
      with dm.Qtemp do
      begin
          close;
          sql.clear;
          sql.Add(' INSERT INTO "t_petty_cash_expenditure_payable" ("voucher_no", '+
                  ' "invoice_no", "sj_no", "faktur_no", "faktur_date", "trans_date", "supplier_code", '+
                  ' "supplier_name", "trans_type_code", "trans_type_name", "bank_number_account", '+
                  ' "bank_name_account", "paid_amount", "description","account_acc") '+
                  ' Values( '+
                  ' '+QuotedStr(edNoTrans.Text)+', '+
                  ' '+QuotedStr(MemDetailHutang['no_tagihan'])+', '+
                  ' '+QuotedStr(MemDetailHutang['no_sj'])+', '+
                  ' '+QuotedStr(MemDetailHutang['no_faktur'])+', '+
                  ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetailHutang['tgl_faktur']))+', '+
                  ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
                  ' '+QuotedStr(edKode_supplier.Text)+', '+
                  ' '+QuotedStr(edNamakepada.Text)+', '+
                  ' '+QuotedStr(edKodesumberkas.Text)+', '+
                  ' '+QuotedStr(edNamasumberkas.Text)+', '+
                  ' NULL, '+
                  ' NULL, '+
                  ' '+QuotedStr(FloatToStr(MemDetailHutang['jum_hutang']))+', '+
                  ' '+QuotedStr(MemDetailHutang['keterangan'])+', '+
                  ' '+QuotedStr(ak_account.Text)+') ');
          ExecSQL;
      end;
      MemDetailHutang.Next;
    end;
end;

procedure TFDataKasKecil.MemKeteranganKeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

{procedure TFDataKasKecil.Save;
begin
  if (stat_bon=0) or (stat_bon=1)  then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' Insert into "public"."t_petty_cash" ("created_at", "created_by", '+
              ' "voucher_no", "trans_date", "actors_code", "actors_name", "code_tp", "amount", "description", '+
              ' "source_code", "source_name", '+
              ' "voucher_no_receipt", "amount_receipt", "stat_receipt",'+
              //' "additional_code", '+
              ' "order_no", "trans_day", "trans_month", "trans_year") '+
              ' VALUES ( '+
              ' NOW(), '+
              //' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
              ' :created_by, '+
              ' '+QuotedStr(edNoTrans.Text)+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
              ' '+QuotedStr(edKodeKepada.Text)+', '+
              ' '+QuotedStr(edNamaKepada.Text)+', '+
              ' '+QuotedStr(code_tp)+', '+
              ' '+QuotedStr(stringreplace(FloatToStr(vtotal_kredit), ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(MemKeterangan.Text)+', '+
              ' '+QuotedStr(edKodeSumberKas.Text)+', '+
              ' '+QuotedStr(edNamaSumberKas.Text)+', '+
              ' '+QuotedStr(edNomorKasBon.Text)+', '+
              ' '+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+IntToStr(stat_bon)+', '+
              ' '+QuotedStr(order_no)+', '+
              //' '+QuotedStr('0')+', '+
              ' '+QuotedStr(strtgl)+', '+
              ' '+QuotedStr(strbulan)+', '+
              ' '+QuotedStr(strtahun)+'  );');

              parambyname('created_by').AsString:=Nm;
      ExecSQL;
    end;

    with dm.Qtemp do  //history
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_petty_cash_receipt_history" SET '+
              ' voucher_no_realization='+QuotedStr(edNoTrans.Text)+', '+
              ' trans_date_realization='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' amount_realization='+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+' '+
              ' Where voucher_no_receipt='+QuotedStr(edNomorKasBon.Text)+'');
      ExecSQL;
    end;
    InsertDetailAkun;
    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    FListKasKecil .Refresh;
  end;
  if stat_bon=2 then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' Insert into "public"."t_petty_cash" ("created_at", "created_by", '+
              ' "voucher_no", "trans_date", "actors_code", "actors_name", "code_tp", "amount", "description", '+
              ' "source_code", "source_name", '+
              ' "voucher_no_receipt", "amount_receipt", "stat_receipt",'+
              //' "additional_code", '+
              ' "order_no", "trans_day", "trans_month", "trans_year") '+
              ' VALUES ( '+
              ' NOW(), '+
              ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
              ' '+QuotedStr(edNoTrans.Text)+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
              ' '+QuotedStr(edKodeKepada.Text)+', '+
              ' '+QuotedStr(edNamaKepada.Text)+', '+
              ' '+QuotedStr(code_tp)+', '+
              ' '+QuotedStr(stringreplace(FloatToStr(vtotal_kredit), ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(MemKeterangan.Text)+', '+
              ' '+QuotedStr(edKodeSumberKas.Text)+', '+
              ' '+QuotedStr(edNamaSumberKas.Text)+', '+
              ' '+QuotedStr(edNomorKasBon.Text)+', '+
              ' '+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+IntToStr(stat_bon)+', '+
              ' '+QuotedStr(order_no)+', '+
              //' '+QuotedStr('0')+', '+
              ' '+QuotedStr(strtgl)+', '+
              ' '+QuotedStr(strbulan)+', '+
              ' '+QuotedStr(strtahun)+'  );');
      ExecSQL;
    end;

    with dm.Qtemp do  //history
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_petty_cash_receipt_history" SET '+
              ' voucher_no_realization='+QuotedStr(edNoTrans.Text)+', '+
              ' trans_date_realization='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' amount_realization='+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+' '+
              ' Where voucher_no_receipt='+QuotedStr(edNomorKasBon.Text)+'');
      ExecSQL;
    end;
    InsertDetailAkun;
    InsertDetailHutang;
    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    FListKasKecil .Refresh;
  end;

  if stat_bon=3 then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' Insert into "public"."t_petty_cash" ("created_at", "created_by", '+
              ' "voucher_no", "trans_date", "actors_code", "actors_name", "code_tp", "amount", "description", '+
              ' "source_code", "source_name", '+
              ' "voucher_no_receipt", "amount_receipt", "stat_receipt",'+
              //' "additional_code", '+
              ' "order_no", "trans_day", "trans_month", "trans_year") '+
              ' VALUES ( '+
              ' NOW(), '+
              //' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
              ' :created_by, '+
              ' '+QuotedStr(edNoTrans.Text)+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
              ' '+QuotedStr(edKodeKepada.Text)+', '+
              ' '+QuotedStr(edNamaKepada.Text)+', '+
              ' '+QuotedStr(code_tp)+', '+
              ' '+QuotedStr(stringreplace(FloatToStr(vtotal_kredit), ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(MemKeterangan.Text)+', '+
              ' '+QuotedStr(edKodeSumberKas.Text)+', '+
              ' '+QuotedStr(edNamaSumberKas.Text)+', '+
              ' '+QuotedStr(edNomorKasBon.Text)+', '+
              ' '+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+IntToStr(stat_bon)+', '+
              ' '+QuotedStr(order_no)+', '+
              //' '+QuotedStr('0')+', '+
              ' '+QuotedStr(strtgl)+', '+
              ' '+QuotedStr(strbulan)+', '+
              ' '+QuotedStr(strtahun)+'  );');

              parambyname('created_by').AsString:=Nm;
      ExecSQL;
    end;

    with dm.Qtemp do  //history
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_petty_cash_receipt_history" SET '+
              ' voucher_no_realization='+QuotedStr(edNoTrans.Text)+', '+
              ' trans_date_realization='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' amount_realization='+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+' '+
              ' Where voucher_no_receipt='+QuotedStr(edNomorKasBon.Text)+'');
      ExecSQL;
    end;
    InsertDetailAkun;
    InsertRincianHarmoni;
    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    FListKasKecil .Refresh;
  end;

end; }

procedure TFDataKasKecil.Save;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' Insert into "public"."t_petty_cash" ("created_at", "created_by", '+
              ' "voucher_no", "trans_date", "actors_code", "actors_name", "code_tp", "amount", "description", '+
              ' "source_code", "source_name", '+
              ' "voucher_no_receipt", "amount_receipt", "stat_receipt",'+
              //' "additional_code", '+
              ' "order_no", "trans_day", "trans_month", "trans_year","is_no_replacement") '+
              ' VALUES ( '+
              ' NOW(), '+
              //' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
              ' :created_by, '+
              ' '+QuotedStr(edNoTrans.Text)+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
              ' '+QuotedStr(edKodeKepada.Text)+', '+
              ' '+QuotedStr(edNamaKepada.Text)+', '+
              ' '+QuotedStr(code_tp)+', '+
              ' '+QuotedStr(stringreplace(FloatToStr(vtotal_kredit), ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(MemKeterangan.Text)+', '+
              ' '+QuotedStr(edKodeSumberKas.Text)+', '+
              ' '+QuotedStr(edNamaSumberKas.Text)+', '+
              ' '+QuotedStr(edNomorKasBon.Text)+', '+
              ' '+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+IntToStr(stat_bon)+', '+
              ' '+QuotedStr(order_no)+', '+
              //' '+QuotedStr('0')+', '+
              ' '+QuotedStr(strtgl)+', '+
              ' '+QuotedStr(strbulan)+', '+
              ' '+QuotedStr(strtahun)+', '+
              ' :paris_no_replacement  );');

              parambyname('created_by').AsString:=Nm;
              if chkNomorPengganti.Checked=True then
                parambyname('paris_no_replacement').Value:=True
              else parambyname('paris_no_replacement').Value:=False;
      ExecSQL;
    end;

      if chkNomorPengganti.Checked=True then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:='UPDATE "public"."t_cash_bank_expenditure_submission" SET'+
                    ' trans_no_replacement='+QuotedStr(edNoTrans.Text)+
                    ' Where voucher_no='+QuotedStr(strNoTransaksiDiGanti);
          ExecSQL;
        end;
      end;


    {with dm.Qtemp do  //history
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_petty_cash_receipt_history" SET '+
              ' voucher_no_realization='+QuotedStr(edNoTrans.Text)+', '+
              ' trans_date_realization='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' amount_realization='+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+' '+
              ' Where voucher_no_receipt='+QuotedStr(edNomorKasBon.Text)+'');
      ExecSQL;
    end;}
    with dm.Qtemp do //history
    begin
      close;
      sql.clear;
      sql.add(' Insert into "public"."t_petty_cash_receipt_history" '+
              ' ("voucher_no_receipt", "amount_receipt", "voucher_no_realization", '+
              ' "trans_date_realization", "amount_realization") '+
              ' VALUES ( '+
              ' '+QuotedStr(edNomorKasBon.Text)+', '+
              ' 0, '+
              ' '+QuotedStr(edNoTrans.Text)+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
              ' '+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+' '+
              ' );');
      ExecSQL;
    end;

    InsertDetailAkun;

    if MemDetailHutang.RecordCount<>0 then
    begin
      InsertDetailHutang;
    end;

    if MemRincian.RecordCount<>0 then
    begin
      InsertRincianHarmoni;
    end;

    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListKasKecil .Refresh;
end;


procedure TFDataKasKecil.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_petty_cash" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' trans_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' actors_code='+QuotedStr(edKodeKepada.Text)+','+
              ' actors_name='+QuotedStr(edNamaKepada.Text)+','+
              ' code_tp='+QuotedStr(code_tp)+','+
              ' source_code='+QuotedStr(edKodeSumberKas.Text)+','+
              ' source_name='+QuotedStr(edNamaSumberKas.Text)+','+
              ' amount='+QuotedStr(stringreplace(FloatToStr(vtotal_kredit), ',', '.',[rfReplaceAll, rfIgnoreCase]))+','+
              ' description='+QuotedStr(MemKeterangan.Text)+','+
              ' voucher_no_receipt='+QuotedStr(edNomorKasBon.Text)+','+
              ' amount_receipt='+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+','+
              ' stat_receipt='+IntToStr(stat_bon)+','+
              ' order_no='+QuotedStr(order_no)+','+
              //' additional_code='+QuotedStr('0')+','+
              ' trans_day='+QuotedStr(strtgl)+','+
              ' trans_month='+QuotedStr(strbulan)+','+
              ' trans_year='+QuotedStr(strtahun)+', '+
              ' status_correction= 0 '+
              ' Where voucher_no='+QuotedStr(edNoTrans.Text)+'');
      ExecSQL;
    end;
    with dm.Qtemp do  //history
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_petty_cash_receipt_history" SET '+
              ' voucher_no_realization='+QuotedStr(edNoTrans.Text)+', '+
              ' trans_date_realization='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' amount_realization='+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+' '+
              ' Where voucher_no_receipt='+QuotedStr(edNomorKasBon.Text)+'');
      ExecSQL;
    end;
    InsertDetailAkun;

    if MemDetailHutang.RecordCount<>0 then
    begin
      InsertDetailHutang;
    end;

    if MemRincian.RecordCount<>0 then
    begin
      InsertRincianHarmoni;
    end;

    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListKasKecil .Refresh;
end;

procedure TFDataKasKecil.InsertDetailAkun;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT * from "public"."t_petty_cash_det"'+
            ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+' ) a '+
            ' Order By voucher_no desc');
    open;
  end;

  if Dm.Qtemp1.RecordCount>0 then
  begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "public"."t_petty_cash_det" '+
            ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+';';
  ExecSQL;
  end;
  end;

  MemDetailAkun.First;
  while not MemDetailAkun.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Add(' INSERT INTO "public"."t_petty_cash_det" ("voucher_no", '+
            ' "code_account", "name_account", "position", "paid_amount", "description", '+
            ' "code_account_header", "code_group_cost", "name_group_cost") '+
            ' Values( '+
            ' '+QuotedStr(edNoTrans.Text)+', '+
            ' '+QuotedStr(MemDetailAkun['kd_akun'])+', '+
            ' '+QuotedStr(MemDetailAkun['nm_akun'])+', ');
            if MemDetailAkun['debit']<>0 then
            begin
              sql.Add(' '+QuotedStr('D')+', ');
              sql.Add(' '+QuotedStr(stringreplace(MemDetailAkun['debit'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', ');
            end;
            if MemDetailAkun['kredit']<>0 then
            begin
              sql.Add(' '+QuotedStr('K')+', ');
              sql.Add(' '+QuotedStr(stringreplace(MemDetailAkun['kredit'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', ');
            end;
    sql.Add(' '+QuotedStr(MemDetailAkun['keterangan'])+', '+
            ' '+QuotedStr(MemDetailAkun['kd_header_akun'])+', '+
            ' '+QuotedStr(MemDetailAkun['kd_group_biaya'])+', '+
            ' '+QuotedStr(MemDetailAkun['nm_group_biaya'])+'  );');
    ExecSQL;
    end;
  MemDetailAkun.Next;
  end;
end;

procedure TFDataKasKecil.InsertRincianHarmoni;
begin
    vno_karyawan := SelectRow(' SELECT nik_employee from '+
                              ' t_cost_actors where '+
                              ' code=' + QuotedStr(FDataKasKecil.edKodeKepada.Text));
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT * from "public"."t_petty_cash_harmoni"'+
            ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+' ) a '+
            ' Order By voucher_no desc');
    open;
  end;

  if Dm.Qtemp1.RecordCount>0 then
  begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "public"."t_petty_cash_harmoni" '+
            ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+';';
  ExecSQL;
  end;
  end;

  MemRincian.First;
  while not MemRincian.Eof do
  begin
  //ShowMessage(MemRincian['id']);
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Add(' INSERT INTO "public"."t_petty_cash_harmoni" ("id_harmoni", "status", '+
            ' "start_date", "end_date", '+
            ' "official_travel_id", "document_number", "employee_nik", "component_id", '+
            ' "component", "voucher_no", "cost") '+
            ' Values( '+
            ' '+QuotedStr(MemRincian['id'])+', '+
            ' '+QuotedStr('0')+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtawal.Date))+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtakhir.Date))+', '+
            ' '+QuotedStr(edtravel_id.Text)+', '+
            ' '+QuotedStr(edno_doc.Text)+', '+
            ' '+QuotedStr(vno_karyawan)+', '+
            ' '+QuotedStr(MemRincian['component_id'])+', '+
            ' '+QuotedStr(MemRincian['component'])+', '+
            ' '+QuotedStr(edNoTrans.Text)+', '+
            ' '+QuotedStr(MemRincian['cost'])+'  );');
    ExecSQL;
    end;
    //UpdateHarmoni(v_nik, vstart_date, vend_date, vtravel_id, vcomponent_id, vstatus, vtrans_code: string);
    UpdateHarmoni(vno_karyawan,
                  formatdatetime('yyyy-mm-dd',dtawal.Date),
                  formatdatetime('yyyy-mm-dd',dtakhir.Date),
                  edtravel_id.Text,
                  MemRincian['component_id'],
                  '3',
                  edNoTrans.Text,
                  '1'
                   );

  MemRincian.Next;
  end;
end;

procedure TFDataKasKecil.VCekBalance;
begin
  //Cek Balance Debit Kredit
  next_proses:=true;
  vtotal_debit:=0;
  vtotal_kredit:=0;
  MemDetailAkun.First;
  while not MemDetailAkun.Eof do
  begin
    vtotal_debit:=vtotal_debit+MemDetailAkun['debit'];
    vtotal_kredit:=vtotal_kredit+MemDetailAkun['kredit'];
    MemDetailAkun.Next;
  end;

  if vtotal_debit <> vtotal_kredit then
  begin
    ShowMessage('Nominal Tidak Balance, Pastikan Debit Kredit Anda Sudah Benar...!!!');
    next_proses:=false;
    exit;
  end;
end;

procedure TFDataKasKecil.Autonumber;
begin
   idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FListKasKecil.Name)+'');
   strday2:=dtTrans.Date;
   edNoTrans.Text:=getNourut(strday2,'public.t_petty_cash','0');
end;

procedure TFDataKasKecil.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataKasKecil.BCorrectionClick(Sender: TObject);
begin
  if CheckJurnalPosting(edNoTrans.Text)>0 then
  begin
    MessageDlg('Nota sudah approve jurnal tidak bisa melakukan koreksi..!!',mtInformation,[mbRetry],0);
    iserror:=1;
  end;
  if iserror=0 then
  begin
    FKoreksi.vcall:=SelectRow('select Upper(submenu) menu from t_menu_sub '+
                'where link='+QuotedStr(FListKasKecil.Name)); //Mendapatkan nama Menu

    FKoreksi.AksiTipe:='KOREKSI';
    FKoreksi.Status:=0;
    FKoreksi.vnotransaksi:=edNoTrans.Text; //Mendapatkan Nomor Transaksi
    FKoreksi.ShowModal;
  end;
end;

procedure TFDataKasKecil.BSaveClick(Sender: TObject);
var
  LOriginalName: string;
  LBaseName: string;
  LLastUnderscorePos: Integer;
  LSuffix: string;
  LDummyInt: Integer;
  Year, Month, Day: Word;
begin
  VCekBalance;
  DecodeDate(dtTrans.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);
  //refresh grid
      //ShowMessage(IntToStr(Status));
    if next_proses=true then
    begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
          if (chkNomorPengganti.Checked=True) AND (edNoTrans.Text='') then
          begin
            MessageDlg('No Transaksi Wajib Diisi..!!',mtInformation,[mbRetry],0);
            Exit;
          end;

          //else
          if (chkNomorPengganti.Checked=True) AND (edNoTrans.Text<>'') then
          begin
            if status=0 then
            begin
              with dm.Qtemp2 do
              begin
                close;
                sql.Clear;
                sql.Text:=' SELECT * FROM t_petty_cash '+
                          ' WHERE voucher_no='+QuotedStr(edNoTrans.Text);
                open;
              end;
            end;

            if (dm.Qtemp2.RecordCount>0) AND (status=0) then
            begin
              MessageDlg('No Transaksi Sudah Ada..!!',mtInformation,[mbRetry],0);
              Exit;
            end else begin
              LOriginalName := FDataKasKecil.Name;
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
            end;
          end;

      if edKodeKepada.Text='' then
      begin
        MessageDlg('Data Kepada Tidak Bisa Kosong..!!',mtInformation,[mbRetry],0);
        edKodeKepada.SetFocus;
      end
//      else if edNoTrans.Text='' then
//      begin
//        MessageDlg('Pastikan Nomor Transaksi Anda Sudah Benar..!!',mtInformation,[mbRetry],0);
//        edNoTrans.SetFocus;
//      end
      else if (stat_bon=1) and (edJumlah.value=0) then
      begin
        MessageDlg('Pastikan Data Kasbon Anda Sudah Benar..!!',mtInformation,[mbRetry],0);
        edJumlah.SetFocus;
      end
      else if MemDetailAkun.RecordCount=0 then
      begin
        MessageDlg('Pastikan Akun Anda Sudah Lengkap..!!',mtInformation,[mbRetry],0);
        edNoTrans.SetFocus;
      end
      else if FDataKasKecil.Status = 0 then
      begin
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      //if MessageDlg ('Anda Yakin Disimpan Dengan No . '+edNoTrans.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      if application.MessageBox('Apa Anda Yakin Memproses Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        code_tp:=SelectRow('select karesidenan_code from "t_cost_actors" where code='+QuotedStr(edKodeKepada.Text)+' ');
        //FDataKasKecil.Autonumber;
        if chkNomorPengganti.Checked=False then Autonumber;
        Save;
        Dm.Koneksi.Commit;
      end;
      end
      else if FDataKasKecil.Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        code_tp:=SelectRow('select karesidenan_code from "t_cost_actors" where code='+QuotedStr(edKodeKepada.Text)+' ');
        Update;
        Dm.Koneksi.Commit;
      end;
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
end;

procedure TFDataKasKecil.BtnAmbil_DataClick(Sender: TObject);
begin
   MemDetailAkun.EmptyTable;
   //MemDetailHutang.EmptyTable;
   Fdafajuankeluarkasbank.vcall:='keluar_kas_kecil';
   Fdafajuankeluarkasbank.Show;
end;

procedure TFDataKasKecil.btnNoTransaksiClick(Sender: TObject);
begin
  FListNoTransaksi.vcall:='kas_kecil';
  FListNoTransaksi.update_grid('voucher_no','order_no','t_petty_cash','WHERE trans_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+' and deleted_at is NOT NULL '+
  'AND (trans_no_replacement is NULL OR trans_no_replacement='''') ORDER BY voucher_no ASC');
  FListNoTransaksi.ShowModal;
end;

procedure TFDataKasKecil.chkNomorPenggantiClick(Sender: TObject);
begin
  if chkNomorPengganti.Checked=True then btnNoTransaksi.Visible:=True
  else btnNoTransaksi.Visible:=False;
  edNoTrans.Clear;

  if chkNomorPengganti.Checked=True then
  begin
    //Clear;
    //AddDefaultKasKecil;
    //RefreshForm;
    chkNomorPengganti.Checked:=True;
    strNoTransaksiDiGanti:='';
  end;
end;

procedure TFDataKasKecil.Clear;
begin
  MemDetailAkun.EmptyTable;
  MemDetailAkun.Active:=false;
  MemDetailAkun.Active:=true;
  edNoTrans.Clear;
  dtTrans.date:=now();
  edKodeKepada.Clear;
  edNamaKepada.Clear;
  MemKeterangan.Clear;

  edNomorKasBon.Clear;
  edJumlah.Value:=0.00;
  edKodeSumberKas.Clear;
  edNamaSumberKas.Clear;

  dtPeriode1.Date:=now();
  dtPeriode2.Date:=now();
  edKodeMataUang.Clear;
  edNamaMataUang.Clear;
  edKurs.Clear;
  Ed_Jumlah_Hutang.Clear;
  edKode_supplier.Clear;
  ak_account.Clear;

  MemRincian.EmptyTable;
  MemRincian.Active:=false;
  MemRincian.Active:=true;

  dtawal.Date:=now();
  dtakhir.Date:=now();
  edtravel_id.Clear;
  edno_doc.Clear;
end;

procedure TFDataKasKecil.RefreshFormBON;
begin
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_petty_cash_receipt"  a '+
                 ' WHERE "voucher_no"='+QuotedSTr(edNomorKasBon.Text)+' '+
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
    edKodeKepada.Text:=Dm.Qtemp.FieldByName('actors_code').AsString;
    edNamaKepada.Text:=Dm.Qtemp.FieldByName('actors_name').AsString;
    MemKeterangan.Text:=Dm.Qtemp.FieldByName('description').AsString;
    edJumlah.Value:=Dm.Qtemp.FieldByName('amount').Value;
    {
    //detailakun
    with Dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * from ('+
              ' SELECT * from "public"."t_petty_cash_receipt_det"'+
              ' WHERE "voucher_no"='+QuotedStr(edNomorKasBon.Text)+' ) a '+
              ' Order By position asc');
      open;
    end;

    MemDetailAkun.EmptyTable;
    MemDetailAkun.Active:=false;
    MemDetailAkun.Active:=true;
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
       }
  end;
  end;
end;

procedure TFDataKasKecil.RefreshForm;
begin
  if stat_bon=1 then
  begin
   gbDataBON.Visible:=true;
   BtnAmbil_Data.Visible:=false;
   GbHutang.Visible:=false;
   edNamaKepada.ButtonVisible:=true;
   TabDetailFaktur.TabVisible:=false;
   GBRincian.Visible:=false;
  end;
  if stat_bon=0 then
  begin
    gbDataBON.Visible:=false;
    edNomorKasBon.Clear;
    edJumlah.Value:=0.00;
    BtnAmbil_Data.Visible:=false;
    GbHutang.Visible:=false;
    edNamaKepada.ButtonVisible:=true;
    TabDetailFaktur.TabVisible:=false;
    GBRincian.Visible:=false;
  end;
  if stat_bon=2 then
  begin
    BtnAmbil_Data.Visible:=true;
    gbDataBON.Visible:=false;
    GbHutang.Visible:=true;
    edNamaKepada.ButtonVisible:=false;
    TabDetailFaktur.TabVisible:=true;
    dbgridTagihan.Visible:=true;
    GBRincian.Visible:=false;
  end;
  if stat_bon=3 then
  begin
    GBRincian.Visible:=true;
  end;
end;

procedure TFDataKasKecil.DBGridAkunColumns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='kas_kecil';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                ' left join t_ak_header c on b.header_code=c.header_code'+
                ' where a.module_id=11 and b.code is not null  '+
                ' GROUP BY b.code,b.account_name,c.header_name '+
                ' ORDER BY b.code,b.account_name,c.header_name';
      Execute;
    end;
  end;
end;

procedure TFDataKasKecil.DBGridAkunColumns4EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FMasterData.Caption:='Master Kelompok Biaya';
  FMasterData.vcall:='kaskecil_group_biaya';
  FMasterData.update_grid('id','cost_type','cost_type','"t_ak_type_cost"','WHERE	deleted_at is null ORDER BY cost_type desc');
  //FMasterData.update_grid('initial_code','name','description','"t_cost_group"','WHERE	deleted_at is null ORDER BY name desc');
  FMasterData.ShowModal;
end;

procedure TFDataKasKecil.dtTransChange(Sender: TObject);
begin
  //FDataKasKecil.Autonumber;
end;

procedure TFDataKasKecil.edKodeMataUangChange(Sender: TObject);
begin
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='select * from t_currency where currency_code='+QuotedStr(edKodeMataUang.Text)+' ';
     open;
     edNamaMataUang.Text:=fieldbyname('currency_name').AsString;
   end;
end;

procedure TFDataKasKecil.edKode_supplierChange(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT code,account_name,supplier_code from t_ak_account a '+
              'LEFT JOIN t_supplier b ON a.code=b.account_code where supplier_code='+QuotedStr(edKode_supplier.Text);
    open;
    ak_account.Text:=fieldbyname('code').AsString;
  end;
end;

procedure TFDataKasKecil.edNamaKepadaButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Pelaku Biaya';
  FMasterData.vcall:='kaskecil_pelaku_biaya';
  FMasterData.update_grid('code','name','name_tp','(SELECT a.*,concat(b.name,'' - '', c.description) as name_tp from "public"."t_cost_actors" a '+
                          ' LEFT JOIN t_region_TP b on a.karesidenan_code=b.code '+
                          ' left join t_type_cost_actor c on a.type_cost=c.id '+
                          ' )aa','WHERE	deleted_at is null ORDER BY name desc');
  FMasterData.ShowModal;
end;

procedure TFDataKasKecil.edNamaKepadaKeyPress(Sender: TObject; var Key: Char);
begin
// Membatalkan semua input tombol keyboard
  Key := #0;
end;

procedure TFDataKasKecil.edNamaSumberKasButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Sumber Kas Kecil';
  FMasterData.vcall:='m_sumber_kas';
  FMasterData.update_grid('code','name','description','"t_petty_cash_source"','WHERE	deleted_at is null ORDER BY code desc');
  FMasterData.ShowModal;
  RefreshForm;
end;

procedure TFDataKasKecil.edNamaSumberKasKeyPress(Sender: TObject;
  var Key: Char);
begin
// Membatalkan semua input tombol keyboard
  Key := #0;
end;

procedure TFDataKasKecil.edNomorKasBonButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Data Kasbon';
  FMasterData.vcall:='data_kasbon';
  FMasterData.update_grid('voucher_no','actors_name','amount','(SELECT voucher_bon as voucher_no, '+
                          ' actors_name, '''' || to_char(aa.amount, ''FM9,999,999,999.00'') AS amount, '+
                          ' created_at  from  (select DISTINCT a.voucher_no_receipt as voucher_bon, '+
                          ' a.amount_receipt jumlah_bon,  COALESCE(b.jumlah_kas,0) as jumlah_kas,c.needs kepada, '+
                          ' c.trans_date tanggal,  c.description remark, a.amount_receipt-COALESCE(b.jumlah_kas,0) as amount, '+
                          ' c.actors_name, c.created_at, c.actors_code from (select * from t_petty_cash_receipt_history  where amount_receipt '+
                          ' <>0 and approve_at is null )a left join (SELECT voucher_no_receipt bon_no, '+
                          ' sum(amount_receipt) jumlah_kas from t_petty_cash where deleted_at is null and '+
                          ' trans_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+' GROUP BY voucher_no_receipt )b  '+
                          ' on a.voucher_no_receipt=b.bon_no  LEFT JOIN (SELECT * from t_petty_cash_receipt '+
                          ' where deleted_at is null and '+
                          ' trans_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+') c  '+
                          ' on a.voucher_no_receipt=c.voucher_no  where c.voucher_no is not null '+
                          ' and c.actors_code='+QuotedStr(edKodeKepada.Text)+' '+
                          ' and  a.amount_receipt-COALESCE(b.jumlah_kas,0)<>0 '+
                          ' and  c.trans_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+'  '+
                          ' order by a.voucher_no_receipt)aa )xx','ORDER BY created_at desc');
  {FMasterData.update_grid('voucher_no','actors_name','amount','(SELECT voucher_no, actors_name, '+
                          '  '''' || to_char(aa.amount, ''FM9,999,999,999.00'') AS amount, created_at  from '+
                          ' (SELECT voucher_no_receipt,amount_receipt-amount_realization as amount '+
                          ' from t_petty_cash_receipt_history)aa '+
                          ' LEFT JOIN (SELECT voucher_no, actors_name, created_at from t_petty_cash_receipt) bb on'+
                          ' aa.voucher_no_receipt=bb.voucher_no where amount>0)aa','ORDER BY created_at desc');}
  FMasterData.ShowModal;
  RefreshFormBON;

  //Buat Freesh data grid sesuai bon

end;

procedure TFDataKasKecil.edtravel_idButtonClick(Sender: TObject);
begin
  if SelectRow('select nik_employee from t_cost_actors where code='+QuotedStr(FDataKasKecil.edKodeKepada.Text)+' ')='0' then
  begin
    ShowMessage('Data Pelaku Biaya Tidak Punya NIK, Silakan Dilengkapi !!!');
    edKodeKepada.Text:='';
    edNamaKepada.Text:='';
    vno_karyawan:='0';
    Exit;
  end else
  begin
    with FDataRincianHarmoni do
    begin
      edNamaKaryawan.Text:=edNamaKepada.Text;
      dtawal.Date:=FDataKasKecil.dtawal.Date;
      dtakhir.Date:=FDataKasKecil.dtakhir.Date;
      vno_karyawan := SelectRow(' SELECT nik_employee from '+
                                ' t_cost_actors where '+
                                ' code=' + QuotedStr(FDataKasKecil.edKodeKepada.Text));
      edNoKaryawan.Text:=vno_karyawan;
      edKodeKepada.Text:=FDataKasKecil.edKodeKepada.Text;
      dtawal.Enabled:=false;
      dtakhir.Enabled:=false;
      ch_tandai.Checked:=false;
      vcall:='kas_kecil';
    end;
    FDataRincianHarmoni.ShowModal;
  end;
end;

procedure TFDataKasKecil.edtravel_idKeyPress(Sender: TObject; var Key: Char);
begin
// Membatalkan semua input tombol keyboard
  Key := #0;
end;

procedure TFDataKasKecil.FormShow(Sender: TObject);
begin
  btnNoTransaksi.Visible:=False;
  strNoTransaksiDiGanti:='';
  chkNomorPengganti.Checked:=false;
    if status=0 then
    begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='SELECT * FROM t_petty_cash_source where code=''KC001'' and deleted_at is null';
          open;
          edKodeSumberKas.Text:=fieldbyname('code').AsString;
          edNamaSumberKas.Text:=fieldbyname('name').AsString;
        end;
        stat_bon:=StrToInt(SelectRow('select stat_receipt from t_petty_cash_source where code='+QuotedStr(edKodeSumberKas.Text)+' '));

        AddDefaultKasKecil;
        RefreshForm;
    end
    else
    RefreshForm;
    //status:=1;


  if status = 0 then
  begin
    BSave.Enabled := True;
    BCorrection.Visible := False;
    dtTrans.Enabled := True;
    chkNomorPengganti.Enabled:=true;
  end
  else if (status = 1) and (IntStatusKoreksi = 2) then
  begin
    BSave.Enabled := True;
    BCorrection.Visible := True;
    BCorrection.Enabled := False;
    chkNomorPengganti.Enabled:=False;
  end
  else
  begin
    BSave.Enabled := False;
    BCorrection.Visible := True;
    BCorrection.Enabled := True;

    dtTrans.Enabled := False;
    chkNomorPengganti.Enabled:=False;
  end;
end;

procedure TFDataKasKecil.AddDefaultKasKecil;
var
  kode: string;
  headerkode:string;
begin
  kode := GetKodeKasKecil;
  headerkode:= GetHeaderKodeKasKecil;
  if kode = '' then
  begin
    ShowMessage('Akun Kas Kecil tidak ditemukan!');
    Exit;
  end;
  MemDetailAkun.Append;
  MemDetailAkun.FieldByName('kd_akun').AsString := kode;
  MemDetailAkun.FieldByName('nm_akun').AsString :='Kas Kecil';
  MemDetailAkun.FieldByName('debit').AsFloat := 0;
  MemDetailAkun.FieldByName('kredit').AsFloat := 0;
  MemDetailAkun.FieldByName('kd_header_akun').AsString := headerkode;
  MemDetailAkun.FieldByName('keterangan').AsString :='-';
  MemDetailAkun.FieldByName('kd_group_biaya').AsString :=SelectRow('SELECT cost_st_id from t_ak_account where code='+QuotedStr(kode)+'');
  MemDetailAkun.FieldByName('nm_group_biaya').AsString :=SelectRow('SELECT cost_type from t_ak_type_cost a left join t_ak_account b on a.id=b.cost_st_id where code='+QuotedStr(kode)+'');
  MemDetailAkun.Post;
end;

procedure TFDataKasKecil.balanceRow;
begin
  if MemDetailAkun.State in [dsEdit, dsInsert] then
  begin
    // Jika debit diisi → kredit ikut otomatis
    if (MemDetailAkun.FieldByName('debit').AsFloat > 0) then
    begin
      MemDetailAkun.FieldByName('kredit').AsFloat :=
        MemDetailAkun.FieldByName('debit').AsFloat;
    end;

    // Jika kredit diisi → debit ikut otomatis
    if (MemDetailAkun.FieldByName('kredit').AsFloat > 0) then
    begin
        MemDetailAkun.FieldByName('debit').AsFloat :=
        MemDetailAkun.FieldByName('kredit').AsFloat;
    end;
  end;
end;


end.
