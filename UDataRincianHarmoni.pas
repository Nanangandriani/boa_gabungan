unit UDataRincianHarmoni;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB, MemTableEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.ComCtrls,
  RzDTP, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzBtnEdt, RzButton, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, uJSON,
  System.Net.HttpClient, System.Net.HttpClientComponent;

type
  TFDataRincianHarmoni = class(TForm)
    MemDataHarmoni: TMemTableEh;
    DSDataHarmoni: TDataSource;
    GBRincian: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    edNoKaryawan: TRzButtonEdit;
    edNamaKaryawan: TEdit;
    RzPageControl1: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    DBGridRincian: TDBGridEh;
    RzTabSheet2: TRzTabSheet;
    DBGridEh2: TDBGridEh;
    dtawal: TRzDateTimePicker;
    dtakhir: TRzDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    btFind: TRzBitBtn;
    btProcess: TRzBitBtn;
    IdHTTP1: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    MemoAPI: TMemo;
    edKodeKepada: TEdit;
    MemDataHarmonicomponent_id: TStringField;
    MemDataHarmonicost: TCurrencyField;
    MemDataHarmonicomponent: TStringField;
    MemDataHarmoniid: TStringField;
    MemDataHarmonidocument_number: TStringField;
    MemDataHarmoniofficial_travel_id: TStringField;
    MemDataHarmonipilih: TBooleanField;
    MemDataHarmonitransaction_code: TStringField;
    ch_tandai: TCheckBox;
    MemDataHarmonidescription: TStringField;
    procedure edNoKaryawanButtonClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btProcessClick(Sender: TObject);
    procedure ch_tandaiClick(Sender: TObject);
    procedure MemDataHarmonipilihValidate(Sender: TField);
    procedure DBGridRincianDblClick(Sender: TObject);
  private
    FActiveDocNum: String;
    function GetCheckedCount: Integer;
    function CountCheckedRows(const ADocNum: String): Integer;
    { Private declarations }
  public
    vcall, vno_karyawan,vid_cost_actor : string;
    { Public declarations }
    procedure GetApiSuratTugas;
    procedure IsiDataKasKecil;
    procedure IsiDataKasBon;
    function GetExistingCheckedDocNum: String;
  end;

var
  FDataRincianHarmoni: TFDataRincianHarmoni;
  json: TMyJSON;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
  ActiveNoTrans: String = '';
  CheckedCount: Integer = 0;

implementation

{$R *.dfm}

uses UMy_Function,ulkJSON, UMasterData, UDataKasKecil, UDataModule,
  UDataKasbon2;

function TFDataRincianHarmoni.CountCheckedRows(const ADocNum: String): Integer;
var
  bm: TBookmark;
begin
  Result := 0;
  if MemDataHarmoni.IsEmpty then Exit;

  bm := MemDataHarmoni.Bookmark;
  MemDataHarmoni.DisableControls;
  try
    MemDataHarmoni.First;
    while not MemDataHarmoni.Eof do
    begin
      if MemDataHarmoni.FieldByName('pilih').AsBoolean and
         (MemDataHarmoni.FieldByName('document_number').AsString = ADocNum) then
      begin
        Inc(Result);
      end;
      MemDataHarmoni.Next;
    end;
  finally
    if MemDataHarmoni.BookmarkValid(bm) then
      MemDataHarmoni.GotoBookmark(bm);
    MemDataHarmoni.FreeBookmark(bm);
    MemDataHarmoni.EnableControls;
  end;
end;

procedure TFDataRincianHarmoni.DBGridRincianDblClick(Sender: TObject);
begin
  if (not MemDataHarmoni.Active) or MemDataHarmoni.IsEmpty then Exit;

  // Cek apakah kolom yang di-double click adalah 'pilih'
  if Assigned(DBGridRincian.SelectedField) and
     SameText(DBGridRincian.SelectedField.FieldName, 'pilih') then
  begin
    MemDataHarmoni.Edit;
    // Balikkan status centang khusus di baris yang sedang diklik
    MemDataHarmoni.FieldByName('pilih').AsBoolean := not MemDataHarmoni.FieldByName('pilih').AsBoolean;
    MemDataHarmoni.Post;
  end;
