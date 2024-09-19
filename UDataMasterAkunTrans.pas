unit UDataMasterAkunTrans;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.Samples.Spin, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, RzPanel, RzRadGrp;

type
  TFDataMasterAkunTrans = class(TForm)
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edNamaModul: TRzButtonEdit;
    edKodeModul: TEdit;
    edKodeTrans: TEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    RzPageControl1: TRzPageControl;
    TabSDetailPel: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    DSDetail: TDataSource;
    MemDetail: TMemTableEh;
    MemDetailkd_akun: TStringField;
    MemDetailnm_akun: TStringField;
    MemDetailposisi: TStringField;
    Label10: TLabel;
    Label11: TLabel;
    edNamaTrans: TEdit;
    MemKeterangan: TMemo;
    Label4: TLabel;
    edNamaBank: TRzButtonEdit;
    edNorekening: TEdit;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    rgTagihan: TRzRadioGroup;
    Label12: TLabel;
    EdKodeInitial: TEdit;
    Label13: TLabel;
    procedure edNamaModulButtonClick(Sender: TObject);
    procedure DBGridDetailColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BBatalClick(Sender: TObject);
    procedure edNamaBankButtonClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    Status: Integer;
    { Public declarations }
    procedure Clear;
    procedure Autocode;
    procedure Save;
    procedure Update;
    procedure InsertDetail;
    procedure RefreshGrid;
  end;

var
  FDataMasterAkunTrans: TFDataMasterAkunTrans;

implementation

{$R *.dfm}

uses UCari_DaftarPerk, UMasterData, UDataModule, UHomeLogin,
  UListMasterAkunTrans;


procedure TFDataMasterAkunTrans.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "code_module", "code_trans", "code_account", "name_account", '+
            ' "position", "account_number_bank" '+
            ' FROM  "public"."t_master_trans_account_det") a '+
            ' WHERE code_trans='+QuotedStr(edKodeTrans.Text)+''+
            ' -- AND code_module='+QuotedStr(edKodeModul.Text)+''+
            ' -- AND account_number_bank='+QuotedStr(edNorekening.Text)+' '+
            ' Order By code_module, code_trans, position desc');
    open;
  end;

    FDataMasterAkunTrans.MemDetail.active:=false;
    FDataMasterAkunTrans.MemDetail.active:=true;
    FDataMasterAkunTrans.MemDetail.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FDataMasterAkunTrans.MemDetail.active:=false;
      FDataMasterAkunTrans.MemDetail.active:=true;
      FDataMasterAkunTrans.MemDetail.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FDataMasterAkunTrans.MemDetail.insert;
     FDataMasterAkunTrans.MemDetail['kd_akun']:=Dm.Qtemp.FieldByName('code_account').AsString;
     FDataMasterAkunTrans.MemDetail['nm_akun']:=Dm.Qtemp.FieldByName('name_account').AsString;
     FDataMasterAkunTrans.MemDetail['posisi']:=Dm.Qtemp.FieldByName('position').AsString;
     FDataMasterAkunTrans.MemDetail.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFDataMasterAkunTrans.InsertDetail;
begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "public"."t_master_trans_account_det"  '+
            ' WHERE code_trans='+QuotedStr(edKodeTrans.Text)+' '+
            ' -- AND code_module='+QuotedStr(edKodeModul.Text)+' '+
            ' -- AND account_number_bank='+QuotedStr(edNorekening.Text);
  ExecSQL;
  end;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "public"."t_master_trans_account_det" '+
              ' ("code_module", "code_trans", "code_account", "name_account", '+
              ' "position", "account_number_bank") '+
              ' Values( '+
              ' '+QuotedStr(edKodeModul.Text)+', '+
              ' '+QuotedStr(edKodeTrans.Text)+', '+
              ' '+QuotedStr(MemDetail['kd_akun'])+', '+
              ' '+QuotedStr(MemDetail['nm_akun'])+', '+
              ' '+QuotedStr(MemDetail['posisi'])+', '+
              ' '+QuotedStr(edNorekening.Text)+');';
    ExecSQL;
    end;
  MemDetail.Next;
  end;
end;

procedure TFDataMasterAkunTrans.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_master_trans_account" ("created_at", "created_by",  '+
            ' "status_bill", "code_module", "name_module", "code_trans", "name_trans", "description", '+
            ' "account_number_bank", "account_name_bank", "initial_code") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+IntToStr(rgTagihan.ItemIndex)+', '+
            ' '+QuotedStr(edKodeModul.Text)+', '+
            ' '+QuotedStr(edNamaModul.Text)+', '+
            ' '+QuotedStr(edKodeTrans.Text)+', '+
            ' '+QuotedStr(edNamaTrans.Text)+', '+
            ' '+QuotedStr(MemKeterangan.Text)+', '+
            ' '+QuotedStr(edNorekening.Text)+', '+
            ' '+QuotedStr(edNamaBank.Text)+', '+
            ' '+QuotedStr(EdKodeInitial.Text)+' );');
    ExecSQL;
  end;
  InsertDetail;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListMasterAkunTrans.Refresh;
