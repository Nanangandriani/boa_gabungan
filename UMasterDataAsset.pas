unit UMasterDataAsset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  MemTableDataEh, Db, MemTableEh, IdTCPConnection, IdTCPClient, IdHTTP,
  IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket,
  IdSSLOpenSSL, RzPanel, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  uJSON, StdCtrls, ExtCtrls, IdIOHandlerStack, IdSSL;

type
  TFMasterDataAsset = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edPath: TEdit;
    edKeyToken: TEdit;
    edBaseURL: TEdit;
    Memo1: TMemo;
    edValueToken: TEdit;
    DBGrid: TDBGridEh;
    RzPanel1: TRzPanel;
    http: TIdHTTP;
    dsMasterData: TDataSource;
    MemMasterData: TMemTableEh;
    MemMasterDataKODE_MASTER: TStringField;
    MemMasterDataNAMA_MASTER: TStringField;
    MemMasterDataUUID_MASTER: TStringField;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall,kode,nama,uuid,namamaster : string;
  end;

var
  FMasterDataAsset: TFMasterDataAsset;
  json: TMyJSON;

implementation

uses ulkJSON, UMainMenu, UMy_Function, UDetailPengajuanAsset,
  UPengajuanAsset;

{$R *.dfm}

procedure TFMasterDataAsset.FormShow(Sender: TObject);
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
  json := TMyJSON.Create(Self);
  resp := TMemoryStream.Create;
  Memo1.Text:='';
  try
  BaseUrl:=SelectRow('SELECT value_parameter FROM t_parameter where key_parameter=''baseurlasset''');
  Vpath:='api';
  vBody:='/'+namamaster;
  key:=SelectRow('SELECT value_parameter FROM t_parameter where key_parameter=''keyapiasset''');
  vtoken:=SelectRow('SELECT value_parameter FROM t_parameter where key_parameter=''tokenapiasset''');
  //showmessage(BaseUrl+Vpath+vBody);
  url:= BaseUrl+Vpath+vBody;
  try
  gNet :=  TIdHTTP.Create(nil);
  gNet.Request.Accept := 'application/json';
  gNet.Request.CustomHeaders.Values[key] := Vtoken;
  gNet.Request.ContentType := 'application/x-www-form-urlencoded';
  {if  gNet.get(url)) then
  begin
  Showmessage('Data Tidak Ditemukan');
  exit;
  end; }           
  memo1.text := url;    
      UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url);
      UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url);
  res:=  gNet.get(url);
  jumdata:=1;
  memo1.text := res;
  //showmessage('A');
  except
 on E: EIdHTTPProtocolException do
 //ShowMessage('Tidak Ditemukan Data ...');
 //if application.MessageBox('Tidak Ditemukan Data ...','confirm',mb_yesno or mb_iconquestion)=id_yes then
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

  //showmessage(floattostr(jumdata));
  //MOVE JSON
  json.JSONText := memo1.text;
  cnt := json.TreeCount['data'];
  //showmessage('B');

  if cnt < 1 then
  begin
  Showmessage('Data Tidak Ditemukan');
  exit;
  end;

  MemMasterData.EmptyTable;
  MemMasterData.active:=true;
  xxx := 0;

  for iii := 0 to cnt - 1 do
  begin
    inc(xxx);
    row1 := format('data/%d/', [iii]);

    MemMasterData.insert;
    MemMasterData['KODE_MASTER']:=json.StringTree[row1 + kode];
    MemMasterData['NAMA_MASTER']:=json.StringTree[row1 + nama];
    MemMasterData['UUID_MASTER']:=json.StringTree[row1 + uuid];
    MemMasterData.Post;

  end;
    MemMasterData.active:=false;
    MemMasterData.active:=true;
end;