end;

function TFDataRincianHarmoni.GetExistingCheckedDocNum: String;
var
  bm: TBookmark;
begin
  Result := '';
  if MemDataHarmoni.IsEmpty then Exit;

  // Simpan Bookmark & Disable Controls
  bm := MemDataHarmoni.GetBookmark;
  MemDataHarmoni.DisableControls;
  try
    MemDataHarmoni.First;
    while not MemDataHarmoni.Eof do
    begin
      if MemDataHarmoni.FieldByName('pilih').AsBoolean then
      begin
        Result := MemDataHarmoni.FieldByName('document_number').AsString;
        Break;
      end;
      MemDataHarmoni.Next;
    end;
  finally
    if MemDataHarmoni.BookmarkValid(bm) then
      MemDataHarmoni.GotoBookmark(bm);
    MemDataHarmoni.FreeBookmark(bm);
    MemDataHarmoni.EnableControls;
  end;
end;

function TFDataRincianHarmoni.GetCheckedCount: Integer;
var
  i: Integer;
begin
  Result := 0;
end;

procedure TFDataRincianHarmoni.IsiDataKasBon;
var
no_rec:Integer;
vjumlah:real;
vofficial_travel_id, vdocument_number, vdescription: String;
begin
  no_rec:=0;
  vjumlah:=0;
  MemDataHarmoni.First;
  while not MemDataHarmoni.Eof do
  begin
    if (MemDataHarmoni['pilih']=true) or (MemDataHarmoni['pilih']=1) then
    begin
      no_rec:=no_rec+1;
    end;
  MemDataHarmoni.Next;
  end;

  if  no_rec=0 then
  begin
    ShowMessage('Tidak Ada Data Yang Dipilih !!!') ;
    exit;
  end;
    //ShowMessage(IntToStr(no_rec)) ;

  if  no_rec>0 then
  begin
    MemDataHarmoni.First;
    while not MemDataHarmoni.Eof do
    begin
      if (MemDataHarmoni['pilih']=true) or (MemDataHarmoni['pilih']=1) then
      begin
          // Cek Rincian Biaya
          with dm.Qtemp1 do
          begin
            close;
            sql.Clear;
            sql.text :=' SELECT * from t_petty_cash_receipt_harmoni '+
                       ' where official_travel_id='+QuotedStr(MemDataHarmoni['official_travel_id'])+' and '+
                       ' document_number='+QuotedStr(MemDataHarmoni['document_number'])+' and '+
                       ' employee_nik='+QuotedStr(vno_karyawan)+' and '+
                       ' component_id='+QuotedStr(MemDataHarmoni['component_id'])+' ';
            Open;
          end;

          if dm.Qtemp1.RecordCount<>0 then
          begin
            with dm.Qtemp do
            begin
              close;
              sql.clear;
              sql.text :=' delete from t_petty_cash_receipt_harmoni '+
                         ' where official_travel_id='+QuotedStr(MemDataHarmoni['official_travel_id'])+' and '+
                         ' document_number='+QuotedStr(MemDataHarmoni['document_number'])+' and '+
                         ' employee_nik='+QuotedStr(vno_karyawan)+' and '+
                         ' component_id='+QuotedStr(MemDataHarmoni['component_id'])+' ';
            ExecSQL;
            end;
          end;

          with dm.Qtemp do
          begin
          close;
          sql.clear;
          sql.Add(' INSERT INTO "public"."t_petty_cash_receipt_harmoni" ("id_harmoni", "status", '+
                  ' "start_date", "end_date", '+
                  ' "official_travel_id", "document_number", "employee_nik", "component_id", '+
                  ' "component", "voucher_no", "cost") '+
                  ' Values( '+
                  ' '+QuotedStr(MemDataHarmoni['id'])+', '+
                  ' '+QuotedStr('0')+', '+
                  ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtawal.Date))+', '+
                  ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtakhir.Date))+', '+
                  ' '+QuotedStr(MemDataHarmoni['official_travel_id'])+', '+
                  ' '+QuotedStr(MemDataHarmoni['document_number'])+', '+
                  ' '+QuotedStr(vno_karyawan)+', '+
                  ' '+QuotedStr(MemDataHarmoni['component_id'])+', '+
                  ' '+QuotedStr(MemDataHarmoni['component'])+', '+
                  ' '+QuotedStr('0')+', '+
                  ' '+QuotedStr(MemDataHarmoni['cost'])+'  );');
          ExecSQL;
          end;
          vjumlah:=vjumlah+MemDataHarmoni['cost'];
          vofficial_travel_id:=MemDataHarmoni['official_travel_id'];
          vdocument_number:=MemDataHarmoni['document_number'];
          vdescription:=MemDataHarmoni['description'];
      end;
      MemDataHarmoni.Next;
    end;
    with FDataKasbon2 do
    begin
      edkd_noref.Text:=vofficial_travel_id;
      edNoref.Text:=vdocument_number;
      edJumlah.Value:=vjumlah;
      edkeperluan.Text:=vdescription;
      MemKeterangan.Text:=vdescription;
    end;
  end;
