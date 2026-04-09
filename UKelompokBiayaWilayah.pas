unit UKelompokBiayaWilayah;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Vcl.ComCtrls, RzDTP, Vcl.ExtCtrls, MemTableDataEh, Data.DB, MemTableEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzBtnEdt, RzButton, Vcl.WinXCtrls;

type
  TFKelompokBiayaWilayah = class(TForm)
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    dtTrans: TRzDateTimePicker;
    edJumlah: TRzNumericEdit;
    Label1: TLabel;
    Label2: TLabel;
    MemKeterangan: TMemo;
    MemDetailAkun: TMemTableEh;
    MemDetailAkunkd_akun: TStringField;
    MemDetailAkunnm_akun: TStringField;
    MemDetailAkunketerangan: TStringField;
    MemDetailAkundebit: TCurrencyField;
    MemDetailAkunkredit: TCurrencyField;
    MemDetailAkunkd_header_akun: TStringField;
    MemDetailAkunjumlah_hasil_kurs: TCurrencyField;
    MemDetailAkunmodul_id: TStringField;
    DSDetailAkun: TDataSource;
    RzPageControl1: TRzPageControl;
    TabDetailAkun: TRzTabSheet;
    DBGridAkun: TDBGridEh;
    TabDetailBiaya: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    DSMemTP: TDataSource;
    MemTP: TMemTableEh;
    MemTPkd_akun: TStringField;
    MemTPnm_akun: TStringField;
    MemTPkd_tp: TStringField;
    MemTPnm_tp: TStringField;
    MemTPketerangan: TStringField;
    MemTPjumlah: TCurrencyField;
    edNoTrans: TRzButtonEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    cbsumberdata: TEdit;
    procedure DBGridEh1Columns3EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure edNoTransButtonClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure DBGridAkunDblClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    Status : Integer;
    vTotalData, vTotalBiaya : real;
    { Public declarations }
    procedure Clear;
    procedure RefreshGrid;
    procedure CekBalance;
  end;

var
  FKelompokBiayaWilayah: TFKelompokBiayaWilayah;

implementation

{$R *.dfm}

uses UMasterData, UDataModule, UListKelompokBiayaWilayah, UHomeLogin;

procedure TFKelompokBiayaWilayah.CekBalance;
var
URUTAN_KE : Integer;
begin
URUTAN_KE :=0;
vTotalData :=0;
vTotalBiaya :=0;

  //Data Transaksi
  MemDetailAkun.first;
  while not MemDetailAkun.Eof do
  begin
    vTotalData:=vTotalData+MemDetailAkun['debit'];
  MemDetailAkun.next;
  end;


  //Data Biaya
  MemTP.first;
  while not MemTP.Eof do
  begin
    vTotalBiaya:=vTotalBiaya+MemTP['jumlah'];
  MemTP.next;
  end;

end;

