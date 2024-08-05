unit UListOrderTelemarketing;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.Mask, RzEdit, RzBtnEdt,
  Vcl.StdCtrls, Vcl.ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.Samples.Gauges, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, System.JSON, uJSON;

type
  TFListOrderTelemarketing = class(TForm)
    pnlFilter: TPanel;
    GBType1: TGroupBox;
    Label24: TLabel;
    Label23: TLabel;
    Ednamawilayah: TEdit;
    Edkodewilayah: TRzButtonEdit;
    Panel2: TPanel;
    Edautocode: TEdit;
    btTampilkan: TRzBitBtn;
    GBType2: TGroupBox;
    DBGrid: TDBGridEh;
    MemMasterData: TMemTableEh;
    dsMasterData: TDataSource;
    btGetDataProspek: TRzBitBtn;
    progress: TGauge;
    Memo1: TMemo;
    IdHTTP1: TIdHTTP;
    MemMasterDataticket_number: TStringField;
    MemMasterDataorder_date: TDateField;
    MemMasterDataoutlet_name: TStringField;
    MemMasterDatastatus_name: TStringField;
    procedure FormShow(Sender: TObject);
    procedure EdkodewilayahButtonClick(Sender: TObject);
    procedure btGetDataProspekClick(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListOrderTelemarketing: TFListOrderTelemarketing;
  json: TMyJSON;

implementation

{$R *.dfm}

uses ulkJSON, UMy_Function, UNew_SalesOrder, UMasterWilayah, UDataModule,
  UHomeLogin;

procedure TFListOrderTelemarketing.btGetDataProspekClick(Sender: TObject);
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
    sql.Text:=' Delete from "sale"."t_telemarketing_orders_tmp" where "created_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' ';
    ExecSQL ;
  end;

  //BaseUrl:=edBaseURL.Text;
  BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurltele''');
  key:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''keyapitele''');
  vtoken:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''tokenapitele''');
  vBody:='?sbu_code=MAB'+
         '&delivery_date='+formatdatetime('yyyy-mm-dd',FNew_SalesOrder.dtTanggal_Pesan.date)+''+
         '&residency=PKL';
  Vpath:='v1/monitoring/order';
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
    sql.Text:=' insert into "sale"."t_telemarketing_orders_tmp"("created_at", "created_by", "ticket_number", '+
              ' "order_date", "outlet_name", "status_name") values ('+
              ' NOW(), '+
              ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'ticket_number'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'order_date'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'outlet_name'])+', '+
              ' '+QuotedStr(json.StringTree[row1 + 'status_name'])+')';

    ExecSQL ;
    end;
    progress.Progress:= progress.Progress+1;
  end;
end;
procedure TFListOrderTelemarketing.btTampilkanClick(Sender: TObject);
var
  max,min : Integer;
begin
  DBGrid.StartLoadingStatus();
  try
  btGetDataProspekClick(Sender);
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT "ticket_number", "order_date", "outlet_name", "status_name" '+
            ' FROM "sale"."t_telemarketing_orders_tmp" '+
            ' where "created_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'');
      if Length(Edkodewilayah.Text)<>0 then
      begin
        sql.add(' AND "distribution_code"='+QuotedStr(Edkodewilayah.Text)+' ');
      end;
    sql.add(' ORDER BY "outlet_name" Desc ');
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
     MemMasterData['ticket_number']:=Dm.Qtemp.fieldbyname('ticket_number').value;
     MemMasterData['order_date']:=Dm.Qtemp.fieldbyname('order_date').value;
     MemMasterData['outlet_name']:=Dm.Qtemp.fieldbyname('outlet_name').value;
     MemMasterData['status_name']:=Dm.Qtemp.fieldbyname('status_name').value;
     MemMasterData.post;
     progress.Progress:= progress.Progress+1;
     Dm.Qtemp.next;
    end;
    end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListOrderTelemarketing.EdkodewilayahButtonClick(Sender: TObject);
begin
  FMasterWilayah.vcall:='m_telemarketing';
  FMasterWilayah.Showmodal;
end;

procedure TFListOrderTelemarketing.FormShow(Sender: TObject);
begin
  json := TMyJSON.Create(Self);
  if Length(FNew_SalesOrder.edNama_Pelanggan.Text)=0 then
  begin
    pnlFilter.Visible:=true;
  end;
  if Length(FNew_SalesOrder.edNama_Pelanggan.Text)<>0 then
  begin
    pnlFilter.Visible:=false;
    GBType1.Visible:=true;
    GBType2.Visible:=false;
  end;
end;

end.