end;

procedure TFDataRincianHarmoni.IsiDataKasKecil;
var
no_rec:Integer;
begin
  no_rec:=0;
  MemDataHarmoni.First;
  while not MemDataHarmoni.Eof do
  begin
    if (MemDataHarmoni['pilih']=true) or (MemDataHarmoni['pilih']=1) then
    begin
      no_rec:=no_rec+1;
    end;
  MemDataHarmoni.Next;
  end;

  if  no_rec=0 then
  begin
    ShowMessage('Tidak Ada Data Yang Dipilih !!!') ;
    exit;
  end;
    //ShowMessage(IntToStr(no_rec)) ;

  if  no_rec>0 then
  begin
    MemDataHarmoni.First;
    while not MemDataHarmoni.Eof do
    begin
      if (MemDataHarmoni['pilih']=true) or (MemDataHarmoni['pilih']=1) then
      begin
        // Isi Rinciaan Biaya
        with FDataKasKecil do
        begin
          MemRincian.Active:=false;
          MemRincian.Active:=true;

          MemRincian.insert;
          MemRincian['component_id']:=MemDataHarmoni['component_id'];
          MemRincian['cost']:=MemDataHarmoni['cost'];
          MemRincian['component']:=MemDataHarmoni['component'];
          MemRincian['id']:=MemDataHarmoni['id'] ;
          MemRincian.Post;

          edtravel_id.Text:=MemDataHarmoni['official_travel_id'];
          edno_doc.Text:=MemDataHarmoni['document_number'];
          edNomorKasBon.Text:=MemDataHarmoni['transaction_code'];

          //isi akun
          with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.text :=' SELECT kd_account,c.account_name from t_harmoni_component a '+
                       ' left join t_ak_account_sub b on a.kd_account=b.account_code2   '+
                       ' left join t_ak_account c on b.account_code=c.code '+
                       ' where cost_type_id='+vid_cost_actor+' and '+
                       ' component_id='''+MemDataHarmoni['component_id']+'''';
            Open;
          end;
          MemDetailAkun.Active:=false;
          MemDetailAkun.Active:=true;
          MemDetailAkun.insert;
          MemDetailAkun['kd_akun']:=dm.Qtemp.fieldbyname('kd_account').AsString;
          MemDetailAkun['nm_akun']:=dm.Qtemp.fieldbyname('account_name').AsString;
          MemDetailAkun['kredit']:=0;
          MemDetailAkun['debit']:=MemDataHarmoni['cost'];
          MemDetailAkun['keterangan']:='-';
          MemDetailAkun['kd_group_biaya']:=SelectRow('SELECT cost_st_id from t_ak_account where code='+QuotedStr(dm.Qtemp.fieldbyname('kd_account').AsString)+'');
          MemDetailAkun['nm_group_biaya']:=SelectRow('SELECT cost_type from t_ak_type_cost a left join t_ak_account b on a.id=b.cost_st_id where code='+QuotedStr(dm.Qtemp.fieldbyname('kd_account').AsString)+'');
          MemDetailAkun['kd_header_akun']:=SelectRow('SELECT account_code2 from t_ak_account_sub where account_code2='+QuotedSTR(dm.Qtemp.fieldbyname('kd_account').AsString)+'') ;
          MemDetailAkun.post;
      end;
      end;
    MemDataHarmoni.Next;
    end;
  end;

end;

procedure TFDataRincianHarmoni.MemDataHarmonipilihValidate(Sender: TField);
var
  CurrentDocNum: String;
begin
  {CurrentDocNum := MemDataHarmoni.FieldByName('document_number').AsString;

  // KONDISI 1: User MENCENTANG (True)
  if Sender.AsBoolean then
  begin
    if (FActiveDocNum <> '') and (CurrentDocNum <> FActiveDocNum) then
    begin
      ShowMessage('Tidak dapat memilih dokumen lain (' + CurrentDocNum +
                  ')! Harus memilih Document Number yang sama: ' + FActiveDocNum);
      Abort; // Batalkan centang
    end;

    if FActiveDocNum = '' then
      FActiveDocNum := CurrentDocNum;
  end; }
  // KONDISI 2: User MELEPAS CENTANG diproses otomatis lewat DBGridRincianCellClick / GetExistingCheckedDocNum
end;

procedure TFDataRincianHarmoni.GetApiSuratTugas;
var
  key, url, BaseUrl, Vpath, Vtoken: string;
  vBody: string;
  cnt, iii: Integer;
  row1: string;
  LClient: THTTPClient;
  LResponse: IHTTPResponse;
  LJson: TMyJSON;
  OldMemoEvent: TNotifyEvent;
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
      vid_cost_actor := SelectRow('SELECT type_cost from t_cost_actors where code=' + QuotedStr(edKodeKepada.Text));
      BaseUrl := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''baseurlharmoni''');
      key := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''keyapiharmoni''');
      Vtoken := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''tokenapiharmoni''');
      // 2. Susun Parameter & Endpoint
      if vcall = 'kas_bon' then
      begin
        vBody := '?employee_nik=' + vno_karyawan +
                 '&start_date=' + FormatDateTime('yyyy-mm-dd', dtawal.date) +
                 '&end_date=' + FormatDateTime('yyyy-mm-dd', dtAkhir.date) +
                 '&status=1';
      end
      else if vcall = 'kas_kecil' then
      begin
        vBody := '?employee_nik=' + vno_karyawan +
                 '&start_date=' + FormatDateTime('yyyy-mm-dd', dtawal.date) +
                 '&end_date=' + FormatDateTime('yyyy-mm-dd', dtAkhir.date) +
                 '&status=2';
      end;
      Vpath := '/bop-realization';
      url := BaseUrl + Vpath + vBody;
      if Assigned(MemoAPI) then
        MemoAPI.Text := url;
      // 3. Request HTTP Client Native
      UpdateLogErrorAPI(BaseUrl, Vpath, vtoken, false, url);
      UpdateLogErrorAPI(BaseUrl, Vpath, vtoken, True, url);
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
      if (LowerCase(LJson.StringTree['status']) = 'false') or (LJson.StringTree['status'] = '') then
      begin
        MessageDlg(LJson.StringTree['message'] + '..!!', mtInformation, [mbOK], 0);
        Exit;
      end;
      cnt := LJson.TreeCount['data'];
      if cnt = 0 then
      begin
        ShowMessage('Data Tidak Ditemukan');
        Exit;
      end;
      // Prepare Memory Table
      MemDataHarmoni.Active := False;
      MemDataHarmoni.Active := True;
      MemDataHarmoni.EmptyTable;
      // Matikan UI binding selama penambahan baris agar tidak memicu error state
      //MemDataHarmoni.DisableControls;
      try
        // Loop pengisian data
        for iii := 0 to cnt - 1 do
        begin
          row1 := Format('data/%d/', [iii]);
          MemDataHarmoni.Append;
          MemDataHarmoni.FieldByName('document_number').AsString   := LJson.StringTree[row1 + 'document_number'];
          MemDataHarmoni.FieldByName('official_travel_id').AsString := LJson.StringTree[row1 + 'official_travel_id'];
          MemDataHarmoni.FieldByName('component_id').AsString      := LJson.StringTree[row1 + 'component_id'];
          MemDataHarmoni.FieldByName('cost').AsString              := LJson.StringTree[row1 + 'cost'];
          MemDataHarmoni.FieldByName('component').AsString         := LJson.StringTree[row1 + 'component'];
          MemDataHarmoni.FieldByName('transaction_code').AsString  := LJson.StringTree[row1 + 'transaction_code'];
          MemDataHarmoni.FieldByName('description').AsString       := LJson.StringTree[row1 + 'description'];
          MemDataHarmoni.FieldByName('id').AsString                := '0';
          MemDataHarmoni.FieldByName('pilih').AsBoolean            := True;
          MemDataHarmoni.Post;
        end;
      finally
        //MemDataHarmoni.EnableControls; // Kembalikan koneksi UI setelah selesai
      end;
    finally
      if Assigned(MemoAPI) then
        MemoAPI.OnChange := OldMemoEvent;
    end;
  finally
    if Assigned(LClient) then FreeAndNil(LClient);
    if Assigned(LJson) then FreeAndNil(LJson);
  end;
