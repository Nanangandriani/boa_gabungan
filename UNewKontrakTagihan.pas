unit UNewKontrakTagihan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, RzButton,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzBtnEdt, Vcl.ExtCtrls, Vcl.ComCtrls, RzDTP, Vcl.Samples.Spin,
  Vcl.Buttons, RzPanel, RzRadGrp;

type
  TFNewKontrakTagihan = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edNamaPelanggan: TRzButtonEdit;
    edNoKontrak: TEdit;
    edNamaJenisKontrak: TRzButtonEdit;
    edKodePelanggan: TEdit;
    RzPageControl1: TRzPageControl;
    TabDataJasa: TRzTabSheet;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    edNPWP: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MemAlamat: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    EdKodeJenisKontrak: TEdit;
    Label15: TLabel;
    edJatuhTempo: TSpinEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edTermin: TSpinEdit;
    Label19: TLabel;
    btMasterSumberJenis: TSpeedButton;
    MemDataBiaya: TMemTableEh;
    dsDataBiaya: TDataSource;
    DBGridSumberPenjualan: TDBGridEh;
    rgIntegrasiBiaya: TRzRadioGroup;
    Label20: TLabel;
    edMenejFee: TSpinEdit;
    Label23: TLabel;
    Label24: TLabel;
    MemDataBiayakd_biaya: TStringField;
    MemDataBiayanm_biaya: TStringField;
    MemDataBiayamenejmen_fee: TSmallintField;
    MemDataBiayaakun_ppn: TStringField;
    MemDataBiayanama_ppn: TStringField;
    MemDataBiayapersen_ppn: TFloatField;
    MemDataBiayaakun_pph: TStringField;
    MemDataBiayanama_pph: TStringField;
    MemDataBiayapersen_pph: TFloatField;
    MemDataBiayaketerangan: TWideStringField;
    dtPeriodeAwal: TDateTimePicker;
    dtPeriodeAkhir: TDateTimePicker;
    Label25: TLabel;
    Label26: TLabel;
    edNilaiKontrak: TRzNumericEdit;
    procedure edNamaJenisKontrakButtonClick(Sender: TObject);
    procedure btMasterSumberJenisClick(Sender: TObject);
    procedure edNamaPelangganButtonClick(Sender: TObject);
    procedure DBGridSumberPenjualanColumns4EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridSumberPenjualanColumns7EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure edMenejFeeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure vCekGrid;
    procedure RefreshGrid;
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure InsertDetail;
  end;

var
  FNewKontrakTagihan: TFNewKontrakTagihan;
  status: integer;

implementation

{$R *.dfm}

uses UMasterData, Ubrowse_pelanggan, UDataModule, UCari_DaftarPerk, UHomeLogin;

procedure TFNewKontrakTagihan.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_billing_contract" ("created_at", "created_by", '+
            ' "nocontract", "cust_code", "cust_name", "cust_npwp", "address", '+
            ' "type_contract_code", "type_contract_name", "periode_first", "periode_end", '+
            ' "contract_value", "term_date", "due_date", "menj_fee", "cost_integration") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+QuotedStr(edNoKontrak.Text)+', '+
            ' '+QuotedStr(edKodePelanggan.Text)+', '+
            ' '+QuotedStr(edNamaPelanggan.Text)+', '+
            ' '+QuotedStr(edNPWP.Text)+', '+
            ' '+QuotedStr(MemAlamat.Text)+', '+
            ' '+QuotedStr(EdKodeJenisKontrak.Text)+', '+
            ' '+QuotedStr(edNamaJenisKontrak.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriodeAwal.Date))+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriodeAkhir.Date))+', '+
            ' '+QuotedStr(FloatToStr(edNilaiKontrak.Value))+', '+
            ' '+QuotedStr(FloatToStr(edTermin.Value))+', '+
            ' '+QuotedStr(FloatToStr(edJatuhTempo.Value))+', '+
            ' '+QuotedStr(FloatToStr(edMenejFee.Value))+', '+
            ' '+QuotedStr(IntToStr(rgIntegrasiBiaya.ItemIndex))+');');
    ExecSQL;
  end;
  InsertDetail;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FNewKontrakTagihan.Refresh;
