unit UNew_Pelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  RzEdit, Vcl.Mask, RzBtnEdt, RzCmboBx, Vcl.ComCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB,
  MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Buttons, RzTabs;

type
  TFNew_Pelanggan = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    DSDetailPel: TDataSource;
    MemDetailPel: TMemTableEh;
    MemDetailPelKODE_URUTAN_KE: TStringField;
    MemDetailPelALAMAT: TStringField;
    MemDetailPelCONTACT_PERSON1: TStringField;
    MemDetailPelCONTACT_PERSON2: TStringField;
    MemDetailPelCONTACT_PERSON3: TStringField;
    MemDetailPelURUTAN_KE: TIntegerField;
    BDataProspek: TRzBitBtn;
    Edautocode: TEdit;
    btKlasifikasiHargaHargaJual: TRzBitBtn;
    RzPageControl1: TRzPageControl;
    TabSDetailPel: TRzTabSheet;
    DBGridCustomer: TDBGridEh;
    Panel1: TPanel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    btMasterTypePenjualan: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    btJenisPelanggan: TSpeedButton;
    btMasterGolongan: TSpeedButton;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edemail: TEdit;
    Edtempo: TEdit;
    Edkode: TEdit;
    Ednama: TEdit;
    Ednamapkp: TEdit;
    Ednpwp: TEdit;
    Ednik: TEdit;
    cbpkp: TCheckBox;
    Ednomorva: TEdit;
    Ednamawilayah: TEdit;
    Edkodepos: TEdit;
    edJenisPelanggan: TRzButtonEdit;
    edTypePenjualan: TRzButtonEdit;
    edGolonganPelanggan: TRzButtonEdit;
    edKode_jnispel: TEdit;
    edKode_typejual: TEdit;
    edKode_gol: TEdit;
    Edkodewilayah: TRzButtonEdit;
    btMasterDetailPel: TSpeedButton;
    MemDetailPelLONGITUDE: TStringField;
    MemDetailPelLATITUDE: TStringField;
    edKode_JenisUsaha: TEdit;
    btJenisUsaha: TSpeedButton;
    edJenisUsaha: TRzButtonEdit;
    Label9: TLabel;
    Label11: TLabel;
    Label29: TLabel;
    edNamaKantorPusat: TEdit;
    edKodePerkiraan: TRzButtonEdit;
    Label30: TLabel;
    btKantorPusat: TSpeedButton;
    Label31: TLabel;
    Label32: TLabel;
    edKodeKantorPusat: TRzButtonEdit;
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
    procedure edKodePerkiraanButtonClick(Sender: TObject);
    procedure btKantorPusatClick(Sender: TObject);
    procedure edKodeKantorPusatButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vid_prospek :Integer;
    KodeHeaderPerkiraan :string;
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure Autocode;
    procedure Autocode_perkiraan;
    procedure RefreshGrid;
    procedure InsertDetailAlamat;
  end;

var
  FNew_Pelanggan: TFNew_Pelanggan;
  status: integer;

implementation

{$R *.dfm}

uses UDataModule, UListPelanggan, UMainMenu, USetMasterPelanggan,
  UMasterWilayah, UDaftarKlasifikasi, UMasterData, UHomeLogin, UMy_Function,
  UDataProspekPelanggan;


procedure TFNew_Pelanggan.InsertDetailAlamat;
begin
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
              ' '+QuotedStr(MemDetailPel['CONTACT_PERSON1'])+', '+
              ' '+QuotedStr(MemDetailPel['CONTACT_PERSON2'])+', '+
              ' '+QuotedStr(MemDetailPel['CONTACT_PERSON3'])+', '+
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

procedure TFNew_Pelanggan.Autocode;
var
  kode : String;
  Urut : Integer;
begin
  With DM.Qtemp2 do
  begin
    Close;
    SQL.Clear;
    Sql.Text := 'select * from t_customer  ';
    open;
  end;

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

  Edautocode.Text := 'PL'+kode;
  Edkode.Text := 'PL'+kode;
end;

procedure TFNew_Pelanggan.Autocode_perkiraan;
var
  kode : String;
  Urut : Integer;
begin
  With DM.Qtemp2 do
  begin
    Close;
    SQL.Clear;
    Sql.Text :=' select * from t_ak_account '+
               ' where header_code='+QuotedSTR(KodeHeaderPerkiraan)+'  ';
    open;
  end;

  if Dm.Qtemp2.RecordCount = 0 then urut := 1 else
  if Dm.Qtemp2.RecordCount > 0 then
  begin
      With Dm.Qtemp do
      begin
        Close;
        Sql.Clear;
        Sql.Text :=' select count(header_code) as hasil '+
                   ' from  t_ak_account where header_code='+QuotedSTR(KodeHeaderPerkiraan)+'  ';
        Open;
      end;
      Urut := dm.Qtemp.FieldByName('hasil').AsInteger + 1;
  end;
  edKodePerkiraan.Clear;
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

  edKodePerkiraan.Text := KodeHeaderPerkiraan+'.'+kode;
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
  edKodePerkiraan.Text:='';
  KodeHeaderPerkiraan:='';
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
  MemDetailPel.EmptyTable;
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

