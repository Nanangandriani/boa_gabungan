unit UDaftarKendaraan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableEh, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, uJSON, Vcl.StdCtrls,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  System.JSON;

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
    MemMasterDatasort_number: TStringField;
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    vcall : string;
    { Public declarations }
    procedure GetDataViaAPI;
    procedure GetDataViaAPI2;
    procedure GetDataVehicleDO;
    procedure GetDataKelompok;
  end;

var
  FDaftarKendaraan: TFDaftarKendaraan;
  json: TMyJSON;

implementation

{$R *.dfm}

uses ulkJSON, UDataModule, UHomeLogin, UMy_Function, UNewDeliveryOrder,
  UDataPerintahMuat, UNew_SalesOrder, UMainMenu;

procedure TFDaftarKendaraan.GetDataKelompok;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT DISTINCT vehicle_group_id,type_vehicles_code,type_vehicles_name,capacity '+
              'FROM t_sales_order a '+
              'WHERE vehicle_group_id IS NOT NULL AND '+
              'vehicle_group_id NOT IN (SELECT vehicle_group_id FROM t_delivery_order_load '+
              'WHERE vehicle_group_id IS NOT NULL ) ;';
    open;
  end;
  MemMasterData.active:=false;
  MemMasterData.active:=true;
  MemMasterData.EmptyTable;
  dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    MemMasterData.insert;
    MemMasterData['code']:=dm.Qtemp.FieldValues['vehicle_group_id'];
    MemMasterData['plate_number']:='';
    MemMasterData['type']:=dm.Qtemp.FieldValues['type_vehicles_code'];;
    MemMasterData['type_name']:=dm.Qtemp.FieldValues['type_vehicles_name'];;
    MemMasterData['capacity']:=dm.Qtemp.FieldValues['capacity'];;
    MemMasterData.post;
    dm.Qtemp.Next;
  end;
end;

procedure TFDaftarKendaraan.GetDataVehicleDO;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select DISTINCT a.vehicles,a.type_vehicles_code,a.type_vehicles_name,a.capacity '+
              'from t_delivery_order_services a '+
//              'LEFT JOIN t_delivery_order b on b.notrans=a.notrans and b.deleted_at IS NULL '+
              'where a.notrans NOT IN '+
              '(select DISTINCT a.notrans_do from t_spm_det a left join t_spm b on '+
              'b.notrans=a.notrans where b.deleted_at is null) '+
              'AND a.vendor_code='+QuotedStr(FDataPerintahMuat.edKode_Vendor_Kend.Text)+'  AND a.vehicles<>'''' AND a.vehicles is NOT NULL ';
    open;
  end;
  MemMasterData.active:=false;
  MemMasterData.active:=true;
  MemMasterData.EmptyTable;
  dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    MemMasterData.insert;
    MemMasterData['code']:=dm.Qtemp.FieldValues['vehicles'];
    MemMasterData['plate_number']:='';
    MemMasterData['type']:=dm.Qtemp.FieldValues['type_vehicles_code'];;
    MemMasterData['type_name']:=dm.Qtemp.FieldValues['type_vehicles_name'];;
    MemMasterData['capacity']:=dm.Qtemp.FieldValues['capacity'];;
    MemMasterData.post;
    dm.Qtemp.Next;
  end;
end;

procedure TFDaftarKendaraan.DBGridDblClick(Sender: TObject);
begin
  if vcall='delivery_order' then
  begin
//    FNewDeliveryOrder.edNoKendMuatan.Text:=MemMasterData['code'];
    FNewDeliveryOrder.edNamaJenisKendMuatan.Text:=MemMasterData['type_name'];
    FNewDeliveryOrder.edKodeJenisKendMuatan.Text:=MemMasterData['type'];
    FNewDeliveryOrder.spKapasitas.value:=MemMasterData['capacity'];
  end;
  if vcall='perintah_muat' then
  begin
    FDataPerintahMuat.edNoKendMuatan.Text:=MemMasterData['code'];
  end;
  if vcall='sales_order' then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select DISTINCT sent_date from t_sales_order where vehicle_group_id='+QuotedStr(MemMasterData['code'])+' AND deleted_at is NULL';
      open;
    end;

    if (dm.Qtemp.RecordCount>0) AND (FormatDateTime('dd-mm-yyyy',dm.Qtemp.FieldValues['sent_date'])<>FormatDateTime('dd-mm-yyyy',FNew_SalesOrder.dtTanggal_Kirim.Date)) then
    begin
      MessageDlg('Kelompok Kendaraan sudah ada Order dengan Pengiriman Tanggal '+FormatDateTime('dd-mm-yyyy',dm.Qtemp.FieldValues['sent_date'])+' ..!!',mtInformation,[mbRetry],0);
    end else begin

      FNew_SalesOrder.strVehicleGroupId:=MemMasterData['code'];
      FNew_SalesOrder.edKelompokKendaraan.Text :=MemMasterData['sort_number'];
      FNew_SalesOrder.edTypeKendaraan.Text:=MemMasterData['type_name'];
      FNew_SalesOrder.edKodeTypeKendaraan.Text:=MemMasterData['type'];
      FNew_SalesOrder.edKapasitas.Text :=MemMasterData['capacity'];
      FNew_SalesOrder.edKendaraan.Text :=MemMasterData['plate_number'];
      FDaftarKendaraan.Close;
      FDaftarKendaraan.MemMasterData.EmptyTable;
    end;
//    FNew_SalesOrder.edKapasitas.DisplayFormat:='#,###';
  end;

end;

procedure TFDaftarKendaraan.FormShow(Sender: TObject);
begin
  json := TMyJSON.Create(Self);
  if vcall='perintah_muat' then
  begin
    DBGrid.Columns[0].Visible:=True;
    DBGrid.Columns[1].Visible:=False;
  end else
  begin
    DBGrid.Columns[0].Visible:=True;
    DBGrid.Columns[1].Visible:=True;
  end;
  DBGrid.SearchPanel.SearchingText:='';
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
      // Ambil parameter API dari DB
      BaseUrl := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''baseurl_m_kend''');
      key     := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''keyapichakra''');
      vtoken  := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''tokenapichakra''');

      Vpath := '/api/get-vehicle?sbu_code='+FHomeLogin.vKodePRSH;