procedure TFKelompokBiayaWilayah.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  if cbsumberdata.text='PEMBELIAN' then
  begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT account_pemb as kd_akun, account_name as nm_akun, sum(subtotalrp) as jumlah  '+
            ' from t_purchase_invoice_det a  '+
            ' LEFT JOIN t_ak_account b on a.account_pemb=b.code '+
            ' where trans_no='+QuotedStr(edNoTrans.Text)+' '+
            ' GROUP BY account_pemb, account_name');
    open;
  end;
  end else
  if cbsumberdata.text='PENGELUARAN KAS DAN BANK' then
  begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT code_account as kd_akun, name_account as nm_akun, paid_amount as jumlah '+
            ' from t_cash_bank_expenditure_det '+
            ' where no_voucher='+QuotedStr(edNoTrans.Text)+' '+
            ' and position=''D'' '+
            ' ORDER BY code_account desc');
    open;
  end;
  end;

  MemDetailAkun.active:=false;
  MemDetailAkun.active:=true;
  MemDetailAkun.EmptyTable;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
      Dm.Qtemp1.first;
      while not Dm.Qtemp1.Eof do
      begin
      URUTAN_KE:=URUTAN_KE+1;
      with FKelompokBiayaWilayah do
      begin
       MemDetailAkun.insert;
       MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('kd_akun').value;
       MemDetailAkun['nm_akun']:=Dm.Qtemp1.fieldbyname('nm_akun').value;
       MemDetailAkun['debit']:=Dm.Qtemp1.fieldbyname('jumlah').value;
       MemDetailAkun.post;
      end;
       Dm.Qtemp1.next;
      end;

  // Cek Detail Biaya
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from t_cost_detail '+
            ' where voucher_no='+QuotedStr(edNoTrans.Text)+' ');
    open;
  end;

  MemTP.active:=false;
  MemTP.active:=true;
  MemTP.EmptyTable;

  if  Dm.Qtemp.RecordCount=0 then
  begin
    //Showmessage('Maaf, Data Tidak Ditemukan..');
    Exit;
  end;
  if  Dm.Qtemp.RecordCount<>0 then
  begin
      Dm.Qtemp.first;
      while not Dm.Qtemp.Eof do
      begin
      URUTAN_KE:=URUTAN_KE+1;
      with FKelompokBiayaWilayah do
      begin
       MemTP.insert;
       MemTP['kd_akun']:=Dm.Qtemp.fieldbyname('account_code').value;
       MemTP['nm_akun']:=Dm.Qtemp.fieldbyname('account_name').value;
       MemTP['kd_tp']:=Dm.Qtemp.fieldbyname('tp_code').value;
       MemTP['nm_tp']:=Dm.Qtemp.fieldbyname('tp_name').value;
       MemTP['keterangan']:=Dm.Qtemp.fieldbyname('description').value;
       MemTP['jumlah']:=Dm.Qtemp.fieldbyname('amount').value;
       MemTP.post;
      end;
       Dm.Qtemp.next;
      end;
  end; //Cek Detail Biaya
  end;
end;

procedure TFKelompokBiayaWilayah.BSaveClick(Sender: TObject);
var
  vstat_proces: Boolean;
begin
  CekBalance;
  vstat_proces:= true;
  if vTotalData<vTotalBiaya then
  begin
    ShowMessage('Data Tidak Dapat Diproses, Tidak Balance !!!');
    vstat_proces:= false;
    exit;
  end;

  if vstat_proces = true then
  begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if vTotalBiaya=0 then
      begin
        MessageDlg('Data Biaya Belum Sesuai..!!',mtInformation,[mbRetry],0);
        Exit;
      end
      else if Status = 0 then
      begin
      //if application.MessageBox('Apa Anda Yakin Menyimpan Data '+Edkode.Text+' - '+Ednama.Text+'ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Apa Anda Yakin Menyimpan Data Biaya '+edNoTrans.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        MemTP.first;
        while not MemTP.Eof do
        begin
          with dm.Qtemp do
          begin
            close;
            sql.clear;
            sql.Text:=' INSERT INTO "public"."t_cost_detail" ("voucher_no",'+
                      ' "description", "tp_code", "tp_name", "amount", '+
                      ' "created_at", "created_by", "account_code", "account_name" ) '+
                      ' Values( '+
                      ' '+QuotedStr(edNoTrans.Text)+', '+
                      ' '+QuotedStr(MemTP['keterangan'])+', '+
                      ' '+QuotedStr(MemTP['kd_tp'])+', '+
                      ' '+QuotedStr(MemTP['nm_tp'])+', '+
                      ' :amount, '+
                      ' NOW(), '+
                      ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
                      ' '+QuotedStr(MemTP['kd_akun'])+', '+
                      ' '+QuotedStr(MemTP['nm_akun'])+' );';
            ParamByName('amount').AsFloat := MemTP['jumlah'];
            ExecSQL;
          end;
        MemTP.next;
        end;

        MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
      end;
      end
      else if Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        MemTP.first;
        while not MemTP.Eof do
        begin
        //Clear Data
        with dm.Qtemp do
        begin
          Close;
          SQL.Clear;
          SQL.Text :=
            'DELETE FROM public.t_cost_detail '+
            'WHERE voucher_no = :voucher_no';

          ParamByName('voucher_no').AsString := edNoTrans.Text;
          ExecSQL;
        end;

        //Insert Dengan User Update
          with dm.Qtemp do
          begin
            close;
            sql.clear;
            sql.Text:=' INSERT INTO "public"."t_cost_detail" ("voucher_no",'+
                      ' "description", "tp_code", "tp_name", "amount", '+
                      ' "updated_at", "updated_by", "account_code", "account_name" ) '+
                      ' Values( '+
                      ' '+QuotedStr(edNoTrans.Text)+', '+
                      ' '+QuotedStr(MemTP['keterangan'])+', '+
                      ' '+QuotedStr(MemTP['kd_tp'])+', '+
                      ' '+QuotedStr(MemTP['nm_tp'])+', '+
                      ' :amount, '+
                      ' NOW(), '+
                      ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
                      ' '+QuotedStr(MemTP['kd_akun'])+', '+
                      ' '+QuotedStr(MemTP['nm_akun'])+' );';
            ParamByName('amount').AsFloat := MemTP['jumlah'];
            ExecSQL;
          end;
        MemTP.next;
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
      FKelompokBiayaWilayah.Close;
  end;

