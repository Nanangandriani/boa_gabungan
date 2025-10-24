unit UNew_Pelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  RzEdit, Vcl.Mask, RzBtnEdt, RzCmboBx, Vcl.ComCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB,
  MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Buttons, RzTabs,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, uJSON;

type
  TFNew_Pelanggan = class(TForm)
    DSDetailPel: TDataSource;
    MemDetailPel: TMemTableEh;
    MemDetailPelKODE_URUTAN_KE: TStringField;
    MemDetailPelALAMAT: TStringField;
    MemDetailPelCONTACT_PERSON1: TStringField;
    MemDetailPelCONTACT_PERSON2: TStringField;
    MemDetailPelCONTACT_PERSON3: TStringField;
    MemDetailPelURUTAN_KE: TIntegerField;
    MemDetailPelLONGITUDE: TStringField;
    MemDetailPelLATITUDE: TStringField;
    RzPageControl2: TRzPageControl;
    TabMasterPelanggan: TRzTabSheet;
    Panel3: TPanel;
    btNextStep: TRzBitBtn;
    TabDetailPelanggan: TRzTabSheet;
    Panel4: TPanel;
    btBackStep: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    TabAkunPerkiraan: TRzTabSheet;
    Panel1: TPanel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    btMasterTypePenjualan: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    btJenisPelanggan: TSpeedButton;
    btMasterGolongan: TSpeedButton;
    Label8: TLabel;
    btJenisUsaha: TSpeedButton;
    Label9: TLabel;
    Label11: TLabel;
    Edemail: TEdit;
    Edtempo: TEdit;
    Edkode: TEdit;
    Ednama: TEdit;
    cbpkp: TCheckBox;
    Ednomorva: TEdit;
    edJenisPelanggan: TRzButtonEdit;
    edTypePenjualan: TRzButtonEdit;
    edGolonganPelanggan: TRzButtonEdit;
    edKode_jnispel: TEdit;
    edKode_typejual: TEdit;
    edKode_gol: TEdit;
    edKode_JenisUsaha: TEdit;
    edJenisUsaha: TRzButtonEdit;
    RzPageControl1: TRzPageControl;
    TabSDetailPel: TRzTabSheet;
    DBGridCustomer: TDBGridEh;
    Label33: TLabel;
    Label34: TLabel;
    Edkodeinitial: TEdit;
    MemDetailPelALAMAT_UNTUK: TStringField;
    Panel5: TPanel;
    Panel6: TPanel;
    Label36: TLabel;
    Label30: TLabel;
    edAkunPiutang: TRzButtonEdit;
    edAkunPiutangLainLain: TRzButtonEdit;
    edNamaPiutangLain: TEdit;
    edNamaPiutang: TEdit;
    Label35: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    Label24: TLabel;
    Label4: TLabel;
    Edkodepos: TEdit;
    Edkodewilayah: TRzButtonEdit;
    edNamaKantorPusat: TEdit;
    edKodeKantorPusat: TRzButtonEdit;
    btKantorPusat: TSpeedButton;
    Ednamawilayah: TEdit;
    btMasterDetailPel: TSpeedButton;
    Label7: TLabel;
    Label23: TLabel;
    Label31: TLabel;
    TabPajak: TRzTabSheet;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    BDataProspek: TRzBitBtn;
    Edautocode: TEdit;
    btKlasifikasiHargaHargaJual: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    Panel7: TPanel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    edKd_Jenis_Pajak: TRzButtonEdit;
    edKd_Negara: TRzButtonEdit;
    edNm_Negara: TEdit;
    edNm_Jenis_Pajak: TEdit;
    Panel8: TPanel;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    Label19: TLabel;
    Label18: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Ednik: TEdit;
    Ednpwp: TEdit;
    Ednamapkp: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    EdNitKu: TEdit;
    Label43: TLabel;
    Label44: TLabel;
    EdPaspor: TEdit;
    IdHTTP1: TIdHTTP;
    Memo1: TMemo;
    edSBU: TEdit;
    Label45: TLabel;
    Label46: TLabel;
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure EdkodeKeyPress(Sender: TObject; var Key: Char);
    procedure EdnamaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtelpKeyPress(Sender: TObject; var Key: Char);
    procedure EdemailKeyPress(Sender: TObject; var Key: Char);
    procedure cbpkpClick(Sender: TObject);
    procedure EdnamapkpKeyPress(Sender: TObject; var Key: Char);
    procedure EdnpwpKeyPress(Sender: TObject; var Key: Char);
    procedure EdnikKeyPress(Sender: TObject; var Key: Char);
    procedure CbtypejualKeyPress(Sender: TObject; var Key: Char);
    procedure CbgolonganKeyPress(Sender: TObject; var Key: Char);
    procedure btJenisPelangganClick(Sender: TObject);
    procedure btMasterTypePenjualanClick(Sender: TObject);
    procedure btMasterGolonganClick(Sender: TObject);
    procedure btMasterDetailPelClick(Sender: TObject);
    procedure BDataProspekClick(Sender: TObject);
    procedure btMasterWilayahClick(Sender: TObject);
    procedure btKlasifikasiHargaHargaJualClick(Sender: TObject);
    procedure edJenisPelangganButtonClick(Sender: TObject);
    procedure edTypePenjualanButtonClick(Sender: TObject);
    procedure edGolonganPelangganButtonClick(Sender: TObject);
    procedure EdkodewilayahButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btJenisUsahaClick(Sender: TObject);
    procedure edJenisUsahaButtonClick(Sender: TObject);
    procedure edAkunPiutangButtonClick(Sender: TObject);
    procedure btKantorPusatClick(Sender: TObject);
    procedure edKodeKantorPusatButtonClick(Sender: TObject);
    procedure edAkunPiutangLainLainButtonClick(Sender: TObject);
    procedure btNextStepClick(Sender: TObject);
    procedure btBackStepClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure edKd_Jenis_PajakButtonClick(Sender: TObject);
    procedure edKd_NegaraButtonClick(Sender: TObject);
    procedure EdnpwpChange(Sender: TObject);
    procedure EdnikChange(Sender: TObject);
    procedure EdNitKuChange(Sender: TObject);
    procedure EdPasporChange(Sender: TObject);
    procedure EdnomorvaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vid_prospek :Integer;
    KodeHeaderPiutang,KodeHeaderPiutangLain :string;
    StatusErr:Boolean;
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure Autocode;
    procedure Autocode_AkPiutang;
    procedure Autocode_AkPiutangLain;
    procedure RefreshGrid;
    procedure InsertDetailAlamat;
    procedure CekTabMasterPelanggan;
    procedure UpdateStatusProspek;
    procedure DeleteProspekTmp;
