unit USetMasterPelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, RzButton, Vcl.StdCtrls, Data.DB, MemDS, DBAccess, Uni,
  RzTabs, Vcl.Mask, RzEdit, RzBtnEdt;

type
  TFSetMasterPelanggan = class(TForm)
    dsJenisPelanggan: TDataSource;
    QJenisPelanggan: TUniQuery;
    dsTypeJual: TDataSource;
    QTypeJual: TUniQuery;
    dsSettingGolongan: TDataSource;
    QSettingGolongan: TUniQuery;
    dsDetailPel: TDataSource;
    QDetailPel: TUniQuery;
    RzPageControl1: TRzPageControl;
    TabSetJenisPelanggan: TRzTabSheet;
    TabSetTypeJual: TRzTabSheet;
    TabSetGolongan: TRzTabSheet;
    TabSetDetail: TRzTabSheet;
    Panel5: TPanel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    EdKode_jnispel: TEdit;
    EdNama_jnispel: TEdit;
    edKet_jnispel: TEdit;
    cbstatus_jnispel: TCheckBox;
    Panel2: TPanel;
    btBatal_jnispel: TRzBitBtn;
    btSimpan_jnispel: TRzBitBtn;
    btRefresh_jnispel: TRzBitBtn;
    DBGrid_jnispel: TDBGridEh;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edKode_typejual: TEdit;
    EdNama_typejual: TEdit;
    edKet_typejual: TEdit;
    cbstatus_typejual: TCheckBox;
    Panel1: TPanel;
    btBatal_typejual: TRzBitBtn;
    btSimpan_typejual: TRzBitBtn;
    btRefresh_typejual: TRzBitBtn;
    DBGrid_typejual: TDBGridEh;
    Panel7: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edKode_golpel: TEdit;
    edNama_golpel: TEdit;
    edKet_golpel: TEdit;
    cbstatus_golpel: TCheckBox;
    Panel3: TPanel;
    btBatal_golpel: TRzBitBtn;
    btSimpan_golpel: TRzBitBtn;
    btRefresh_golpel: TRzBitBtn;
    DBGrid_golpel: TDBGridEh;
    Panel8: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edKode_detailpel: TEdit;
    edNama_detailpel: TEdit;
    edKet_detailpel: TEdit;
    cbstatus_detailpel: TCheckBox;
    Panel4: TPanel;
    btBatal_detailpel: TRzBitBtn;
    btSimpan_detailpel: TRzBitBtn;
    btRefresh_detailpel: TRzBitBtn;
    DBGrid_detailpel: TDBGridEh;
    btBaru_jnispel: TRzBitBtn;
    btBaru_typejual: TRzBitBtn;
    btBaru_golpel: TRzBitBtn;
    btBaru_detailpel: TRzBitBtn;
    QJenisPelanggancode: TStringField;
    QJenisPelangganname: TStringField;
    QJenisPelanggandescription: TMemoField;
    QJenisPelangganid: TGuidField;
    QJenisPelanggancreated_at: TDateTimeField;
    QJenisPelanggancreated_by: TStringField;
    QJenisPelangganupdated_at: TDateTimeField;
    QJenisPelangganupdated_by: TStringField;
    QJenisPelanggandeleted_at: TDateTimeField;
    QJenisPelanggandeleted_by: TStringField;
    QTypeJualcode: TStringField;
    QTypeJualname: TStringField;
    QTypeJualdescription: TMemoField;
    QTypeJualid: TGuidField;
    QTypeJualcreated_at: TDateTimeField;
    QTypeJualcreated_by: TStringField;
    QTypeJualupdated_at: TDateTimeField;
    QTypeJualupdated_by: TStringField;
    QTypeJualdeleted_at: TDateTimeField;
    QTypeJualdeleted_by: TStringField;
    QSettingGolongancode: TStringField;
    QSettingGolonganname: TStringField;
    QSettingGolongandescription: TMemoField;
    QSettingGolonganid: TGuidField;
    QSettingGolongancreated_at: TDateTimeField;
    QSettingGolongancreated_by: TStringField;
    QSettingGolonganupdated_at: TDateTimeField;
    QSettingGolonganupdated_by: TStringField;
    QSettingGolongandeleted_at: TDateTimeField;
    QSettingGolongandeleted_by: TStringField;
    QDetailPelcode: TStringField;
    QDetailPelname: TStringField;
    QDetailPeldescription: TMemoField;
    QDetailPelid: TGuidField;
    QDetailPelcreated_at: TDateTimeField;
    QDetailPelcreated_by: TStringField;
    QDetailPelupdated_at: TDateTimeField;
    QDetailPelupdated_by: TStringField;
    QDetailPeldeleted_at: TDateTimeField;
    QDetailPeldeleted_by: TStringField;
    TabSetJenisUsaha: TRzTabSheet;
    Panel9: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    EdKode_jnisusaha: TEdit;
    EdNama_jnisusaha: TEdit;
    EdKet_jnisusaha: TEdit;
    cbstatus_jnisusaha: TCheckBox;
    Panel10: TPanel;
    btBatal_jnisusaha: TRzBitBtn;
    btSimpan_jnisusaha: TRzBitBtn;
    btRefresh_jnisusaha: TRzBitBtn;
    btBaru_jnisusaha: TRzBitBtn;
    DBGrid_JnisUsaha: TDBGridEh;
    QJenisUsaha: TUniQuery;
    dsJenisUsaha: TDataSource;
    Label30: TLabel;
    Label31: TLabel;
    edJenisUsaha: TRzButtonEdit;
    edKode_JenisUsaha: TEdit;
    QJenisPelanggancode_type_business: TStringField;
    QJenisPelangganname_type_business: TStringField;
    QJenisUsahacode: TStringField;
    QJenisUsahaname: TStringField;
    QJenisUsahadescription: TMemoField;
    QJenisUsahaid: TGuidField;
    QJenisUsahacreated_at: TDateTimeField;
    QJenisUsahacreated_by: TStringField;
    QJenisUsahaupdated_at: TDateTimeField;
    QJenisUsahaupdated_by: TStringField;
    QJenisUsahadeleted_at: TDateTimeField;
    QJenisUsahadeleted_by: TStringField;
    TabSetKantorPusat: TRzTabSheet;
    Panel11: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    edKodeKantorPusat: TEdit;
    edNamaKantorPusat: TEdit;
    edTelp1KantorPusat: TEdit;
    cbStatus_KantorPusat: TCheckBox;
    edTelp2KantorPusat: TEdit;
    Panel12: TPanel;
    btBatal_KantorPusat: TRzBitBtn;
    btSimpan_KantorPusat: TRzBitBtn;
    btRefresh_KantorPusat: TRzBitBtn;
    btBaru_KantorPusat: TRzBitBtn;
    DBGrid_KantorPusat: TDBGridEh;
    Label40: TLabel;
    Label41: TLabel;
    edNIKKantorPusat: TEdit;
    Label42: TLabel;
    Label43: TLabel;
    MemNIKKantorPusat: TMemo;
    Label44: TLabel;
    Label45: TLabel;
    edNPWPKantorPusat: TEdit;
    MemNPWPKantorPusat: TMemo;
    Label46: TLabel;
    Label47: TLabel;
    dsKantorPusat: TDataSource;
    QKantorPusat: TUniQuery;
    QKantorPusatid: TGuidField;
    QKantorPusatcreated_at: TDateTimeField;
    QKantorPusatcreated_by: TStringField;
    QKantorPusatupdated_at: TDateTimeField;
    QKantorPusatupdated_by: TStringField;
    QKantorPusatdeleted_at: TDateTimeField;
    QKantorPusatdeleted_by: TStringField;
    QKantorPusatcode: TStringField;
    QKantorPusatname: TStringField;
    QKantorPusatphone1: TStringField;
    QKantorPusatphone2: TStringField;
    QKantorPusatnik: TStringField;
    QKantorPusataddress_nik: TMemoField;
    QKantorPusatnpwp: TStringField;
    QKantorPusataddress_npwp: TMemoField;
    procedure btBatal_detailpelClick(Sender: TObject);
    procedure btBatal_golpelClick(Sender: TObject);
    procedure btBatal_typejualClick(Sender: TObject);
    procedure btBatal_jnispelClick(Sender: TObject);
    procedure btRefresh_jnispelClick(Sender: TObject);
    procedure btRefresh_typejualClick(Sender: TObject);
    procedure btRefresh_golpelClick(Sender: TObject);
    procedure btRefresh_detailpelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btBaru_detailpelClick(Sender: TObject);
    procedure btBaru_typejualClick(Sender: TObject);
    procedure btBaru_golpelClick(Sender: TObject);
    procedure btBaru_jnispelClick(Sender: TObject);
    procedure DBGrid_jnispelDblClick(Sender: TObject);
    procedure DBGrid_typejualDblClick(Sender: TObject);
    procedure DBGrid_golpelDblClick(Sender: TObject);
    procedure DBGrid_detailpelDblClick(Sender: TObject);
    procedure btSimpan_jnispelClick(Sender: TObject);
    procedure QJenisPelanggandescriptionGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure btSimpan_typejualClick(Sender: TObject);
    procedure QTypeJualdescriptionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QSettingGolongandescriptionGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QDetailPeldescriptionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btSimpan_golpelClick(Sender: TObject);
    procedure btSimpan_detailpelClick(Sender: TObject);
    procedure btBaru_jnisusahaClick(Sender: TObject);
    procedure btRefresh_jnisusahaClick(Sender: TObject);
    procedure btBatal_jnisusahaClick(Sender: TObject);
    procedure btSimpan_jnisusahaClick(Sender: TObject);
    procedure DBGrid_JnisUsahaDblClick(Sender: TObject);
    procedure edJenisUsahaButtonClick(Sender: TObject);
    procedure MemoField1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QJenisUsahadescriptionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btBatal_KantorPusatClick(Sender: TObject);
    procedure btRefresh_KantorPusatClick(Sender: TObject);
    procedure btBaru_KantorPusatClick(Sender: TObject);
    procedure btSimpan_KantorPusatClick(Sender: TObject);
    procedure DBGrid_KantorPusatDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure Clear;
    procedure Autocode_KantorPusat;
  public
    { Public declarations }
  end;