end;

procedure TFNewKontrakTagihan.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_billing_contract" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' cust_code='+QuotedStr(edKodePelanggan.Text)+','+
              ' cust_name='+QuotedStr(edNamaPelanggan.Text)+','+
              ' cust_npwp='+QuotedStr(edNPWP.Text)+','+
              ' address='+QuotedStr(MemAlamat.Text)+','+
              ' type_contract_code='+QuotedStr(EdKodeJenisKontrak.Text)+','+
              ' type_contract_name='+QuotedStr(edNamaJenisKontrak.Text)+','+
              ' periode_first='+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriodeAwal.Date))+','+
              ' periode_end='+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriodeAkhir.Date))+','+
              ' contract_value='+QuotedStr(FloatToStr(edNilaiKontrak.value))+','+
              ' term_date='+QuotedStr(FloatToStr(edTermin.value))+','+
              ' due_date='+QuotedStr(FloatToStr(edJatuhTempo.value))+','+
              ' menj_fee='+QuotedStr(FloatToStr(edMenejFee.value))+','+
              ' cost_integration='+QuotedStr(IntToStr(rgIntegrasiBiaya.ItemIndex))+' '+
              ' Where nocontract='+QuotedStr(edNoKontrak.Text)+'');
      ExecSQL;
    end;
    InsertDetail;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
    FNewKontrakTagihan.Refresh;
end;

procedure TFNewKontrakTagihan.InsertDetail;
begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "public"."t_billing_contract_det" '+
            ' WHERE "nocontract"='+QuotedStr(edNoKontrak.Text)+';';
  ExecSQL;
  end;

  MemDataBiaya.First;
  while not MemDataBiaya.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "public"."t_billing_contract_det" ("nocontract", "cost_code", '+
              ' "cost_name", "menj_fee", "account_code_ppn", "account_name_ppn", '+
              ' "ppn_percent", "account_code_pph", "account_name_pph", "pph_percent", '+
              ' "description") '+
              ' Values( '+
              ' '+QuotedStr(edNoKontrak.Text)+', '+
              ' '+QuotedStr(MemDataBiaya['kd_biaya'])+', '+
              ' '+QuotedStr(MemDataBiaya['nm_biaya'])+', '+
              ' '+QuotedStr(MemDataBiaya['menejmen_fee'])+', '+
              ' '+QuotedStr(MemDataBiaya['akun_ppn'])+', '+
              ' '+QuotedStr(MemDataBiaya['nama_ppn'])+', '+
              ' '+QuotedStr(MemDataBiaya['persen_ppn'])+', '+
              ' '+QuotedStr(MemDataBiaya['akun_pph'])+', '+
              ' '+QuotedStr(MemDataBiaya['nama_pph'])+', '+
              ' '+QuotedStr(MemDataBiaya['persen_pph'])+', '+
              ' '+QuotedStr(MemDataBiaya['keterangan'])+' );';
    ExecSQL;
    end;
  MemDataBiaya.Next;
  end;
end;

procedure TFNewKontrakTagihan.vCekGrid;
begin
   try
   begin
      {MemDataBiaya.First;
      while not MemDataBiaya.Eof do
      begin
      if MemDataBiaya.FieldByName('kd_biaya').AsString = 'MENFEE' then
      begin
        MemDataBiaya.Edit;
        MemDataBiaya['menejmen_fee']:=0;
      end;
      MemDataBiaya.Next;
      end; }
      {if MemDataBiaya['kd_biaya']='MENFEE' then
      begin
        MemDataBiaya.Edit;
        MemDataBiaya['menejmen_fee']:=0;
        MemDataBiaya['persen_ppn']:=MemDataBiaya['persen_ppn'];
        MemDataBiaya['persen_pph']:=MemDataBiaya['persen_pph'];
        MemDataBiaya['keterangan']:=MemDataBiaya['keterangan'];
        MemDataBiaya.Post;
      end; }
   end;
   Except;
   end;
end;

procedure TFNewKontrakTagihan.RefreshGrid;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "code", "name", "description", "code_master" FROM '+
            ' "t_type_contract_service_det" where deleted_at IS NULL ) a '+
            ' WHERE "code_master"='+QuotedStr(EdKodeJenisKontrak.Text)+' '+
            ' Order By code, name desc');
    open;
  end;

    FNewKontrakTagihan.MemDataBiaya.active:=false;
    FNewKontrakTagihan.MemDataBiaya.active:=true;
    FNewKontrakTagihan.MemDataBiaya.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FNewKontrakTagihan.MemDataBiaya.active:=false;
      FNewKontrakTagihan.MemDataBiaya.active:=true;
      FNewKontrakTagihan.MemDataBiaya.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FNewKontrakTagihan.MemDataBiaya.insert;
     FNewKontrakTagihan.MemDataBiaya['kd_biaya']:=Dm.Qtemp.fieldbyname('code').value;
     FNewKontrakTagihan.MemDataBiaya['nm_biaya']:=Dm.Qtemp.fieldbyname('name').value;
     FNewKontrakTagihan.MemDataBiaya['menejmen_fee']:=0;
     FNewKontrakTagihan.MemDataBiaya['akun_ppn']:='0';
     FNewKontrakTagihan.MemDataBiaya['nama_ppn']:='0';
     FNewKontrakTagihan.MemDataBiaya['persen_ppn']:=0;
     FNewKontrakTagihan.MemDataBiaya['akun_pph']:='0';
     FNewKontrakTagihan.MemDataBiaya['nama_pph']:='0';
     FNewKontrakTagihan.MemDataBiaya['persen_pph']:=0;
     FNewKontrakTagihan.MemDataBiaya['keterangan']:=Dm.Qtemp.fieldbyname('description').value;
     FNewKontrakTagihan.MemDataBiaya.post;
     Dm.Qtemp.next;
     //showmessage(Dm.Qtemp.fieldbyname('code').value);
    end;
    end;
