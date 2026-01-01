unit UPengajuanAsset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  MemTableDataEh, Db, StdCtrls, MemTableEh, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, RzButton, Mask, RzEdit, ExtCtrls, RzPanel,
  IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL, IdBaseComponent,
  uJSON, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, DBCtrls, Gauges,
  IdIOHandlerStack, IdSSL;
  
type
  TFPengajuanAsset = class(TForm)
    http: TIdHTTP;
    RzPanel1: TRzPanel;
    Panel1: TPanel;
    dtAwal: TRzDateTimeEdit;
    btTampilkan: TRzBitBtn;
    dsMasterPengajuan: TDataSource;
    MemMasterPengajuan: TMemTableEh;
    Label15: TLabel;
    cbStatusPengajuan: TComboBox;
    Memo2: TMemo;
    Label5: TLabel;
    dtAkhir: TRzDateTimeEdit;
    Label6: TLabel;
    MemMasterPengajuanID: TStringField;
    MemMasterPengajuanSUBMISSION_ID: TStringField;
    MemMasterPengajuanSUBMISSION_CODE: TStringField;
    MemMasterPengajuanSUBMISSION_DATE: TDateField;
    MemMasterPengajuanSUBMISSION_COMPANY: TStringField;
    MemMasterPengajuanITEM: TStringField;
    MemMasterPengajuanITEM_NAME: TStringField;
    MemMasterPengajuanUNIT: TStringField;
    MemMasterPengajuanCATEGORY: TStringField;
    MemMasterPengajuanCATEGORY_NAME: TStringField;
    MemMasterPengajuanQTY: TFloatField;
    MemMasterPengajuanSUBMISSION_DESCRIPTION: TStringField;
    MemMasterPengajuanSPESIFICATION: TStringField;
    MemMasterPengajuanSTATUS: TStringField;
    MemMasterPengajuanPO: TStringField;
    MemMasterPengajuanLPB: TStringField;
    MemMasterPengajuanSTATUS_NAME: TStringField;
    DBGridEh3: TDBGridEh;
    MemMasterPengajuanSTAT_APPRV: TBooleanField;
    ckTandai: TCheckBox;
    Label11: TLabel;
    pnprogress: TPanel;
    Gauge1: TGauge;
    MemMasterPengajuanBRAND: TStringField;
    MemMasterPengajuanBRAND_NAME: TStringField;
    Panel2: TPanel;
    btProses: TRzBitBtn;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    procedure btTampilkanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TampilComboStatus;
    procedure cbStatusPengajuanChange(Sender: TObject);
    procedure DBGridEh3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id_status: Integer;
    status_name: String;
  end;

var
  FPengajuanAsset: TFPengajuanAsset;
  json: TMyJSON;

implementation

uses ulkJSON, UMainMenu, uMy_Function, UDetailPengajuanAsset,
  UMasterDataAsset, UDataModule, UHomeLogin;

{$R *.dfm}              
function UpdateStatusAssetViaPost(vid_detpengajuan,vdesc,vstatus,vuser,vlpb,vpo,vspesification,vbrand:string; vqty:integer): string;
var
  key,url,s,BaseUrl,Vpath,Vtoken,str : string;
  vBody,vBody2,KetAlasan  : string;
  jumdata : Real;
  xxx: Integer;
  cnt: Integer;
  iii: Integer;
  sss, row, row1, row2: String;
  res: String;
  date : TDate;
      //component
      gNet          :TIdHTTP;
      //respon component
      httpresult    : TIdHTTP ;
      resp: TMemoryStream;
      slParam   : TStringStream;
      //slParams : TStringStream;