var
  FSetMasterPelanggan: TFSetMasterPelanggan;
  status:Integer;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UMainMenu, UMasterData;

{procedure TFSetMasterPelanggan.SaveJenis;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:='Insert into t_customer(customer_code,customer_name, '+
              'address,telp,email,payment_term,created_at,created_by ) '+
              'Values(:parkode_pelanggan,:parnama_pelanggan,'+
              ':paralamat,:partelpon,:paremail,:partempo_pembayaran,:created_at,:created_by)';
    parambyname('parkode_pelanggan').Value:=Edkode.Text;
    parambyname('parnama_pelanggan').Value:=Ednama.Text;
    //parambyname('paralamat').Value:=MemAlamat.Text;
    //parambyname('partelpon').Value:=Edtelp.Text;
    parambyname('paremail').Value:=edemail.Text;
    parambyname('partempo_pembayaran').Value:=Edtempo.Text;
    parambyname('created_at').AsDateTime:=Now;
    parambyname('created_by').AsString:='Admin';
    ExecSQL;
  end;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  Flistpelanggan.Refresh;
end; }

procedure TFSetMasterPelanggan.Autocode_KantorPusat;
var
  kode : String;
  Urut : Integer;
begin
  With dm.Qtemp do
  begin
    Close;
    SQL.Clear;
    Sql.Text := 'select * from t_customer_head_office  ';
    open;
  end;

  if dm.Qtemp.RecordCount = 0 then urut := 1 else
  if dm.Qtemp.RecordCount > 0 then
  begin
      With dm.Qtemp do
      begin
        Close;
        Sql.Clear;
        Sql.Text := 'select count(code) as hasil from t_customer_head_office ';
        Open;
      end;
      Urut := dm.Qtemp.FieldByName('hasil').AsInteger + 1;
  end;
  edKodeKantorPusat.Clear;
  kode := inttostr(urut);
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
  edKodeKantorPusat.Text := 'KP-'+Kode;
