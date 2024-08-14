unit UMasterWilayahAdministratif;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, RzButton, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzBtnEdt;

type
  TFMasterWilayahAdministratif = class(TForm)
    DBGridCustomer: TDBGridEh;
    dsMasterData: TDataSource;
    MemMasterData: TMemTableEh;
    Panel2: TPanel;
    btBatal_setwilayah: TRzBitBtn;
    btSimpan_setwilayah: TRzBitBtn;
    pnSetKares: TPanel;
    Label17: TLabel;
    Label43: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    edKode_setkares: TEdit;
    edNama_setkares: TEdit;
    edKDArea_setkares: TEdit;
    edArea_setkares: TEdit;
    MemMasterDatacode_prov: TStringField;
    MemMasterDataname_prov: TStringField;
    MemMasterDatacode_province: TStringField;
    MemMasterDatacode_kab: TStringField;
    MemMasterDataname_kab: TStringField;
    MemMasterDatacode_karesidenan: TStringField;
    MemMasterDatacode_regency: TStringField;
    MemMasterDatacode_kec: TStringField;
    MemMasterDataname_kec: TStringField;
    MemMasterDatapilih: TBooleanField;
    edKodeProvinsi: TEdit;
    edNamaProvinsi: TRzButtonEdit;
    edNamaKabupaten: TRzButtonEdit;
    edKodeKabupaten: TEdit;
    Label3: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label1: TLabel;
    procedure edNamaProvinsiButtonClick(Sender: TObject);
    procedure edNamaKabupatenButtonClick(Sender: TObject);
    procedure RefreshGrid;
    procedure btSimpan_setwilayahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall:string;
  end;

var
  FMasterWilayahAdministratif: TFMasterWilayahAdministratif;
  status:Integer;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UHomeLogin;


procedure TFMasterWilayahAdministratif.RefreshGrid;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT "code_prov", "name_prov", "code_province", "code_kab", '+
            ' "name_kab", "code_karesidenan", "code_regency", "code_kec", "name_kec" from '+
            ' (SELECT "code" as code_prov, "name" as name_prov '+
            ' from t_region_province WHERE deleted_at IS NULL) prov  '+
            ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
              ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL ) kab '+
              ' ON prov.code_prov=kab.code_province '+
            ' LEFT JOIN (SELECT "code_regency", "code" as code_kec, "name" as name_kec '+
              ' from t_region_subdistrict WHERE deleted_at IS NULL) kec ON '+
              ' kab.code_kab=kec.code_regency '+
            ' where ("code_karesidenan"='+QuotedStr(edKode_setkares.Text)+' '+
            ' OR "code_karesidenan"='+QuotedStr('')+') '+
            ' AND "code_prov"='+QuotedStr(edKodeProvinsi.Text)+' '+
            ' AND "code_kab"='+QuotedStr(edKodeKabupaten.Text)+' ');
    open;
  end;

    FMasterWilayahAdministratif.MemMasterData.active:=false;
    FMasterWilayahAdministratif.MemMasterData.active:=true;
    FMasterWilayahAdministratif.MemMasterData.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      Showmessage('Maaf, Data Tidak Ditemukan..');
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FMasterWilayahAdministratif.MemMasterData.insert;
     FMasterWilayahAdministratif.MemMasterData['code_prov']:=Dm.Qtemp.fieldbyname('code_prov').value;
     FMasterWilayahAdministratif.MemMasterData['name_prov']:=Dm.Qtemp.fieldbyname('name_prov').value;
     FMasterWilayahAdministratif.MemMasterData['code_province']:=Dm.Qtemp.fieldbyname('code_province').value;
     FMasterWilayahAdministratif.MemMasterData['code_kab']:=Dm.Qtemp.fieldbyname('code_kab').value;
     FMasterWilayahAdministratif.MemMasterData['name_kab']:=Dm.Qtemp.fieldbyname('name_kab').value;
     FMasterWilayahAdministratif.MemMasterData['code_karesidenan']:=Dm.Qtemp.fieldbyname('code_karesidenan').value;
     FMasterWilayahAdministratif.MemMasterData['code_regency']:=Dm.Qtemp.fieldbyname('code_regency').value;
     FMasterWilayahAdministratif.MemMasterData['code_kec']:=Dm.Qtemp.fieldbyname('code_kec').value;
     FMasterWilayahAdministratif.MemMasterData['name_kec']:=Dm.Qtemp.fieldbyname('name_kec').value;
       if Dm.Qtemp.fieldbyname('code_karesidenan').value=edKode_setkares.Text then
       begin
       FMasterWilayahAdministratif.MemMasterData['pilih']:=1;
       end;
       if Dm.Qtemp.fieldbyname('code_karesidenan').value<>edKode_setkares.Text then
       begin
       FMasterWilayahAdministratif.MemMasterData['pilih']:=0;
       end;

     FMasterWilayahAdministratif.MemMasterData.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFMasterWilayahAdministratif.btSimpan_setwilayahClick(
  Sender: TObject);
begin
    Status:=1;
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKDArea_setkares.Text='' then
      begin
        MessageDlg('Kode Area Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKDArea_setkares.SetFocus;
      end
      else if edKode_setkares.Text='' then
      begin
        MessageDlg('Kode Karesidenan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_setkares.SetFocus;
      end
      else if edKodeProvinsi.Text='' then
      begin
        MessageDlg('Nama Provinsi Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeProvinsi.SetFocus;
      end
      else if edKodeKabupaten.Text='' then
      begin
        MessageDlg('Nama Kabupaten Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeKabupaten.SetFocus;
      end
      else if Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
        close;
        sql.clear;
        sql.Text:=' UPDATE "t_region_regency" SET '+
                  ' "code_karesidenan"='+QuotedStr(FMasterWilayahAdministratif.edKode_setkares.Text)+' '+
                  ' WHERE "code"='+QuotedStr(FMasterWilayahAdministratif.edKodeKabupaten.Text)+';';
        ExecSQL;
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
end;

procedure TFMasterWilayahAdministratif.edNamaKabupatenButtonClick(
  Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='m_kabupaten';
  FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_province='+QuotedStr(edKodeProvinsi.text)+'');
  FMasterData.ShowModal;
end;

procedure TFMasterWilayahAdministratif.edNamaProvinsiButtonClick(
  Sender: TObject);
begin
  FMasterData.Caption:='Master Data Provinsi';
  FMasterData.vcall:='m_provinsi';
  FMasterData.update_grid('code','name','description','t_region_province','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

end.



