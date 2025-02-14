unit u_rencana_lunas_hutang_input;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  RzButton, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MemTableDataEh, Data.DB, MemTableEh;

type
  TFRencana_Lunas_Hutang = class(TForm)
    DBGrid_Rencana: TDBGridEh;
    lblrencanake: TPanel;
    Btutup: TRzBitBtn;
    BHapus: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    lbnabank: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btncek: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dptgllunas: TDateTimePicker;
    dpperiode1: TDateTimePicker;
    cbbank: TComboBox;
    dpperiode2: TDateTimePicker;
    txtnocek: TEdit;
    dptglcek: TDateTimePicker;
    dpperiodetmp1: TDateTimePicker;
    dpperiodetmp2: TDateTimePicker;
    rbkas: TRadioButton;
    rbbank: TRadioButton;
    Bdaftar: TRzBitBtn;
    cbjenishutang: TComboBox;
    CBrencanake: TComboBox;
    Edit1: TEdit;
    MemRencana: TMemTableEh;
    DSRencana: TDataSource;
    procedure BdaftarClick(Sender: TObject);
    procedure BtutupClick(Sender: TObject);
    procedure BHapusClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbankSelect(Sender: TObject);
    procedure btncekClick(Sender: TObject);
    procedure DBGrid_RencanaColumns10CellButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall:string;
    stat_lunas:boolean;
    status:Integer;
    procedure baru;
    procedure simpan;
    procedure load_rencanake;
    procedure load_bank;
  end;

var
  FRencana_Lunas_Hutang: TFRencana_Lunas_Hutang;

implementation

{$R *.dfm}

uses U_daftar_hutang, UDataModule, UMainMenu, UMy_Function,
  u_rencana_lunas_hutang, U_daftar_Nocek, UAkun_Perkiraan_TerimaMat;


{function FNewKontrak_ks: TFNewKontrak_ks;
begin
  if RealFNewKontrak_ks <> nil then
    FNewKontrak_ks:= RealFNewKontrak_ks
  else
    Application.CreateForm(TFNewKontrak_ks, Result);
end;}

procedure TFRencana_Lunas_Hutang.load_bank;
begin
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add('select bank_code as kode_bank from t_bank order by bank_code asc');
        open;
      end;
      Dm.Qtemp.First;
      cbbank.Items.Clear;
      while not dm.Qtemp.Eof do
      begin
        cbbank.Items.Add(dm.Qtemp.fieldbyname('kode_bank').asstring);
        dm.Qtemp.Next;
      end;
end;

procedure TFRencana_Lunas_Hutang.baru;
begin
   dptgllunas.Date:=now;
   dpperiode1.Date:=now;
   dpperiode2.Date:=now;
   dpperiodetmp1.date:=now;
   dpperiodetmp2.date:=now;
   cbbank.ItemIndex:=0;
   txtnocek.Clear;
   dptglcek.Date:=Now;
   rbbank.checked:=true;
   cbbank.enabled:=true;
   cbbank.ItemIndex:=0;
   txtnocek.enabled:=true;
   btncek.enabled:=true;
   dptglcek.enabled:=true;
end;

procedure TFRencana_Lunas_Hutang.load_rencanake;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='SELECT * from t_plan_to ';
        Open;
      end;
      Dm.Qtemp.First;
      CbRencanake.Items.Clear;
      while not dm.Qtemp.Eof do
      begin
         CbRencanake.Items.Add(Dm.Qtemp.FieldByName('plan_to').AsString);
         Dm.Qtemp.Next;
      end;
end;

