unit UDataProspekPelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, RzButton,
  Vcl.Mask, RzEdit, RzBtnEdt, Vcl.StdCtrls, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, System.JSON, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uJSON,
  Vcl.Samples.Gauges;

type
  TFDataProspekPelanggan = class(TForm)
    DBGridCustomer: TDBGridEh;
    pnlFilter: TPanel;
    GBType1: TGroupBox;
    Label24: TLabel;
    Label23: TLabel;
    Ednamawilayah: TEdit;
    Edkodewilayah: TRzButtonEdit;
    dsMasterData: TDataSource;
    MemMasterData: TMemTableEh;
    IdHTTP1: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    GBType2: TGroupBox;
    Memo1: TMemo;
    MemMasterDatakd_prospek: TStringField;
    MemMasterDatanama_pelanggan: TStringField;
    MemMasterDatakd_wilayah: TStringField;
    MemMasterDatanama_wilayah: TStringField;
    MemMasterDataalamat: TStringField;
    MemMasterDataidprospek: TStringField;
    Panel1: TPanel;
    progress: TGauge;
    Edit1: TEdit;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    procedure btTampilkanClick(Sender: TObject);
    procedure btGetDataProspekClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridCustomerDblClick(Sender: TObject);
    procedure EdkodewilayahButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataProspekPelanggan: TFDataProspekPelanggan;
  json: TMyJSON;

implementation

{$R *.dfm}

uses ulkJSON, UMy_Function, UDataModule, UMainMenu, UHomeLogin, UNew_Pelanggan,
  UMasterWilayah;

procedure TFDataProspekPelanggan.btTampilkanClick(Sender: TObject);
var
  max,min : Integer;
