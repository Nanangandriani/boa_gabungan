unit UDataPool;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent, uJSON,
  System.JSON, IdSSLOpenSSL;

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
  BaseUrl, key, vtoken, Vpath, url, res: string;
  gNet: TIdHTTP;
  ssl: TIdSSLIOHandlerSocketOpenSSL;
  jsonValue: TJSONValue;
  jsonObj: TJSONObject;
  jsonArray: TJSONArray;
  dataItem: TJSONObject;
  i: Integer;
begin

    try
      // Ambil parameter API
      BaseUrl := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''baseurlchakra''');
      key     := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''keyapichakra''');
      vtoken  := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''tokenapichakra''');

      Vpath := '/api/get-pool';
      url := BaseUrl + Vpath;

      // Setup HTTP client
      gNet := TIdHTTP.Create(nil);
      ssl := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      try
        gNet.IOHandler := ssl;
        gNet.ReadTimeout := 15000;
        gNet.ConnectTimeout := 10000;
        gNet.Request.Accept := 'application/json';
        gNet.Request.ContentType := 'application/x-www-form-urlencoded';
        gNet.Request.CustomHeaders.Values[key] := vtoken;

        try
          res := gNet.Get(url);
          TThread.Synchronize(nil, procedure
          begin
            Memo1.Text := res;
          end);
        except
          on E: Exception do
          begin
            TThread.Synchronize(nil, procedure
            begin
              ShowMessage('HTTP Error: ' + E.Message);
            end);
            Exit;
          end;
        end;

        // Parsing JSON
        jsonValue := TJSONObject.ParseJSONValue(res);
        try
          if jsonValue = nil then
          begin
            TThread.Synchronize(nil, procedure
            begin
              ShowMessage('Format JSON tidak valid');
            end);
            Exit;
          end;

          // JSON root object
          if jsonValue is TJSONObject then
          begin
            jsonObj := jsonValue as TJSONObject;
            jsonArray := jsonObj.GetValue('data') as TJSONArray;
          end
          // JSON root array
          else if jsonValue is TJSONArray then
          begin
            jsonArray := jsonValue as TJSONArray;
          end
          else
          begin
            TThread.Synchronize(nil, procedure
            begin
              ShowMessage('Format JSON tidak dikenali');
            end);
            Exit;
          end;

          if not Assigned(jsonArray) then
          begin
            TThread.Synchronize(nil, procedure
            begin
              ShowMessage('Data tidak ditemukan di JSON');
            end);
            Exit;
          end;

          // Kosongkan MemPool sebelum insert
          TThread.Synchronize(nil, procedure
          begin
            MemPool.Active := False;
            MemPool.Active := True;
            MemPool.EmptyTable;
            DBGrid.StartLoadingStatus;
          end);

          // Loop data array
          for i := 0 to jsonArray.Count - 1 do
          begin
            if jsonArray.Items[i] is TJSONObject then
            begin
              dataItem := jsonArray.Items[i] as TJSONObject;
              TThread.Synchronize(nil, procedure
              begin
                MemPool.Insert;
                MemPool['code']        := dataItem.GetValue('code').Value;
                MemPool['name']        := dataItem.GetValue('name').Value;
                MemPool['province_id'] := dataItem.GetValue('province_id').Value;
                MemPool['regencie_id'] := dataItem.GetValue('regencie_id').Value;
                MemPool.Post;
              end);
            end;
          end;

          TThread.Synchronize(nil, procedure
          begin
            DBGrid.FinishLoadingStatus;
          end);

        finally
          jsonValue.Free;
        end;

      finally
        gNet.Free;
        ssl.Free;
      end;

    except
      on E: Exception do
        begin
          ShowMessage('Terjadi kesalahan: ' + E.Message);
        end;
    end;
end;
//procedure TFDataPool.GetApiPool;
//var
//  key,url,s,BaseUrl,Vpath,Vtoken,str : string;
//  vBody,vBody2  : string;
//  jumdata : Real;
//  xxx: Integer;
//  cnt: Integer;
//  iii: Integer;
//  sss, row, row1, row2: String;
//  res: String;
//  date : TDate;
//  max,min : Integer;
//        //component
//      gNet          :TIdHTTP;
//      //respon component
//      httpresult    : TIdHTTP ;
//      resp: TMemoryStream;
//begin
//  try
//  //BaseUrl:=edBaseURL.Text;
//  BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurlchakra''');
//  key:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''keyapichakra''');
//  vtoken:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''tokenapichakra''');
//  vBody:='';
//  Vpath:='/api/get-pool';
//  url:= BaseUrl+Vpath;
//    try
//    ShowMessage('test');
//    gNet :=  TIdHTTP.Create(nil);
//    gNet.Request.Accept := 'application/json';
//    gNet.Request.CustomHeaders.Values[key] := Vtoken;
//    gNet.Request.ContentType := 'application/x-www-form-urlencoded';
//    UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url);
//    UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url);
//
//    ShowMessage('test');
//
//    //Response := NetHTTPClient1.Get(URL).ContentAsString(TEncoding.UTF8);
//    res:=  gNet.get(url);
//    jumdata:=1;
//    memo1.text := res;
//    ShowMessage('test');
//    exit;
//
//    except
//   on E: EIdHTTPProtocolException do
//   if Application.MessageBox('Maaf, Data Tidak Ditemukan ...','confirm',MB_OK or mb_iconquestion)=id_yes then
//   begin
//     jumdata:=0;
//     gNet.free;
//     resp.Free;
//     //exit;
//   end;
//   on E: Exception do
//   //ShowMessage('A non-Indy related exception has been raised!');
//      ShowMessage('Error: ' + E.Message);
//   //ShowMessage('Koneksi Terputuus');
//   end;
//  finally
//    gNet.free;
//    resp.Free;
//  end;
//
//  if jumdata=0 then
//  begin
//    //Showmessage('Data Terbaru Tidak Ditemukan');}
//    exit;
//  end;
//
//  //MOVE JSON
//  json.JSONText := memo1.text;
//  cnt := json.TreeCount['data'];
//
//  if cnt = 0 then
//  begin
//    Showmessage('Data Tidak Ditemukan');
//    exit;
//  end;
//
//
//  MemPool.active:=false;
//  MemPool.active:=true;
//  MemPool.EmptyTable;
//
//  DBGrid.StartLoadingStatus();
//  try
//  xxx := 0;
//  for iii := 0 to cnt - 1 do
//  begin
//    inc(xxx);
//    row1 := format('data/%d/', [iii]);
//    MemPool.insert;
//    MemPool['code']:=json.StringTree[row1 + 'code'];
//    MemPool['name']:=json.StringTree[row1 + 'name'];
//    MemPool['province_id']:=json.StringTree[row1 + 'province_id'];
//    MemPool['regencie_id']:=json.StringTree[row1 + 'regencie_id'];
//    MemPool.post;
//  end;
//    //MemMasterData.active:=false;
//    //MemMasterData.active:=true;
//  finally
//  DBGrid.FinishLoadingStatus();
//  end;
//end;

end.
