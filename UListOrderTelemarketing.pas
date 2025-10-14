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
    Label23: TLabel;
    edKodeKaresidenan: TEdit;
    Panel2: TPanel;
    Edautocode: TEdit;
    btTampilkan: TRzBitBtn;
    MemMasterData: TMemTableEh;
    dsMasterData: TDataSource;
    btGetDataProspek: TRzBitBtn;
    progress: TGauge;
    IdHTTP1: TIdHTTP;
    MemMasterDataticket_number: TStringField;
    MemMasterDataorder_date: TDateField;
    MemMasterDataoutlet_name: TStringField;
    MemMasterDatastatus_name: TStringField;
    Memo1: TMemo;
    DBGrid: TDBGridEh;
    MemMasterDataoutlet_code: TStringField;
    edKaresidenan: TRzButtonEdit;
    edlink: TEdit;
    MemMasterDatapayment_term: TSmallintField;
    procedure FormShow(Sender: TObject);
    procedure edKaresidenanButtonClick(Sender: TObject);
    procedure btGetDataProspekClick(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetDetail;
  public
    { Public declarations }
  end;

var
  FListOrderTelemarketing: TFListOrderTelemarketing;
  json: TMyJSON;

implementation

{$R *.dfm}

uses ulkJSON, UMy_Function, UNew_SalesOrder, UMasterWilayah, UDataModule,
  UHomeLogin, UMasterData;

procedure TFListOrderTelemarketing.GetDetail;
var
  key,url,s,BaseUrl,Vpath,Vtoken,str,strUniName : string;
  vBody,vBody2  : string;
  jumdata : Real;
  xxx: Integer;
  cnt,cnt2: Integer;
  iii,iiii: Integer;
  sss, row, row1, row2: String;
  res: String;
  date: TDate;
  max,min: Integer;
        //component
  gNet:TIdHTTP;
  //respon component
  httpresult: TIdHTTP ;
  resp: TMemoryStream;
begin
  try

  //BaseUrl:=edBaseURL.Text;
  BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurltele''');
  key:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''keyapitele''');
  vtoken:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''tokenapitele''');
  vBody:='?ticket_number='+MemMasterData['ticket_number'];
//         '&order_date='+formatdatetime('yyyy-mm-dd',FNew_SalesOrder.dtTanggal_Pesan.date)+' ';
//'&order_date=2024-12-02';
  Vpath:='/detail-order';
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
 end;
 on E: Exception do
 ShowMessage('A non-Indy related exception has been raised!');
 end;
  finally
    gNet.free;
    resp.Free;
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
  FNew_SalesOrder.MemDetail.Active:=False;
  FNew_SalesOrder.MemDetail.Active:=True;
  FNew_SalesOrder.MemDetail.EmptyTable;
  xxx := 0;
  for iii := 0 to cnt - 1 do
  begin
    inc(xxx);

    row1 := format('data/%d/', [iii]);

    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select unit_name from t_unit where unit_code='+QuotedStr(json.StringTree[row1 + 'unit']);
      open;
    end;
    strUniName:=dm.Qtemp.FieldByName('unit_name').AsString;

    with dm.Qtemp2 do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='SELECT a.group_id,b.group_name FROM t_item a '+
                'left join t_item_group b on b.group_id=a.group_id '+
                'where a.item_code='+QuotedStr(json.StringTree[row1 + 'product_code']);
      Open;
    end;

    FNew_SalesOrder.MemDetail.insert;
    FNew_SalesOrder.MemDetail['KD_ITEM']:=json.StringTree[row1 + 'product_code'];
    FNew_SalesOrder.MemDetail['NM_ITEM']:=json.StringTree[row1 + 'product_name'];
    FNew_SalesOrder.MemDetail['JUMLAH']:=json.StringTree[row1 + 'qty'];
    FNew_SalesOrder.MemDetail['KD_SATUAN']:=json.StringTree[row1 + 'unit'];
    FNew_SalesOrder.MemDetail['NM_ SATUAN']:=strUniName;
    FNew_SalesOrder.MemDetail['CATEGORY_ID']:=dm.Qtemp2.FieldValues['group_id'];
    FNew_SalesOrder.MemDetail['CATEGORY_NAME']:=dm.Qtemp2.FieldValues['group_name'];
//    FNew_SalesOrder.MemDetail.post;
    progress.Progress:= progress.Progress+1;
  end;
end;

procedure TFListOrderTelemarketing.btGetDataProspekClick(Sender: TObject);
var
  key,url,s,BaseUrl,Vpath,Vtoken,str,strKodeKaresidenan : string;
  vBody,vBody2  : string;
  jumdata : Real;
  xxx: Integer;
  cnt,cnt2: Integer;
  iii,iiii: Integer;
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
    sql.Text:=' Delete from "public"."t_telemarketing_orders_tmp" where "created_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' ';
    ExecSQL ;
  end;
  if TRIM(EdKaresidenan.Text)<>'' then
    strKodeKaresidenan:='&residency='+edKodeKaresidenan.Text
  else strKodeKaresidenan:='';

  //BaseUrl:=edBaseURL.Text;
  BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurltele''');
  key:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''keyapitele''');
  vtoken:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''tokenapitele''');
  vBody:='?sbu_code='+FHomeLogin.vKodePRSH+''+