procedure TFMasterDataAsset.DBGridDblClick(Sender: TObject);
begin
  if vcall='MasterKategori' then
  begin
    if not (FDetailPengajuanAsset.MemDetailAsset.state in[dsedit,dsinsert]) then
     FDetailPengajuanAsset.MemDetailAsset.edit;
     FDetailPengajuanAsset.KODE_KATEGORI:=MemMasterData['KODE_MASTER'];
     FDetailPengajuanAsset.MemDetailAsset['ID_KATEGORI']:=MemMasterData['UUID_MASTER'];
     FDetailPengajuanAsset.MemDetailAsset['NAMA_KATEGORI']:=MemMasterData['NAMA_MASTER'];
     FDetailPengajuanAsset.MemDetailAsset['ID_BARANG']:='0';
     FDetailPengajuanAsset.MemDetailAsset['NAMA_BARANG']:='0';
     FDetailPengajuanAsset.MemDetailAsset['ID_MERK']:='0';
     FDetailPengajuanAsset.MemDetailAsset['MERK']:='0';   
     FDetailPengajuanAsset.MemDetailAsset['ID_SATUAN']:='0';
     FDetailPengajuanAsset.MemDetailAsset['SATUAN']:='0';
     FDetailPengajuanAsset.MemDetailAsset.post;
     FDetailPengajuanAsset.MemDetailAsset.Active:=true;
     FMasterDataAsset.close;
  end; 
  
  if vcall='MasterBarang' then
  begin
    if not (FDetailPengajuanAsset.MemDetailAsset.state in[dsedit,dsinsert]) then
     FDetailPengajuanAsset.MemDetailAsset.edit;
     FDetailPengajuanAsset.KODE_KATEGORI:=MemMasterData['KODE_MASTER'];
     FDetailPengajuanAsset.MemDetailAsset['ID_BARANG']:=MemMasterData['UUID_MASTER'];
     FDetailPengajuanAsset.MemDetailAsset['NAMA_BARANG']:=MemMasterData['NAMA_MASTER'];
     FDetailPengajuanAsset.MemDetailAsset['ID_MERK']:='0';
     FDetailPengajuanAsset.MemDetailAsset['MERK']:='0';
     FDetailPengajuanAsset.MemDetailAsset['ID_SATUAN']:='0';
     FDetailPengajuanAsset.MemDetailAsset['SATUAN']:='0';
     FDetailPengajuanAsset.MemDetailAsset.post;
     FDetailPengajuanAsset.MemDetailAsset.Active:=true;
     FMasterDataAsset.close;
  end;
  
  if vcall='MasterMerk' then
  begin
    if not (FPengajuanAsset.MemMasterPengajuan.state in[dsedit,dsinsert]) then
     FPengajuanAsset.MemMasterPengajuan.edit;
     FPengajuanAsset.MemMasterPengajuan['BRAND']:=MemMasterData['KODE_MASTER'];
     FPengajuanAsset.MemMasterPengajuan['BRAND_NAME']:=MemMasterData['NAMA_MASTER'];
     FPengajuanAsset.MemMasterPengajuan.post;
     FPengajuanAsset.MemMasterPengajuan.Active:=true;
     FMasterDataAsset.close;
  end; 
  
  if vcall='MasterSatuan' then
  begin
    if not (FDetailPengajuanAsset.MemDetailAsset.state in[dsedit,dsinsert]) then
     FDetailPengajuanAsset.MemDetailAsset.edit;
     FDetailPengajuanAsset.KODE_KATEGORI:=MemMasterData['KODE_MASTER'];
     FDetailPengajuanAsset.MemDetailAsset['ID_SATUAN']:=MemMasterData['UUID_MASTER'];
     FDetailPengajuanAsset.MemDetailAsset['SATUAN']:=MemMasterData['NAMA_MASTER'];
     FDetailPengajuanAsset.MemDetailAsset.post;
     FDetailPengajuanAsset.MemDetailAsset.Active:=true;
     FMasterDataAsset.close;
  end;
end;

end.
