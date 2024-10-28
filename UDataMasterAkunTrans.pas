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
    DSDetail: TDataSource;
    MemDetail: TMemTableEh;
    MemDetailkd_akun: TStringField;
    MemDetailnm_akun: TStringField;
    MemDetailposisi: TStringField;
    RzPageControl2: TRzPageControl;
    TabBank: TRzTabSheet;
    TabPembelian: TRzTabSheet;
    TabPenjualan: TRzTabSheet;
    TabKas: TRzTabSheet;
    Panel3: TPanel;
    Label30: TLabel;
    Label36: TLabel;
    edAkunPiutangLainLain: TRzButtonEdit;
    edAkunPiutang: TRzButtonEdit;
    edNamaPiutang: TEdit;
    edNamaPiutangLain: TEdit;
    Label35: TLabel;
    Label29: TLabel;
    Panel7: TPanel;
    btClose_Close: TRzBitBtn;
    btSave_Jual: TRzBitBtn;
    Panel5: TPanel;
    Panel8: TPanel;
    btClose_Beli: TRzBitBtn;
    btSave_Beli: TRzBitBtn;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edNamaModulJual: TRzButtonEdit;
    edKodeModulJual: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    MemKeteranganJual: TMemo;
    edNamaTransJual: TEdit;
    edKodeTransJual: TEdit;
    EdKodeInitialJual: TEdit;
    Label27: TLabel;
    edNamaModulBeli: TRzButtonEdit;
    MemKeteranganbeli: TMemo;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    edNamaUangMukaHutang: TEdit;
    edNamaHutang: TEdit;
    EdKodeInitialBeli: TEdit;
    edKodeTransBeli: TEdit;
    edNamaTransBeli: TEdit;
    edKodeModulBeli: TEdit;
    edAkunUangMukaHutang: TRzButtonEdit;
    edAkunHutang: TRzButtonEdit;
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edNamaModul: TRzButtonEdit;
    edKodeModul: TEdit;
    edKodeTrans: TEdit;
    edNamaTrans: TEdit;
    MemKeterangan: TMemo;
    edNamaBank: TRzButtonEdit;
    edNorekening: TEdit;
    rgTagihan: TRzRadioGroup;
    EdKodeInitial: TEdit;
    RzPageControl1: TRzPageControl;
    TabSDetailPel: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Panel4: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    edNamaModulKas: TRzButtonEdit;
    edKodeModulKas: TEdit;
    edKodeTransKas: TEdit;
    edNamaTransKas: TEdit;
    MemKeteranganKas: TMemo;
    EdKodeInitialKas: TEdit;
    RzPageControl3: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    Panel6: TPanel;
    btClose_Kas: TRzBitBtn;
    btSave_Kas: TRzBitBtn;
    rgTagihanKas: TRzRadioGroup;
    DSDetailKas: TDataSource;
    MemDetailKas: TMemTableEh;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    rgPPH: TRzRadioGroup;
    rgPPN: TRzRadioGroup;
    rgPotongan: TRzRadioGroup;
    Label50: TLabel;
    Label51: TLabel;
    edAkunJenisTax: TRzButtonEdit;
    edNamaJenisTax: TEdit;
    Label52: TLabel;
    Label53: TLabel;
    edPersenPPNJual: TEdit;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    edAkunPPNJual: TRzButtonEdit;
    edNamaPPNJual: TEdit;
    procedure edNamaModulButtonClick(Sender: TObject);
    procedure DBGridDetailColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BBatalClick(Sender: TObject);
    procedure edNamaBankButtonClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure edNamaModulKasButtonClick(Sender: TObject);
    procedure edNamaModulJualButtonClick(Sender: TObject);
    procedure edNamaModulBeliButtonClick(Sender: TObject);
    procedure DBGridEh1Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure edAkunPiutangButtonClick(Sender: TObject);
    procedure edAkunPiutangLainLainButtonClick(Sender: TObject);
    procedure edAkunHutangButtonClick(Sender: TObject);
    procedure edAkunUangMukaHutangButtonClick(Sender: TObject);
    procedure btSave_BeliClick(Sender: TObject);
    procedure btClose_BeliClick(Sender: TObject);
    procedure btClose_CloseClick(Sender: TObject);
    procedure btClose_KasClick(Sender: TObject);
    procedure btSave_JualClick(Sender: TObject);
    procedure btSave_KasClick(Sender: TObject);
    procedure edAkunJenisTaxButtonClick(Sender: TObject);
    procedure edAkunPPNJualButtonClick(Sender: TObject);
    procedure rgPPNClick(Sender: TObject);
  private
    { Private declarations }
  public
    Status: Integer;
    id_modul: string;
    { Public declarations }
    procedure Clear;
    procedure Autocode;
    procedure Savebeli;
    procedure UpdateBeli;
    procedure SaveJual;
    procedure UpdateJual;
    procedure Save;
    procedure Update;
    procedure InsertDetailBank;
    procedure SaveKas;
    procedure UpdateKas;
    procedure InsertDetailKas;
    procedure RefreshPembelian;
    procedure RefreshPenjualan;
    procedure RefreshGridBank;
    procedure RefreshGridKas;
    procedure UpdateParameterJual;
  end;