//    procedure CekTabDetailPelanggan;
//    procedure CekTabAkunPerkiraanPelanggan;
  end;

var
  FNew_Pelanggan: TFNew_Pelanggan;
  status: integer;
  json: TMyJSON;

implementation

{$R *.dfm}

uses UDataModule, UListPelanggan, UMainMenu, USetMasterPelanggan,
  UMasterWilayah, UDaftarKlasifikasi, UMasterData, UHomeLogin, UMy_Function,
  UDataProspekPelanggan;

procedure TFNew_Pelanggan.DeleteProspekTmp;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='DELETE FROM t_customer_prospect_tmp WHERE idprospek='+inttostr(vid_prospek);
    ExecSQL;
  end;
end;

procedure TFNew_Pelanggan.UpdateStatusProspek;
var
  key,url,s,BaseUrl,Vpath,Vtoken,str : string;
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
  BaseUrl:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''baseurlprospek''');
  key:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''keyapiprospek''');
  vtoken:=SelectRow('SELECT value_parameter FROM "public"."t_parameter" where key_parameter=''tokenapiprospek''');
  vBody:='?idProspek='+inttostr(vid_prospek)+'&approve=1';
  Vpath:='outlet/update';
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

end;


procedure TFNew_Pelanggan.CekTabMasterPelanggan;
begin
  if Ednama.Text='' then
  begin
    MessageDlg('Nama Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    StatusErr:=False;
    exit;
  end;
  if edJenisUsaha.Text='' then
  begin
    MessageDlg('Jenis Usaha Wajib Diisi..!!',mtInformation,[mbRetry],0);
    StatusErr:=False;
    exit;
  end;
  if edJenisPelanggan.Text='' then
  begin
    MessageDlg('Jenis Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    StatusErr:=False;
    exit;
  end;
  if edTypePenjualan.Text='' then
  begin
    MessageDlg('Kategori Wajib Diisi..!!',mtInformation,[mbRetry],0);
    StatusErr:=False;
    exit;
  end;
  if edGolonganPelanggan.Text='' then
  begin
    MessageDlg('Golongan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    StatusErr:=False;
    exit;
  end;
  if Edtempo.Text='' then
  begin
    MessageDlg('Jatuh Tempo Wajib Diisi..!!',mtInformation,[mbRetry],0);
    StatusErr:=False;
    exit;
  end;

end;


procedure TFNew_Pelanggan.InsertDetailAlamat;
var strContactPerson1,strContactPerson2,strContactPerson3: String;
begin
  if (MemDetailPel['CONTACT_PERSON1']='') OR (MemDetailPel['CONTACT_PERSON1']=NULL) then
  strContactPerson1:='' else  strContactPerson1:=MemDetailPel['CONTACT_PERSON1'];
  if (MemDetailPel['CONTACT_PERSON2']='') OR (MemDetailPel['CONTACT_PERSON2']=NULL) then
  strContactPerson2:='' else  strContactPerson2:=MemDetailPel['CONTACT_PERSON2'];
  if (MemDetailPel['CONTACT_PERSON3']='') OR (MemDetailPel['CONTACT_PERSON3']=NULL) then
  strContactPerson3:='' else  strContactPerson3:=MemDetailPel['CONTACT_PERSON3'];
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:=' DELETE FROM  "t_customer_address" '+
              ' WHERE "customer_code"='+QuotedStr(Edkode.Text)+';';
    ExecSQL;
  end;

  MemDetailPel.First;
  while not MemDetailPel.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "t_customer_address" (customer_code,	code_details,	'+
              ' address,	contact_person1,	contact_person2, contact_person3, longitude, latitude ) '+
              ' Values( '+
              ' '+QuotedStr(Edkode.Text)+', '+
              ' '+QuotedStr(MemDetailPel['KODE_URUTAN_KE'])+', '+
              ' '+QuotedStr(MemDetailPel['ALAMAT'])+', '+
              ' '+QuotedStr(strContactPerson1)+', '+
              ' '+QuotedStr(strContactPerson2)+', '+
              ' '+QuotedStr(strContactPerson3)+', '+
              ' '+QuotedStr(MemDetailPel['LONGITUDE'])+', '+
              ' '+QuotedStr(MemDetailPel['LATITUDE'])+' );';
    ExecSQL;
    end;
  MemDetailPel.Next;
  end;

end;

procedure TFNew_Pelanggan.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT code as code_details, name as name_details FROM '+
            ' t_customer_details WHERE deleted_at IS NULL '+
            ' Order By code desc ');
    open;
  end;
  MemDetailPel.active:=false;
  MemDetailPel.active:=true;
  MemDetailPel.EmptyTable;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
    //Showmessage('Maaf, Data Tidak Ditemukan..');
    URUTAN_KE:=0;
    Dm.Qtemp1.first;
    while not Dm.Qtemp1.Eof do
    begin
      URUTAN_KE:=URUTAN_KE+1;
      with Dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add(' SELECT * from ('+
                ' SELECT customer_code,	code_details as code_details_address,	address,	'+
                ' contact_person1,	contact_person2, contact_person3, longitude, latitude FROM t_customer_address '+
                ' WHERE deleted_at IS NULL ) a '+
                ' LEFT JOIN (SELECT code as code_details, name as name_details FROM '+
                 ' t_customer_details WHERE deleted_at IS NULL) b ON a.code_details_address=b.code_details '+
                ' WHERE customer_code='+QuotedStr(Edkode.Text)+' '+
                ' and code_details_address='+QuotedSTR(Dm.Qtemp1.FieldByName('code_details').AsString)+' '+
                ' UNION ALL '+
                ' SELECT outlet_code as customer_code, code_details_address, '+
                ' address as address,	no_telp as contact_person1,	no_hp as contact_person2,	'+
                ' ''0'' as contact_person3,	longitude as longitude,	latitude as latitude, '+
                ' code_details_address as code_details,	'''' as name_details FROM '+
                ' "t_customer_prospect_tmp" where idprospek='+QuotedStr(inttostr(vid_prospek))+''+
                ' and code_details_address='+QuotedSTR(Dm.Qtemp1.FieldByName('code_details').AsString)+' '+
                ' Order By code_details_address desc');
        open;
      end;

      if  Dm.Qtemp.RecordCount=0 then
      begin
       FNew_Pelanggan.MemDetailPel.insert;
       FNew_Pelanggan.MemDetailPel['KODE_URUTAN_KE']:=Dm.Qtemp1.fieldbyname('code_details').value;
       FNew_Pelanggan.MemDetailPel['ALAMAT_UNTUK']:=Dm.Qtemp1.fieldbyname('name_details').value;
       FNew_Pelanggan.MemDetailPel['ALAMAT']:='';
       FNew_Pelanggan.MemDetailPel['CONTACT_PERSON1']:='0';
       FNew_Pelanggan.MemDetailPel['CONTACT_PERSON2']:='0';
       FNew_Pelanggan.MemDetailPel['CONTACT_PERSON3']:='0';
       FNew_Pelanggan.MemDetailPel['LONGITUDE']:='0';
       FNew_Pelanggan.MemDetailPel['LATITUDE']:='0';
       FNew_Pelanggan.MemDetailPel['URUTAN_KE']:=URUTAN_KE;
       FNew_Pelanggan.MemDetailPel.post;
      end;

      if  Dm.Qtemp.RecordCount<>0 then
      begin
       FNew_Pelanggan.MemDetailPel.insert;
       FNew_Pelanggan.MemDetailPel['KODE_URUTAN_KE']:=Dm.Qtemp1.fieldbyname('code_details').value;
       FNew_Pelanggan.MemDetailPel['ALAMAT_UNTUK']:=Dm.Qtemp1.fieldbyname('name_details').value;
       FNew_Pelanggan.MemDetailPel['ALAMAT']:=Dm.Qtemp.fieldbyname('address').value;
       FNew_Pelanggan.MemDetailPel['CONTACT_PERSON1']:=Dm.Qtemp.fieldbyname('contact_person1').value;
       FNew_Pelanggan.MemDetailPel['CONTACT_PERSON2']:=Dm.Qtemp.fieldbyname('contact_person2').value;
       FNew_Pelanggan.MemDetailPel['CONTACT_PERSON3']:=Dm.Qtemp.fieldbyname('contact_person3').value;
       FNew_Pelanggan.MemDetailPel['LONGITUDE']:=Dm.Qtemp.fieldbyname('longitude').value;
       FNew_Pelanggan.MemDetailPel['LATITUDE']:=Dm.Qtemp.fieldbyname('latitude').value;
       FNew_Pelanggan.MemDetailPel['URUTAN_KE']:=URUTAN_KE;
       FNew_Pelanggan.MemDetailPel.post;
      end;
       Dm.Qtemp1.next;
    end;
  end;
end;

procedure TFNew_Pelanggan.RzBitBtn1Click(Sender: TObject);
begin
  if Edkodewilayah.Text='' then
  begin
    MessageDlg('Wilayah Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else if Edkodepos.Text='' then
  begin
    MessageDlg('Kode Pos Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else begin
    FNew_Pelanggan.RzPageControl2.ActivePage:=FNew_Pelanggan.TabAkunPerkiraan;
  end;
end;

procedure TFNew_Pelanggan.RzBitBtn2Click(Sender: TObject);
begin
  FNew_Pelanggan.RzPageControl2.ActivePage:=FNew_Pelanggan.TabAkunPerkiraan;
end;

procedure TFNew_Pelanggan.RzBitBtn3Click(Sender: TObject);
begin
  FNew_Pelanggan.RzPageControl2.ActivePage:=FNew_Pelanggan.TabDetailPelanggan;
end;

procedure TFNew_Pelanggan.RzBitBtn4Click(Sender: TObject);
begin
  FNew_Pelanggan.RzPageControl2.ActivePage:=FNew_Pelanggan.TabPajak;
end;

procedure TFNew_Pelanggan.Autocode;
var
  kode,CompanySerial : String;
  Urut : Integer;
begin
  With DM.Qtemp2 do
  begin
    Close;
    SQL.Clear;
    Sql.Text := 'select * from t_customer  ';
    open;
  end;

  CompanySerial:=SelectRow('SELECT company_serial FROM "public"."t_company" where company_code='+QuotedStr(UpperCase(edSBU.Text)));

  if Dm.Qtemp2.RecordCount = 0 then urut := 1 else
  if Dm.Qtemp2.RecordCount > 0 then
  begin
      With Dm.Qtemp do
      begin
        Close;
        Sql.Clear;
        Sql.Text := 'select count(customer_code) as hasil from t_customer ';
        Open;
      end;
      Urut := dm.Qtemp.FieldByName('hasil').AsInteger + 1;
  end;
  Edkode.Clear;
  Edautocode.Clear;
  kode := inttostr(urut);
  //kode := Copy('00000'+kode, length('00000'+kode)-4, 5);

  if Length(kode)=1 then
  begin
    kode := '0000'+kode;
  end
  else
  if Length(kode)=2 then
  begin
    kode := '000'+kode;
  end
  else
  if Length(kode)=3 then
  begin
    kode := '00'+kode;
  end
  else
  if Length(kode)=4 then
  begin
    kode := '0'+kode;
  end
  else
  if Length(kode)=5 then
  begin
    kode := kode;
  end;

  Edautocode.Text := 'PL'+CompanySerial+kode;
  Edkode.Text := 'PL'+CompanySerial+kode;
  Edkodeinitial.Text := 'PL'+CompanySerial+kode;
end;

procedure TFNew_Pelanggan.Autocode_AkPiutang;
var
  kode : String;
  Urut : Integer;
begin
//  With DM.Qtemp2 do
//  begin
//    Close;
//    SQL.Clear;
//    Sql.Text :=' select * from t_ak_account '+
//               ' where header_code='+QuotedSTR(KodeHeaderPiutang)+'  ';
//    open;
//  end;
//
//  if Dm.Qtemp2.RecordCount = 0 then urut := 1 else
//  if Dm.Qtemp2.RecordCount > 0 then
//  begin
//      With Dm.Qtemp do
//      begin
//        Close;
//        Sql.Clear;
//        Sql.Text :=' select count(header_code) as hasil '+
//                   ' from  t_ak_account where header_code='+QuotedSTR(KodeHeaderPiutang)+'  ';
//        Open;
//      end;
//      Urut := dm.Qtemp.FieldByName('hasil').AsInteger + 1;
//  end;
//  edAkunPiutang.Clear;
//  kode := inttostr(urut);
//
//  if Length(kode)=1 then
//  begin
//    kode := '0000'+kode;
//  end
//  else
//  if Length(kode)=2 then
//  begin
//    kode := '000'+kode;
//  end
//  else
//  if Length(kode)=3 then
//  begin
//    kode := '00'+kode;
//  end
//  else
//  if Length(kode)=4 then
//  begin
//    kode := '0'+kode;
//  end
//  else
//  if Length(kode)=5 then
//  begin
//    kode := kode;
//  end;
//  edAkunPiutang.Text := KodeHeaderPiutang+'.'+edkode;
  edAkunPiutang.Text := KodeHeaderPiutang+'.'+edkode.Text;
end;

procedure TFNew_Pelanggan.Autocode_AkPiutangLain;
var
  kode : String;
  Urut : Integer;
begin
//  With DM.Qtemp2 do
//  begin
//    Close;
//    SQL.Clear;
//    Sql.Text :=' select * from t_ak_account '+
//               ' where header_code='+QuotedSTR(KodeHeaderPiutangLain)+'  ';
//    open;
//  end;
//
//  if Dm.Qtemp2.RecordCount = 0 then urut := 1 else
//  if Dm.Qtemp2.RecordCount > 0 then
//  begin
//      With Dm.Qtemp do
//      begin
//        Close;
//        Sql.Clear;
//        Sql.Text :=' select count(header_code) as hasil '+
//                   ' from  t_ak_account where header_code='+QuotedSTR(KodeHeaderPiutangLain)+'  ';
//        Open;
//      end;
//      Urut := dm.Qtemp.FieldByName('hasil').AsInteger + 1;
//  end;
//  edAkunPiutangLainLain.Clear;
//  kode := inttostr(urut);
//
//  if Length(kode)=1 then
//  begin
//    kode := '0000'+kode;
//  end
//  else
//  if Length(kode)=2 then
//  begin
//    kode := '000'+kode;
//  end
//  else
//  if Length(kode)=3 then
//  begin
//    kode := '00'+kode;
//  end
//  else
//  if Length(kode)=4 then
//  begin
//    kode := '0'+kode;
//  end
//  else
//  if Length(kode)=5 then
//  begin
//    kode := kode;
//  end;

//  edAkunPiutangLainLain.Text := KodeHeaderPiutangLain+'.'+kode;
  edAkunPiutangLainLain.Text := KodeHeaderPiutangLain+'.'+Edkode.Text;
end;

procedure TFNew_Pelanggan.CbtypejualKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    edGolonganPelanggan.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.Clear;
begin
  Edkode.Text:='';
  Edkodeinitial.Text:='';
  Ednama.Text:='';
  Ednamapkp.Text:='';
  Ednpwp.Text:='';
  Ednik.Text:='';
  Edtempo.Text:='';
  Edemail.Text:='';
  Ednomorva.Text:='';
  Edkodewilayah.Text:='';
  Ednamawilayah.Text:='';
  Edkodepos.Text:='';
  edJenisPelanggan.Text:='';
  edKode_jnispel.Text:='';
  edTypePenjualan.Text:='';
  edKode_typejual.Text:='';
  edGolonganPelanggan.Text:='';
  edKode_gol.Text:='';
  Edtempo.Text:='';
  edKodeKantorPusat.Text:='';
  edNamaKantorPusat.Text:='';
  edKode_JenisUsaha.Text:='';
  edJenisUsaha.Text:='';
  edKd_Jenis_Pajak.Text:='';
  edNm_Jenis_Pajak.Text:='';
  edKd_Negara.Text:='';
  edNm_Negara.Text:='';
  EdNitKu.Text:='0';
  EdPaspor.Text:='0';
  MemDetailPel.EmptyTable;

  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * FROM (SELECT "code_module", "name_module", '+
            ' "code_trans", "name_trans", "description", "account_number_bank", '+
            ' "account_name_bank", "status_bill", "initial_code", "code_account", '+
            ' "name_account", "code_account2", "name_account2" '+
            ' from "public"."t_master_trans_account" '+
            ' where deleted_at is null and code_module=''1'' AND code_trans=''1.001'' '+
            ' order by code_module, account_number_bank, code_trans asc)xx ');
    open;
  end;

  edAkunPiutang.Text:=Dm.Qtemp.FieldByName('code_account').AsString;
  KodeHeaderPiutang:=Dm.Qtemp.FieldByName('code_account').AsString;
  edNamaPiutang.Text:=Dm.Qtemp.FieldByName('name_account').AsString;
  edAkunPiutangLainLain.Text:=Dm.Qtemp.FieldByName('code_account2').AsString;
  KodeHeaderPiutangLain:=Dm.Qtemp.FieldByName('code_account2').AsString;
  edNamaPiutangLain.Text:=Dm.Qtemp.FieldByName('name_account2').AsString;
end;

procedure TFNew_Pelanggan.EdemailKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Ednomorva.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.edGolonganPelangganButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Golongan Pelanggan';
  FMasterData.vcall:='gol_pelanggan';
  FMasterData.update_grid('code','name','description','t_customer_group','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFNew_Pelanggan.edJenisPelangganButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Pelanggan';
  FMasterData.vcall:='jns_pelanggan';
  FMasterData.update_grid('code','name','description','t_customer_type','WHERE code_type_business='+QuotedStr(edKode_JenisUsaha.Text)+' and	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFNew_Pelanggan.edJenisUsahaButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Usaha';
  FMasterData.vcall:='jns_usaha_pelanggan';
  FMasterData.update_grid('code','name','description','t_customer_type_business','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFNew_Pelanggan.edKd_Jenis_PajakButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Pelanggan';
  FMasterData.vcall:='jenis_pel_pajak';
  FMasterData.update_grid('code','name','name','t_customer_type_tax','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFNew_Pelanggan.edKd_NegaraButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Negara';
  FMasterData.vcall:='negara_pel_pajak';
  FMasterData.update_grid('code','name','name','t_customer_country_tax','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFNew_Pelanggan.edKodeKantorPusatButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kantor Pusat';
  FMasterData.vcall:='kantor_pusat';
  FMasterData.update_grid('code','name','address_nik','t_customer_head_office','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFNew_Pelanggan.edAkunPiutangButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Perkiraan';
  FMasterData.vcall:='ak_piutang_pel';
  FMasterData.update_grid('header_code','header_name','journal_name','t_ak_header','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFNew_Pelanggan.edAkunPiutangLainLainButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Perkiraan';
  FMasterData.vcall:='ak_piutang_lain_pel';
  FMasterData.update_grid('header_code','header_name','journal_name','t_ak_header','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFNew_Pelanggan.EdkodeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Ednama.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.EdnamaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    cbpkp.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.EdnamapkpKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Ednpwp.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.EdnikChange(Sender: TObject);
begin
  if Ednik.Text='' then Ednik.Text:='0';
end;

procedure TFNew_Pelanggan.EdnikKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Edemail.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.EdNitKuChange(Sender: TObject);
begin
  if EdNitKu.Text='' then EdNitKu.Text:='0';
end;

procedure TFNew_Pelanggan.EdnomorvaChange(Sender: TObject);
begin
  if Ednomorva.Text='' then Ednomorva.Text:='0';
end;

procedure TFNew_Pelanggan.EdnpwpChange(Sender: TObject);
begin
  if Ednpwp.Text='' then Ednpwp.Text:='0';
end;

procedure TFNew_Pelanggan.EdnpwpKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Ednik.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.EdPasporChange(Sender: TObject);
begin
  if EdPaspor.Text='' then EdPaspor.Text:='0';
end;

procedure TFNew_Pelanggan.EdtelpKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Edemail.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.edTypePenjualanButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Type Penjualan Pelanggan';
  FMasterData.vcall:='type_pelanggan';
  FMasterData.update_grid('code','name','description','t_customer_selling_type','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFNew_Pelanggan.FormShow(Sender: TObject);
begin
   //Clear;
   RefreshGrid;
   //Autocode;

//   Autocode;
//   Autocode_AkPiutang;

  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')<> 'dev' then
  begin
    btMasterDetailPel.Visible:=false;
    btJenisPelanggan.Visible:=false;
    btMasterTypePenjualan.Visible:=false;
    btMasterGolongan.Visible:=false;
//    Edautocode.Visible:=false;
    btJenisUsaha.Visible:=false;
    btKantorPusat.Visible:=false;
  end else begin
    btMasterDetailPel.Visible:=true;
    btJenisPelanggan.Visible:=true;
    btMasterTypePenjualan.Visible:=true;
    btMasterGolongan.Visible:=true;
//    Edautocode.Visible:=true;
    btJenisUsaha.Visible:=true;
    btKantorPusat.Visible:=true;
  end;

  if FHomeLogin.vStatOffice=0 then
  begin
    edSBU.Visible:=True;
    Label45.Visible:=True;
    Label46.Visible:=True;
  end else begin
    edSBU.Visible:=False;
    Label45.Visible:=False;
    Label46.Visible:=False;
  end;
end;

procedure TFNew_Pelanggan.EdkodewilayahButtonClick(Sender: TObject);
begin
  FMasterWilayah.vcall:='m_pelanggan';
  FMasterWilayah.Showmodal;
end;

procedure TFNew_Pelanggan.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' Update t_customer set '+
              ' idprospek='+QuotedStr(inttoSTR(vid_prospek))+', '+
              ' customer_name='+QuotedStr(Ednama.Text)+','+
              ' customer_name_pkp='+QuotedStr(Ednamapkp.Text)+','+
              ' cust_type_code_tax='+QuotedStr(edKd_Jenis_Pajak.Text)+','+
              ' cust_type_name_tax='+QuotedStr(edNm_Jenis_Pajak.Text)+','+
              ' country_code_tax='+QuotedStr(edKd_Negara.Text)+','+
              ' country_name_tax='+QuotedStr(edNm_Negara.Text)+','+
              ' no_nitku='+QuotedStr(EdNitKu.Text)+','+
              ' no_passport='+QuotedStr(EdPaspor.Text)+','+
              ' no_npwp='+QuotedStr(Ednpwp.Text)+','+
              ' no_nik='+QuotedStr(Ednik.Text)+','+
              ' number_va='+QuotedStr(Ednomorva.Text)+','+
              ' code_region='+QuotedStr(Edkodewilayah.Text)+','+
              ' name_region='+QuotedStr(Ednamawilayah.Text)+','+
              ' postal_code='+QuotedStr(Edkodepos.Text)+','+
              ' code_type='+QuotedStr(edKode_jnispel.Text)+','+
              ' name_type='+QuotedStr(edJenisPelanggan.Text)+','+
              ' account_code='+QuotedStr(edAkunPiutang.Text)+','+
              ' header_code='+QuotedStr(KodeHeaderPiutang)+','+
              ' account_code2='+QuotedStr(edAkunPiutangLainLain.Text)+','+
              ' header_code2='+QuotedStr(KodeHeaderPiutangLain)+','+
              ' initial_code='+QuotedStr(Edkodeinitial.Text)+','+
              ' code_head_office='+QuotedStr(edKodeKantorPusat.Text)+','+
              ' name_head_office='+QuotedStr(edNamaKantorPusat.Text)+','+
              ' code_type_business='+QuotedStr(edKode_JenisUsaha.Text)+','+
              ' name_type_business='+QuotedStr(edJenisUsaha.Text)+','+
              ' code_selling_type='+QuotedStr(edKode_typejual.Text)+','+
              ' name_selling_type='+QuotedStr(edTypePenjualan.Text)+','+
              ' code_group='+QuotedStr(edKode_gol.Text)+','+
              ' name_group='+QuotedStr(edGolonganPelanggan.Text)+','+
              ' email='+QuotedStr(edemail.Text)+', '+
              ' payment_term='+QuotedStr(Edtempo.Text)+', '+
              ' updated_at=now(), '+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+', ');
        if cbpkp.Checked=true then
        begin
          sql.add(' stat_pkp=true');
        end;
        if cbpkp.Checked=false then
        begin
          sql.add(' stat_pkp=false');
        end;

      sql.add(' Where customer_code='+QuotedStr(Edkode.Text)+'');
      ExecSQL;
    end;
    InsertDetailAlamat;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Flistpelanggan.Refresh;
    Close;
end;

procedure TFNew_Pelanggan.Save;
var vsbu : String;
begin
  vsbu:='';
  if FHomeLogin.vStatOffice=0 then
  begin
    vsbu:=','+QuotedStr(edSBU.Text)+'';
  end else begin
    vsbu:=','+QuotedStr(FHomeLogin.vKodePRSH)+'';
  end;

  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into t_customer(idprospek,customer_code,customer_name,'+
            ' customer_name_pkp, no_npwp, no_nik, cust_type_code_tax, cust_type_name_tax, '+
            ' country_code_tax, country_name_tax, no_nitku, no_passport, number_va, '+
            ' code_region, name_region, postal_code, code_type, name_type, '+
            ' account_code, header_code, account_code2, header_code2, initial_code, '+
            ' code_head_office, name_head_office, '+
            ' code_type_business, name_type_business, '+
            ' code_selling_type, name_selling_type, code_group, name_group, '+
            ' email,payment_term,created_at,created_by,sbu_code, stat_pkp ) '+
            ' Values( '+
            ' '+QuotedStr(inttostr(vid_prospek))+', '+
            ' '+QuotedStr(Edkode.Text)+', '+
            ' '+QuotedStr(Ednama.Text)+', '+
            ' '+QuotedStr(Ednamapkp.Text)+', '+
            ' '+QuotedStr(Ednpwp.Text)+', '+
            ' '+QuotedStr(Ednik.Text)+', '+
            ' '+QuotedStr(edKd_Jenis_Pajak.Text)+', '+
            ' '+QuotedStr(edNm_Jenis_Pajak.Text)+', '+
            ' '+QuotedStr(edKd_Negara.Text)+', '+
            ' '+QuotedStr(edNm_Negara.Text)+', '+
            ' '+QuotedStr(EdNitKu.Text)+', '+
            ' '+QuotedStr(EdPaspor.Text)+', '+
            ' '+QuotedStr(Ednomorva.Text)+', '+
            ' '+QuotedStr(Edkodewilayah.Text)+', '+
            ' '+QuotedStr(Ednamawilayah.Text)+', '+
            ' '+QuotedStr(Edkodepos.Text)+', '+
            ' '+QuotedStr(edKode_jnispel.Text)+', '+
            ' '+QuotedStr(edJenisPelanggan.Text)+', '+
            ' '+QuotedStr(edAkunPiutang.Text)+', '+
            ' '+QuotedStr(KodeHeaderPiutang)+', '+
            ' '+QuotedStr(edAkunPiutangLainLain.Text)+', '+
            ' '+QuotedStr(KodeHeaderPiutangLain)+', '+
            ' '+QuotedStr(Edkodeinitial.Text)+', '+
            ' '+QuotedStr(edKodeKantorPusat.Text)+', '+
            ' '+QuotedStr(edNamaKantorPusat.Text)+', '+
            ' '+QuotedStr(edKode_JenisUsaha.Text)+', '+
            ' '+QuotedStr(edJenisUsaha.Text)+', '+
            ' '+QuotedStr(edKode_typejual.Text)+', '+
            ' '+QuotedStr(edTypePenjualan.Text)+', '+
            ' '+QuotedStr(edKode_gol.Text)+', '+
            ' '+QuotedStr(edGolonganPelanggan.Text)+', '+
            ' '+QuotedStr(edemail.Text)+', '+
            ' '+QuotedStr(Edtempo.Text)+', '+
            ' now(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+vsbu+',');
      if cbpkp.Checked=true then
      begin
        sql.add(' true);');
      end;
      if cbpkp.Checked=false then
      begin
        sql.add(' false);');
      end;
    ExecSQL;
  end;
  InsertDetailAlamat;
  UpdateStatusProspek;
  DeleteProspekTmp;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  if FHomeLogin.vKodePRSH='PST' then
  FListPelanggan.cbSBU.Text:=edSBU.Text;

  Flistpelanggan.Refresh;
  Clear;
  Close;
end;

procedure TFNew_Pelanggan.BBatalClick(Sender: TObject);
begin
   Close;
end;

procedure TFNew_Pelanggan.BDataProspekClick(Sender: TObject);
begin
  FDataProspekPelanggan.showmodal;
  ShowMessage('Tampil Data Master Prospek Untuk Client Yang Menggunakan Fitur Prospek...');
end;

procedure TFNew_Pelanggan.BSaveClick(Sender: TObject);
begin
  if Ednama.Text='' then
  begin
    MessageDlg('Nama Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    exit;
  end else if edJenisUsaha.Text='' then
  begin
    MessageDlg('Jenis Usaha Wajib Diisi..!!',mtInformation,[mbRetry],0);
    exit;
  end else if edJenisPelanggan.Text='' then
  begin
    MessageDlg('Jenis Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    exit;
  end else if edTypePenjualan.Text='' then
  begin
    MessageDlg('Kategori Wajib Diisi..!!',mtInformation,[mbRetry],0);
    exit;
  end else if edGolonganPelanggan.Text='' then
  begin
    MessageDlg('Golongan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    exit;
  end else if (edKd_Jenis_Pajak.Text='') AND (cbpkp.Checked=True) then
  begin
    MessageDlg('Jenis Pajak Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    exit;
  end else if (edKd_Negara.Text='') AND (cbpkp.Checked=True) then
  begin
    MessageDlg('Negara Wajib Diisi..!!',mtInformation,[mbRetry],0);
    exit;
  end else if (Ednamapkp.Text='') AND (cbpkp.Checked=True) then
  begin
    MessageDlg('Nama PKP Wajib Diisi..!!',mtInformation,[mbRetry],0);
    exit;
  end else if (Ednpwp.Text='') AND (cbpkp.Checked=True) AND (edKd_Jenis_Pajak.Text='TIN') then
  begin
    MessageDlg('NPWP Wajib Diisi..!!',mtInformation,[mbRetry],0);
    exit;
  end else if (Ednik.Text='') AND (cbpkp.Checked=True) AND (edKd_Jenis_Pajak.Text='National ID') then
  begin
    MessageDlg('NIK Wajib Diisi..!!',mtInformation,[mbRetry],0);
    exit;
  end else if (EdNitKu.Text='') AND (cbpkp.Checked=True) AND (edKd_Jenis_Pajak.Text='TIN') then
  begin
    MessageDlg('NITKU Wajib Diisi..!!',mtInformation,[mbRetry],0);
    exit;
  end else if (Edkodewilayah.Text='') then
  begin
    MessageDlg('Wilayah Wajib Diisi..!!',mtInformation,[mbRetry],0);
    exit;
  end else
  begin
    if not dm.Koneksi.InTransaction then
     dm.Koneksi.StartTransaction;
    try
    if Status = 0 then
    begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        Autocode;
        Autocode_AkPiutang;
        Autocode_AkPiutangLain;
        Save;
        Dm.Koneksi.Commit;
      end;
    end else if Status = 1 then
    begin
      if application.MessageBox('Apa Anda Yakin Merubah Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        Update;
        Dm.Koneksi.Commit;
      end;
    end;
    Except on E :Exception do
      begin
        begin
          MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
          Dm.koneksi.Rollback ;
        end;
      end;
    end;
//    FMainMenu.TampilTabForm2;
  end;


end;

procedure TFNew_Pelanggan.btBackStepClick(Sender: TObject);
begin
  FNew_Pelanggan.RzPageControl2.ActivePage:=FNew_Pelanggan.TabMasterPelanggan;
end;

procedure TFNew_Pelanggan.btJenisPelangganClick(Sender: TObject);
begin
  FSetMasterPelanggan.TabSetKantorPusat.TabVisible:=false;
  FSetMasterPelanggan.TabSetJenisPelanggan.TabVisible:=true;
  FSetMasterPelanggan.TabSetTypeJual.TabVisible:=false;
  FSetMasterPelanggan.TabSetGolongan.TabVisible:=false;
  FSetMasterPelanggan.TabSetDetail.TabVisible:=false;
  FSetMasterPelanggan.TabSetJenisUsaha.TabVisible:=false;
  FSetMasterPelanggan.QJenisPelanggan.Close;
  FSetMasterPelanggan.QJenisPelanggan.Open;
  FSetMasterPelanggan.RzPageControl1.ActivePage:=FSetMasterPelanggan.TabSetJenisPelanggan;
  FSetMasterPelanggan.ShowModal;
end;

procedure TFNew_Pelanggan.btJenisUsahaClick(Sender: TObject);
begin
  FSetMasterPelanggan.TabSetKantorPusat.TabVisible:=false;
  FSetMasterPelanggan.TabSetJenisUsaha.TabVisible:=true;
  FSetMasterPelanggan.TabSetJenisPelanggan.TabVisible:=false;
  FSetMasterPelanggan.TabSetTypeJual.TabVisible:=false;
  FSetMasterPelanggan.TabSetGolongan.TabVisible:=false;
  FSetMasterPelanggan.TabSetDetail.TabVisible:=false;
  FSetMasterPelanggan.QJenisUsaha.Close;
  FSetMasterPelanggan.QJenisUsaha.Open;
  FSetMasterPelanggan.RzPageControl1.ActivePage:=FSetMasterPelanggan.TabSetJenisUsaha;
  FSetMasterPelanggan.ShowModal;
end;

procedure TFNew_Pelanggan.btMasterTypePenjualanClick(Sender: TObject);
begin
  FSetMasterPelanggan.TabSetKantorPusat.TabVisible:=false;
  FSetMasterPelanggan.TabSetJenisPelanggan.TabVisible:=false;
  FSetMasterPelanggan.TabSetTypeJual.TabVisible:=true;
  FSetMasterPelanggan.TabSetGolongan.TabVisible:=false;
  FSetMasterPelanggan.TabSetDetail.TabVisible:=false;
  FSetMasterPelanggan.TabSetJenisUsaha.TabVisible:=false;
  FSetMasterPelanggan.QTypeJual.Close;
  FSetMasterPelanggan.QTypeJual.Open;
  FSetMasterPelanggan.RzPageControl1.ActivePage:=FSetMasterPelanggan.TabSetTypeJual;
  FSetMasterPelanggan.ShowModal;
end;

procedure TFNew_Pelanggan.btKantorPusatClick(Sender: TObject);
begin
  FSetMasterPelanggan.TabSetKantorPusat.TabVisible:=true;
  FSetMasterPelanggan.TabSetJenisUsaha.TabVisible:=false;
  FSetMasterPelanggan.TabSetJenisPelanggan.TabVisible:=false;
  FSetMasterPelanggan.TabSetTypeJual.TabVisible:=false;
  FSetMasterPelanggan.TabSetGolongan.TabVisible:=false;
  FSetMasterPelanggan.TabSetDetail.TabVisible:=false;
  FSetMasterPelanggan.QKantorPusat.Close;
  FSetMasterPelanggan.QKantorPusat.Open;
  FSetMasterPelanggan.RzPageControl1.ActivePage:=FSetMasterPelanggan.TabSetKantorPusat;
  FSetMasterPelanggan.btBaru_KantorPusatClick(Sender);
  FSetMasterPelanggan.ShowModal;
end;

procedure TFNew_Pelanggan.btKlasifikasiHargaHargaJualClick(Sender: TObject);
begin
  FDaftarKlasifikasi.TabDaftarKlasifikasiPelanggan.TabVisible:=true;
  FDaftarKlasifikasi.TabMasterKlasifikasi.TabVisible:=false;
  FDaftarKlasifikasi.ShowModal;
end;

procedure TFNew_Pelanggan.btMasterDetailPelClick(Sender: TObject);
begin
  FSetMasterPelanggan.TabSetKantorPusat.TabVisible:=false;
  FSetMasterPelanggan.TabSetJenisPelanggan.TabVisible:=false;
  FSetMasterPelanggan.TabSetTypeJual.TabVisible:=false;
  FSetMasterPelanggan.TabSetGolongan.TabVisible:=false;
  FSetMasterPelanggan.TabSetDetail.TabVisible:=true;
  FSetMasterPelanggan.TabSetJenisUsaha.TabVisible:=false;
  FSetMasterPelanggan.QDetailPel.Close;
  FSetMasterPelanggan.QDetailPel.Open;
  FSetMasterPelanggan.RzPageControl1.ActivePage:=FSetMasterPelanggan.TabSetDetail;
  FSetMasterPelanggan.ShowModal;
end;

procedure TFNew_Pelanggan.btMasterGolonganClick(Sender: TObject);
begin
  FSetMasterPelanggan.TabSetKantorPusat.TabVisible:=false;
  FSetMasterPelanggan.TabSetJenisPelanggan.TabVisible:=false;
  FSetMasterPelanggan.TabSetTypeJual.TabVisible:=false;
  FSetMasterPelanggan.TabSetGolongan.TabVisible:=true;
  FSetMasterPelanggan.TabSetDetail.TabVisible:=false;
  FSetMasterPelanggan.TabSetJenisUsaha.TabVisible:=false;
  FSetMasterPelanggan.QSettingGolongan.Close;
  FSetMasterPelanggan.QSettingGolongan.Open;
  FSetMasterPelanggan.RzPageControl1.ActivePage:=FSetMasterPelanggan.TabSetGolongan;
  FSetMasterPelanggan.ShowModal;
end;

procedure TFNew_Pelanggan.btMasterWilayahClick(Sender: TObject);
begin
  FMasterWilayah.Showmodal;
end;

procedure TFNew_Pelanggan.btNextStepClick(Sender: TObject);
begin
  StatusErr:=True;
  CekTabMasterPelanggan;
  if StatusErr=True then
  FNew_Pelanggan.RzPageControl2.ActivePage:=FNew_Pelanggan.TabDetailPelanggan;
end;

procedure TFNew_Pelanggan.CbgolonganKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Edtempo.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.cbpkpClick(Sender: TObject);
begin
  if cbpkp.Checked=true then
  begin
    Ednamapkp.ReadOnly:=false;
    Ednpwp.ReadOnly:=false;
  end;
  if cbpkp.Checked=false then
  begin
    Ednamapkp.Text:='0';
    Ednpwp.Text:='0';
    Ednamapkp.ReadOnly:=true;
    Ednpwp.ReadOnly:=true;
  end;
end;

end.