//      Vpath := '/api/get-vehicle';
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
          Memo1.Text := res; // tampilkan hasil raw JSON
        except
          on E: Exception do
          begin
            ShowMessage('HTTP Error: ' + E.Message);
            Exit;
          end;
        end;

        // Parsing JSON
        jsonValue := TJSONObject.ParseJSONValue(res);
        try
          if jsonValue = nil then
          begin
            ShowMessage('Format JSON tidak valid');
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
            ShowMessage('Format JSON tidak dikenali');
            Exit;
          end;

          if not Assigned(jsonArray) then
          begin
            ShowMessage('Data tidak ditemukan di JSON');
            Exit;
          end;

          // Kosongkan MemMasterData sebelum insert
          begin
            MemMasterData.Active := False;
            MemMasterData.Active := True;
            MemMasterData.EmptyTable;
            DBGrid.StartLoadingStatus;
          end;


          // Loop data array
          for i := 0 to jsonArray.Count - 1 do
          begin
            if jsonArray.Items[i] is TJSONObject then
            begin
              dataItem := jsonArray.Items[i] as TJSONObject;
              begin
                MemMasterData.Insert;
                MemMasterData['code']        := dataItem.GetValue('code').Value;
                MemMasterData['sort_number']        := dataItem.GetValue('sort_number').Value;
                MemMasterData['plate_number']:= dataItem.GetValue('plate_number').Value;
                MemMasterData['type']        := dataItem.GetValue('type').Value;
                MemMasterData['type_name']   := dataItem.GetValue('type_name').Value;
                MemMasterData['capacity']    := dataItem.GetValue('capacity').Value;
                MemMasterData.Post;
              end
            end;
          end;

          DBGrid.FinishLoadingStatus;


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

//procedure TFDaftarKendaraan.GetDataViaAPI;
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
//  BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurl_m_kend''');
//  key:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''keyapichakra''');
//  vtoken:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''tokenapichakra''');
//  vBody:='';
//  Vpath:='/api/get-vehicle';
//  url:= BaseUrl+Vpath;
//    try
//    gNet :=  TIdHTTP.Create(nil);
//    gNet.Request.Accept := 'application/json';
//    gNet.Request.CustomHeaders.Values[key] := Vtoken;
//    gNet.Request.ContentType := 'application/x-www-form-urlencoded';
//    UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url);
//    UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url);
//    //Response := NetHTTPClient1.Get(URL).ContentAsString(TEncoding.UTF8);
//    res:=  gNet.get(url);
//    jumdata:=1;
//    memo1.text := res;
//    except
//   on E: EIdHTTPProtocolException do
//   if Application.MessageBox('Maaf, Data Tidak Ditemukan ...','confirm',MB_OK or mb_iconquestion)=id_yes then
//   begin
//   jumdata:=0;
//   gNet.free;
//   resp.Free;
//   //exit;
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
//  //Showmessage('Data Terbaru Tidak Ditemukan');}
//  exit;
//  end;
//
//  //MOVE JSON
//  json.JSONText := memo1.text;
//  cnt := json.TreeCount['data'];
//
//  if cnt = 0 then
//  begin
//  Showmessage('Data Tidak Ditemukan');
//  exit;
//  end;
//
//
//  MemMasterData.active:=false;
//  MemMasterData.active:=true;
//  MemMasterData.EmptyTable;
//
//  DBGrid.StartLoadingStatus();
//  try
//  xxx := 0;
//  for iii := 0 to cnt - 1 do
//  begin
//    inc(xxx);
//    row1 := format('data/%d/', [iii]);
////    ShowMessage(json.StringTree[row1 + 'code']);
//     MemMasterData.insert;
//     MemMasterData['code']:=json.StringTree[row1 + 'code'];
//     MemMasterData['plate_number']:=json.StringTree[row1 + 'plate_number'];
//     MemMasterData['type']:=json.StringTree[row1 + 'type'];
//     MemMasterData['type_name']:=json.StringTree[row1 + 'type_name'];
//     MemMasterData['capacity']:=json.StringTree[row1 + 'capacity'];
//     MemMasterData.post;
//  end;
//    //MemMasterData.active:=false;
//    //MemMasterData.active:=true;
//  finally
//  DBGrid.FinishLoadingStatus();
//  end;
//end;

end.