var
  FDataMasterAkunTrans: TFDataMasterAkunTrans;

implementation

{$R *.dfm}

uses UCari_DaftarPerk, UMasterData, UDataModule, UHomeLogin,
  UListMasterAkunTrans;

procedure TFDataMasterAkunTrans.UpdateParameterJual;
begin
  with dm.Qtemp do //Default Status Potongan
  begin
    close;
    sql.clear;
    sql.Text:=' UPDATE "t_parameter" SET '+
              ' "value_parameter"='+QuotedStr(IntToStr(rgPotongan.ItemIndex))+', '+
              ' "updated_at"=now(), '+
              ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
              ' WHERE "key_parameter"='+QuotedStr('stat_klasifikasi_jual')+';';
    ExecSQL;
  end;

  with dm.Qtemp do //Default Status PPH
  begin
    close;
    sql.clear;
    sql.Text:=' UPDATE "t_parameter" SET '+
              ' "value_parameter"='+QuotedStr(IntToStr(rgPPH.ItemIndex))+', '+
              ' "updated_at"=now(), '+
              ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
              ' WHERE "key_parameter"='+QuotedStr('stat_pph_jual')+';';
    ExecSQL;
  end;

  with dm.Qtemp do //Default Status PPN
  begin
    close;
    sql.clear;
    sql.Text:=' UPDATE "t_parameter" SET '+
              ' "value_parameter"='+QuotedStr(IntToStr(rgPPN.ItemIndex))+', '+
              ' "updated_at"=now(), '+
              ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
              ' WHERE "key_parameter"='+QuotedStr('stat_ppn_jual')+';';
    ExecSQL;
  end;

  with dm.Qtemp do //Default Akun PPN
  begin
    close;
    sql.clear;
    sql.Text:=' UPDATE "t_parameter" SET '+
              ' "value_parameter"='+QuotedStr(edAkunPPNJual.Text)+', '+
              ' "updated_at"=now(), '+
              ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
              ' WHERE "key_parameter"='+QuotedStr('akun_pajak_jual')+';';
    ExecSQL;
  end;

  with dm.Qtemp do //Default Persen PPN
  begin
    close;
    sql.clear;
    sql.Text:=' UPDATE "t_parameter" SET '+
              ' "value_parameter"='+QuotedStr(edPersenPPNJual.Text)+', '+
              ' "updated_at"=now(), '+
              ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
              ' WHERE "key_parameter"='+QuotedStr('persen_pajak_jual')+';';
    ExecSQL;
  end;

  with dm.Qtemp do //Default Jenis PPN TAX
  begin
    close;
    sql.clear;
    sql.Text:=' UPDATE "t_parameter" SET '+
              ' "value_parameter"='+QuotedStr(edAkunJenisTax.Text)+', '+
              ' "updated_at"=now(), '+
              ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
              ' WHERE "key_parameter"='+QuotedStr('default_kode_tax')+';';
    ExecSQL;
  end;
end;

procedure TFDataMasterAkunTrans.RefreshGridBank;
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

procedure TFDataMasterAkunTrans.RefreshPembelian;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "code_trans", "code_account", "name_account", '+
            ' "code_account2", "name_account2" FROM "public"."t_master_trans_account" ) a '+
            ' WHERE "code_trans"='+QuotedStr(edKodeTransBeli.Text)+''+
            ' Order By "code_trans" desc');
    open;
  end;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FDataMasterAkunTrans.edAkunHutang.Clear;
      FDataMasterAkunTrans.edAkunUangMukaHutang.Clear;
      FDataMasterAkunTrans.edNamaHutang.Clear;
      FDataMasterAkunTrans.edNamaUangMukaHutang.Clear;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
      FDataMasterAkunTrans.edAkunHutang.Text:=Dm.Qtemp.FieldByName('code_account').AsString;
      FDataMasterAkunTrans.edAkunUangMukaHutang.Text:=Dm.Qtemp.FieldByName('code_account2').AsString;
      FDataMasterAkunTrans.edNamaHutang.Text:=Dm.Qtemp.FieldByName('name_account').AsString;
      FDataMasterAkunTrans.edNamaUangMukaHutang.Text:=Dm.Qtemp.FieldByName('name_account2').AsString;
    end;