end;

procedure TFSetMasterPelanggan.Clear;
begin
  //Jenis Pelanggan
  EdKode_jnispel.Text:='';
  EdNama_jnispel.Text:='';
  edKet_jnispel.Text:='';
  edKode_JenisUsaha.Text:='';
  edJenisUsaha.Text:='';
  cbstatus_jnispel.Checked:=True;
  //Type Penjualan
  edKode_typejual.Text:='';
  EdNama_typejual.Text:='';
  edKet_jnispel.Text:='';
  cbstatus_typejual.Checked:=True;
  //Golongan
  edKode_golpel.Text:='';
  edNama_golpel.Text:='';
  edKet_golpel.Text:='';
  cbstatus_golpel.Checked:=True;
  //Detail Pelangan
  edKode_detailpel.Text:='';
  edNama_detailpel.Text:='';
  edKet_detailpel.Text:='';
  cbstatus_detailpel.Checked:=True;
  //Detail Jenis Usaha
  EdKode_jnisusaha.Text:='';
  EdNama_jnisusaha.Text:='';
  EdKet_jnisusaha.Text:='';
  cbstatus_jnisusaha.Checked:=True;
  //Kantor Pusat
  edKodeKantorPusat.Text:='';
  edNamaKantorPusat.Text:='';
  edTelp1KantorPusat.Text:='0';
  edTelp2KantorPusat.Text:='0';
  edNIKKantorPusat.Text:='';
  edNPWPKantorPusat.Text:='';
  MemNIKKantorPusat.Text:='';
  MemNPWPKantorPusat.Text:='';
  cbStatus_KantorPusat.Checked:=True;
