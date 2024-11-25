unit USetJenisKontrakTagihan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Vcl.StdCtrls, Vcl.ExtCtrls, RzTabs,
  Vcl.Mask, RzEdit, RzBtnEdt;

type
  TFSetJenisKontrakTagihan = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSetJenis: TRzTabSheet;
    Panel5: TPanel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    edNama: TEdit;
    edKet: TEdit;
    Panel2: TPanel;
    btBatalSumberOrder: TRzBitBtn;
    btSimpanSumberOrder: TRzBitBtn;
    btBaruSumberOrder: TRzBitBtn;
    DBGrid_SumberOrder: TDBGridEh;
    dsJenis: TDataSource;
    MemJenis: TMemTableEh;
    MemJeniskode: TStringField;
    MemJenisnama: TStringField;
    MemJenisketerangan: TStringField;
    edKode: TEdit;
    procedure DBGrid_SumberOrderColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure btBaruSumberOrderClick(Sender: TObject);
    procedure btBatalSumberOrderClick(Sender: TObject);
    procedure btSimpanSumberOrderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Status : Integer;
    procedure Clear;
    procedure RefreshGrid;
    procedure Save;
    procedure Update;
    procedure InsertDetail;
  end;

var
  FSetJenisKontrakTagihan: TFSetJenisKontrakTagihan;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UMasterData;
procedure TFSetJenisKontrakTagihan.InsertDetail;
begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "public"."t_type_contract_service_det" '+
            ' WHERE "code_master"='+QuotedStr(edKode.Text)+';';
  ExecSQL;
  end;

  MemJenis.First;
  while not MemJenis.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "public"."t_type_contract_service_det" ("code_master", "code", "name", '+
              ' "description") '+
              ' Values( '+
              ' '+QuotedStr(edKode.Text)+', '+
              ' '+QuotedStr(MemJenis['kode'])+', '+
              ' '+QuotedStr(MemJenis['nama'])+', '+
              ' '+QuotedStr(MemJenis['keterangan'])+' );';
    ExecSQL;
    end;
  MemJenis.Next;
  end;
end;

procedure TFSetJenisKontrakTagihan.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_type_contract_service" ("created_at", '+
            ' "created_by", "code", "name", "description") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+QuotedStr(edKode.Text)+', '+
            ' '+QuotedStr(edNama.Text)+', '+
            ' '+QuotedStr(edKet.Text)+');');
    ExecSQL;
  end;
  InsertDetail;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
end;

procedure TFSetJenisKontrakTagihan.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_type_contract_service" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' code='+QuotedStr(edKode.Text)+','+
              ' name='+QuotedStr(edNama.Text)+','+
              ' description='+QuotedStr(edKet.Text)+''+
              ' WHERE code='+QuotedStr(edKode.Text)+'');
      ExecSQL;
    end;
    InsertDetail;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
end;

procedure TFSetJenisKontrakTagihan.RefreshGrid;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "code", "name", "description", "code_master" FROM '+
            ' "t_type_contract_service_det" where deleted_at IS NULL ) a '+
            ' WHERE "code_master"='+QuotedStr(edKode.Text)+' '+
            ' Order By code, name desc');
    open;
  end;

    FSetJenisKontrakTagihan.MemJenis.active:=false;
    FSetJenisKontrakTagihan.MemJenis.active:=true;
    FSetJenisKontrakTagihan.MemJenis.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FSetJenisKontrakTagihan.MemJenis.active:=false;
      FSetJenisKontrakTagihan.MemJenis.active:=true;
      FSetJenisKontrakTagihan.MemJenis.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FSetJenisKontrakTagihan.MemJenis.insert;
     FSetJenisKontrakTagihan.MemJenis['kode']:=Dm.Qtemp.fieldbyname('code').value;
     FSetJenisKontrakTagihan.MemJenis['nama']:=Dm.Qtemp.fieldbyname('name').value;
     FSetJenisKontrakTagihan.MemJenis['keterangan']:=Dm.Qtemp.fieldbyname('description').value;
     FSetJenisKontrakTagihan.MemJenis.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFSetJenisKontrakTagihan.btBaruSumberOrderClick(Sender: TObject);
begin
  FSetJenisKontrakTagihan.Clear;
  Status:=0;
end;

procedure TFSetJenisKontrakTagihan.btBatalSumberOrderClick(Sender: TObject);
begin
  Close;
end;

procedure TFSetJenisKontrakTagihan.btSimpanSumberOrderClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode.Text='' then
      begin
        MessageDlg('Kode Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode.SetFocus;
      end
      else if edNama.Text='' then
      begin
        MessageDlg('Nama Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNama.SetFocus;
      end
      else if Status = 0 then
      begin
      if MessageDlg ('Apa Anda Yakin Menyimpan Data ini  ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
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

procedure TFSetJenisKontrakTagihan.Clear;
begin
  edKode.Clear;
  edNama.Clear;
  edKet.Clear;
  MemJenis.EmptyTable;
  MemJenis.Active:=false;
  MemJenis.Active:=true;
end;

procedure TFSetJenisKontrakTagihan.DBGrid_SumberOrderColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  FMasterData.Caption:='Master Data Barang';
  FMasterData.vcall:='jasa_jns_kontrak';
  FMasterData.update_grid('item_code','item_name','unit','t_item','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

end.