end;

procedure TFDataMasterAkunTrans.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_master_trans_account" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' status_bill='+IntToStr(rgTagihan.ItemIndex)+','+
              ' name_module='+QuotedStr(edNamaModul.Text)+','+
              ' name_trans='+QuotedStr(edNamaTrans.Text)+','+
              ' account_name_bank='+QuotedStr(edNamaBank.Text)+','+
              ' initial_code='+QuotedStr(EdKodeInitial.Text)+','+
              ' description='+QuotedStr(MemKeterangan.Text)+' '+
              ' Where code_module='+QuotedStr(edKodeModul.Text)+' '+
              ' AND code_trans='+QuotedStr(edKodeTrans.Text)+' '+
              ' AND account_number_bank='+QuotedStr(edNorekening.Text)+'');
      ExecSQL;
    end;
    InsertDetail;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
    FListMasterAkunTrans.Refresh;
end;

procedure TFDataMasterAkunTrans.Autocode;
var
  kode : String;
  Urut : Integer;
begin
  With Dm.Qtemp do
  begin
    Close;
    SQL.Clear;
    Sql.Text :=' select * from t_master_trans_account'+
               ' where code_module='+QuotedStr(edKodeModul.Text)+''+
               ' -- AND account_number_bank='+QuotedStr(edNorekening.Text)+'';
    open;
  end;

  if  Dm.Qtemp.RecordCount = 0 then urut := 1 else
  if  Dm.Qtemp.RecordCount > 0 then
  begin
      With  Dm.Qtemp do
      begin
        Close;
        Sql.Clear;
        Sql.Text :=' select count(code_trans) as hasil '+
                   ' from t_master_trans_account '+
                   ' where code_module='+QuotedStr(edKodeModul.Text)+' '+
                   ' -- AND account_number_bank='+QuotedStr(edNorekening.Text)+'';
        Open;
      end;
      Urut :=  Dm.Qtemp.FieldByName('hasil').AsInteger + 1;
  end;
  edKodeTrans.Clear;
  kode := inttostr(urut);
  if Length(kode)=1 then
  begin
    kode := '00'+kode;
  end
  else
  if Length(kode)=2 then
  begin
    kode := '0'+kode;
  end
  else
  if Length(kode)=3 then
  begin
    kode := kode;
  end;
  edKodeTrans.Text := edKodeModul.Text+'.'+Kode;
end;

procedure TFDataMasterAkunTrans.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataMasterAkunTrans.BSaveClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKodeModul.Text='' then
      begin
        MessageDlg('Data Modul Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeModul.SetFocus;
      end
      else if edKodeTrans.Text='' then
      begin
        MessageDlg('Data Faktur Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeTrans.SetFocus;
      end
      else if edNorekening.text='' then
      begin
        MessageDlg('Nomor Rekening Tidak Boleh Kosong..!!',mtInformation,[mbRetry],0);
        edNorekening.SetFocus;
      end
      else if FDataMasterAkunTrans.Status = 0 then
      begin
      FDataMasterAkunTrans.Autocode;
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Order No. '+edKodeTrans.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        Save;
        Dm.Koneksi.Commit;
      end;
      end
      else if FDataMasterAkunTrans.Status = 1 then
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

procedure TFDataMasterAkunTrans.Clear;
begin
  edNamaModul.Clear;
  edKodeModul.Clear;
  edNamaBank.Clear;
  edNorekening.Clear;
  edKodeTrans.Clear;
  edNamaTrans.Clear;
  MemKeterangan.Clear;
  EdKodeInitial.Clear;
  MemDetail.EmptyTable;
end;


procedure TFDataMasterAkunTrans.DBGridDetailColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='m_akuntrans';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                ' left join t_ak_header c on b.header_code=c.header_code '+
                ' left join t_ak_module d on a.module_id=d.id '+
                ' where  d.id='+QuotedStr(edKodeModul.Text)+' '+
                ' GROUP BY b.code,b.account_name,c.header_name '+
                ' ORDER BY b.code,b.account_name,c.header_name';
      Execute;
    end;
  end;
end;

procedure TFDataMasterAkunTrans.edNamaBankButtonClick(Sender: TObject);
begin
  if Length(edKodeModul.Text)=0 then
  begin
    ShowMessage('Silakan Pilih Modul');
  end;

  if Length(edKodeModul.Text)<>0 then
  begin
  FMasterData.Caption:='Master Data Bank';
  FMasterData.vcall:='m_bank';
  FMasterData.update_grid('rekening_no','bank_name','currency','t_Bank','WHERE	deleted_at IS NULL ORDER BY id desc');
  FMasterData.ShowModal;
  Autocode;
  end;
end;

procedure TFDataMasterAkunTrans.edNamaModulButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Modul';
  FMasterData.vcall:='m_modul';
  FMasterData.update_grid('id','module_name','0','t_ak_module','WHERE	deleted_at IS NULL ORDER BY id desc');
  FMasterData.ShowModal;
  //Autocode;
end;

end.