procedure TFRencana_Lunas_Hutang.simpan;
begin
    {with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from t_paid_debt_det where periode1=:tgl1 and periode2=:tgl2 and supplier_code=:kds and cek_no=:noc and plan_to=:rencanake');
      ParamByName('tgl1').Value:=formatdatetime('yyyy-mm-dd',dpperiode1.DateTime);
      ParamByName('tgl2').Value:=formatdatetime('yyyy-mm-dd',dpperiode2.DateTime);
      ParamByName('kds').Asstring:=MemRencana['kd_sup'].Value;
      ParamByName('noc').Asstring:=txtnocek.Text;
      ParamByName('rencanake').Asstring:=CBrencanake.Text;
      open;
    end;
    if (dm.qtemp.RecordCount<>0)and(vcall<>'new') then
    begin
      with dm.qtemp do
      begin
         close;
         sql.clear;
         sql.add('delete from t_paid_debt_det where periode1=:tgl1 and periode2=:tgl2 and supplier_code=:kds and cek_no=:noc and plan_to=:rencanake');
         ParamByName('tgl1').value:=formatdatetime('yyyy-mm-dd',dpperiode1.Date);
         ParamByName('tgl2').value:=formatdatetime('yyyy-mm-dd',dpperiode2.Date);
         ParamByName('kds').asstring:=MemRencana['kd_sup'].Value;
         ParamByName('noc').asstring:=txtnocek.Text;
         ParamByName('rencanake').asstring:=CBrencanake.Text;
         Execute;
      end;
    end;}

    MemRencana.first;
    while not MemRencana.Eof do
    begin
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add('insert into t_paid_debt_det(bank,supplier_code,inv_no,faktur_no,faktur_date, '+
                'cek_no,cek_date,paid_date,periode1,periode2,periodetempo1,periodetempo2,amount,'+
                'debt_type,username,npph,pph_account,pph_name '+
                ',paid_status,exchange_rate,dolar_amount,approve_status,sj_no,factory_code,plan_to '+
                ')');
        sql.add('values(:bnk,:kds,:nv,:nofak,:tglfak,:nck,:tglck,:tgllns,:prd1,:prd2,:prdtmp1,:prdtmp2,'+
                ':jml,:jenhtg,:username,:npphs,:akuns,:pphname '+
                ',:stat,:kurss,:jum_dol,:approvstat,:sjno,:kdprsh,:rencanake '+
                ')');

        if rbbank.Checked=true then
        begin
          ParamByName('bnk').asstring:=cbbank.Text
        end
        else
        begin
          ParamByName('bnk').Asstring:='';
        end;
        ParamByName('kds').AsString:=MemRencana['kd_sup'];
        ParamByName('nv').AsString:=MemRencana['noinv'];
        ParamByName('nofak').AsString:=MemRencana['nofaktur'];
        ParamByName('tglfak').Value:=formatdatetime('yyyy-mm-dd',MemRencana['tglfaktur']);
        ParamByName('nck').AsString:=txtnocek.Text;
        ParamByName('tglck').Value:=formatdatetime('yyyy-mm-dd',dptglcek.Date);
        ParamByName('tgllns').Value:=formatdatetime('yyyy-mm-dd',dptgllunas.Date);
        ParamByName('prd1').Value:=formatdatetime('yyyy-mm-dd',dpperiode1.Date);
        ParamByName('prd2').Value:=formatdatetime('yyyy-mm-dd',dpperiode2.Date);
        ParamByName('prdtmp1').Value:=formatdatetime('yyyy-mm-dd',dpperiodetmp1.Date);
        ParamByName('prdtmp2').Value:=formatdatetime('yyyy-mm-dd',dpperiodetmp2.Date);
        ParamByName('jml').Value:=MemRencana['jumlah'];
        ParamByName('jenhtg').Value:='0';
        ParamByName('username').AsString:=Nm;
        ParamByName('npphs').Value:=MemRencana['npph'];
        ParamByName('akuns').Value:=MemRencana['akun_pph'];
        ParamByName('pphname').Value:=MemRencana['nm_akun_pph'];
        ParamByName('stat').Value:='0';
        ParamByName('jum_dol').Value:=MemRencana['jumlah_dolar'];
        ParamByName('approvstat').Value:='0';
        ParamByName('sjno').AsString:=MemRencana['nosj'];
        ParamByName('kurss').Value:=MemRencana['kurs'];
        ParamByName('kdprsh').Asstring:=dm.QPerusahaan.FieldByName('company_code').AsString;
        ParamByName('rencanake').Asstring:=CBrencanake.Text;

        Execute;
      end;
      MemRencana.Next;
    end;
end;

procedure TFRencana_Lunas_Hutang.BdaftarClick(Sender: TObject);
begin
    if (length(txtnocek.Text)=0)and(rbbank.Checked=true) then
    begin
      showmessage('No. Cek belum diisi !');
      exit;
    end;
    if (length(cbbank.Text)=0)and(rbbank.Checked=true) then
    begin
      showmessage('Bank belum dipilih !');
      exit;
    end;
    with FDaftar_Hutang do
    begin
      EdNo_Cek.Text:=txtnocek.Text;
      dtmulai.date:=dpperiodetmp1.Date;
      DtSelesai.Date:=dpperiodetmp2.Date;
      show;
    end;
    //FDaftar_Hutang.Show;
end;

procedure TFRencana_Lunas_Hutang.BHapusClick(Sender: TObject);
begin
  MemRencana.Delete;
end;