begin     
      resp := TMemoryStream.Create;
      BaseUrl:=SelectRow('SELECT value_parameter FROM t_parameter where key_parameter=''baseurlasset''');
      key:=SelectRow('SELECT value_parameter FROM t_parameter where key_parameter=''keyapiasset''');
      vtoken:=SelectRow('SELECT value_parameter FROM t_parameter where key_parameter=''tokenapiasset''');
      Vpath:='api/asset-submission/update';

      vBody:='{'+
             '"id":"'+vid_detpengajuan+'",'+
             '"desc":"'+vdesc+'",'+
             '"status":"'+vstatus+'",'+
             '"user":"'+vuser+'",'+
             '"lpb":"'+vlpb+'",'+
             '"po":"'+vpo+'",'+
             '"qty":"'+IntToStr(vqty)+'",'+
             '"spesification":"'+vspesification+'",'+
             '"brand":"'+vbrand+'"'+
             '}';

      url:= BaseUrl+Vpath;
      slParam := TStringStream.Create('{'+
                                      '"id":"'+vid_detpengajuan+'",'+
                                      '"desc":"'+vdesc+'",'+
                                      '"status":"'+vstatus+'",'+
                                      '"user":"'+vuser+'",'+
                                      '"lpb":"'+vlpb+'",'+
                                      '"po":"'+vpo+'",'+
                                      '"qty":"'+IntToStr(vqty)+'",'+
                                      '"spesification":"'+vspesification+'",'+
                                      '"brand":"'+vbrand+'"'+
                                      '}');

      TRY
      gNet :=  TIdHTTP.Create(nil);
      gNet.HandleRedirects := true;
      gNet.ReadTimeout := 5000;
      gNet.Request.Accept := 'application/form-data';
      gNet.Request.CustomHeaders.Values[key] := Vtoken;
      gNet.Request.ContentType := 'application/json';
      //res:=  gNet.get(url);
      UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url+vBody);
      UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url+vBody);
      //Result := gNet.get(url);
      Result := gNet.Post(url, slParam);
      //res:=  gNet.Post(url, slParam);
      slParam.Position := 0;
      finally
       resp.Free;
       slParam.free;
      end;
end;

procedure TFPengajuanAsset.TampilComboStatus;
var
  key,url,s,BaseUrl,Vpath,Vtoken,str : string;
  vBody,vBody2  : string;
  jumdata : Real;
  xxx: Integer;
  cnt: Integer;
  iii: Integer;
  sss, row, row1, row2: String;
  res: String;
  date : TDate;
        //component
      gNet          :TIdHTTP;
      //respon component
      httpresult    : TIdHTTP ;
      resp: TMemoryStream;
begin
  resp := TMemoryStream.Create;
  Memo2.Text:='';
  try
  BaseUrl:=SelectRow('SELECT value_parameter FROM t_parameter where key_parameter=''baseurlasset''');
  key:=SelectRow('SELECT value_parameter FROM t_parameter where key_parameter=''keyapiasset''');
  vtoken:=SelectRow('SELECT value_parameter FROM t_parameter where key_parameter=''tokenapiasset''');
  Vpath:='api/status';
  vBody:='';
  //showmessage(BaseUrl+Vpath+vBody);
  url:= BaseUrl+Vpath;
  try
  gNet :=  TIdHTTP.Create(nil);
  gNet.Request.Accept := 'application/json';
  gNet.Request.CustomHeaders.Values[key] := Vtoken;
  gNet.Request.ContentType := 'application/x-www-form-urlencoded';
  UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url);
  UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url);

  memo2.text := url;
  res:=  gNet.get(url);
  jumdata:=1;
  memo2.text := res;
  //showmessage('A');
  except
 on E: EIdHTTPProtocolException do
 if Application.MessageBox('Maaf Data Tidak Ditemukan Data ...','confirm',MB_OK or mb_iconquestion)=id_yes then
 begin
 jumdata:=0;
 gNet.free;
 resp.Free;
 //exit;
 end;
 on E: Exception do
 ShowMessage('A non-Indy related exception has been raised!');
 end;
  finally
    gNet.free;
    resp.Free;
  end;

  if jumdata=0 then
  exit;

  //MOVE JSON
  json.JSONText := memo2.text;
  cnt := json.TreeCount['data'];
  //showmessage('B');

  if cnt < 1 then
  begin
  Showmessage('Data Tidak Ditemukan');
  exit;
  end;

  xxx := 0;
  cbStatusPengajuan.Clear;
  //cbStatusPengajuan.Items.add('');
  for iii := 0 to cnt - 1 do
  begin
    inc(xxx);
    row1 := format('data/%d/', [iii]);
    cbStatusPengajuan.Items.add(json.StringTree[row1 + 'status_name']);
    //buat insert status temp
    with dm.Qtemp do
    begin
      close;             
      sql.clear;
      sql.add('select * from tstatus_pengajuan_asset where id_status='+QuotedStr(json.StringTree[row1 + 'id_status'])+' and status_name='+QuotedStr(json.StringTree[row1 + 'status_name']));
      open;
    end;

    if dm.Qtemp.RecordCount=0 then
    begin
    with dm.Qtemp2 do
    begin
    Close;
    sql.Clear;
    sql.Text:=' Insert Into `tstatus_pengajuan_asset` ('+
              ' `id_status`, `status_name`) values ('+
              ' '+QuotedStr(json.StringTree[row1 + 'id_status'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'status_name'])+' '+
              ' ) ';
    ExecSQL ;
    end;
    end;

  end;
end;

