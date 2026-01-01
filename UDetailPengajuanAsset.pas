unit UDetailPengajuanAsset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  MemTableDataEh, Db, MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, StdCtrls, RzButton, ExtCtrls, IdTCPConnection, IdTCPClient,
  IdHTTP, IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket,
  IdSSLOpenSSL, uJSON, RzPanel, Mask, RzEdit, Gauges, IdIOHandlerStack, IdSSL;

type
  TFDetailPengajuanAsset = class(TForm)
    http: TIdHTTP;
    Panel2: TPanel;
    Memo1: TMemo;
    Panel1: TPanel;
    btBatal: TRzBitBtn;
    btProses: TRzBitBtn;
    dsDetailAsset: TDataSource;
    MemDetailAsset: TMemTableEh;
    Label11: TLabel;
    btRiject: TRzBitBtn;
    Label5: TLabel;
    dtAwal: TRzDateTimeEdit;
    btTampilkan: TRzBitBtn;
    Label1: TLabel;
    dtAkhir: TRzDateTimeEdit;
    DBGridEh3: TDBGridEh;
    MemDetailAssetSUBMISSION_ID: TStringField;
    MemDetailAssetSUBMISSION_DETAIL_ID: TStringField;
    MemDetailAssetSUBMISSION_CODE: TStringField;
    MemDetailAssetSUBMISSION_DATE: TDateField;
    MemDetailAssetITEM_NAME: TStringField;
    MemDetailAssetUNIT: TStringField;
    MemDetailAssetCATEGORY_NAME: TStringField;
    MemDetailAssetBRAND_NAME: TStringField;
    MemDetailAssetSUBMISSION_DESCRIPTION: TStringField;
    MemDetailAssetKODE_BARANG_BOA: TStringField;
    MemDetailAssetSPESIFICATION: TStringField;
    MemDetailAssetSTAT_APPRV: TBooleanField;
    ckTandai: TCheckBox;
    pnprogress: TPanel;
    Gauge1: TGauge;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    MemDetailAssetQTY: TFloatField;
    MemDetailAssetkode_barang: TStringField;

    procedure FormShow(Sender: TObject);
    procedure btProsesClick(Sender: TObject);
    procedure btBatalClick(Sender: TObject);
    procedure btRijectClick(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
    procedure DBGridEh3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh3Columns4CellButtons0Click(Sender: TObject;
      var Handled: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
    ID_PENGAJUAN,KODE_KATEGORI : String;
  end;

var
  FDetailPengajuanAsset: TFDetailPengajuanAsset;
  json: TMyJSON;

implementation

uses uLkJSON, UMainMenu, UMy_Function, UPengajuanAsset,
  UMasterDataAsset, UDataModule, UNew_PO, UCari_Barang2, UHomeLogin;//off 24-05-2025, UMasterPurchaseOrder, u_daf_barang;

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
   //baru 22-7-2025
  //ssl: TIdSSLIOHandlerSocketOpenSSL;
      //slParams : TStringStream;
begin     
      resp := TMemoryStream.Create;
      BaseUrl:=SelectRow('SELECT value_parameter FROM parameter where key_parameter=''baseurlasset''');
      key:=SelectRow('SELECT value_parameter FROM parameter where key_parameter=''keyapiasset''');
      vtoken:=SelectRow('SELECT value_parameter FROM parameter where key_parameter=''tokenapiasset''');
    // off 24  Vpath:='api/asset-submission/update';

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

procedure TFDetailPengajuanAsset.FormShow(Sender: TObject);
begin
  json := TMyJSON.Create(Self);
  dtAwal.date:=Now();
  dtAkhir.date:=Now();         
  MemDetailAsset.EmptyTable;
end;

procedure TFDetailPengajuanAsset.btProsesClick(Sender: TObject);
var
 rec : real;
begin     
    {MemDetailAsset.First;
    while not MemDetailAsset.Eof do
    begin
     if (((MemDetailAsset['KODE_BARANG_BOA']='0') or (MemDetailAsset['KODE_BARANG_BOA']='')) and ckTandai.Checked=false) then
     begin
       Showmessage('Silakan Pastikan Kembali Detail Pengajuan,Apakah Sudah Ditentukan Kode Barang BOA...?');
       Exit;
     end;
     MemDetailAsset.Next;
    end; }
  rec:=0;
  //ShowMessage(nm);
  if application.MessageBox('Apa Anda Yakin Akan Memproses Data Ini...?','confirm',mb_yesno or mb_iconquestion)=id_yes then
  begin       
    with dm.qtemp do
    begin
      close;
      sql.clear;
      sql.add(' Select * from tpengajuan_asset_temp where user_name='+Quotedstr(nm)+' ');
      open;
    end;
    if dm.qtemp.RecordCount<>0 then
    begin
      with dm.qtemp2 do
      begin
        close;
        sql.clear;
        sql.add(' delete from tpengajuan_asset_temp '+
                ' where user_name='+Quotedstr(nm)+' ');
        Execute;
      end;
    end;
    MemDetailAsset.First;
    while not MemDetailAsset.Eof do
    begin
      if ((MemDetailAsset['KODE_BARANG_BOA']<>'0') AND (MemDetailAsset['KODE_BARANG_BOA']<>'') and MemDetailAsset['STAT_APPRV']=true) then
      begin
      rec:=rec+1;
    {withdm.qtemp do
    begin
        close;
        sql.clear;
        sql.add(' Select * from tpengajuan_asset where id_detail IN ('+Quotedstr(MemDetailAsset['SUBMISSION_DETAIL_ID'])+') ');
        open;
    end;

    ifdm.qtemp.RecordCount<>0 then
    begin
      withdm.qtemp2 do
      begin
        close;
        sql.clear;
        sql.add(' delete from tpengajuan_asset '+
                ' where id_detail IN ('+Quotedstr(MemDetailAsset['SUBMISSION_DETAIL_ID'])+') ');
        Execute;
      end;
    end;

    with dm.qtemp do
    begin
     close;
     sql.clear;
     sql.add(' select itemproduct_code,itemProduct_name,itemProduct_hbeli,'+
             ' itemProduct_satuan from t_item_product where '+
             ' itemproduct_code='+QuotedStr(MemDetailAsset['KODE_BARANG_BOA'])+' ');
     open;
    end;

    withdm.qtemp2 do
    begin
    Close;
    sql.Clear;
    sql.Text:=' Insert Into tpengajuan_asset ( '+
              ' id_pengajuan, no_pengajuan, id_detail, nm_kategori, nm_barang, nm_merk, '+
              ' satuan, qty, spesifikasi, kode_barang_boa, status, keterangan ) values ('+
              ' '+QuotedStr(MemDetailAsset['SUBMISSION_ID'])+', '+
              ' '+QuotedStr(MemDetailAsset['SUBMISSION_CODE'])+', '+
              ' '+QuotedStr(MemDetailAsset['SUBMISSION_DETAIL_ID'])+', '+
              ' '+QuotedStr(MemDetailAsset['CATEGORY_NAME'])+', '+
              ' '+QuotedStr(MemDetailAsset['ITEM_NAME'])+', '+
              ' '+QuotedStr(MemDetailAsset['BRAND_NAME'])+', '+
              ' '+QuotedStr(MemDetailAsset['UNIT'])+', '+
              ' '+QuotedStr(MemDetailAsset['QTY'])+', '+
              ' '+QuotedStr(MemDetailAsset['SPESIFICATION'])+', '+
              ' '+QuotedStr(MemDetailAsset['KODE_BARANG_BOA'])+', '+
              ' '+QuotedStr('2')+', '+
              ' '+QuotedStr(MemDetailAsset['SUBMISSION_DESCRIPTION'])+')';
   ExecSQL ;
   end;
     //Isi Grid PO
     if not (FNew_PO.Memitempo.state in[dsedit,dsinsert]) then
     FNew_PO.Memitempo.insert;
     FNew_PO.Memitempo['kode']:=MemDetailAsset['KODE_BARANG_BOA'];
     FNew_PO.Memitempo['nama_barang']:=dm.qtemp.fieldbyname('itemProduct_name').value;
     FNew_PO.Memitempo['satuan']:=dm.qtemp.fieldbyname('itemProduct_satuan').value;
     FNew_PO.Memitempo['jumlah']:=MemDetailAsset['QTY'];
     FNew_PO.Memitempo['harga']:=dm.qtemp.fieldbyname('itemProduct_hbeli').value;
     FNew_PO.Memitempo['subtotal']:=dm.qtemp.fieldbyname('itemProduct_hbeli').value*MemDetailAsset['QTY'];
     FNew_PO.Memitempo['akun_pph']:='0';
     FNew_PO.Memitempo['nm_pph']:='0';
     FNew_PO.Memitempo['pph']:='0';
     FNew_PO.Memitempo['npph']:='0';
     FNew_PO.Memitempo['ppn']:='11';
     FNew_PO.Memitempo['nppn']:=dm.qtemp.fieldbyname('itemProduct_hbeli').value*11/100;
     FNew_PO.Memitempo['npembulatan']:='0';
     FNew_PO.Memitempo['grand_total']:='0';
     FNew_PO.Memitempo['id_pengajuan_asset']:=MemDetailAsset['SUBMISSION_ID'];
     FNew_PO.Memitempo['no_pengajuan_asset']:=MemDetailAsset['SUBMISSION_CODE'];
     FNew_PO.Memitempo['id_detail_asset']:=MemDetailAsset['SUBMISSION_DETAIL_ID'];
     FNew_PO.Memitempo['spesifikasi_asset']:=MemDetailAsset['SPESIFICATION'];
     FNew_PO.Memitempo.post; }
     //tampung ke temp
     with dm.qtemp2 do
     begin
     Close;
     sql.Clear;
     sql.Text:=' Insert Into tpengajuan_asset_temp ( '+
               ' id_pengajuan, no_pengajuan, id_detail, nm_kategori, nm_barang, nm_merk, '+
               ' satuan, qty, spesifikasi, kode_barang_boa, status, keterangan, user_name ) values ('+
               ' '+QuotedStr(MemDetailAsset['SUBMISSION_ID'])+', '+
               ' '+QuotedStr(MemDetailAsset['SUBMISSION_CODE'])+', '+
               ' '+QuotedStr(MemDetailAsset['SUBMISSION_DETAIL_ID'])+', '+
               ' '+QuotedStr(MemDetailAsset['CATEGORY_NAME'])+', '+
               ' '+QuotedStr(MemDetailAsset['ITEM_NAME'])+', '+
               ' '+QuotedStr(MemDetailAsset['BRAND_NAME'])+', '+
               ' '+QuotedStr(MemDetailAsset['UNIT'])+', '+
               ' '+QuotedStr(MemDetailAsset['QTY'])+', '+
               ' '+QuotedStr(MemDetailAsset['SPESIFICATION'])+', '+
               ' '+QuotedStr(MemDetailAsset['KODE_BARANG_BOA'])+', '+
               ' '+QuotedStr('2')+', '+
               ' '+QuotedStr(MemDetailAsset['SUBMISSION_DESCRIPTION'])+', '+
               ' '+Quotedstr(nm)+' )';
     ExecSQL ;
     end;

  { off 24-05-2025 if (FNew_PO.edNoPengajuanAsset.Text<>'') then
  begin
    //FNew_PO.edNoPengajuanAsset.Text:=FNew_PO.edNoPengajuanAsset.Text+', '+MemDetailAsset['SUBMISSION_CODE'];
    FNew_PO.edNoPengajuanAsset.Text:='Nomor Terlampir'
  end
  else
  if (FNew_PO.edNoPengajuanAsset.Text='0')  or  (FNew_PO.edNoPengajuanAsset.Text='')then
  begin
    FNew_PO.edNoPengajuanAsset.Text:=MemDetailAsset['SUBMISSION_CODE'];
  end;
                }
  end;
    MemDetailAsset.Next;
    end;

       //Isi Grid PO
       with dm.Qtemp3 do
       begin
       close;
       sql.clear;
        sql.Add('Select id_pengajuan, no_pengajuan, id_detail, id_kategori,nm_kategori, id_merk, nm_merk,'+
        ' id_satuan, satuan, sum(qty) as qty,spesifikasi, kode_barang_boa, status, keterangan, id_barang, '+
        ' nm_barang, it.item_code,it.item_name,it.buy,it.unit from tpengajuan_asset_temp a  '+
        ' LEFT JOIN (select a.item_code,a.item_stock_code,b.item_name,b.buy,b.unit from t_item_stock a inner join t_item b on a.item_code=b.item_code) it ON a.kode_barang_boa=it.item_stock_Code  '+
        ' where user_name='+QuotedStr(nm)+''+
        ' Group By id_pengajuan, no_pengajuan, id_detail, id_kategori,nm_kategori, id_merk, nm_merk,id_satuan,'+
        ' satuan,spesifikasi, kode_barang_boa, status, keterangan, id_barang,nm_barang, it.item_code,'+
        ' it.item_name,it.buy,it.unit');
       open;
       end;
       while not dm.Qtemp3.eof do
       begin
         if not (FNew_PO.Memitempo.state in[dsedit,dsinsert]) then
         FNew_PO.Memitempo.insert;
         FNew_PO.Memitempo['kd_material']:=dm.Qtemp3.fieldbyname('item_code').value;
         FNew_PO.Memitempo['kd_material_stok']:=dm.Qtemp3.fieldbyname('kode_barang_boa').value;
         FNew_PO.Memitempo['nm_material']:=dm.Qtemp3['nm_barang'];
         FNew_PO.Memitempo['satuan']:=dm.Qtemp3.fieldbyname('satuan').value;
         FNew_PO.Memitempo['qty']:=dm.Qtemp3.fieldbyname('qty').value;
         FNew_PO.Memitempo['harga']:=dm.qtemp3.fieldbyname('buy').value;
         FNew_PO.Memitempo['subtotal']:=dm.qtemp3.fieldbyname('buy').value*dm.qtemp.fieldbyname('qty').value;
        // FNew_PO.Memitempo['akun_pph']:='0';
        // FNew_PO.Memitempo['nm_pph']:='0';
         FNew_PO.Memitempo['pph']:='0';
         FNew_PO.Memitempo['pph_rp']:='0';
         FNew_PO.Memitempo['ppn']:='11';
         FNew_PO.Memitempo['ppn_rp']:=dm.qtemp3.fieldbyname('buy').value*11/100;
         FNew_PO.Memitempo['pemb_dpp']:='0';
         FNew_PO.Memitempo['pemb_ppn']:='0';
         FNew_PO.Memitempo['grandtotal']:='0';
         FNew_PO.Memitempo['id_pengajuan_asset']:=dm.qtemp3.fieldbyname('id_pengajuan').value;
         FNew_PO.Memitempo['no_pengajuan_asset']:=dm.qtemp3.fieldbyname('no_pengajuan').value;
         FNew_PO.Memitempo['id_detail_asset']:=dm.qtemp3.fieldbyname('id_detail').value;
         FNew_PO.Memitempo['spesifikasi_asset']:=dm.qtemp3.fieldbyname('spesifikasi').value;
         FNew_PO.MemItempo['gudang']:=FNew_PO.cb_gudang.Text;
         FNew_PO.Memitempo.post;
         FNew_PO.Memitempo.Active:=true;
      // off 24-05-2025   UpdateKpiUser('PENGAJUAN ASSET' ,'`insert`' , '1' , True, 'MemProses Pengajuan Asset '+dm.qtemp.fieldbyname('id_pengajuan').value+' | '+dm.qtemp.fieldbyname('no_pengajuan').value+'');
         with dm.qtemp do
         begin
            close;
            sql.clear;
            sql.add(' Select * from tpengajuan_asset where id_detail IN ('+Quotedstr(dm.qtemp3.fieldbyname('id_detail').value)+') ');
            open;
         end;

         if dm.qtemp.RecordCount<>0 then
         begin
          with dm.qtemp2 do
          begin
            close;
            sql.clear;
            sql.add(' delete from tpengajuan_asset '+
                    ' where id_detail IN ('+Quotedstr(dm.qtemp3.fieldbyname('id_detail').value)+') ');
            Execute;
          end;
         end;
         with dm.qtemp2 do
         begin
         Close;
         sql.Clear;
         sql.Text:=' Insert Into tpengajuan_asset ( '+
                   ' id_pengajuan, no_pengajuan, id_detail, nm_kategori, nm_barang, nm_merk, '+
                   ' satuan, qty, spesifikasi, kode_barang_boa, status, keterangan ) values ('+
                   ' '+QuotedStr(dm.qtemp3.fieldbyname('id_pengajuan').value)+', '+
                   ' '+QuotedStr(dm.qtemp3.fieldbyname('no_pengajuan').value)+', '+
                   ' '+QuotedStr(dm.qtemp3.fieldbyname('id_detail').value)+', '+
                   ' '+QuotedStr(dm.qtemp3.fieldbyname('nm_kategori').value)+', '+
                   ' '+QuotedStr(dm.qtemp3.fieldbyname('nm_barang').value)+', '+
                   ' '+QuotedStr(dm.qtemp3.fieldbyname('nm_merk').value)+', '+
                   ' '+QuotedStr(dm.qtemp3.fieldbyname('satuan').value)+', '+
                   ' '+QuotedStr(dm.qtemp3.fieldbyname('qty').value)+', '+
                   ' '+QuotedStr(dm.qtemp3.fieldbyname('spesifikasi').value)+', '+
                   ' '+QuotedStr(dm.qtemp3.fieldbyname('kode_barang_boa').value)+', '+
                   ' '+QuotedStr('2')+', '+
                   ' '+QuotedStr(dm.qtemp3.fieldbyname('keterangan').value)+')';
         ExecSQL ;
         end;
       dm.qtemp3.Next;
       end;
      FNew_PO.DBGridDetail.Columns[15].Visible:=true;
      if rec = 0 then
      showmessage('Maaf, Tidak Ada Data Yang Di Proses, Pastikan Anda Sudah Melengkapi Data..');
      if rec > 0 then
      showmessage('Proses Berhasil Terupdate !');
      FDetailPengajuanAsset.close;
      FPengajuanAsset.close;
    // off 24-05-2025 FNew_PO.HitungTotal;
  end;
  close;
end;

procedure TFDetailPengajuanAsset.btBatalClick(Sender: TObject);
begin
 close;
end;

procedure TFDetailPengajuanAsset.btRijectClick(Sender: TObject);
begin
  //UpdateStatusAsset(ID_PENGAJUAN, '99', '0', '0', false);
  //UpdateStatusAssetViaPost('345ecdee-18f6-49d9-a72e-475f3d37a6ea', 'Test Update', '99', nm, 'NOLPB', 'NOPO', 'SPEK', 'BRAND', 90 );
  //UpdateStatusAssetViaPost(vid_detpengajuan,vdesc,vstatus,vuser,vlpb,vpo,vspesification,vbrand:string; vqty:integer): string;
end;

procedure TFDetailPengajuanAsset.btTampilkanClick(Sender: TObject);
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
  ssl: TIdSSLIOHandlerSocketOpenSSL;
begin
//Get VIA API
  resp := TMemoryStream.Create;
  Memo1.Text:='';
  try
  BaseUrl:=SelectRow('SELECT value_parameter FROM t_parameter where key_parameter=''baseurlasset''');
  key:=SelectRow('SELECT  value_parameter FROM t_parameter where key_parameter=''keyapiasset''');
  vtoken:=SelectRow('SELECT value_parameter FROM t_parameter where key_parameter=''tokenapiasset''');
  Vpath:='api/submission';//'api/submission';//'api/asset-submission';
  //ShowMessage(FHomeLogin.vKodePRSH);
  vBody:='?company='+FHomeLogin.vKodePRSH+'&start_date=' + FormatDateTime('yyyy-mm-dd', dtAwal.Date)+
         '&end_date=' + FormatDateTime('yyyy-mm-dd', dtAkhir.Date);
  //showmessage(BaseUrl+Vpath+vBody);
  url:= BaseUrl+Vpath+vBody;
 // url:='https://devapiaset.hastaprimasolusi.com/api/submission?company=hkj&start_date=2024-01-01&end_date=2025-01-01';
  memo1.text := url;
  //Exit;

  try
{  gNet :=  TIdHTTP.Create(nil);
  gNet.Request.Accept := 'application/json';
  gNet.Request.CustomHeaders.Values[key] := Vtoken;
  gNet.Request.ContentType := 'application/x-www-form-urlencoded';   off 23-7-2025 ds}
  gNet := TIdHTTP.Create(nil);
  ssl := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  ssl.SSLOptions.Method := sslvTLSv1_2;
  ssl.SSLOptions.Mode := sslmUnassigned;

  gNet.IOHandler := ssl;
  gNet.Request.Accept := 'application/json';
  gNet.Request.ContentType := 'application/x-www-form-urlencoded';
  gNet.Request.CustomHeaders.Values[key] := Vtoken;
  try
    res := gNet.Get(url);
  except
    on E: Exception do
    begin
      ShowMessage('ERROR: ' + E.Message);
    end;
  end;

  memo1.text := res;
      UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url);
      UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url);
  res:=  gNet.get(url);
  memo1.text := res;
  //FDataMasterOrder.memo1.text := res;
  jumdata:=1;
  //showmessage('A');
  //exit;
  except
 on E: EIdHTTPProtocolException do
 //ShowMessage('Tidak Ditemukan Data ...');
 //ShowMessage(E.ErrorMessage);