end;

procedure TFNewKontrakTagihan.Clear;
begin
  edNoKontrak.Clear;
  edKodePelanggan.Clear;
  edNamaPelanggan.Clear;
  edNPWP.Clear;
  MemAlamat.Clear;
  dtPeriodeAwal.Date:=Now();
  dtPeriodeAkhir.Date:=Now();
  EdKodeJenisKontrak.Clear;
  edNamaJenisKontrak.Clear;
  edNilaiKontrak.Value:=0.0;
  edTermin.Value:=0;
  edJatuhTempo.Value:=0;
  edMenejFee.Value:=0;
  rgIntegrasiBiaya.ItemIndex:=0;
  MemDataBiaya.EmptyTable;
end;

procedure TFNewKontrakTagihan.DBGridSumberPenjualanColumns4EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='kontrak_jasa_ppn';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                ' left join t_ak_header c on b.header_code=c.header_code'+
                ' GROUP BY b.code,b.account_name,c.header_name '+
                ' ORDER BY b.code,b.account_name,c.header_name';
      Execute;
    end;
  end;
end;

procedure TFNewKontrakTagihan.DBGridSumberPenjualanColumns7EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='kontrak_jasa_pph';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                ' left join t_ak_header c on b.header_code=c.header_code'+
                ' GROUP BY b.code,b.account_name,c.header_name '+
                ' ORDER BY b.code,b.account_name,c.header_name';
      Execute;
    end;
  end;
end;