procedure TFPengajuanAsset.btTampilkanClick(Sender: TObject);
var
  key,url,s,BaseUrl,Vpath,Vtoken,str,kd_outlet : string;
  vBody,vBody2  : string;
  jumdata : Real;
  xxx: Integer;
  cnt: Integer;
  iii,i: Integer;
  sss, row, row1, row2: String;
  res: String;
  date : TDate;
        //component
      gNet          :TIdHTTP;
      //respon component
      httpresult    : TIdHTTP ;
      resp: TMemoryStream;
begin
//Get VIA API
  resp := TMemoryStream.Create;
  Memo2.Text:='';
  try
  BaseUrl:=SelectRow('SELECT value_parameter FROM t_parameter where key_parameter=''baseurlasset''');
  key:=SelectRow('SELECT value_parameter FROM t_parameter where key_parameter=''keyapiasset''');
  vtoken:=SelectRow('SELECT value_parameter FROM t_parameter where key_parameter=''tokenapiasset''');
  //Vpath:='api/asset-submission-monitoring';
  Vpath:='api/submission';
  vBody:='?company='+FHomeLogin.vKodePRSH+'&start_date='+formatdatetime('yyyy-mm-dd',dtAwal.date)+''+
         '&end_date='+formatdatetime('yyyy-mm-dd',dtAkhir.date)+''+
         '&status='+inttostr(id_status);
  //showmessage(BaseUrl+Vpath+vBody);
  url:= BaseUrl+Vpath+vBody;
  memo2.text := url;
  try
  gNet :=  TIdHTTP.Create(nil);
  gNet.Request.Accept := 'application/json';
  gNet.Request.CustomHeaders.Values[key] := Vtoken;
  gNet.Request.ContentType := 'application/x-www-form-urlencoded'; 
  memo2.text := res;
      UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url);
      UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url);
  res:=  gNet.get(url);
  memo2.text := res;
  //FDataMasterOrder.memo1.text := res;
  jumdata:=1;
  //showmessage('A');
  //exit;
  except
 on E: EIdHTTPProtocolException do
 //ShowMessage('Tidak Ditemukan Data ...');
 //if application.MessageBox('Tidak Ditemukan Data ...','confirm',mb_yesno or mb_iconquestion)=id_yes then
 //if Application.MessageBox('##Maaf Data Tidak Ditemukan Data ...','confirm',MB_OK or mb_iconquestion)=id_yes then
 if Application.MessageBox('Koneksi Terputus Silakan Coba Kembali ...','confirm',MB_OK or mb_iconquestion)=id_yes then
 begin
  memo2.text := E.ErrorMessage;
  jumdata:=0;
  gNet.free;
  resp.Free;
  //exit;
 end;
 on E: Exception do
 ShowMessage('A non-Indy related exception has been raised!');
 end;
  finally
    gNet.free;
    resp.Free;
  end;

  if jumdata=0 then
  begin
   Showmessage('Data Tidak Ditemukan...');
   exit;
  end;

  //showmessage(floattostr(jumdata));
  //MOVE JSON
  //showmessage('X');
  //json.JSONText := FDataMasterOrder.memo1.text;
  json.JSONText := res; 
  memo2.text := res;
  //showmessage('B'); 
  if memo2.text = '{"message":"data tidak ditemukan"}' then
  begin
  Showmessage('Data Tidak Ditemukan');
  MemMasterPengajuan.EmptyTable;
  MemMasterPengajuan.active:=true;
  exit;
  end;
  cnt := json.TreeCount['data'];

  if cnt < 1 then
  begin
  Showmessage('Data Tidak Ditemukan');
  MemMasterPengajuan.EmptyTable;
  MemMasterPengajuan.active:=true;
  exit;
  end;

  MemMasterPengajuan.EmptyTable;
  MemMasterPengajuan.active:=true;
  xxx := 0;
    i:=0;
    pnprogress.Visible:=true;
    gauge1.MaxValue:=json.TreeCount['data'];

  for iii := 0 to cnt - 1 do
  begin
    inc(xxx);
    i:=i+1;
    gauge1.Progress:=i;
    row1 := format('data/%d/', [iii]);

    MemMasterPengajuan.insert;
    MemMasterPengajuan['SUBMISSION_ID']:=json.StringTree[row1 + 'submission_id'];
    MemMasterPengajuan['ID']:=json.StringTree[row1 + 'id'];
    MemMasterPengajuan['SUBMISSION_CODE']:=json.StringTree[row1 + 'submission_code'];
    MemMasterPengajuan['SUBMISSION_DATE']:=json.StringTree[row1 + 'submission_date'];
    MemMasterPengajuan['SUBMISSION_COMPANY']:=json.StringTree[row1 + 'submission_company'];
    MemMasterPengajuan['ITEM']:=json.StringTree[row1 + 'item'];
    MemMasterPengajuan['ITEM_NAME']:=json.StringTree[row1 + 'item_name'];
    MemMasterPengajuan['UNIT']:=json.StringTree[row1 + 'unit'];
    MemMasterPengajuan['CATEGORY']:=json.StringTree[row1 + 'category'];
    MemMasterPengajuan['CATEGORY_NAME']:=json.StringTree[row1 + 'category_name'];
    MemMasterPengajuan['BRAND']:=json.StringTree[row1 + 'brand_code'];
    MemMasterPengajuan['BRAND_NAME']:=json.StringTree[row1 + 'brand_name'];
    MemMasterPengajuan['QTY']:=json.StringTree[row1 + 'qty'];
    MemMasterPengajuan['SUBMISSION_DESCRIPTION']:='0';
    MemMasterPengajuan['SPESIFICATION']:=json.StringTree[row1 + 'specification'];
    MemMasterPengajuan['STATUS']:=json.StringTree[row1 + 'status'];
    MemMasterPengajuan['PO']:=json.StringTree[row1 + 'po'];
    MemMasterPengajuan['LPB']:=json.StringTree[row1 + 'lpb'];  
    MemMasterPengajuan['STATUS_NAME']:=json.StringTree[row1 + 'status_name'];
    MemMasterPengajuan['STAT_APPRV']:=ckTandai.Checked;
    MemMasterPengajuan.Post;

  end;
    MemMasterPengajuan.active:=false;
    MemMasterPengajuan.active:=true;
    if id_status>1 then
    Panel2.Visible:=false;
    if id_status<2 then
    Panel2.Visible:=true;
  Gauge1.Progress:=0;
  pnprogress.Visible:=false;
