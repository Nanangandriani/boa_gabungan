unit UNew_TujuanAwal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RzButton,
  RzEdit, Vcl.Mask, RzBtnEdt;

type
  TFNew_TujuanAwal = class(TForm)
    Panel4: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edKode: TEdit;
    edNama: TEdit;
    edLatitude: TEdit;
    edLongitude: TEdit;
    Panel3: TPanel;
    btBatalParameter: TRzBitBtn;
    btSaveParameter: TRzBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    edNamaProvinsi: TRzButtonEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MemAlamat: TRzMemo;
    edKodeProvinsi: TEdit;
    edKodeKabupaten: TEdit;
    edKodeKecamatan: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    edNamaKabupaten: TRzButtonEdit;
    edNamaKecamatan: TRzButtonEdit;
    procedure btBatalParameterClick(Sender: TObject);
    procedure btSaveParameterClick(Sender: TObject);
    procedure edNamaProvinsiButtonClick(Sender: TObject);
    procedure edNamaKabupatenButtonClick(Sender: TObject);
    procedure edNamaKecamatanButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure Autocode;
  end;

var
  FNew_TujuanAwal: TFNew_TujuanAwal;
  status: integer;

implementation

{$R *.dfm}

uses UDataModule, UMainMenu, UHomeLogin, UListTujualAwal, UMasterData;

procedure TFNew_TujuanAwal.Autocode;
var
  kode : String;
  Urut : Integer;
begin
  With DM.Qtemp2 do
  begin
    Close;
    SQL.Clear;
    Sql.Text := 'select * from "db_center"."t_starting_location"  ';
    open;
  end;

  if Dm.Qtemp2.RecordCount = 0 then urut := 1 else
  if Dm.Qtemp2.RecordCount > 0 then
  begin
      With Dm.Qtemp do
      begin
        Close;
        Sql.Clear;
        Sql.Text := 'select count(code) as hasil from "db_center"."t_starting_location" ';
        Open;
      end;
      Urut := dm.Qtemp.FieldByName('hasil').AsInteger + 1;
  end;
  Edkode.Clear;
  kode := inttostr(urut);
  kode := Copy('00000'+kode, length('00000'+kode)-4, 5);
  Edkode.Text := 'LA'+Kode;
end;

procedure TFNew_TujuanAwal.btSaveParameterClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if Edkode.Text='' then
      begin
        MessageDlg('Kode Wajib Diisi..!!',mtInformation,[mbRetry],0);
        Edkode.SetFocus;
      end
      else if Ednama.Text='' then
      begin
        MessageDlg('Nama Wajib Diisi..!!',mtInformation,[mbRetry],0);
        Ednama.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
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

procedure TFNew_TujuanAwal.Save;
begin
  Autocode;
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "db_center"."t_starting_location"( "code", "name", "address", '+
            ' "code_regency", "name_regency", "latitude", "longitude", '+
            ' "code_province", "name_province", "code_subdistrict", "name_subdistrict", '+
            ' "created_at", "created_by" ) '+
            ' Values( '+
            ' '+QuotedStr(Edkode.Text)+', '+
            ' '+QuotedStr(Ednama.Text)+', '+
            ' '+QuotedStr(MemAlamat.Text)+', '+
            ' '+QuotedStr(edKodeKabupaten.Text)+', '+
            ' '+QuotedStr(edNamaKabupaten.Text)+', '+
            ' '+QuotedStr(edLatitude.Text)+', '+
            ' '+QuotedStr(edLongitude.Text)+', '+
            ' '+QuotedStr(edKodeProvinsi.Text)+', '+
            ' '+QuotedStr(edNamaProvinsi.Text)+', '+
            ' '+QuotedStr(edKodeKecamatan.Text)+', '+
            ' '+QuotedStr(edNamaKecamatan.Text)+', '+
            ' now(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+');');
    ExecSQL;
  end;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListTujualAwal.Refresh;
end;


procedure TFNew_TujuanAwal.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' Update "db_center"."t_starting_location" set '+
              ' name='+QuotedStr(Ednama.Text)+', '+
              ' address='+QuotedStr(MemAlamat.Text)+','+
              ' code_regency='+QuotedStr(edKodeKabupaten.Text)+','+
              ' name_regency='+QuotedStr(edNamaKabupaten.Text)+','+
              ' latitude='+QuotedStr(edLatitude.Text)+','+
              ' longitude='+QuotedStr(edLongitude.Text)+','+
              ' code_province='+QuotedStr(edKodeProvinsi.Text)+','+
              ' name_province='+QuotedStr(edNamaProvinsi.Text)+','+
              ' code_subdistrict='+QuotedStr(edKodeKecamatan.Text)+','+
              ' name_subdistrict='+QuotedStr(edNamaKecamatan.Text)+','+
              ' updated_at=now(), '+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
              ' Where code='+QuotedStr(Edkode.Text)+' ');
      ExecSQL;
    end;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
    FListTujualAwal.Refresh;
end;

procedure TFNew_TujuanAwal.Clear;
begin
  edKode.Clear;
  edNama.Clear;
  edLatitude.Clear;
  edLongitude.Clear;
  edNamaProvinsi.Clear;
  edNamaKabupaten.Clear;
  edNamaKecamatan.Clear;
  MemAlamat.Clear;
  edKodeProvinsi.Clear;
  edKodeKabupaten.Clear;
  edKodeKecamatan.Clear;
end;

procedure TFNew_TujuanAwal.edNamaKabupatenButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='m_tujuan_awal_kab';
  FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_province='+QuotedStr(edKodeProvinsi.text)+'');
  FMasterData.ShowModal;
end;

procedure TFNew_TujuanAwal.edNamaKecamatanButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kecamatan';
  FMasterData.vcall:='m_tujuan_awal_kec';
  FMasterData.update_grid('code','name','description','t_region_subdistrict','WHERE	deleted_at IS NULL and code_regency='+QuotedStr(edKodeKabupaten.text)+'');
  FMasterData.ShowModal;
end;

procedure TFNew_TujuanAwal.edNamaProvinsiButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Provinsi';
  FMasterData.vcall:='m_tujuan_awal_prov';
  FMasterData.update_grid('code','name','description','t_region_province','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFNew_TujuanAwal.btBatalParameterClick(Sender: TObject);
begin
  Clear;
  Close;
end;

end.
