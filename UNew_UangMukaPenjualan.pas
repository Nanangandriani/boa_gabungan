unit UNew_UangMukaPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzBtnEdt,
  Vcl.ExtCtrls, RzPanel, RzButton, Vcl.ComCtrls, RzDTP;

type
  TFNew_UangMukaPenjualan = class(TForm)
    Label39: TLabel;
    Label38: TLabel;
    edNama_Pelanggan: TRzButtonEdit;
    Label6: TLabel;
    Label7: TLabel;
    edAkunUangMuka: TEdit;
    edNamaAkunUangMuka: TEdit;
    edJumlah: TRzNumericEdit;
    Label19: TLabel;
    Label20: TLabel;
    RzPanel1: TRzPanel;
    BSave: TRzBitBtn;
    BBatal: TRzBitBtn;
    Label12: TLabel;
    Label13: TLabel;
    dtTanggal: TRzDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    edNoUangMuka: TEdit;
    procedure edNama_PelangganButtonClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKodePelanggan, kd_kares,strtgl, strbulan, strtahun: String;
    Year, Month, Day: Word;
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure Autonumber;
  end;

var
  FNew_UangMukaPenjualan: TFNew_UangMukaPenjualan;
  Status:Integer;

implementation

{$R *.dfm}

uses Ubrowse_pelanggan, UDataModule, UHomeLogin, UMainMenu, UMy_Function,
  UListUangMukaPenjualan;

procedure TFNew_UangMukaPenjualan.Autonumber;
begin
  idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FListUangMukaPenjualan.Name)+'');
  strday2:=dtTanggal.Date;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.id,b.additional_status from t_numb_type a inner join t_numb b on a.id=b.reset_type where numb_type='+QuotedStr(idmenu);
    open;
  end;
  if dm.Qtemp['additional_status']='0' then kd_kares:='' else kd_kares:=kd_kares;
  //  ShowMessage(kd_kares);
   //EdNo_kontrak.Text:=getNourutBlnPrshthn_kode(strday2,'purchase.t_coop_contract','');
  edNoUangMuka.Text:=getNourut(strday2,'public.t_down_payment_sales',kd_kares);
   //EdNo.Text:=Order_no;
end;

procedure TFNew_UangMukaPenjualan.BSaveClick(Sender: TObject);
begin
  DecodeDate(dtTanggal.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);

  if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
    if edNama_Pelanggan.Text='' then
    begin
      MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
//      edKode_Pelanggan.SetFocus;
      exit;
    end
    else if edAkunUangMuka.Text='' then
    begin
      MessageDlg('Pelanggan Belum Memiliki Akun Uang Muka..!!',mtInformation,[mbRetry],0);
//      edKode_Sales.SetFocus;
      exit;
    end
    else if edJumlah.Text='0,00'then
    begin
      MessageDlg('Jumlah Uang Muka Wajib Diisi..!!',mtInformation,[mbRetry],0);
//      spJatuhTempo.SetFocus;
      exit;
    end
    else if Status = 0 then
    begin
      Autonumber;
  //    if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Order No. '+edNoUangMuka.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
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

procedure TFNew_UangMukaPenjualan.Clear;
begin
  strKodePelanggan:='';
  dtTanggal.Date:=NOW();
  edAkunUangMuka.Text:='';
  edNamaAkunUangMuka.Text:='';
  edNama_Pelanggan.Text:='';
  edJumlah.value:=0.00;
  kd_kares:='0';
end;

procedure TFNew_UangMukaPenjualan.Save;
var Stradditional_code: String;
begin
  if (kd_kares='') OR (kd_kares='0') then
    Stradditional_code:='NULL'
  else Stradditional_code:=QuotedStr(kd_kares);

  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:=' Insert into "public"."t_down_payment_sales" ("created_at", "created_by", "no_trans", '+
            ' "trans_date", "customer_code", "account_code", "account_name", "grand_tot",'+
            'sbu_code,order_no,"trans_day", "trans_month", "trans_year") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(Nm)+', '+
            ' '+QuotedStr(edNoUangMuka.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal.Date))+', '+
            ' '+QuotedStr(strKodePelanggan)+', '+
            ' '+QuotedStr(edAkunUangMuka.Text)+', '+
            ' '+QuotedStr(edNamaAkunUangMuka.Text)+', '+
            ' '+QuotedStr(FloatToStr(edJumlah.value))+', '+
            ' '+QuotedStr(FHomeLogin.vKodePRSH)+', '+
            ' '+QuotedStr(order_no)+', '+
            ' '+QuotedStr(strtgl)+', '+
            ' '+QuotedStr(strbulan)+', '+
            ' '+QuotedStr(strtahun)+'  );';
    ExecSQL;
  end;

  MessageDlg('Simpan Berhasil ..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FMainMenu.TampilTabForm2;
end;

procedure TFNew_UangMukaPenjualan.Update;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:='Update t_down_payment_sales SET customer_code='+QuotedStr(strKodePelanggan)+', '+
              ' account_code='+QuotedStr(edAkunUangMuka.Text)+', account_name='+QuotedStr(edNamaAkunUangMuka.Text)+','+
              ' grand_tot='+QuotedStr(FloatToStr(edJumlah.Value))+' '+
              ' WHERE no_trans='+QuotedStr(edNoUangMuka.Text)+' AND deleted_at IS NULL';
    ExecSQL;
  end;

  MessageDlg('Ubah Berhasil ..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FMainMenu.TampilTabForm2;
end;

procedure TFNew_UangMukaPenjualan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNew_UangMukaPenjualan.edNama_PelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='uang_muka_penjualan';
  Fbrowse_data_pelanggan.ShowModal;
end;

end.