end;

procedure TFSetMasterPelanggan.DBGrid_detailpelDblClick(Sender: TObject);
begin
  status:=1;
  edKode_detailpel.Text:=QDetailPel.fieldbyname('code').AsString;
  edNama_detailpel.Text:=QDetailPel.fieldbyname('name').AsString;
  edKet_detailpel.Text:=QDetailPel.fieldbyname('description').AsString;
  cbstatus_detailpel.Checked:=True;
end;

procedure TFSetMasterPelanggan.DBGrid_golpelDblClick(Sender: TObject);
begin
  status:=1;
  edKode_golpel.Text:=QSettingGolongan.fieldbyname('code').AsString;
  edNama_golpel.Text:=QSettingGolongan.fieldbyname('name').AsString;
  edKet_golpel.Text:=QSettingGolongan.fieldbyname('description').AsString;
  cbstatus_golpel.Checked:=True;
end;

procedure TFSetMasterPelanggan.DBGrid_jnispelDblClick(Sender: TObject);
begin
  status:=1;
  EdKode_jnispel.Text:=QJenisPelanggan.fieldbyname('code').AsString;
  EdNama_jnispel.Text:=QJenisPelanggan.fieldbyname('name').AsString;
  edKet_jnispel.Text:=QJenisPelanggan.fieldbyname('description').AsString;
  edKode_JenisUsaha.Text:=QJenisPelanggan.fieldbyname('code_type_business').AsString;
  edJenisUsaha.Text:=QJenisPelanggan.fieldbyname('name_type_business').AsString;
  cbstatus_jnispel.Checked:=True;
end;

procedure TFSetMasterPelanggan.DBGrid_JnisUsahaDblClick(Sender: TObject);
begin
  status:=1;
  EdKode_jnisusaha.Text:=QJenisUsaha.fieldbyname('code').AsString;
  EdNama_jnisusaha.Text:=QJenisUsaha.fieldbyname('name').AsString;
  EdKet_jnisusaha.Text:=QJenisUsaha.fieldbyname('description').AsString;
  cbstatus_jnisusaha.Checked:=True;
end;

procedure TFSetMasterPelanggan.DBGrid_KantorPusatDblClick(Sender: TObject);
begin
  status:=1;
  edKodeKantorPusat.Text:=QKantorPusat.fieldbyname('code').AsString;
  edNamaKantorPusat.Text:=QKantorPusat.fieldbyname('name').AsString;
  edTelp1KantorPusat.Text:=QKantorPusat.fieldbyname('phone1').AsString;
  edTelp2KantorPusat.Text:=QKantorPusat.fieldbyname('phone2').AsString;
  edNIKKantorPusat.Text:=QKantorPusat.fieldbyname('nik').AsString;
  MemNIKKantorPusat.Text:=QKantorPusat.fieldbyname('address_nik').AsString;
  edNPWPKantorPusat.Text:=QKantorPusat.fieldbyname('npwp').AsString;
  MemNPWPKantorPusat.Text:=QKantorPusat.fieldbyname('address_npwp').AsString;
  cbStatus_KantorPusat.Checked:=True;
