unit UDataPool;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent, uJSON;

type
  TFDataPool = class(TForm)
    DBGrid: TDBGridEh;
    DSPool: TDataSource;
    MemPool: TMemTableEh;
    MemPoolcode: TStringField;
    MemPoolname: TStringField;
    MemPoolprovince_id: TSmallintField;
    MemPoolregencie_id: TSmallintField;
    IdHTTP1: TIdHTTP;
    Memo1: TMemo;
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure GetApiPool;
  end;

var
  FDataPool: TFDataPool;
  json: TMyJSON;


implementation

{$R *.dfm}

uses ulkJSON, UMy_Function, UNewDeliveryOrder;

procedure TFDataPool.DBGridDblClick(Sender: TObject);
begin
  with FNewDeliveryOrder do
  begin
    edNamaLokasi.Text:=MemPool['name'];
    edlokasiregencyid.Text:=MemPool['regencie_id'];
    edKodeLokasi.Text:=MemPool['code'];
  end;
  Close;
end;

procedure TFDataPool.FormShow(Sender: TObject);
begin
  json := TMyJSON.Create(Self);
end;

procedure TFDataPool.GetApiPool;
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
  BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurlchakra''');
  key:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''keyapichakra''');
  vtoken:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''tokenapichakra''');
  vBody:='';
  Vpath:='/api/get-pool';
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


  MemPool.active:=false;
  MemPool.active:=true;
  MemPool.EmptyTable;

  DBGrid.StartLoadingStatus();
  try
  xxx := 0;
  for iii := 0 to cnt - 1 do
  begin
    inc(xxx);
    row1 := format('data/%d/', [iii]);
    MemPool.insert;
    MemPool['code']:=json.StringTree[row1 + 'code'];
    MemPool['name']:=json.StringTree[row1 + 'name'];
    MemPool['province_id']:=json.StringTree[row1 + 'province_id'];
    MemPool['regencie_id']:=json.StringTree[row1 + 'regencie_id'];
    MemPool.post;
  end;
    //MemMasterData.active:=false;
    //MemMasterData.active:=true;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

end.