// Memo1.Text:=E.ErrorMessage;
 //if application.MessageBox('Tidak Ditemukan Data ...','confirm',mb_yesno or mb_iconquestion)=id_yes then
 //if Application.MessageBox('##Maaf Data Tidak Ditemukan Data ...','confirm',MB_OK or mb_iconquestion)=id_yes then
 if Application.MessageBox('Koneksi Terputus Silakan Coba Kembali ...','confirm',MB_OK or mb_iconquestion)=id_yes then
 begin
 //ShowMessage('test');
  memo1.text := E.ErrorMessage;
  jumdata:=0;
  gNet.free;
  resp.Free;
  //exit;
 end;

 on E: Exception do
 begin
 // ShowMessage(''+'');
 memo1.Text := 'JSON Error: ' + E.Message;
 ShowMessage('A non-Indy related exception has been raised!');
 end;
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

 // ShowMessage('test3');
  //showmessage(floattostr(jumdata));
  //MOVE JSON
  //showmessage('X');
  //json.JSONText := FDataMasterOrder.memo1.text;
  json.JSONText := res;
  memo1.text := res;
  //showmessage('B');
  cnt := json.TreeCount['data'];

  //ShowMessage('test4');

  if cnt < 1 then
  begin
  Showmessage('Data Tidak Ditemukan');
  MemDetailAsset.EmptyTable;
  MemDetailAsset.active:=true;
  exit;
  end;

  MemDetailAsset.EmptyTable;
  MemDetailAsset.active:=true;
  xxx := 0;
    i:=0;
    pnprogress.Visible:=true;
    gauge1.MaxValue:=json.TreeCount['data'];

 // ShowMessage('test4');
  for iii := 0 to cnt - 1 do
  begin
    inc(xxx);
    i:=i+1;
    gauge1.Progress:=i;
    row1 := format('data/%d/', [iii]);

    MemDetailAsset.insert;
    MemDetailAsset['KODE_BARANG_BOA']:='0';
    MemDetailAsset['SUBMISSION_ID']:=json.StringTree[row1 + 'submission_id'];
    MemDetailAsset['SUBMISSION_DETAIL_ID']:=json.StringTree[row1 + 'id'];
    MemDetailAsset['SUBMISSION_CODE']:=json.StringTree[row1 + 'submission_code'];
    MemDetailAsset['SUBMISSION_DATE']:=json.StringTree[row1 + 'submission_date'];
    MemDetailAsset['ITEM_NAME']:=json.StringTree[row1 + 'item_name'];
    MemDetailAsset['UNIT']:=json.StringTree[row1 + 'unit'];
    MemDetailAsset['CATEGORY_NAME']:=json.StringTree[row1 + 'category_name'];
    MemDetailAsset['BRAND_NAME']:=json.StringTree[row1 + 'brand_name'];
    MemDetailAsset['QTY']:=json.StringTree[row1 + 'qty'];
    MemDetailAsset['SUBMISSION_DESCRIPTION']:='0';
    MemDetailAsset['SPESIFICATION']:=json.StringTree[row1 + 'specification'];
    MemDetailAsset['STAT_APPRV']:=ckTandai.Checked;
    MemDetailAsset.Post;

  end;
    MemDetailAsset.active:=false;
    MemDetailAsset.active:=true;
  Gauge1.Progress:=0;
  pnprogress.Visible:=false;