end;

procedure TFDataRincianHarmoni.btProcessClick(Sender: TObject);
begin
  if vcall='kas_bon' then
  begin
    IsiDataKasBon;
    //ShowMessage(FloatToStr(FDataKasbon2.edJumlah.value));
  end;

  if vcall='kas_kecil' then
  begin
    IsiDataKasKecil;
    with FDataKasKecil do
    begin
      MemRincian.active:=false;
      MemRincian.active:=true;
        if MemDetailAkun.Locate('kd_header_akun', '1101', []) then
        begin
          MemDetailAkun.Edit;
          MemDetailAkun['kredit'] := DBGridAkun.Columns[2].Footer.SumValue;
          MemDetailAkun.Post;
          MemDetailAkun.SortOrder := 'kd_akun ASC';
        end;

      edjumlah.value:=DBGridAkun.Columns[2].Footer.SumValue;
    end;
  end;

  FDataRincianHarmoni.Close;
end;

procedure TFDataRincianHarmoni.ch_tandaiClick(Sender: TObject);
begin
  FActiveDocNum := '';
  // Jangan di-close/open jika hanya ingin mengedit data yang sudah ada!
  if (not MemDataHarmoni.Active) or MemDataHarmoni.IsEmpty then Exit;

  // Matikan respon UI / Grid sementara selama proses update batch
  MemDataHarmoni.DisableControls;
  try
    MemDataHarmoni.First;
    while not MemDataHarmoni.Eof do
    begin
      MemDataHarmoni.Edit;
      MemDataHarmoni.FieldByName('pilih').AsBoolean := ch_tandai.Checked;
      MemDataHarmoni.Post;

      MemDataHarmoni.Next;
    end;
  finally
    // Hidupkan kembali respon UI / Grid setelah selesai
    MemDataHarmoni.EnableControls;
  end;
end;

procedure TFDataRincianHarmoni.btFindClick(Sender: TObject);
begin
  FActiveDocNum := '';

  MemDataHarmoni.active:=false;
  MemDataHarmoni.active:=true;
  GetApiSuratTugas;
end;

procedure TFDataRincianHarmoni.edNoKaryawanButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Pelaku Biaya';
  FMasterData.vcall:='harmoni_pelaku_biaya';
  FMasterData.update_grid('code','name','name_tp','(SELECT a.*,concat(b.name,'' - '', c.description) as name_tp from "public"."t_cost_actors" a '+
                          ' LEFT JOIN t_region_TP b on a.karesidenan_code=b.code '+
                          ' left join t_type_cost_actor c on a.type_cost=c.id '+
                          ' )aa','WHERE	deleted_at is null ORDER BY name desc');
  FMasterData.ShowModal;
end;

procedure TFDataRincianHarmoni.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  edNoKaryawan.Clear;
  edNamaKaryawan.Clear;
  dtawal.Date:=now;
  dtakhir.Date:=now;

  MemDataHarmoni.Active:=false;
  MemDataHarmoni.Active:=true;
  MemDataHarmoni.EmptyTable;
end;

end.