end;

procedure TFDataMasterAkunTrans.RefreshPenjualan;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "code_trans", "code_account", "name_account", '+
            ' "code_account2", "name_account2" FROM "public"."t_master_trans_account" ) a '+
            ' WHERE "code_trans"='+QuotedStr(edKodeTransJual.Text)+''+
            ' Order By "code_trans" desc');
    open;
  end;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FDataMasterAkunTrans.edAkunPiutang.Clear;
      FDataMasterAkunTrans.edAkunPiutangLainLain.Clear;
      FDataMasterAkunTrans.edNamaPiutang.Clear;
      FDataMasterAkunTrans.edNamaPiutangLain.Clear;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
      FDataMasterAkunTrans.edAkunPiutang.Text:=Dm.Qtemp.FieldByName('code_account').AsString;
      FDataMasterAkunTrans.edNamaPiutang.Text:=Dm.Qtemp.FieldByName('name_account').AsString;
      FDataMasterAkunTrans.edAkunPiutangLainLain.Text:=Dm.Qtemp.FieldByName('code_account2').AsString;
      FDataMasterAkunTrans.edNamaPiutangLain.Text:=Dm.Qtemp.FieldByName('name_account2').AsString;
    end;
end;

procedure TFDataMasterAkunTrans.rgPPNClick(Sender: TObject);
begin
  if rgPPN.ItemIndex=0 then
  begin
    rgPPN.ItemIndex:=0;
    edPersenPPNJual.Clear;
    edAkunJenisTax.Clear;
    edNamaJenisTax.Clear;
    edAkunPPNJual.Clear;
    edNamaPPNJual.Clear;
    edPersenPPNJual.Enabled:=false;
    edAkunJenisTax.Enabled:=false;
    edNamaJenisTax.Enabled:=false;
    edAkunPPNJual.Enabled:=false;
    edNamaPPNJual.Enabled:=false;
  end;
  if rgPPN.ItemIndex=1 then
  begin
    rgPPN.ItemIndex:=1;
    edPersenPPNJual.Clear;
    edAkunJenisTax.Clear;
    edNamaJenisTax.Clear;
    edAkunPPNJual.Clear;
    edNamaPPNJual.Clear;
    edPersenPPNJual.Enabled:=true;
    edAkunJenisTax.Enabled:=true;
    edNamaJenisTax.Enabled:=true;
    edAkunPPNJual.Enabled:=true;
    edNamaPPNJual.Enabled:=true;
  end;
end;