//         '&order_date='+formatdatetime('yyyy-mm-dd',FNew_SalesOrder.dtTanggal_Pesan.date)+' ';
'&order_date='+formatdatetime('yyyy-mm-dd',FNew_SalesOrder.dtTanggal_Pesan.date)+strKodeKaresidenan;
  Vpath:='/order';
  url:= BaseUrl+Vpath+vBody;
  edlink.Text:=url;
//  ShowMessage(url);
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
//    cnt2 := json.TreeCount['data/details'];
//    ShowMessage(IntToStr(cnt2));
//    for iiii := 0 to cnt2 - 1 do
//    begin
//      row2 := format('data/%d/', [iii])+format('details/%d/', [iii])+'product_code';
//    end;

    //cnt2 := json.TreeCount['data/details'];
    row1 := format('data/%d/', [iii]);
//    row2 := format('data/details/%d/', [iii]);
    //ShowMessage(IntToStr(cnt2));
//    ShowMessage(json.StringTree[row1 + 'product_code']);

    with dm.Qtemp1 do
    begin
      Close;
      sql.Clear;
      sql.Text:=' insert into "public"."t_telemarketing_orders_tmp"("created_at", "created_by", "ticket_number", '+
                ' "order_date", "outlet_name", "status_name",outlet_code) values ('+
                ' NOW(), '+
                ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
                ' '+QuotedStr(json.StringTree[row1 + 'ticket_number'])+', '+
                ' '+QuotedStr(json.StringTree[row1 + 'order_date'])+', '+
                ' '+QuotedStr(json.StringTree[row1 + 'outlet_name'])+', '+
                ' '+QuotedStr(json.StringTree[row1 + 'status_name'])+', '+
                ' '+QuotedStr(json.StringTree[row1 + 'outlet_code'])+')';

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
    sql.add(' SELECT a.ticket_number, a.order_date, a.outlet_name, a.status_name,a.outlet_code, b.payment_term '+
            ' FROM t_telemarketing_orders_tmp a LEFT JOIN t_customer b on b.customer_code=a.outlet_code '+
            ' where a.created_by='+QuotedStr(FHomeLogin.Eduser.Text)+'');
//      if Length(Edkodewilayah.Text)<>0 then
//      begin
//        sql.add(' AND "distribution_code"='+QuotedStr(Edkodewilayah.Text)+' ');
//      end;
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
     MemMasterData['outlet_code']:=Dm.Qtemp.fieldbyname('outlet_code').value;
     MemMasterData['payment_term']:=Dm.Qtemp.fieldbyname('payment_term').value;
     MemMasterData.post;
     progress.Progress:= progress.Progress+1;
     Dm.Qtemp.next;
    end;
    end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListOrderTelemarketing.DBGridDblClick(Sender: TObject);
begin
  if FNew_SalesOrder.edNoReff.Text=MemMasterData['ticket_number'] then
  begin
    MessageDlg('Tiket '+MemMasterData['ticket_number']+'sudah dipilih..!!',mtInformation,[mbRetry],0);
  end else
  begin
    with dm.Qtemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM t_customer WHERE customer_code='+QuotedStr(MemMasterData['outlet_code']);
    end;

    if dm.Qtemp2.RecordCount=0 then
    begin
      MessageDlg('Pelanggan tidak ada di data pelanggan..!!',mtInformation,[mbRetry],0);
    end else
    begin
      with FNew_SalesOrder do
      begin
        edKode_Pelanggan.Text:=MemMasterData['outlet_code'];
        edNama_Pelanggan.Text:=MemMasterData['outlet_name'];
        edNoReff.Text:=MemMasterData['ticket_number'];
        spJatuhTempo.Text:=MemMasterData['payment_term'];
        if UpperCase(edNamaSumber.Text)='TELEMARKETING' then
        begin
          edKode_Pelanggan.ReadOnly:=true;
          edNama_Pelanggan.ReadOnly:=true;
          dtTanggal_Pesan.Enabled:=False;
        end;
      end;
      GetDetail;
      Close;
    end;
  end;

//  Showmessage(MemMasterData['ticket_number']);
end;

procedure TFListOrderTelemarketing.edKaresidenanButtonClick(Sender: TObject);
begin
//  FMasterWilayah.vcall:='m_telemarketing';
//  FMasterWilayah.Showmodal;
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='m_kares_telemarketing';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','');
  FMasterData.ShowModal;
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
//    GBType2.Visible:=false;
  end;
  edKaresidenan.Text:='';
  edKodeKaresidenan.Text:='';
end;

end.
