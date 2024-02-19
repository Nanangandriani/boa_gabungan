unit UInput_um;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel,
  Vcl.Mask, RzEdit, RzBtnEdt, RzButton, Vcl.Buttons, RzCmboBx;

type
  TFNew_UM_Pembelian = class(TForm)
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EdNm_supp: TRzButtonEdit;
    EdKd_supp: TEdit;
    DTP_UM: TRzDateTimeEdit;
    Ed_No_trans: TRzEdit;
    Edurut: TEdit;
    EdUM: TRzNumericEdit;
    Label7: TLabel;
    Label8: TLabel;
    Ednm_akun: TRzButtonEdit;
    Edkd_akun: TRzEdit;
    Label38: TLabel;
    Label9: TLabel;
    RzPanel2: TRzPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    Edbln: TEdit;
    Edth: TEdit;
    Edhari: TEdit;
    BitBtn1: TBitBtn;
    CbPo: TRzComboBox;
    Label10: TLabel;
    Label11: TLabel;
    procedure BBatalClick(Sender: TObject);
    procedure EdUMKeyPress(Sender: TObject; var Key: Char);
    procedure EdNm_suppButtonClick(Sender: TObject);
    procedure Ednm_akunButtonClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure DTP_UMChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EdKd_suppChange(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure clear;
    Procedure Autonumber;
    procedure simpan;
    procedure load;
  end;

var
  FNew_UM_Pembelian: TFNew_UM_Pembelian;

implementation

{$R *.dfm}

uses USearch_Supplier, UAkun_Perkiraan_UM, UDataModule, UMainMenu, UMy_Function,
  UCari_DaftarPerk;

procedure TFNew_UM_Pembelian.load;
begin
   with dm.Qtemp do
   begin
      close;
      sql.Clear;
      sql.Text:='select * from purchase.t_po where um_status=''true'' and supplier_code='+Quotedstr(EdKd_supp.Text)+' '+
                ' and po_no not in (select po_no from purchase.t_advance_payment)';
      Open;
   end;
   Cbpo.Items.Clear;
   dm.Qtemp.First;
   while not dm.Qtemp.Eof do
   begin
     Cbpo.Items.Add(dm.Qtemp['po_no']);
     dm.Qtemp.Next;
   end;
end;

procedure TFNew_UM_Pembelian.Autonumber;
begin
   idmenu:='M11007';
   strday2:=Dtp_Um.Date;
   Ed_no_trans.Text:=getNourutBlnPrshthn_kode(strday2,'purchase.t_advance_payment','');
   Edurut.Text:=order_no;
end;

procedure TFNew_UM_Pembelian.simpan;
begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:=' insert into purchase.t_advance_payment(no_trans,trans_date,supplier_code,um_status,um_value,um_account_code,'+
                  ' trans_day,trans_month,trans_year,pic,input_date,order_no,po_no) '+
                  ' values(:parno_trans,:partrans_date,:parkd_supplier,:parum_status,:parum_value,'+
                  ' :parum_account_code,:partrans_day,:partrans_month,:partrans_year,:parpic,:parinput_date,'+
                  ' :parorder_no,:parpo_no)';
                  ParamByName('parno_trans').Value:=Ed_No_trans.Text;
                  ParamByName('partrans_date').Value:=FormatDateTime('yyy-mm-dd',DTP_UM.Date);
                  ParamByName('parkd_supplier').Value:=EdKd_supp.Text;
                  ParamByName('parum_status').Value:='0';
                  ParamByName('parum_value').Value:=EdUM.Value;
                  ParamByName('parum_account_code').Value:=Edkd_akun.Text;
                  ParamByName('partrans_day').Value:=Edhari.Text;;
                  ParamByName('partrans_month').Value:=Edbln.Text;
                  ParamByName('partrans_year').Value:=Edth.Text;
                  ParamByName('parpic').Value:=Nm;
                  ParamByName('parinput_date').AsDateTime:=Now;
                  ParamByName('parorder_no').Value:=Edurut.text;
                  ParamByName('parpo_no').Value:=CbPo.text;
        ExecSQL;
      end;
end;

procedure TFNew_UM_Pembelian.BSimpanClick(Sender: TObject);
begin
    if DTP_UM.Date=null then
    begin
      MessageDlg('Tanggal transaksi Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      DTP_UM.SetFocus;
      Exit;
    end;

    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
      begin
        Autonumber;
        simpan;
        dm.koneksi.Commit;
        Messagedlg(' Data Berhasil di Simpan ',MtInformation,[Mbok],0);
        BBatalClick(sender);
      end;
    Except
    on E :Exception do
      begin
        MessageDlg(E.Message,mtError,[MBok],0);
        dm.koneksi.Rollback;
      end;
    end;
    Close;
end;

procedure TFNew_UM_Pembelian.clear;
begin
  Ed_No_trans.Text:='';
  EdKd_supp.Text:='';
  EdNm_supp.Text:='';
  EdUM.DisplayFormat:='#,##0.00';
  Edkd_akun.Text:='';
  Ednm_akun.Text:='';
  DTP_UM.SetFocus;
end;

procedure TFNew_UM_Pembelian.DTP_UMChange(Sender: TObject);
var
   SelectedDate: TRzDateTimeEdit;
   year, month, day: word;
begin
   with dm.Qtemp2 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DtP_UM.Date))+' :: DATE, ''dd'') hari ';
     Open;
   end;
   Edhari.Text:=dm.Qtemp2.FieldByName('hari').AsString;

   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DtP_UM.Date))+' :: DATE, ''yyyy'') tahun ';
     Open;
   end;
   Edth.Text:=dm.Qtemp.FieldByName('tahun').AsString;

   with dm.Qtemp1 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DtP_UM.Date))+' :: DATE, ''mm'') bulan ';
     Open;
   end;
   Edbln.Text:=dm.Qtemp1.FieldByName('bulan').AsString;

end;

procedure TFNew_UM_Pembelian.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNew_UM_Pembelian.BitBtn1Click(Sender: TObject);
begin
    autonumber;
end;

procedure TFNew_UM_Pembelian.EdKd_suppChange(Sender: TObject);
begin
    load;
end;

procedure TFNew_UM_Pembelian.Ednm_akunButtonClick(Sender: TObject);
begin
  with  FCari_DaftarPerk do
  begin
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT distinct b.code,b.account_name,c.header_name FROM t_ak_account_det a '+
                'left join t_ak_account b on a.account_code=b.code '+
                'left join t_ak_header c on b.header_code=c.header_code GROUP BY b.code,b.account_name,c.header_name '+
                'ORDER BY b.code ASC';
      Open;
    end;
    Show;
    vpanggil:='um';
    QDaftar_Perk.Close;
    if QDaftar_Perk.Active=false then
       QDaftar_Perk.Active:=True;

    {statustr:='um';
    QAkun.Close;
    if QAkun.Active=false then
       QAkun.Active:=True;}
  end;
end;

procedure TFNew_UM_Pembelian.EdNm_suppButtonClick(Sender: TObject);
begin
    with FSearch_Supplier do
    begin
      Show;
      QSupplier.Close;
      QSupplier.Open;
    end;
end;

procedure TFNew_UM_Pembelian.EdUMKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
   Ednm_akun.SetFocus;
end;

end.