procedure TFRencana_Lunas_Hutang.BSimpanClick(Sender: TObject);
begin
   //Simpan;
   if application.MessageBox('Data rencana pelunasan hutang akan disimpan?','confirm',mb_yesno or mb_iconquestion)=id_yes then
   begin
      //if not dm.Koneksi.InTransaction then
      //dm.Koneksi.StartTransaction;
      //try
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='select * from t_paid_debt_det where '+
                    'periode1='+QuotedStr(FormatDateTime('yyyy-mm-dd',dpperiode1.Date))+' and '+
                    'periode2='+QuotedStr(FormatDateTime('yyyy-mm-dd',dpperiode2.Date))+' and '+
                    'plan_to='+QuotedStr(CBrencanake.Text)+' and supplier_code=(select distinct supplier_code from t_paid_debt_det where username='+QuotedStr(Nm)+')';
                    //'plan_to='+QuotedStr(CBrencanake.Text)+' and supplier_code=(select distinct supplier_code from t_paid_debt_det where username='+QuotedStr(Nm)+' and supplier_code='+QuotedStr(DBGrid_Rencana.Fields[0].AsString)+' )';
          open;
        end;
        if (length(txtnocek.Text)=0)and(rbbank.Checked=true) then
        begin
          MessageDlg('No. Cek belum diisi..!!',mtInformation,[mbRetry],0);
        end
        else
        if (length(cbbank.Text)=0)and(rbbank.Checked=true) then
        begin
          MessageDlg('Bank belum dipilih..!!',mtInformation,[mbRetry],0);
        end
        else
        if FRencana_Lunas_Hutang.MemRencana.RecordCount=0 then
        begin
          MessageDlg('Data tidak dapat diproses ! '+#13+'belum ada data rencana pelunasan hutang dagang!..!!',mtInformation,[mbRetry],0);
        end
        else
        if dm.Qtemp.RecordCount>0 then
        begin
          if MessageDlg('Rencana ke '+QuotedStr(CBrencanake.Text)+' sudah ada, lanjut simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          begin
            Simpan;
            //Dm.Koneksi.Commit;
            MessageDlg('Data berhasil disimpan..!!',mtInformation,[MBOK],0);
            FList_Rencana_Lunas_Hutang.ActROExecute(sender);
            close;
          end;
        end
        else
        begin
          Simpan;
          //Dm.Koneksi.Commit;
          MessageDlg('Data berhasil disimpan..!!',mtInformation,[MBOK],0);
          FList_Rencana_Lunas_Hutang.ActROExecute(sender);
          close;
        end;
        //Except on E :Exception do
          //begin
            //MessageDlg('Data gagal disimpan, silahkan ulangi proses simpan..!!', MtError,[mbok],0);
            //Dm.koneksi.Rollback ;
          //end;
       //end;
   end;

end;

procedure TFRencana_Lunas_Hutang.btncekClick(Sender: TObject);
begin
    Fdaftar_nocek.vcall:='rencanalunashutang';
    Fdaftar_nocek.show;
    Fdaftar_nocek.cbbank.Text:=cbbank.Text;
    Fdaftar_nocek.cbbankChange(sender);
end;

procedure TFRencana_Lunas_Hutang.BtutupClick(Sender: TObject);
begin
   Close;
   MemRencana.EmptyTable;
end;

procedure TFRencana_Lunas_Hutang.cbbankSelect(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add('select * from t_bank where bank_code=:kdb');
    params.ParamByName('kdb').asstring:=cbbank.Text;
    open;
  end;
  if dm.Qtemp.RecordCount<>0 then
  lbnabank.Caption:=dm.Qtemp.fieldbyname('bank_name').AsString;
end;

procedure TFRencana_Lunas_Hutang.DBGrid_RencanaColumns10CellButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
    with  FAkun_Perkiraan_TerimaMat do
    begin
      Show;
      statustr:='rencana_pelunasan_hutang';
      if QAkun.Active=false then QAkun.Active:=True;
    end;
end;

procedure TFRencana_Lunas_Hutang.FormShow(Sender: TObject);
begin
   if vcall='new' then
   begin
      Baru;
   end;
   load_bank;
   Load_Rencanake;
   dptgllunas.Date:=now;
   dpperiode1.Date:=now;
   dpperiode2.Date:=now;
   dpperiodetmp1.date:=now;
   dpperiodetmp2.date:=now;
   dptglcek.Date:=now;
   if MemRencana.Active=false then
      MemRencana.Active:=true;

   if dm.QPerusahaan.Active=false then
      dm.QPerusahaan.Active:=true;
      dm.QPerusahaan.Close;
      dm.QPerusahaan.Open;
end;

end.