end;

procedure TFDetailPengajuanAsset.DBGridEh3Columns4CellButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  VMenu:='3';
  with FCari_Barang2 do
  begin
    Show;
    with Qbarang do
    begin
      close;
      sql.Clear;
      sql.Text:='select a.item_stock_code,a.item_name,b.supplier_name,f.type,a.item_code,a.supplier_code,a.unit,0 qty'+
      ' from t_item_stock a  inner join t_supplier b on a.supplier_code=b.supplier_code  '+
      ' inner join t_item c on a.item_code=c.item_code  '+
      ' inner join t_item_group d on c.group_id=d.group_id   '+
      ' inner join t_item_category e on d.category_id=E.category_id'+
      ' inner join t_item_type f on f.type_id=e.type_id '+
      ' where f.type=''AKTIVA'' AND A.supplier_code='+QuotedStr(FNew_PO.EdKd_supp.text)+''+
      ' group by a.item_stock_code,a.item_name,b.supplier_name,f.type,a.item_code,a.supplier_code,a.unit '+
      ' ORDER BY a.item_stock_code asc';
      Open;
    end;
  end;
end;

procedure TFDetailPengajuanAsset.DBGridEh3KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (DBGridEh3.SelectedIndex=4) and (key=vk_f2) then
  begin
{off 24-05-2025   frmdafbrg.vcall:='DetailPengajuanAsset';
   frmdafbrg.show;   }
  end;
end;

end.