end;

procedure TFSetMasterPelanggan.DBGrid_typejualDblClick(Sender: TObject);
begin
  status:=1;
  edKode_typejual.Text:=QTypeJual.fieldbyname('code').AsString;
  EdNama_typejual.Text:=QTypeJual.fieldbyname('name').AsString;
  edKet_typejual.Text:=QTypeJual.fieldbyname('description').AsString;
  cbstatus_typejual.Checked:=True;
end;

procedure TFSetMasterPelanggan.edJenisUsahaButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Usaha';
  FMasterData.vcall:='master_jns_usaha_pelanggan';
  FMasterData.update_grid('code','name','description','t_customer_type_business','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFSetMasterPelanggan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QJenisPelanggan.Close;
  QTypeJual.Close;
  QSettingGolongan.Close;
  QDetailPel.Close;
end;

procedure TFSetMasterPelanggan.FormShow(Sender: TObject);
begin
  Clear;
  status:=0;
end;

procedure TFSetMasterPelanggan.MemoField1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=QDetailPel.fieldbyname('description').AsString;
end;

procedure TFSetMasterPelanggan.QDetailPeldescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=QDetailPel.fieldbyname('description').AsString;
end;

procedure TFSetMasterPelanggan.QJenisPelanggandescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=QJenisPelanggan.fieldbyname('description').AsString;
end;

procedure TFSetMasterPelanggan.QJenisUsahadescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=QJenisUsaha.fieldbyname('description').AsString;
end;

procedure TFSetMasterPelanggan.QSettingGolongandescriptionGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text:=QSettingGolongan.fieldbyname('description').AsString;
end;

procedure TFSetMasterPelanggan.QTypeJualdescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=QTypeJual.fieldbyname('description').AsString;
end;

procedure TFSetMasterPelanggan.btBatal_jnispelClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterPelanggan.btBatal_jnisusahaClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterPelanggan.btBatal_KantorPusatClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterPelanggan.btBatal_typejualClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterPelanggan.btRefresh_detailpelClick(Sender: TObject);
begin
  DBGrid_detailpel.StartLoadingStatus();
  try
    QDetailPel.Close;
    QDetailPel.Open;
  finally
  DBGrid_detailpel.FinishLoadingStatus();
  Clear;
  end;
end;

procedure TFSetMasterPelanggan.btRefresh_golpelClick(Sender: TObject);
begin
  DBGrid_golpel.StartLoadingStatus();
  try
    QSettingGolongan.Close;
    QSettingGolongan.Open;
  finally
  DBGrid_golpel.FinishLoadingStatus();
  Clear;
  end;
end;

procedure TFSetMasterPelanggan.btRefresh_jnispelClick(Sender: TObject);
begin
  DBGrid_jnispel.StartLoadingStatus();
  try
    QJenisPelanggan.Close;
    QJenisPelanggan.Open;
  finally
  DBGrid_jnispel.FinishLoadingStatus();
  Clear;
  end;
end;

procedure TFSetMasterPelanggan.btRefresh_jnisusahaClick(Sender: TObject);
begin
  DBGrid_JnisUsaha.StartLoadingStatus();
  try
    QJenisUsaha.Close;
    QJenisUsaha.Open;
  finally
  DBGrid_JnisUsaha.FinishLoadingStatus();
  Clear;
  end;
end;

procedure TFSetMasterPelanggan.btRefresh_KantorPusatClick(Sender: TObject);
begin
  DBGrid_KantorPusat.StartLoadingStatus();
  try
    QKantorPusat.Close;
    QKantorPusat.Open;
  finally
  DBGrid_KantorPusat.FinishLoadingStatus();
  Clear;
  end;
end;

procedure TFSetMasterPelanggan.btRefresh_typejualClick(Sender: TObject);
begin
  DBGrid_typejual.StartLoadingStatus();
  try
    QTypeJual.Close;
    QTypeJual.Open;
  finally
  DBGrid_typejual.FinishLoadingStatus();
  Clear;
  end;
end;

procedure TFSetMasterPelanggan.btSimpan_detailpelClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode_detailpel.Text='' then
      begin
        MessageDlg('Kode Detail Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_detailpel.SetFocus;
      end
      else if edNama_detailpel.Text='' then
      begin
        MessageDlg('Nama Detail Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNama_detailpel.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_customer_details" ("code", "name", "description", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edKode_detailpel.Text)+', '+
                    ' '+QuotedStr(edNama_detailpel.Text)+', '+
                    ' '+QuotedStr(edKet_detailpel.Text)+', '+
                    ' '+QuotedStr(FHomeLogin.Eduser.Text)+' );';
          ExecSQL;
        end;
        MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
      end;
      end
      else if Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_details" SET '+
                    ' "name"='+QuotedStr(edNama_detailpel.Text)+', '+
                    ' "description"='+QuotedStr(edKet_detailpel.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(edKode_detailpel.Text)+';';
          ExecSQL;
        end;

        if cbstatus_detailpel.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_details" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(edKode_detailpel.Text)+';';
          ExecSQL;
        end;
        end;
        MessageDlg('Update Berhasil..!!',mtInformation,[MBOK],0);
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
      btRefresh_detailpelClick(Sender);
end;

procedure TFSetMasterPelanggan.btSimpan_golpelClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode_golpel.Text='' then
      begin
        MessageDlg('Kode Golongan Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_golpel.SetFocus;
      end
      else if edNama_golpel.Text='' then
      begin
        MessageDlg('Nama Golongan Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNama_golpel.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_customer_group" ("code", "name", "description", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edKode_golpel.Text)+', '+
                    ' '+QuotedStr(edNama_golpel.Text)+', '+
                    ' '+QuotedStr(edKet_golpel.Text)+', '+
                    ' '+QuotedStr(FHomeLogin.Eduser.Text)+' );';
          ExecSQL;
        end;
        MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
      end;
      end
      else if Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_group" SET '+
                    ' "name"='+QuotedStr(edNama_golpel.Text)+', '+
                    ' "description"='+QuotedStr(edKet_golpel.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(edKode_golpel.Text)+';';
          ExecSQL;
        end;

        if cbstatus_golpel.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_group" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(edKode_golpel.Text)+';';
          ExecSQL;
        end;
        end;
        MessageDlg('Update Berhasil..!!',mtInformation,[MBOK],0);
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
      btRefresh_golpelClick(Sender);
end;

procedure TFSetMasterPelanggan.btSimpan_jnispelClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode_JenisUsaha.Text='' then
      begin
        MessageDlg('Jenis Usaha Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_JenisUsaha.SetFocus;
      end
      else if EdKode_jnispel.Text='' then
      begin
        MessageDlg('Kode Jenis Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        EdKode_jnispel.SetFocus;
      end
      else if EdNama_jnispel.Text='' then
      begin
        MessageDlg('Nama Jenis Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        EdNama_jnispel.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_customer_type" ("code", "name", "description", '+
                    ' "code_type_business", "name_type_business", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(EdKode_jnispel.Text)+', '+
                    ' '+QuotedStr(EdNama_jnispel.Text)+', '+
                    ' '+QuotedStr(edKet_jnispel.Text)+', '+
                    ' '+QuotedStr(edKode_JenisUsaha.Text)+', '+
                    ' '+QuotedStr(edJenisUsaha.Text)+', '+
                    ' '+QuotedStr(FHomeLogin.Eduser.Text)+' );';
          ExecSQL;
        end;
        MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
      end;
      end
      else if Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_type" SET '+
                    ' "code_type_business"='+QuotedStr(edKode_JenisUsaha.Text)+', '+
                    ' "name_type_business"='+QuotedStr(edJenisUsaha.Text)+', '+
                    ' "name"='+QuotedStr(EdNama_jnispel.Text)+', '+
                    ' "description"='+QuotedStr(edKet_jnispel.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(EdKode_jnispel.Text)+';';
          ExecSQL;
        end;

        if cbstatus_jnispel.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_type" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(EdKode_jnispel.Text)+';';
          ExecSQL;
        end;
        end;
        MessageDlg('Update Berhasil..!!',mtInformation,[MBOK],0);
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
      btRefresh_jnispelClick(Sender);
end;

procedure TFSetMasterPelanggan.btSimpan_jnisusahaClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if EdKode_jnisusaha.Text='' then
      begin
        MessageDlg('Kode Jenis Usaha Wajib Diisi..!!',mtInformation,[mbRetry],0);
        EdKode_jnisusaha.SetFocus;
      end
      else if EdNama_jnisusaha.Text='' then
      begin
        MessageDlg('Nama Jenis Usaha Wajib Diisi..!!',mtInformation,[mbRetry],0);
        EdNama_jnisusaha.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_customer_type_business" ("code", "name", "description", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(EdKode_jnisusaha.Text)+', '+
                    ' '+QuotedStr(EdNama_jnisusaha.Text)+', '+
                    ' '+QuotedStr(EdKet_jnisusaha.Text)+', '+
                    ' '+QuotedStr(FHomeLogin.Eduser.Text)+' );';
          ExecSQL;
        end;
        MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
      end;
      end
      else if Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_type_business" SET '+
                    ' "name"='+QuotedStr(EdNama_jnisusaha.Text)+', '+
                    ' "description"='+QuotedStr(EdKet_jnisusaha.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(EdKode_jnisusaha.Text)+';';
          ExecSQL;
        end;

        if cbstatus_detailpel.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_type_business" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(EdKode_jnisusaha.Text)+';';
          ExecSQL;
        end;
        end;
        MessageDlg('Update Berhasil..!!',mtInformation,[MBOK],0);
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
      btRefresh_jnisusahaClick(Sender);
end;

procedure TFSetMasterPelanggan.btSimpan_KantorPusatClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try

      with dm.Qtemp do
      begin
        Close;
        sql.Clear;
        sql.Text:='SELECT * FROM t_customer_head_office where code='+QuotedStr(edKodeKantorPusat.Text);
        Open;
      end;

      if dm.Qtemp.RecordCount>0 then
      begin
         MessageDlg('Kode Kantor Pusat Sudah Di Pakai..!!',mtInformation,[mbRetry],0);
      end else if edKodeKantorPusat.Text='' then
      begin
        MessageDlg('Kode Kantor Pusat Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeKantorPusat.SetFocus;
      end
      else if edNamaKantorPusat.Text='' then
      begin
        MessageDlg('Nama Kantor Pusat Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNamaKantorPusat.SetFocus;
      end
      else if edTelp1KantorPusat.Text='' then
      begin
        MessageDlg('Nomor Telp Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edTelp1KantorPusat.SetFocus;
      end
      else if edTelp2KantorPusat.Text='' then
      begin
        MessageDlg('Nomor Telp Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edTelp2KantorPusat.SetFocus;
      end
      else if edNIKKantorPusat.Text='' then
      begin
        MessageDlg('NIK Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNIKKantorPusat.SetFocus;
      end
      else if edNPWPKantorPusat.Text='' then
      begin
        MessageDlg('NPWP Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNPWPKantorPusat.SetFocus;
      end
      else if MemNIKKantorPusat.Text='' then
      begin
        MessageDlg('Alamat NIK Wajib Diisi..!!',mtInformation,[mbRetry],0);
        MemNIKKantorPusat.SetFocus;
      end
      else if MemNPWPKantorPusat.Text='' then
      begin
        MessageDlg('Alamat NPWP Wajib Diisi..!!',mtInformation,[mbRetry],0);
        MemNPWPKantorPusat.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_customer_head_office" ("code", "name", "phone1", '+
                    ' "phone2", "nik", "address_nik", "npwp", "address_npwp", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edKodeKantorPusat.Text)+', '+
                    ' '+QuotedStr(edNamaKantorPusat.Text)+', '+
                    ' '+QuotedStr(edTelp1KantorPusat.Text)+', '+
                    ' '+QuotedStr(edTelp2KantorPusat.Text)+', '+
                    ' '+QuotedStr(edNIKKantorPusat.Text)+', '+
                    ' '+QuotedStr(MemNIKKantorPusat.Text)+', '+
                    ' '+QuotedStr(edNPWPKantorPusat.Text)+', '+
                    ' '+QuotedStr(MemNPWPKantorPusat.Text)+', '+
                    ' '+QuotedStr(FHomeLogin.Eduser.Text)+' );';
          ExecSQL;
        end;
        MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
        btRefresh_KantorPusatClick(Sender);
        Dm.Koneksi.Commit;
      end;
      end
      else if Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_head_office" SET '+
                    ' "name"='+QuotedStr(edNamaKantorPusat.Text)+', '+
                    ' "phone1"='+QuotedStr(edTelp1KantorPusat.Text)+', '+
                    ' "phone2"='+QuotedStr(edTelp2KantorPusat.Text)+', '+
                    ' "nik"='+QuotedStr(edNIKKantorPusat.Text)+', '+
                    ' "address_nik"='+QuotedStr(MemNIKKantorPusat.Text)+', '+
                    ' "npwp"='+QuotedStr(edNPWPKantorPusat.Text)+', '+
                    ' "address_npwp"='+QuotedStr(MemNPWPKantorPusat.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(edKodeKantorPusat.Text)+';';
          ExecSQL;
        end;

        if cbstatus_jnispel.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_head_office" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(edKodeKantorPusat.Text)+';';
          ExecSQL;
        end;
        end;
        MessageDlg('Update Berhasil..!!',mtInformation,[MBOK],0);
        btRefresh_KantorPusatClick(Sender);
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

end;


procedure TFSetMasterPelanggan.btSimpan_typejualClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode_typejual.Text='' then
      begin
        MessageDlg('Kode Type Penjualan Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_typejual.SetFocus;
      end
      else if EdNama_typejual.Text='' then
      begin
        MessageDlg('Nama Type Penjualan Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        EdNama_typejual.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_customer_selling_type" ("code", "name", "description", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edKode_typejual.Text)+', '+
                    ' '+QuotedStr(EdNama_typejual.Text)+', '+
                    ' '+QuotedStr(edKet_typejual.Text)+', '+
                    ' '+QuotedStr(FHomeLogin.Eduser.Text)+' );';
          ExecSQL;
        end;
        MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
      end;
      end
      else if Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_selling_type" SET '+
                    ' "name"='+QuotedStr(EdNama_typejual.Text)+', '+
                    ' "description"='+QuotedStr(edKet_typejual.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(edKode_typejual.Text)+';';
          ExecSQL;
        end;

        if cbstatus_typejual.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_type" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(edKode_typejual.Text)+';';
          ExecSQL;
        end;
        end;
        MessageDlg('Update Berhasil..!!',mtInformation,[MBOK],0);
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
      btRefresh_typejualClick(Sender);
end;

procedure TFSetMasterPelanggan.btBatal_golpelClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterPelanggan.btBaru_detailpelClick(Sender: TObject);
begin
  status:=0;
  btRefresh_detailpelClick(Sender);
  Clear;
end;

procedure TFSetMasterPelanggan.btBaru_golpelClick(Sender: TObject);
begin
  status:=0;
  btRefresh_golpelClick(Sender);
  Clear;
end;

procedure TFSetMasterPelanggan.btBaru_jnispelClick(Sender: TObject);
begin
  status:=0;
  btRefresh_jnispelClick(Sender);
  Clear;
end;

procedure TFSetMasterPelanggan.btBaru_jnisusahaClick(Sender: TObject);
begin
  status:=0;
  btRefresh_jnispelClick(Sender);
  Clear;
end;

procedure TFSetMasterPelanggan.btBaru_KantorPusatClick(Sender: TObject);
begin
  status:=0;
  btRefresh_KantorPusatClick(Sender);
  Clear;
  Autocode_KantorPusat;
end;

procedure TFSetMasterPelanggan.btBaru_typejualClick(Sender: TObject);
begin
  status:=0;
  btRefresh_typejualClick(Sender);
  Clear;
end;

procedure TFSetMasterPelanggan.btBatal_detailpelClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

end.
