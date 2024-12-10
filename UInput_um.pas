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
    Cb_Curr: TRzComboBox;
    Ed_kurs: TRzNumericEdit;
    Label12: TLabel;
    Label13: TLabel;
    ednilai_po: TRzNumericEdit;
    procedure BBatalClick(Sender: TObject);
    procedure EdUMKeyPress(Sender: TObject; var Key: Char);
    procedure EdNm_suppButtonClick(Sender: TObject);
    procedure Ednm_akunButtonClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure DTP_UMChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EdKd_suppChange(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure Edkd_akunChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Cb_CurrChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CbPoSelect(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure clear;
    Procedure Autonumber;
    procedure simpan;
    procedure update;
    procedure load;
    procedure load_currency;
  end;

function FNew_UM_Pembelian: TFNew_UM_Pembelian;
var  StatusTr:integer;
  status_um,user,orderno:string;
 // hg_po:real;
implementation

{$R *.dfm}

uses USearch_Supplier, UAkun_Perkiraan_UM, UDataModule, UMainMenu, UMy_Function,
  UCari_DaftarPerk, UUang_Muka_Pembelian;

var
  RealFNew_UM_Pembelian: TFNew_UM_Pembelian;
// implementasi function
function FNew_UM_Pembelian: TFNew_UM_Pembelian;
begin
  if RealFNew_UM_Pembelian <> nil then
    FNew_UM_Pembelian:= RealFNew_UM_Pembelian
  else
    Application.CreateForm(TFNew_UM_Pembelian, Result);
end;

procedure TFNew_UM_Pembelian.update;
begin
    with dm.Qtemp do
    begin
        close;
        sql.clear;
        sql.Text:='Update t_advance_payment set trans_date=:partrans_date,supplier_code=:parsupplier_code,um_status=:parum_status, '+
                  'um_value=:parum_value,um_account_code=:parum_account_code,trans_day=:partrans_day,trans_month=:partrans_month,trans_year=:partrans_year, '+
                  //'pic=:parpic,
                  'input_date=:parinput_date, '+
                  //order_no=:parorder_no,
                  'po_no=:parpo_no,currency=:parcurrency,exchange_rate=:parexchange_rate,updated_at=:updated_at,updated_by=:updated_by '+
                  'Where no_trans='+QuotedStr(Ed_No_trans.Text);
        parambyname('partrans_date').AsDate:=DTP_UM.Date;
        parambyname('parsupplier_code').AsString:=EdKd_supp.Text;
        parambyname('parum_status').value:='0';
        parambyname('parum_value').value:=EdUM.value;
        parambyname('parum_account_code').AsString:=Edkd_akun.Text;
        parambyname('partrans_day').AsString:=Edhari.Text;
        parambyname('partrans_month').AsString:=Edbln.Text;
        parambyname('partrans_year').AsString:=Edth.Text;
        parambyname('parpo_no').AsString:=cbpo.Text;       //update ds 07-10-2024
        //parambyname('parpic').AsString:=user;
        parambyname('parinput_date').AsString:=Formatdatetime('yyyy-mm-dd',Now());
        //parambyname('parorder_no').AsString:=orderno;
        parambyname('parcurrency').AsString:=Cb_Curr.Text;
        parambyname('parexchange_rate').AsString:=Ed_kurs.Text;
        parambyname('updated_at').AsString:=Formatdatetime('yyyy-mm-dd',Now());
        parambyname('updated_by').AsString:='Admin';


        ExecSQL;
    end;
end;

procedure TFNew_UM_Pembelian.load;
begin
   with dm.Qtemp do
   begin
      close;
      sql.Clear;
      sql.Text:='select * from t_po where supplier_code='+Quotedstr(EdKd_supp.Text)+' '+
      ' and po_no in (select po_no from t_po except select po_no from t_advance_payment )';
         //       'and po_no not in (select po_no from purchase.t_advance_payment where supplier_code='+Quotedstr(EdKd_supp.Text)+' )';

      //sql.Text:='select * from purchase.t_po where um_status=''true'' and supplier_code='+Quotedstr(EdKd_supp.Text)+' '+
                //' and po_no not in (select po_no from purchase.t_advance_payment)';
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
   Ed_no_trans.Text:=getNourutBlnPrshthn_kode(strday2,'t_advance_payment','');
   Edurut.Text:=order_no;
end;

procedure TFNew_UM_Pembelian.simpan;
begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:=' insert into t_advance_payment(no_trans,trans_date,supplier_code,um_status,um_value,um_account_code,'+
                  ' trans_day,trans_month,trans_year,pic,input_date,order_no,po_no,currency,exchange_rate,created_at,created_by) '+
                  ' values(:parno_trans,:partrans_date,:parkd_supplier,:parum_status,:parum_value,'+
                  ' :parum_account_code,:partrans_day,:partrans_month,:partrans_year,:parpic,:parinput_date,'+
                  ' :parorder_no,:parpo_no,:parcurrency,:exchange_rate,now(),:created_by)';
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
                  ParamByName('parcurrency').Value:=Cb_Curr.text;
                  ParamByName('exchange_rate').Value:=Ed_kurs.text;
              //    parambyname('created_at').AsString:=Formatdatetime('yyy-mm-dd',Now());
                  parambyname('created_by').AsString:='Admin';
        ExecSQL;
      end;
end;

procedure TFNew_UM_Pembelian.BSimpanClick(Sender: TObject);
begin
  if messageDlg ('Anda Yakin akan Menyimpan Transaksi ini.'+Ed_No_trans.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
  begin
      if CbPo.Text<>'' then
      begin
        if EdUM.Value>ednilai_po.Value then
        begin
          MessageDlg('Uang Muka Tidak Boleh melebihi PO ',MtWarning,[MbOk],0);
          Exit;
        end;
      end;
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
end;

procedure TFNew_UM_Pembelian.CbPoSelect(Sender: TObject);
begin
  with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select sum(grandtotal) total from t_podetail where po_no='+QuotedStr(CbPo.Text);
      Execute;
    end;
//    hg_po:=dm.Qtemp['total'];
    ednilai_po.Value:=dm.Qtemp['total'];
end;

procedure TFNew_UM_Pembelian.Cb_CurrChange(Sender: TObject);
begin
   if Cb_Curr.Text='IDR' then
   begin
     Ed_kurs.text:='1';
     Ed_kurs.Visible:=false;
   end;
   if Cb_Curr.Text='USD' then
   begin
     Ed_kurs.text:='0';
     Ed_kurs.Visible:=true;
   end;
end;

procedure TFNew_UM_Pembelian.clear;
begin
  Ed_No_trans.Text:='';
  EdKd_supp.Text:='';
  EdNm_supp.Text:='';
  CbPo.Text:='';
  EdUM.Text:='0';
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
  FUang_Muka_Pembelian.ActRoExecute(sender);
  Close;
end;

procedure TFNew_UM_Pembelian.BEditClick(Sender: TObject);
begin
  if messageDlg ('Anda Yakin Update Transaksi No.'+Ed_No_trans.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
  begin
    if CbPo.Text<>'' then
      begin
        if EdUM.Value>ednilai_po.Value then
        begin
          MessageDlg('Uang Muka Tidak Boleh melebihi PO ',MtWarning,[MbOk],0);
          Exit;
        end;
      end;
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
      begin
        update;
        dm.koneksi.Commit;
        Messagedlg(' Data Berhasil di Update ',MtInformation,[Mbok],0);
        BBatalClick(sender);
      end;
    Except
    on E :Exception do
      begin
        MessageDlg(E.Message,mtError,[MBok],0);
        dm.koneksi.Rollback;
      end;
    end;
  end;
end;

procedure TFNew_UM_Pembelian.BitBtn1Click(Sender: TObject);
begin
    autonumber;
end;

procedure TFNew_UM_Pembelian.Edkd_akunChange(Sender: TObject);
begin
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='SELECT distinct b.code,b.account_name,c.header_name FROM t_ak_account_det a '+
                'left join t_ak_account b on a.account_code=b.code '+
                'left join t_ak_header c on b.header_code=c.header_code where code='+Quotedstr(Edkd_akun.Text)+' '+
                'GROUP BY b.code,b.account_name,c.header_name '+
                'ORDER BY b.code ASC';
     open;
   end;
   Ednm_akun.Text:=dm.Qtemp.FieldByName('account_name').AsString;

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

procedure TFNew_UM_Pembelian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_UM_Pembelian.FormCreate(Sender: TObject);
begin
  RealFNew_UM_Pembelian:=self;
end;

procedure TFNew_UM_Pembelian.FormDestroy(Sender: TObject);
begin
  RealFNew_UM_Pembelian:=nil;
end;

procedure TFNew_UM_Pembelian.FormShow(Sender: TObject);
begin
   load_currency;
   Cb_CurrChange(sender);
end;

procedure TFNew_UM_Pembelian.load_currency;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='SELECT * from t_currency WHERE status=''true'' ';
        Open;
      end;
      Dm.Qtemp.First;
      CB_Curr.Items.Clear;
      while not dm.Qtemp.Eof do
      begin
         CB_Curr.Items.Add(Dm.Qtemp.FieldByName('currency_code').AsString);
         Dm.Qtemp.Next;
      end;
end;

end.