procedure TFNew_Pelanggan.edKodeKantorPusatButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kantor Pusat';
  FMasterData.vcall:='kantor_pusat';
  FMasterData.update_grid('code','name','address_nik','t_customer_head_office','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFNew_Pelanggan.edKodePerkiraanButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Perkiraan';
  FMasterData.vcall:='perkiraan_pelanggan';
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

procedure TFNew_Pelanggan.EdnikKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Edemail.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.EdnpwpKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Ednik.SetFocus;
  end;
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

  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')<> 'dev' then
  begin
    btMasterDetailPel.Visible:=false;
    btJenisPelanggan.Visible:=false;
    btMasterTypePenjualan.Visible:=false;
    btMasterGolongan.Visible:=false;
    Edautocode.Visible:=false;
    btJenisUsaha.Visible:=false;
    btKantorPusat.Visible:=false;
  end else begin
    btMasterDetailPel.Visible:=true;
    btJenisPelanggan.Visible:=true;
    btMasterTypePenjualan.Visible:=true;
    btMasterGolongan.Visible:=true;
    Edautocode.Visible:=true;
    btJenisUsaha.Visible:=true;
    btKantorPusat.Visible:=true;
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
              ' no_npwp='+QuotedStr(Ednpwp.Text)+','+
              ' no_nik='+QuotedStr(Ednik.Text)+','+
              ' number_va='+QuotedStr(Ednomorva.Text)+','+
              ' code_region='+QuotedStr(Edkodewilayah.Text)+','+
              ' name_region='+QuotedStr(Ednamawilayah.Text)+','+
              ' postal_code='+QuotedStr(Edkodepos.Text)+','+
              ' code_type='+QuotedStr(edKode_jnispel.Text)+','+
              ' name_type='+QuotedStr(edJenisPelanggan.Text)+','+
              ' account_no='+QuotedStr(edKodePerkiraan.Text)+','+
              ' account_header_no='+QuotedStr(KodeHeaderPerkiraan)+','+
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
    Close;
    Flistpelanggan.Refresh;
end;

procedure TFNew_Pelanggan.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into t_customer(idprospek,customer_code,customer_name,'+
            ' customer_name_pkp, no_npwp, no_nik, number_va, '+
            ' code_region, name_region, postal_code, code_type, name_type, '+
            ' account_no, account_header_no, code_head_office, name_head_office, '+
            ' code_type_business, name_type_business, '+
            ' code_selling_type, name_selling_type, code_group, name_group, '+
            ' email,payment_term,created_at,created_by, stat_pkp ) '+
            ' Values( '+
            ' '+QuotedStr(inttostr(vid_prospek))+', '+
            ' '+QuotedStr(Edkode.Text)+', '+
            ' '+QuotedStr(Ednama.Text)+', '+
            ' '+QuotedStr(Ednamapkp.Text)+', '+
            ' '+QuotedStr(Ednpwp.Text)+', '+
            ' '+QuotedStr(Ednik.Text)+', '+
            ' '+QuotedStr(Ednomorva.Text)+', '+
            ' '+QuotedStr(Edkodewilayah.Text)+', '+
            ' '+QuotedStr(Ednamawilayah.Text)+', '+
            ' '+QuotedStr(Edkodepos.Text)+', '+
            ' '+QuotedStr(edKode_jnispel.Text)+', '+
            ' '+QuotedStr(edJenisPelanggan.Text)+', '+
            ' '+QuotedStr(edKodePerkiraan.Text)+', '+
            ' '+QuotedStr(KodeHeaderPerkiraan)+', '+
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
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+',');
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
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  Flistpelanggan.Refresh;
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
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKodePerkiraan.Text='' then
      begin
        MessageDlg('Kode Perkiraan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodePerkiraan.SetFocus;
      end
      else if Edkode.Text='' then
      begin
        MessageDlg('Kode Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        Edkode.SetFocus;
      end
      else if Ednama.Text='' then
      begin
        MessageDlg('Nama Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        Ednama.SetFocus;
      end
      else if Edtempo.Text='' then
      begin
        MessageDlg('Tempo Pembayaran Wajib Diisi..!!',mtInformation,[mbRetry],0);
        Ednama.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        Autocode;
        Autocode_perkiraan;
        Save;
        Dm.Koneksi.Commit;
      end;
      end
      else if Status = 1 then
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
      FMainMenu.TampilTabForm2;
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