begin
  DBGridcustomer.StartLoadingStatus();
  try
    btGetDataProspekClick(Sender);
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' SELECT outlet_code, outlet_name, distribution_code, '''' as region, '+
              ' address,idprospek FROM "t_customer_prospect_tmp" '+
              ' where created_by='+QuotedStr(FHomeLogin.Eduser.Text)+'');
        if Length(Edkodewilayah.Text)<>0 then
        begin
          sql.add(' AND distribution_code='+QuotedStr(Edkodewilayah.Text)+' ');
        end;
      sql.add(' ORDER BY outlet_name Desc ');
      open;
    end;

    MemMasterData.active:=false;
    MemMasterData.active:=true;
    MemMasterData.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      Showmessage('Maaf, Data Tidak Ditemukan..');
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
      max:= Dm.Qtemp.RecordCount;
      progress.Progress:=0;
      progress.MaxValue:= max;
      Dm.Qtemp.first;
      while not Dm.Qtemp.Eof do
      begin
        MemMasterData.insert;
        MemMasterData['kd_prospek']:=Dm.Qtemp.fieldbyname('outlet_code').value;
        MemMasterData['nama_pelanggan']:=Dm.Qtemp.fieldbyname('outlet_name').value;
        MemMasterData['kd_wilayah']:=Dm.Qtemp.fieldbyname('distribution_code').value;
        MemMasterData['nama_wilayah']:=Dm.Qtemp.fieldbyname('region').value;
        MemMasterData['alamat']:=Dm.Qtemp.fieldbyname('address').value;
        MemMasterData['idprospek']:=Dm.Qtemp.fieldbyname('idprospek').value;
        MemMasterData.post;
        progress.Progress:= progress.Progress+1;
        Dm.Qtemp.next;
      end;
    end;
    finally
    DBGridcustomer.FinishLoadingStatus();
  end;
end;

procedure TFDataProspekPelanggan.DBGridCustomerDblClick(Sender: TObject);
begin
  if MemMasterData.RecordCount<>0  then
  begin
    FNew_Pelanggan.Clear;
    FNew_Pelanggan.Autocode;
    FNew_Pelanggan.Edkode.Enabled:=true;
    FNew_Pelanggan.Autocode_AkPiutang;
    FNew_Pelanggan.Autocode_AkPiutangLain;
    with Dm.Qtemp do
    begin
       close;
       sql.Clear;
       sql.Text:=' select * from t_customer_prospect_tmp a '+
                 ' WHERE idprospek='+QuotedSTr(MemMasterData['idprospek'])+' '+
                 ' AND deleted_at is null  '+
                 ' AND created_by='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                 ' order by created_at Desc ';
       open;
    end;
    if Dm.Qtemp.RecordCount=0 then
    begin
      ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
      exit;
    end;

    if (Dm.Qtemp.FieldByName('wilayah_code').AsString<>'0') OR (Dm.Qtemp.FieldByName('wilayah_code').AsString<>'') then
    begin
      with FNew_Pelanggan do
      begin
        if Dm.Qtemp.FieldByName('outlet_name').AsString<>'' then
        begin
          Ednama.Text:=Dm.Qtemp.FieldByName('outlet_name').AsString;
          Ednama.ReadOnly:=True;
        end else begin
          Ednama.Text:='';
          Ednama.ReadOnly:=False;
        end;
        Edemail.Text:='';
        Edtempo.Text:='30';
        Ednamapkp.Text:=Dm.Qtemp.FieldByName('outlet_owner').AsString;
        Ednpwp.Text:=Dm.Qtemp.FieldByName('no_npwp').AsString;
        if (Dm.Qtemp.FieldByName('no_ktp').AsString<>'0') AND (Dm.Qtemp.FieldByName('no_ktp').AsString<>'') then
        begin
          Ednik.Text:=Dm.Qtemp.FieldByName('no_ktp').AsString;
          Ednik.ReadOnly:=True;
        end else begin
          Ednik.Text:='';
          Ednik.ReadOnly:=False;
        end;
        Ednomorva.Text:='0';
        if (Dm.Qtemp.FieldByName('wilayah_code').AsString<>'0') AND (Dm.Qtemp.FieldByName('wilayah_code').AsString<>'') then
        begin
          Edkodewilayah.Text:=Dm.Qtemp.FieldByName('wilayah_code').AsString;
          Ednamawilayah.Text:=Dm.Qtemp.FieldByName('wilayah_name').AsString;
          Edkodewilayah.ReadOnly:=True;
          Ednamawilayah.ReadOnly:=True;
        end else begin
          Edkodewilayah.Text:='';
          Ednamawilayah.ReadOnly:=False;
          Edkodewilayah.ReadOnly:=False;
          Ednamawilayah.ReadOnly:=False;
        end;

        Edkodepos.Text:='00000';
        if (Dm.Qtemp.FieldByName('jenis_pelanggan_code').AsString<>'0') AND (Dm.Qtemp.FieldByName('jenis_pelanggan_code').AsString<>'') then
        begin
          edKode_jnispel.Text:=Dm.Qtemp.FieldByName('jenis_pelanggan_code').AsString;
          edJenisPelanggan.Text:=Dm.Qtemp.FieldByName('jenis_pelanggan_name').AsString;
          edKode_jnispel.ReadOnly:=True;
          edJenisPelanggan.ReadOnly:=True;
        end else begin
          edKode_jnispel.Text:='';
          edJenisPelanggan.Text:='';
          edKode_jnispel.ReadOnly:=False;
          edJenisPelanggan.ReadOnly:=False;
        end;
        if (Dm.Qtemp.FieldByName('jenis_usaha_code').AsString<>'0') AND (Dm.Qtemp.FieldByName('jenis_usaha_code').AsString<>'') then
        begin
          edKode_JenisUsaha.Text:=Dm.Qtemp.FieldByName('jenis_usaha_code').AsString;
          edJenisUsaha.Text:=Dm.Qtemp.FieldByName('jenis_usaha_name').AsString;
          edKode_JenisUsaha.ReadOnly:=True;
          edJenisUsaha.ReadOnly:=True;
        end else begin
          edKode_JenisUsaha.Text:='';
          edJenisUsaha.Text:='';
          edKode_JenisUsaha.ReadOnly:=False;
          edJenisUsaha.ReadOnly:=False;
        end;
        if (Dm.Qtemp.FieldByName('kategori_pelanggan_code').AsString<>'0') AND (Dm.Qtemp.FieldByName('kategori_pelanggan_code').AsString<>'') then
        begin
          edKode_typejual.Text:=Dm.Qtemp.FieldByName('kategori_pelanggan_code').AsString;
          edTypePenjualan.Text:=Dm.Qtemp.FieldByName('kategori_pelanggan_name').AsString;
          edKode_typejual.ReadOnly:=True;
          edTypePenjualan.ReadOnly:=True;
        end else begin
          edKode_typejual.Text:='';
          edTypePenjualan.Text:='';
          edKode_typejual.ReadOnly:=False;
          edTypePenjualan.ReadOnly:=False;
        end;
        if (Dm.Qtemp.FieldByName('customer_group_code').AsString<>'0') AND (Dm.Qtemp.FieldByName('customer_group_code').AsString<>'') then
        begin
          edKode_gol.Text:=Dm.Qtemp.FieldByName('customer_group_code').AsString;
          edGolonganPelanggan.Text:=Dm.Qtemp.FieldByName('customer_group_name').AsString;
          edKode_gol.ReadOnly:=True;
          edGolonganPelanggan.ReadOnly:=True;
        end else begin
          edKode_gol.Text:='';
          edGolonganPelanggan.Text:='';
          edKode_gol.ReadOnly:=False;
          edGolonganPelanggan.ReadOnly:=False;
        end;
        vid_prospek:=MemMasterData['idprospek'];
        if (Dm.Qtemp.FieldByName('no_npwp').AsString='0') AND (Dm.Qtemp.FieldByName('no_npwp').AsString='') then
        begin
          cbpkp.Checked:=false;
        end else begin
          cbpkp.Checked:=true;
        end;
      end;
    end;
    FNew_Pelanggan.Edkode.Enabled:=false;
    FNew_Pelanggan.ShowModal;
    Status:=0;
    Close;
  end;
end;

procedure TFDataProspekPelanggan.EdkodewilayahButtonClick(Sender: TObject);
begin
  FMasterWilayah.vcall:='m_prospek';
  FMasterWilayah.Showmodal;
end;

procedure TFDataProspekPelanggan.FormShow(Sender: TObject);
begin
  json := TMyJSON.Create(Self);
end;

procedure TFDataProspekPelanggan.btGetDataProspekClick(Sender: TObject);
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
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:=' Delete from t_customer_prospect_tmp where created_by='+QuotedStr(FHomeLogin.Eduser.Text)+' ';
    ExecSQL ;
  end;

  //BaseUrl:=edBaseURL.Text;
  BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurlprospek''');
  key:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''keyapiprospek''');
  vtoken:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''tokenapiprospek''');
  vBody:='?sbu_code='+FHomeLogin.vKodePRSH;
  Vpath:='outlet/prospek';
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
 ShowMessage('A non-Indy related exception has been raised!');
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

  max:= cnt;
  progress.Progress:=0;
  progress.MaxValue:= max;

  xxx := 0;
  for iii := 0 to cnt - 1 do
  begin
    inc(xxx);

    row1 := format('data/%d/', [iii]);
    //ShowMessage(json.StringTree[row1 + 'outlet_code']);
    with dm.Qtemp1 do
    begin
    Close;
    sql.Clear;
    sql.Text:=' insert into t_customer_prospect_tmp(code_details_address,created_by,outlet_code,idprospek,'+
              ' distribution_code,outlet_name,'+
              ' outlet_owner,no_npwp,no_telp,address,longitude,'+
              ' latitude,no_ktp,group_outlet,no_hp,wilayah_code,wilayah_name,'+
              'customer_group_code,customer_group_name,jenis_usaha_code,jenis_usaha_name,'+
              'jenis_pelanggan_code,jenis_pelanggan_name,kategori_pelanggan_code,kategori_pelanggan_name) values ('+
              ' '+QuotedStr(SelectRow('SELECT code from t_customer_details ORDER BY code asc limit 1'))+', '+
              ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'outlet_code'])+', '+ //kodedso
              ' '+QuotedStr(json.StringTree[row1 + 'idProspek'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'kode_distribusi'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'outlet_name'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'outlet_pemilik'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'noNPWP'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'no_telp'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'outlet_alamat'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'outlet_longitude'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'outlet_latitude'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'noKTP'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'golongan'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'no_hp'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'wilayah_code'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'wilayah_name'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'customer_group_code'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'customer_group_name'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'jenis_usaha_code'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'jenis_usaha_name'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'jenis_pelanggan_code'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'jenis_pelanggan_name'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'kategori_pelanggan_code'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'kategori_pelanggan_name'])+');';

    ExecSQL ;
    end;
    progress.Progress:= progress.Progress+1;
    //showmessage(json.StringTree[row1 + 'outlet_name']);
    //memo1.text:='';
    //memo1.text:=json.value[row1 + 'ORDER_DATE'];
  end;
end;


end.