end;

procedure TFPengajuanAsset.FormShow(Sender: TObject);
begin
  json := TMyJSON.Create(Self);
  dtAwal.date:=now();   
  dtAkhir.date:=now();
  TampilComboStatus;   
  MemMasterPengajuan.EmptyTable;
  cbStatusPengajuan.ItemIndex:=0;
end;

procedure TFPengajuanAsset.cbStatusPengajuanChange(Sender: TObject);
begin
    with dm.Qtemp do
    begin
      close;           
      sql.clear;
      sql.add('select * from tstatus_pengajuan_asset where status_name='+QuotedStr(cbStatusPengajuan.Text));
      open;
    end;
    id_status:=dm.Qtemp.fieldbyname('id_status').Value;
    status_name:=dm.Qtemp.fieldbyname('status_name').Value;
    //ShowMessage(inttostr(dm.Qtemp.fieldbyname('id_status').Value)+'??'+dm.Qtemp.fieldbyname('status_name').Value);
end;

procedure TFPengajuanAsset.DBGridEh3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (DBGridEh3.SelectedIndex=9) and (key=vk_f2) then  //Merk
  begin
   with FMasterDataAsset do
   begin
    vcall:='MasterMerk';
    DBGrid.Columns[0].Title.Caption:='KODE MERK';
    DBGrid.Columns[1].Title.Caption:='NAMA MERK';
    DBGrid.Columns[2].Title.Caption:='UUID MERK';
    kode:='brand_code';
    nama:='brand_name';
    uuid:='id';
    namamaster:='brand';
    RzPanel1.Caption:='MASTER DATA MERK';
   end;
   FMasterDataAsset.show;
  end;
end;

procedure TFPengajuanAsset.btProsesClick(Sender: TObject);
var
 rec : real;
begin
  rec:=0;
  if application.MessageBox('Apa Anda Yakin Akan Memproses Data Ini...?','confirm',mb_yesno or mb_iconquestion)=id_yes then
  begin
  MemMasterPengajuan.First;
  while not MemMasterPengajuan.Eof do
  begin
    if (MemMasterPengajuan['STAT_APPRV']=true) then
    begin
    rec:=rec+1;
    UpdateStatusAssetViaPost(MemMasterPengajuan['ID'], '0', MemMasterPengajuan['STATUS'],nm, '0', '0', MemMasterPengajuan['SPESIFICATION'], MemMasterPengajuan['BRAND'], MemMasterPengajuan['QTY'] );
    //UpdateStatusAssetViaPost(vid_detpengajuan,vdesc,vstatus,vuser,vlpb,vpo,vspesification,vbrand:string; vqty:integer): string;
    end;
  MemMasterPengajuan.Next;
  end;

  if rec = 0 then
  showmessage('Maaf, Tidak Ada Data Yang Di Proses, Pastikan Anda Sudah Mengkapi Data..');
  if rec > 0 then
  showmessage('Proses Berhasil Terupdate !');
end;

end;

end.
