unit UDaftarKendaraan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableEh, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, uJSON, Vcl.StdCtrls,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent;

type
  TFDaftarKendaraan = class(TForm)
    dsMasterData: TDataSource;
    MemMasterData: TMemTableEh;
    DBGrid: TDBGridEh;
    MemMasterDatacode: TStringField;
    MemMasterDataplate_number: TStringField;
    MemMasterDatatype: TStringField;
    MemMasterDatatype_name: TStringField;
    IdHTTP1: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    Memo1: TMemo;
    NetHTTPClient1: TNetHTTPClient;
    MemMasterDatacapacity: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    vcall : string;
    { Public declarations }
    procedure GetDataViaAPI;
    procedure GetDataViaAPI2;
  end;

var
  FDaftarKendaraan: TFDaftarKendaraan;
  json: TMyJSON;

implementation

{$R *.dfm}

uses ulkJSON, UDataModule, UHomeLogin, UMy_Function, UNewDeliveryOrder,
  UDataPerintahMuat;

procedure TFDaftarKendaraan.DBGridDblClick(Sender: TObject);
begin
  if vcall='delivery_order' then
  begin
    FNewDeliveryOrder.edNoKendMuatan.Text:=MemMasterData['code'];
    FNewDeliveryOrder.edNamaJenisKendMuatan.Text:=MemMasterData['type'];
    FNewDeliveryOrder.edKodeJenisKendMuatan.Text:=MemMasterData['type_name'];
    FNewDeliveryOrder.spKapasitas.value:=MemMasterData['capacity'];
  end;
  if vcall='perintah_muat' then
  begin
    FDataPerintahMuat.edNoKendMuatan.Text:=MemMasterData['code'];
  end;
  FDaftarKendaraan.Close;
  FDaftarKendaraan.MemMasterData.EmptyTable;
end;

procedure TFDaftarKendaraan.FormShow(Sender: TObject);
begin
  json := TMyJSON.Create(Self);
end;

procedure TFDaftarKendaraan.GetDataViaAPI2;
var
  key,url,s,BaseUrl,Vpath,Vtoken,str : string;
  Response: string;
begin
  BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurl_m_kend''');
  Vpath:='/api/get-vehicle';
  url := BaseUrl+Vpath; // URL API tanpa token
  try
    // Mengirim permintaan GET ke API
    Response := NetHTTPClient1.Get(url).ContentAsString(TEncoding.UTF8);

    // Menampilkan respons di Memo
    Memo1.Lines.Text := Response;
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;

procedure TFDaftarKendaraan.GetDataViaAPI;
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
  max,min : Integer;
        //component
      gNet          :TIdHTTP;
      //respon component
      httpresult    : TIdHTTP ;
      resp: TMemoryStream;
begin
  try
  //BaseUrl:=edBaseURL.Text;
  BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurl_m_kend''');
  key:='';
  vtoken:='';
  vBody:='';
  Vpath:='/api/get-vehicle';
  url:= BaseUrl+Vpath;
    try
    gNet :=  TIdHTTP.Create(nil);
    gNet.Request.Accept := 'application/json';
    gNet.Request.CustomHeaders.Values[key] := Vtoken;
    gNet.Request.ContentType := 'application/x-www-form-urlencoded';
    UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url);
    UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url);
    //Response := NetHTTPClient1.Get(URL).ContentAsString(TEncoding.UTF8);
    res:=  gNet.get(url);
    jumdata:=1;
    memo1.text := res;
    except
   on E: EIdHTTPProtocolException do
   if Application.MessageBox('Maaf, Data Tidak Ditemukan ...','confirm',MB_OK or mb_iconquestion)=id_yes then
   begin
   jumdata:=0;
   gNet.free;
   resp.Free;
   //exit;
   end;
   on E: Exception do
   //ShowMessage('A non-Indy related exception has been raised!');
      ShowMessage('Error: ' + E.Message);
   //ShowMessage('Koneksi Terputuus');
   end;
  finally
    gNet.free;
    resp.Free;
  end;

  if jumdata=0 then
  begin
  //Showmessage('Data Terbaru Tidak Ditemukan');}
  exit;
  end;

  //MOVE JSON
  json.JSONText := memo1.text;
  cnt := json.TreeCount['data'];

  if cnt = 0 then
  begin
  Showmessage('Data Tidak Ditemukan');
  exit;
  end;


  MemMasterData.active:=false;
  MemMasterData.active:=true;
  MemMasterData.EmptyTable;

  DBGrid.StartLoadingStatus();
  try
  xxx := 0;
  for iii := 0 to cnt - 1 do
  begin
    inc(xxx);
    row1 := format('data/%d/', [iii]);
    //ShowMessage(json.StringTree[row1 + 'outlet_code']);
     MemMasterData.insert;
     MemMasterData['code']:=json.StringTree[row1 + 'code'];
     MemMasterData['plate_number']:=json.StringTree[row1 + 'plate_number'];
     MemMasterData['type']:=json.StringTree[row1 + 'type'];
     MemMasterData['type_name']:=json.StringTree[row1 + 'type_name'];
     MemMasterData['capacity']:=json.StringTree[row1 + 'capacity'];
     MemMasterData.post;
  end;
    //MemMasterData.active:=false;
    //MemMasterData.active:=true;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

end.