procedure TFDataMasterAkunTrans.edAkunJenisTaxButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Sumber Kode Transaksi';
  FMasterData.vcall:='setting_penjualan_tax';
  FMasterData.update_grid('code','name','description','t_sales_transaction_source','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
end;

procedure TFDataMasterAkunTrans.edAkunPPNJualButtonClick(Sender: TObject);
begin
    if Length(edKodeModulJual.Text)=0 then
    begin
      ShowMessage('Silakan Pilih Modul..!!');
      exit;
    end;

      FMasterData.Caption:='Master Data Perkiraan';
      FMasterData.vcall:='set_ak_ppn_jual';
      FMasterData.update_grid('account_code','account_name','journal_name','(SELECT a.account_code,'+
                              ' b.account_name,c.journal_name  FROM t_ak_account_det a  '+
                              ' LEFT JOIN t_ak_account b on a.account_code=b.code  '+
                              ' LEFT JOIN t_ak_header c on b.header_code=c.header_code  '+
                              ' LEFT JOIN t_ak_module d on a.module_id=d.id  '+
                              ' where  d.id='+QuotedStr(edKodeModulJual.Text)+' '+
                              ' GROUP BY a.account_code ,b.account_name,c.journal_name  '+
                              ' ORDER BY a.account_code ,b.account_name,c.journal_name asc)a ','where account_code <>'''' ');
      FMasterData.ShowModal;
end;

procedure TFDataMasterAkunTrans.btClose_BeliClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataMasterAkunTrans.btClose_CloseClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataMasterAkunTrans.btClose_KasClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataMasterAkunTrans.btSave_BeliClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKodeModulBeli.Text='' then
      begin
        MessageDlg('Data Modul Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeModulBeli.SetFocus;
      end
      else if edKodeTransBeli.Text='' then
      begin
        MessageDlg('Data Faktur Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeTransBeli.SetFocus;
      end
      else if FDataMasterAkunTrans.Status = 0 then
      begin
      id_modul:=edKodeModulBeli.Text;
      FDataMasterAkunTrans.Autocode;
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Order No. '+edKodeTransBeli.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        Savebeli;
        Dm.Koneksi.Commit;
      end;
      end
      else if FDataMasterAkunTrans.Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        UpdateBeli;
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

procedure TFDataMasterAkunTrans.btSave_JualClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKodeModulJual.Text='' then
      begin
        MessageDlg('Data Modul Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeModulJual.SetFocus;
      end
      else if edKodeTransJual.Text='' then
      begin
        MessageDlg('Data Faktur Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeTransJual.SetFocus;
      end
      else if FDataMasterAkunTrans.Status = 0 then
      begin
      id_modul:=edKodeModulJual.Text;
      FDataMasterAkunTrans.Autocode;
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Order No. '+edKodeTransJual.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        SaveJual;
        UpdateParameterJual;
        Dm.Koneksi.Commit;
      end;
      end
      else if FDataMasterAkunTrans.Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        UpdateJual;
        UpdateParameterJual;
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

procedure TFDataMasterAkunTrans.btSave_KasClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKodeModulKas.Text='' then
      begin
        MessageDlg('Data Modul Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeModulKas.SetFocus;
      end
      else if edKodeTransKas.Text='' then
      begin
        MessageDlg('Data Faktur Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeTransKas.SetFocus;
      end
      else if FDataMasterAkunTrans.Status = 0 then
      begin
      id_modul:=edKodeModulKas.Text;
      FDataMasterAkunTrans.Autocode;
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Order No. '+edKodeTransKas.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        SaveKas;
        Dm.Koneksi.Commit;
      end;
      end
      else if FDataMasterAkunTrans.Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        UpdateKas;
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

procedure TFDataMasterAkunTrans.RefreshGridKas;
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
            ' WHERE code_trans='+QuotedStr(edKodeTransKas.Text)+''+
            ' Order By code_module, code_trans, position desc');
    open;
  end;

    FDataMasterAkunTrans.MemDetailKas.active:=false;
    FDataMasterAkunTrans.MemDetailKas.active:=true;
    FDataMasterAkunTrans.MemDetailKas.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FDataMasterAkunTrans.MemDetailKas.active:=false;
      FDataMasterAkunTrans.MemDetailKas.active:=true;
      FDataMasterAkunTrans.MemDetailKas.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FDataMasterAkunTrans.MemDetailKas.insert;
     FDataMasterAkunTrans.MemDetailKas['kd_akun']:=Dm.Qtemp.FieldByName('code_account').AsString;
     FDataMasterAkunTrans.MemDetailKas['nm_akun']:=Dm.Qtemp.FieldByName('name_account').AsString;
     FDataMasterAkunTrans.MemDetailKas['posisi']:=Dm.Qtemp.FieldByName('position').AsString;
     FDataMasterAkunTrans.MemDetailKas.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFDataMasterAkunTrans.InsertDetailBank;
begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "public"."t_master_trans_account_det"  '+
            ' WHERE code_trans='+QuotedStr(edKodeTrans.Text)+' ';
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


procedure TFDataMasterAkunTrans.InsertDetailKas;
begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "public"."t_master_trans_account_det"  '+
            ' WHERE code_trans='+QuotedStr(edKodeTransKas.Text)+' ';
  ExecSQL;
  end;

  MemDetailKas.First;
  while not MemDetailKas.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "public"."t_master_trans_account_det" '+
              ' ("code_module", "code_trans", "code_account", "name_account", '+
              ' "position", "account_number_bank") '+
              ' Values( '+
              ' '+QuotedStr(edKodeModulKas.Text)+', '+
              ' '+QuotedStr(edKodeTransKas.Text)+', '+
              ' '+QuotedStr(MemDetailKas['kd_akun'])+', '+
              ' '+QuotedStr(MemDetailKas['nm_akun'])+', '+
              ' '+QuotedStr(MemDetailKas['posisi'])+', '+
              ' '+QuotedStr('0')+');';
    ExecSQL;
    end;
  MemDetailKas.Next;
  end;
end;

procedure TFDataMasterAkunTrans.Savebeli;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_master_trans_account" ("created_at", "created_by",  '+
            ' "status_bill", "code_module", "name_module", "code_trans", "name_trans", "description", '+
            ' "account_number_bank", "account_name_bank", "initial_code", '+
            ' "code_account", "name_account", "code_account2", "name_account2") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+IntToStr(0)+', '+
            ' '+QuotedStr(edKodeModulBeli.Text)+', '+
            ' '+QuotedStr(edNamaModulBeli.Text)+', '+
            ' '+QuotedStr(edKodeTransBeli.Text)+', '+
            ' '+QuotedStr(edNamaTransBeli.Text)+', '+
            ' '+QuotedStr(MemKeteranganbeli.Text)+', '+
            ' '+QuotedStr('0')+', '+
            ' '+QuotedStr('0')+', '+
            ' '+QuotedStr(EdKodeInitialBeli.Text)+', '+
            ' '+QuotedStr(edAkunHutang.Text)+', '+
            ' '+QuotedStr(edNamaHutang.Text)+', '+
            ' '+QuotedStr(edAkunUangMukaHutang.Text)+', '+
            ' '+QuotedStr(edNamaUangMukaHutang.Text)+' );');
    ExecSQL;
  end;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListMasterAkunTrans.Refresh;
end;

procedure TFDataMasterAkunTrans.SaveJual;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_master_trans_account" ("created_at", "created_by",  '+
            ' "status_bill", "code_module", "name_module", "code_trans", "name_trans", "description", '+
            ' "account_number_bank", "account_name_bank", "initial_code", '+
            ' "code_account", "name_account", "code_account2", "name_account2") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+IntToStr(0)+', '+
            ' '+QuotedStr(edKodeModulJual.Text)+', '+
            ' '+QuotedStr(edNamaModulJual.Text)+', '+
            ' '+QuotedStr(edKodeTransJual.Text)+', '+
            ' '+QuotedStr(edNamaTransJual.Text)+', '+
            ' '+QuotedStr(MemKeteranganJual.Text)+', '+
            ' '+QuotedStr('0')+', '+
            ' '+QuotedStr('0')+', '+
            ' '+QuotedStr(EdKodeInitialJual.Text)+', '+
            ' '+QuotedStr(edAkunPiutang.Text)+', '+
            ' '+QuotedStr(edNamaPiutang.Text)+', '+
            ' '+QuotedStr(edAkunPiutangLainLain.Text)+', '+
            ' '+QuotedStr(edNamaPiutangLain.Text)+' );');
    ExecSQL;
  end;

  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListMasterAkunTrans.Refresh;
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
  InsertDetailBank;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListMasterAkunTrans.Refresh;
end;

procedure TFDataMasterAkunTrans.SaveKas;
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
            ' '+IntToStr(rgTagihanKas.ItemIndex)+', '+
            ' '+QuotedStr(edKodeModulKas.Text)+', '+
            ' '+QuotedStr(edNamaModulKas.Text)+', '+
            ' '+QuotedStr(edKodeTransKas.Text)+', '+
            ' '+QuotedStr(edNamaTransKas.Text)+', '+
            ' '+QuotedStr(MemKeteranganKas.Text)+', '+
            ' '+QuotedStr('0')+', '+
            ' '+QuotedStr('0')+', '+
            ' '+QuotedStr(EdKodeInitialKas.Text)+' );');
    ExecSQL;
  end;
  InsertDetailKas;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListMasterAkunTrans.Refresh;
end;

procedure TFDataMasterAkunTrans.UpdateBeli;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_master_trans_account" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' status_bill='+IntToStr(0)+','+
              ' name_module='+QuotedStr(edNamaModulBeli.Text)+','+
              ' name_trans='+QuotedStr(edNamaTransBeli.Text)+','+
              ' account_number_bank='+QuotedStr('0')+','+
              ' account_name_bank='+QuotedStr('0')+','+
              ' initial_code='+QuotedStr(EdKodeInitialBeli.Text)+','+
              ' code_account='+QuotedStr(edAkunHutang.Text)+','+
              ' name_account='+QuotedStr(edNamaHutang.Text)+','+
              ' code_account2='+QuotedStr(edAkunUangMukaHutang.Text)+','+
              ' name_account2='+QuotedStr(edNamaUangMukaHutang.Text)+','+
              ' description='+QuotedStr(MemKeteranganbeli.Text)+' '+
              ' Where code_module='+QuotedStr(edKodeModulBeli.Text)+' '+
              ' AND code_trans='+QuotedStr(edKodeTransBeli.Text)+' ');
      ExecSQL;
    end;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
    FListMasterAkunTrans.Refresh;
end;

procedure TFDataMasterAkunTrans.UpdateJual;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_master_trans_account" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' status_bill='+IntToStr(0)+','+
              ' name_module='+QuotedStr(edNamaModulJual.Text)+','+
              ' name_trans='+QuotedStr(edNamaTransJual.Text)+','+
              ' account_number_bank='+QuotedStr('0')+','+
              ' account_name_bank='+QuotedStr('0')+','+
              ' initial_code='+QuotedStr(EdKodeInitialJual.Text)+','+
              ' code_account='+QuotedStr(edAkunPiutang.Text)+','+
              ' name_account='+QuotedStr(edNamaPiutang.Text)+','+
              ' code_account2='+QuotedStr(edAkunPiutangLainLain.Text)+','+
              ' name_account2='+QuotedStr(edNamaPiutangLain.Text)+','+
              ' description='+QuotedStr(MemKeteranganJual.Text)+' '+
              ' Where code_module='+QuotedStr(edKodeModulJual.Text)+' '+
              ' AND code_trans='+QuotedStr(edKodeTransJual.Text)+' ');
      ExecSQL;
    end;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
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
              ' account_number_bank='+QuotedStr(edNorekening.Text)+','+
              ' account_name_bank='+QuotedStr(edNamaBank.Text)+','+
              ' initial_code='+QuotedStr(EdKodeInitial.Text)+','+
              ' description='+QuotedStr(MemKeterangan.Text)+' '+
              ' Where code_module='+QuotedStr(edKodeModul.Text)+' '+
              ' AND code_trans='+QuotedStr(edKodeTrans.Text)+' ');
      ExecSQL;
    end;
    InsertDetailBank;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
    FListMasterAkunTrans.Refresh;
end;

procedure TFDataMasterAkunTrans.UpdateKas;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_master_trans_account" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' status_bill='+IntToStr(rgTagihanKas.ItemIndex)+','+
              ' name_module='+QuotedStr(edNamaModulKas.Text)+','+
              ' name_trans='+QuotedStr(edNamaTransKas.Text)+','+
              ' account_number_bank='+QuotedStr('0')+','+
              ' account_name_bank='+QuotedStr('0')+','+
              ' initial_code='+QuotedStr(EdKodeInitialKas.Text)+','+
              ' description='+QuotedStr(MemKeteranganKas.Text)+' '+
              ' Where code_module='+QuotedStr(edKodeModulKas.Text)+' '+
              ' AND code_trans='+QuotedStr(edKodeTransKas.Text)+'');
      ExecSQL;
    end;
    InsertDetailBank;
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
               ' where code_module='+QuotedStr(id_modul)+'';
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
                   ' where code_module='+QuotedStr(id_modul)+' ';
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

  if id_modul='2' then //Pembelian
  begin
    edKodeTransBeli.Text := id_modul+'.'+Kode;
  end;
  if id_modul='1' then //Penjualan
  begin
    edKodeTransJual.Text := id_modul+'.'+Kode;
  end;
  if (id_modul='3') OR (id_modul='5')then //Bank
  begin
    edKodeTrans.Text := id_modul+'.'+Kode;
  end;
  if (id_modul='4') OR (id_modul='6')then  //Kas
  begin
    edKodeTransKas.Text := id_modul+'.'+Kode;
  end;
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
      {else if edNorekening.text='' then
      begin
        MessageDlg('Nomor Rekening Tidak Boleh Kosong..!!',mtInformation,[mbRetry],0);
        edNorekening.SetFocus;
      end}
      else if FDataMasterAkunTrans.Status = 0 then
      begin
      id_modul:=edKodeModul.Text;
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
  //Pembelian
  edNamaModulBeli.Clear;
  edKodeModulBeli.Clear;
  edKodeTransBeli.Clear;
  edNamaTransBeli.Clear;
  MemKeteranganbeli.Clear;
  EdKodeInitialBeli.Clear;
  edAkunHutang.Clear;
  edNamaHutang.Clear;
  edAkunUangMukaHutang.Clear;
  edNamaUangMukaHutang.Clear;
  //Penjualan
  edNamaModulJual.Clear;
  edKodeModulJual.Clear;
  edKodeTransJual.Clear;
  edNamaTransJual.Clear;
  MemKeteranganJual.Clear;
  EdKodeInitialJual.Clear;
  edAkunPiutang.Clear;
  edNamaPiutang.Clear;
  edAkunPiutangLainLain.Clear;
  edNamaPiutangLain.Clear;

  rgPPH.ItemIndex:=0;
  rgPPN.ItemIndex:=0;
  rgPotongan.ItemIndex:=0;
  edPersenPPNJual.Clear;
  edAkunJenisTax.Clear;
  edNamaJenisTax.Clear;
  edAkunPPNJual.Clear;
  edNamaPPNJual.Clear;
  //Bank
  edNamaModul.Clear;
  edKodeModul.Clear;
  edNamaBank.Clear;
  edNorekening.Clear;
  edKodeTrans.Clear;
  edNamaTrans.Clear;
  MemKeterangan.Clear;
  EdKodeInitial.Clear;
  MemDetail.EmptyTable;
  rgTagihan.Caption:='';
  //Kas
  edNamaModulKas.Clear;
  edKodeModulKas.Clear;
  edKodeTransKas.Clear;
  edNamaTransKas.Clear;
  MemKeteranganKas.Clear;
  EdKodeInitialKas.Clear;
  MemDetailKas.EmptyTable;
  rgTagihanKas.Caption:='';
end;


procedure TFDataMasterAkunTrans.DBGridDetailColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
    if Length(edKodeModul.Text)=0 then
    begin
      ShowMessage('Silakan Pilih Modul..!!');
      exit;
    end;

    if Length(edKodeModul.Text)<>0 then
    begin
      FMasterData.Caption:='Master Data Perkiraan';
      FMasterData.vcall:='m_akuntrans_bank';
      FMasterData.update_grid('header_code','header_name','journal_name','(SELECT c.header_code ,c.header_name,c.journal_name '+
                              ' FROM t_ak_account_det a '+
                              ' LEFT JOIN t_ak_account b on a.account_code=b.code '+
                              ' LEFT JOIN t_ak_header c on b.header_code=c.header_code '+
                              ' LEFT JOIN t_ak_module d on a.module_id=d.id '+
                              ' where  d.id='+QuotedStr(edKodeModul.Text)+'  '+
                              ' GROUP BY c.header_code,c.header_name,c.journal_name '+
                              ' ORDER BY c.header_code,c.header_name,c.journal_name asc)a','where header_code <>'''' ');
      FMasterData.ShowModal;
    end;
end;

procedure TFDataMasterAkunTrans.DBGridEh1Columns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
    if Length(edKodeModulKas.Text)=0 then
    begin
      ShowMessage('Silakan Pilih Modul..!!');
      exit;
    end;

    if Length(edKodeModulKas.Text)<>0 then
    begin
      FMasterData.Caption:='Master Data Perkiraan';
      FMasterData.vcall:='m_akuntrans_kas';
      FMasterData.update_grid('header_code','header_name','journal_name','(SELECT c.header_code ,c.header_name,c.journal_name '+
                              ' FROM t_ak_account_det a '+
                              ' LEFT JOIN t_ak_account b on a.account_code=b.code '+
                              ' LEFT JOIN t_ak_header c on b.header_code=c.header_code '+
                              ' LEFT JOIN t_ak_module d on a.module_id=d.id '+
                              ' where  d.id='+QuotedStr(edKodeModulKas.Text)+'  '+
                              ' GROUP BY c.header_code,c.header_name,c.journal_name '+
                              ' ORDER BY c.header_code,c.header_name,c.journal_name asc)a','where header_code <>'''' ');
      FMasterData.ShowModal;
    end;
end;

procedure TFDataMasterAkunTrans.edAkunHutangButtonClick(Sender: TObject);
begin
    if Length(edKodeModulBeli.Text)=0 then
    begin
      ShowMessage('Silakan Pilih Modul..!!');
      exit;
    end;

    if Length(edKodeModulBeli.Text)<>0 then
    begin
      FMasterData.Caption:='Master Data Perkiraan';
      FMasterData.vcall:='set_ak_trans_beli';
      FMasterData.update_grid('header_code','header_name','journal_name','(SELECT c.header_code ,c.header_name,c.journal_name '+
                              ' FROM t_ak_account_det a '+
                              ' LEFT JOIN t_ak_account b on a.account_code=b.code '+
                              ' LEFT JOIN t_ak_header c on b.header_code=c.header_code '+
                              ' LEFT JOIN t_ak_module d on a.module_id=d.id '+
                              ' where  d.id='+QuotedStr(edKodeModulBeli.Text)+'  '+
                              ' GROUP BY c.header_code,c.header_name,c.journal_name '+
                              ' ORDER BY c.header_code,c.header_name,c.journal_name asc)a','where header_code <>'''' ');
      FMasterData.ShowModal;
    end;
end;

procedure TFDataMasterAkunTrans.edAkunPiutangButtonClick(Sender: TObject);
begin
    if Length(edKodeModulJual.Text)=0 then
    begin
      ShowMessage('Silakan Pilih Modul..!!');
      exit;
    end;

    if Length(edKodeModulJual.Text)<>0 then
    begin
      FMasterData.Caption:='Master Data Perkiraan';
      FMasterData.vcall:='set_ak_trans_jual';
      FMasterData.update_grid('header_code','header_name','journal_name','(SELECT c.header_code ,c.header_name,c.journal_name '+
                              ' FROM t_ak_account_det a '+
                              ' LEFT JOIN t_ak_account b on a.account_code=b.code '+
                              ' LEFT JOIN t_ak_header c on b.header_code=c.header_code '+
                              ' LEFT JOIN t_ak_module d on a.module_id=d.id '+
                              ' where  d.id='+QuotedStr(edKodeModulJual.Text)+'  '+
                              ' GROUP BY c.header_code,c.header_name,c.journal_name '+
                              ' ORDER BY c.header_code,c.header_name,c.journal_name asc)a','where header_code <>'''' ');
      FMasterData.ShowModal;
    end;
end;

procedure TFDataMasterAkunTrans.edAkunPiutangLainLainButtonClick(
  Sender: TObject);
begin
    if Length(edKodeModulJual.Text)=0 then
    begin
      ShowMessage('Silakan Pilih Modul..!!');
      exit;
    end;

    if Length(edKodeModulJual.Text)<>0 then
    begin
      FMasterData.Caption:='Master Data Perkiraan';
      FMasterData.vcall:='set_ak_lain_trans_jual';
      FMasterData.update_grid('header_code','header_name','journal_name','(SELECT c.header_code ,c.header_name,c.journal_name '+
                              ' FROM t_ak_account_det a '+
                              ' LEFT JOIN t_ak_account b on a.account_code=b.code '+
                              ' LEFT JOIN t_ak_header c on b.header_code=c.header_code '+
                              ' LEFT JOIN t_ak_module d on a.module_id=d.id '+
                              ' where  d.id='+QuotedStr(edKodeModulJual.Text)+'  '+
                              ' GROUP BY c.header_code,c.header_name,c.journal_name '+
                              ' ORDER BY c.header_code,c.header_name,c.journal_name asc)a','where header_code <>'''' ');
      FMasterData.ShowModal;
    end;
end;

procedure TFDataMasterAkunTrans.edAkunUangMukaHutangButtonClick(
  Sender: TObject);
begin
    if Length(edKodeModulBeli.Text)=0 then
    begin
      ShowMessage('Silakan Pilih Modul..!!');
      exit;
    end;

    if Length(edKodeModulBeli.Text)<>0 then
    begin
      FMasterData.Caption:='Master Data Perkiraan';
      FMasterData.vcall:='set_ak_lain_trans_beli';
      FMasterData.update_grid('header_code','header_name','journal_name','(SELECT c.header_code ,c.header_name,c.journal_name '+
                              ' FROM t_ak_account_det a '+
                              ' LEFT JOIN t_ak_account b on a.account_code=b.code '+
                              ' LEFT JOIN t_ak_header c on b.header_code=c.header_code '+
                              ' LEFT JOIN t_ak_module d on a.module_id=d.id '+
                              ' where  d.id='+QuotedStr(edKodeModulBeli.Text)+'  '+
                              ' GROUP BY c.header_code,c.header_name,c.journal_name '+
                              ' ORDER BY c.header_code,c.header_name,c.journal_name asc)a','where header_code <>'''' ');
      FMasterData.ShowModal;
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
  //Autocode;
  end;
end;

procedure TFDataMasterAkunTrans.edNamaModulBeliButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Modul';
  FMasterData.vcall:='trans_beli';
  FMasterData.update_grid('id','module_name','0','t_ak_module','WHERE	deleted_at IS NULL AND id IN (2) ORDER BY id desc');
  FMasterData.ShowModal;
  id_modul:=edKodeModulBeli.Text;
  Autocode;
end;

procedure TFDataMasterAkunTrans.edNamaModulButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Modul';
  FMasterData.vcall:='trans_bank';
  FMasterData.update_grid('id','module_name','0','t_ak_module','WHERE	deleted_at IS NULL AND id IN (3,5) ORDER BY id desc');
  FMasterData.ShowModal;
  id_modul:=edKodeModul.Text;
  Autocode;
  if edKodeModul.Text='3' then
  begin
    rgTagihan.Caption:='Ambil Data Piutang';
  end;
  if edKodeModul.Text='5' then
  begin
    rgTagihan.Caption:='Ambil Data Hutang';
  end;

end;

procedure TFDataMasterAkunTrans.edNamaModulJualButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Modul';
  FMasterData.vcall:='trans_jual';
  FMasterData.update_grid('id','module_name','0','t_ak_module','WHERE	deleted_at IS NULL AND id IN (1) ORDER BY id desc');
  FMasterData.ShowModal;
  id_modul:=edKodeModulJual.Text;
  Autocode;
end;

procedure TFDataMasterAkunTrans.edNamaModulKasButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Modul';
  FMasterData.vcall:='trans_kas';
  FMasterData.update_grid('id','module_name','0','t_ak_module','WHERE	deleted_at IS NULL AND id IN (4,6) ORDER BY id desc');
  FMasterData.ShowModal;
  id_modul:=edKodeModulKas.Text;
  Autocode;
  if edKodeModulKas.Text='4' then
  begin
    rgTagihanKas.Caption:='Ambil Data Piutang';
  end;
  if edKodeModulKas.Text='6' then
  begin
    rgTagihanKas.Caption:='Ambil Data Hutang';
  end;
end;

end.