end;

procedure TFKelompokBiayaWilayah.Clear;
begin
  edNoTrans.Clear;
  dtTrans.Date:=now();
  edJumlah.Value:=0.00;
  MemKeterangan.Text:='-';
  MemDetailAkun.EmptyTable;
  MemTP.EmptyTable;
end;

procedure TFKelompokBiayaWilayah.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFKelompokBiayaWilayah.DBGridAkunDblClick(Sender: TObject);
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT COALESCE(type_id, 0) AS type_id FROM t_ak_account '+
            ' where code='+QuotedStr(MemDetailAkun['kd_akun'])+' ');
    open;
  end;

  if Dm.Qtemp.FieldByName('type_id').AsString='0' then
  begin
    ShowMessage('Data Tidak Dapat Diproses, Karena Akun Belum Setting Kelompok !!!');
    Exit;
  end;



  if MemDetailAkun.RecordCount<>0 then
  begin
  with FKelompokBiayaWilayah do
  begin
    MemTP.insert;
    MemTP['kd_akun']:=MemDetailAkun['kd_akun'];
    MemTP['nm_akun']:=MemDetailAkun['nm_akun'];
    MemTP['kd_tp']:='';
    MemTP['nm_tp']:='';
    MemTP['keterangan']:=edNoTrans.Text;
    MemTP['jumlah']:=MemDetailAkun['debit'];
    MemTP.post;
  end;
    FMasterData.Caption:='Master Data TP';
    FMasterData.vcall:='klmpk_biaya_wilayah';
    FMasterData.update_grid('code','name','description','t_region_tp','WHERE	deleted_at IS NULL ');
    FMasterData.ShowModal;
  end;
end;

procedure TFKelompokBiayaWilayah.DBGridEh1Columns3EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  if Length(MemTP['kd_akun'])=0 then
  begin
    ShowMessage('Silakan Tentukan Akun !!!');
    Exit;
  end;
  if Length(MemTP['kd_akun'])>0 then
  begin
    FMasterData.Caption:='Master Data TP';
    FMasterData.vcall:='klmpk_biaya_wilayah';
    FMasterData.update_grid('code','name','description','t_region_tp','WHERE	deleted_at IS NULL ');
    FMasterData.ShowModal;
  end;
end;

procedure TFKelompokBiayaWilayah.edNoTransButtonClick(Sender: TObject);
begin
  ShowMessage('Cari Transaksi Berdasarkan Sumber');
end;

end.
