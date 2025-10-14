unit UNew_Perusahaan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  RzCmboBx;

type
  TFNewPerusahaan = class(TForm)
    Label19: TLabel;
    Label20: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Ed_kode: TEdit;
    Ed_alamat: TEdit;
    Ed_telp: TEdit;
    Ed_email: TEdit;
    Ed_NPWP: TEdit;
    cb_jenis_usaha: TRzComboBox;
    Cb_Mata_uang: TRzComboBox;
    Cb_Status_Pajak: TRzComboBox;
    Ed_status_tax: TEdit;
    Ed_nama: TEdit;
    EdNik: TEdit;
    RzBitBtn1: TRzBitBtn;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Ed_nitku: TEdit;
    procedure BBatalClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure Ed_status_taxChange(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure cb_jenis_usahaClick(Sender: TObject);
    procedure Cb_Status_PajakSelect(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure clear;
    procedure showtypebusiness;
    procedure Load_currency;
    procedure Load_status_pajak;
  public
    { Public declarations }
    stat : string;
  end;

function
  FNewPerusahaan: TFNewPerusahaan;

implementation

{$R *.dfm}

uses UDataModule, UMainMenu, UNew_JenisUsaha, UHomeLogin;

var
  RealNewPT: TFNewPerusahaan;

function FNewPerusahaan: TFNewPerusahaan;
begin
  if RealNewPT <> nil then
    FNewPerusahaan:= RealNewPT
  else
    Application.CreateForm(TFNewPerusahaan, Result);
end;

procedure TFNewPerusahaan.Load_currency;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='SELECT * from t_currency WHERE status=''true'' ';
        Open;
      end;
      Dm.Qtemp.First;
      CB_mata_uang.Items.Clear;
      while not dm.Qtemp.Eof do
      begin
         CB_mata_uang.Items.Add(Dm.Qtemp.FieldByName('currency_code').AsString);
         Dm.Qtemp.Next;
      end;
end;
procedure TFNewPerusahaan. showtypebusiness;
begin
   with dm.qtemp do
   begin
     sql.Clear;
     sql.Text:=' select business_name FROM t_business_type WHERE status_active=''true'' ';
     Open;
   end;
   Cb_jenis_usaha.Items.Clear;
   dm.qtemp.First;
   while not dm.qtemp.Eof do
   begin
       Cb_jenis_usaha.Items.Add(dm.qtemp.FieldByName('business_name').AsString);
       dm.qtemp.Next;
   end;
   
end;



procedure TFNewPerusahaan.cb_jenis_usahaClick(Sender: TObject);
begin
     with  FNew_Jenis_Usaha.QJenis_Usaha do
     begin
       close;
       sql.clear;
       sql.Text:='SELECT * FROM t_business_type WHERE status_active=''true'' ';
       Open;
     end;
     FNew_Jenis_Usaha.QJenis_Usaha.close;
     FNew_Jenis_Usaha.QJenis_Usaha.open;
end;

procedure TFNewPerusahaan.Cb_Status_PajakSelect(Sender: TObject);
begin
   if Cb_Status_Pajak.Text='PKP' then
   begin
     showmessage('NPWP wajib diisi');
     Ed_NPWP.Enabled:=true;
   end
   else
   begin
      Ed_NPWP.Enabled:=false;
      showmessage('NIK wajib diisi');
      EdNik.Enabled:=true;
   end;
end;

procedure TFNewPerusahaan.clear;
 begin
    Ed_kode.Text:='';
    Ed_nama.Text:='';
    cb_jenis_usaha.Text:='';
    Ed_alamat.Text:='';
    Ed_telp.Text:='';
    Ed_email.Text:='';
    Ed_npwp.Text:='';
    cb_status_pajak.Text:='';
    cb_mata_uang.Text:='';
    Ed_nitku.Text:='';
    //Ed_kode.SetFocus;

 end;

procedure TFNewPerusahaan.Ed_status_taxChange(Sender: TObject);
begin
   with dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:='select a.*,b.status_tax_name from t_company a '+
                 'INNER JOIN  t_tax_status_company b on a.tax_status=b.status '+
                 'where tax_status='+Quotedstr(Ed_status_tax.Text)+' and deleted_at is null Order by company_code ';
       open;
   end;
   Cb_Status_Pajak.Text:=dm.Qtemp.FieldByName('status_tax_name').AsString;
end;

procedure TFNewPerusahaan.BBatalClick(Sender: TObject);
begin
  Close;
  //FMainMenu.ShowInForm;
end;

procedure TFNewPerusahaan.BEditClick(Sender: TObject);
begin
    BEdit.Visible:=false;
    BSimpan.Visible:=true;
    if Ed_kode.Text='' then
    begin
      MessageDlg('Kode Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_kode.SetFocus;
      Exit;
    end;
    if Ed_nama.Text='' then
    begin
      MessageDlg('Nama Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_nama.SetFocus;
      Exit;
    end;
    if cb_jenis_usaha.Text='' then
    begin
      MessageDlg('Jenis Usaha Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Cb_jenis_usaha.SetFocus;
      Exit;
    end;
    if Ed_alamat.Text='' then
    begin
      MessageDlg('alamat Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_alamat.SetFocus;
      Exit;
    end;
    if Ed_telp.Text='' then
    begin
      MessageDlg('Telepon Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_telp.SetFocus;
      Exit;
    end;
    if Ed_email.Text='' then
    begin
      MessageDlg('Email Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_email.SetFocus;
      Exit;
    end;
     if (cb_status_pajak.Text='PKP')AND(Ed_NPWP.Text='') then
    begin
      MessageDlg('NPWP Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_npwp.SetFocus;
      Exit;
    end;
    if (cb_status_pajak.Text='PKP') AND (Ed_nitku.Text='') then
    begin
      MessageDlg('NITKU Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_nitku.SetFocus;
      Exit;
    end;
    if cb_status_pajak.Text='' then
    begin
      MessageDlg('Status Pajak Tidak boleh Kosong ',MtWarning,[MbOk],0);
      cb_status_pajak.SetFocus;
      Exit;
    end;
    if cb_mata_uang.Text='' then
    begin
      MessageDlg('Mata Uang Tidak boleh Kosong ',MtWarning,[MbOk],0);
      cb_mata_uang.SetFocus;
      Exit;
    end;
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
    begin
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:='Select * from t_company Order by company_code ASC ';
        ExecSQL;
      end;

      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:=' Update t_company set company_name='+QuotedStr(Ed_nama.Text)+ ' ,type_of_business='+QuotedStr(cb_jenis_usaha.Text)+', address='+QuotedStr(Ed_Alamat.Text)+' ,telp='+QuotedStr(Ed_telp.Text)+''+
                  ' ,email='+QuotedStr(Ed_email.Text)+',npwp='+QuotedStr(Ed_NPWP.Text)+',tax_status=:partax_status,'+
                  ' stat_office=:stat_office,currency='+QuotedStr(cb_mata_uang.Text)+','+
                  'nitku='+QuotedStr(Ed_nitku.Text)+',updated_at=NOW(),updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                  ' Where company_code='+QuotedStr(Ed_kode.Text);

        if Cb_Status_Pajak.Text='PKP' then
        begin
           parambyname('partax_status').AsString:='1';
        end
        else
        if Cb_Status_Pajak.Text='NON PKP' then
        begin
           parambyname('partax_status').AsString:='0';
        end;

        if stat='HO' then //Kantor Pusat
        begin
          parambyname('stat_office').AsInteger:=0;
        end
        else
        if stat='BO' then //Kantor Cabang
        begin
          parambyname('stat_office').AsInteger:=1;
        end;

        ExecSQL;
      end;
      dm.koneksi.Commit;
      Messagedlg('Data Berhasil Disimpan',MtInformation,[Mbok],0);
    end
    Except
     on E :Exception do
    begin
      MessageDlg(E.Message,mtError,[MBok],0);
      dm.koneksi.Rollback;
    end;
    end;
 //   FMainMenu.ShowInForm;
    BBatalClick(sender);

end;

procedure TFNewPerusahaan.BSimpanClick(Sender: TObject);
begin
    if Ed_kode.Text='' then
    begin
      MessageDlg('Kode Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_kode.SetFocus;
      Exit;
    end;
    if Ed_nama.Text='' then
    begin
      MessageDlg('Nama Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_nama.SetFocus;
      Exit;
    end;
    if cb_jenis_usaha.Text='' then
    begin
      MessageDlg('Jenis Usaha Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Cb_jenis_usaha.SetFocus;
      Exit;
    end;
    if Ed_alamat.Text='' then
    begin
      MessageDlg('Alamat Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_alamat.SetFocus;
      Exit;
    end;
    if Ed_telp.Text='' then
    begin
      MessageDlg('Telepon Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_telp.SetFocus;
      Exit;
    end;
    if Ed_email.Text='' then
    begin
      MessageDlg('Email Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_email.SetFocus;
      Exit;
    end;

    {if Ed_npwp.Text='' then
    begin
      MessageDlg('NPWP Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_npwp.SetFocus;
      Exit;
    end;}
    if (cb_status_pajak.Text='PKP')AND(Ed_NPWP.Text='') then
    begin
      MessageDlg('NPWP Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_npwp.SetFocus;
      Exit;
    end;
    if (cb_status_pajak.Text='PKP') AND (Ed_nitku.Text='') then
    begin
      MessageDlg('NITKU Perusahaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ed_nitku.SetFocus;
      Exit;
    end;
    if (cb_status_pajak.Text='NON PKP') AND (EdNik.Text='') then
    begin
      MessageDlg('NIK Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNik.SetFocus;
      Exit;
      //Ed_npwp.Text:='';
      //Exit;
    end;
    if cb_status_pajak.Text='' then
    begin
      MessageDlg('Status Pajak Tidak boleh Kosong ',MtWarning,[MbOk],0);
      cb_status_pajak.SetFocus;
      Exit;
    end;
     if cb_mata_uang.Text='' then
    begin
      MessageDlg('Mata Uang Tidak boleh Kosong ',MtWarning,[MbOk],0);
      cb_mata_uang.SetFocus;
      Exit;
    end;

    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
    begin
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:='Select * from t_company order by company_code ASC ';
        ExecSQL;
      end;

      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:=' Insert into t_company (company_code,company_name,type_of_business, '+
                  ' address,Telp,email,npwp,tax_status,currency,created_at,created_by,nitku,stat_office) values'+
                  '('+QuotedStr(Ed_kode.Text)+','+QuotedStr(Ed_Nama.Text)+','+QuotedStr(cb_jenis_usaha.Text)+', '+
                  ' '+QuotedStr(Ed_Alamat.Text)+','+
                  //''+QuotedStr(Ed_Telp.Text)+','+QuotedStr(Ed_email.Text)+','+QuotedStr(Ed_NPWP.Text)+','+QuotedStr(cb_status_pajak.Text)+','+QuotedStr(cb_mata_uang.Text)+' ,now(),''Admin''  )';
                  ''+QuotedStr(Ed_Telp.Text)+','+QuotedStr(Ed_email.Text)+','+
                  ' '+QuotedStr(Ed_NPWP.Text)+',:par_status_pajak,'+QuotedStr(cb_mata_uang.Text)+' ,NOW(),'+
                  ' '+QuotedStr(FHomeLogin.Eduser.Text)+','+QuotedStr(Ed_nitku.Text)+',:stat_office )';

                  if Cb_Status_Pajak.Text='PKP' then
                  begin
                     parambyname('par_status_pajak').AsString:='1';
                  end
                  else
                  if Cb_Status_Pajak.Text='NON PKP' then
                  begin
                     parambyname('par_status_pajak').AsString:='0';
                  end;

                  if stat='HO' then //Kantor Pusat
                  begin
                     parambyname('stat_office').AsInteger:=0;
                  end
                  else
                  if stat='BO' then //Kantor Cabang
                  begin
                     parambyname('stat_office').AsInteger:=1;
                  end;
//                  parambyname('created_at').AsDateTime:=Now;
//                  parambyname('created_by').AsString:='Admin';
        ExecSQL;
      end;
      dm.koneksi.Commit;
      Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
    end
    Except
    on E :Exception do
    begin
      MessageDlg(E.Message,mtError,[MBok],0);
      dm.koneksi.Rollback;
    end;
    end;
    FMainMenu.TampilTabForm2;
    BBatalClick(sender);
end;

procedure TFNewPerusahaan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNewPerusahaan.FormCreate(Sender: TObject);
begin
  RealNewPT:=self;
end;

procedure TFNewPerusahaan.FormDestroy(Sender: TObject);
begin
  RealNewPT:=nil;
end;

procedure TFNewPerusahaan.FormShow(Sender: TObject);
begin
    FNew_Jenis_Usaha.QJenis_Usaha.Close;
    FNew_Jenis_Usaha.QJenis_Usaha.Open;
    //clear;
    Showtypebusiness;
    Load_status_pajak;
    load_currency;
    //BSimpan.Visible:=True;
    //BEdit.Visible:=False;
end;

procedure TFNewPerusahaan.Load_status_pajak;
begin
   with dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:='SELECT status_tax_name from t_tax_status_company ';
       open;
   end;
   Cb_Status_Pajak.items.clear;
   dm.Qtemp.First;
   while not dm.Qtemp.Eof do
   begin
      Cb_Status_Pajak.Items.Add(dm.Qtemp['status_tax_name']);
      dm.Qtemp.Next;
   end;
end;

procedure TFNewPerusahaan.RzBitBtn1Click(Sender: TObject);
begin
   FNew_Jenis_Usaha.Show;
end;

end.