procedure TFNewKontrakTagihan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNewKontrakTagihan.BSaveClick(Sender: TObject);
begin
  MessageDlg('Buatkan Validasi Kontrak Jika sudah di pakai tidak dapat di udpate..!!',mtInformation,[MBOK],0);
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edNoKontrak.Text='' then
      begin
        MessageDlg('Data Nomor Kontrak Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNoKontrak.SetFocus;
      end
      else if edNamaPelanggan.Text='' then
      begin
        MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNamaPelanggan.SetFocus;
      end
      else if EdKodeJenisKontrak.Text='' then
      begin
        MessageDlg('Data Jenis Kontrak Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNamaJenisKontrak.SetFocus;
      end
      else if Status = 0 then
      begin
      if MessageDlg ('Anda Yakin Kontrak No. '+edNoKontrak.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        with Dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.add(' SELECT * from ('+
                  ' SELECT* FROM "public"."t_billing_contract") a '+
                  ' WHERE "nocontract"='+QuotedStr(edNoKontrak.Text)+' '+
                  ' Order By nocontract desc');
          open;
        end;

        if Dm.Qtemp.RecordCount<>0 then
        begin
          ShowMessage('Nomor Kontrak Anda Sudah Terdaftar !!!');
          exit;
        end;

        Save;
        Dm.Koneksi.Commit;
      end;
      end
      else if Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
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
end;

procedure TFNewKontrakTagihan.btMasterSumberJenisClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data';
  FMasterData.vcall:='setmaster_jenis_kontrakTagihan';
  FMasterData.update_grid('code','name','description','t_type_contract_service','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.Show;
end;

procedure TFNewKontrakTagihan.edMenejFeeExit(Sender: TObject);
begin
  if edMenejFee.Value<>0 then
  begin
    FNewKontrakTagihan.MemDataBiaya.active:=false;
    FNewKontrakTagihan.MemDataBiaya.active:=true;

      MemDataBiaya.First;
      while not MemDataBiaya.Eof do
      begin
        with FNewKontrakTagihan do
        begin
          if MemDataBiaya.FieldByName('kd_biaya').AsString <> 'MENFEE' then
          begin
            MemDataBiaya.Edit;
            MemDataBiaya['menejmen_fee']:=edMenejFee.Value;
            MemDataBiaya.post;
          end;
        end;
      MemDataBiaya.Next;
      end;


      MemDataBiaya.First;
      while not MemDataBiaya.Eof do
      begin
        if MemDataBiaya.FieldByName('kd_biaya').AsString = 'MENFEE' then
        begin
          MemDataBiaya.Delete;
        end;
      MemDataBiaya.Next;
      end;

     FNewKontrakTagihan.MemDataBiaya.insert;
     FNewKontrakTagihan.MemDataBiaya['kd_biaya']:='MENFEE';
     FNewKontrakTagihan.MemDataBiaya['nm_biaya']:='MENEJMEN FEE';
     FNewKontrakTagihan.MemDataBiaya['menejmen_fee']:=0;
     FNewKontrakTagihan.MemDataBiaya['akun_ppn']:='0';
     FNewKontrakTagihan.MemDataBiaya['nama_ppn']:='0';
     FNewKontrakTagihan.MemDataBiaya['persen_ppn']:=0;
     FNewKontrakTagihan.MemDataBiaya['akun_pph']:='0';
     FNewKontrakTagihan.MemDataBiaya['nama_pph']:='0';
     FNewKontrakTagihan.MemDataBiaya['persen_pph']:=0;
     FNewKontrakTagihan.MemDataBiaya['keterangan']:='-';
     FNewKontrakTagihan.MemDataBiaya.post;
  end;
  if edMenejFee.Value=0 then
  begin
      MemDataBiaya.First;
      while not MemDataBiaya.Eof do
      begin
        if MemDataBiaya.FieldByName('kd_biaya').AsString = 'MENFEE' then
        begin
          MemDataBiaya.Delete;
        end;
        if MemDataBiaya.FieldByName('kd_biaya').AsString <> 'MENFEE' then
        begin
          MemDataBiaya.Edit;
          MemDataBiaya['menejmen_fee']:=0;
          MemDataBiaya.post;
        end;
      MemDataBiaya.Next;
      end;
  end;
end;

procedure TFNewKontrakTagihan.edNamaJenisKontrakButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data';
  FMasterData.vcall:='master_jenis_kontrakTagihan';
  FMasterData.update_grid('code','name','description','t_type_contract_service','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.Show;
end;

procedure TFNewKontrakTagihan.edNamaPelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='kontrak_jasa';
  Fbrowse_data_pelanggan.ShowModal;
end;

end.
