unit USingkronisasiPusat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RzLabel,
  Vcl.ExtCtrls, RzPanel, RzButton, System.DateUtils, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFSingkronisasiPusat = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    cbData: TRzComboBox;
    cbBulan: TRzComboBox;
    cbTahun: TRzComboBox;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    btProses: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    DBGridEh1: TDBGridEh;
    QLog: TUniQuery;
    DSLog: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btProsesClick(Sender: TObject);
    procedure cbDataChange(Sender: TObject);
    procedure cbBulanChange(Sender: TObject);
    procedure cbTahunChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdSync: String;
    procedure SyncPenjualan;
    procedure SyncTargetPenjualan;
    procedure SyncPiutang;
    procedure SyncDPP;
    procedure SyncPelanggan;
    procedure LogSync;
    procedure GetLog;
    procedure SyncPemakaianBiaya;
  end;

var
  FSingkronisasiPusat: TFSingkronisasiPusat;

implementation

{$R *.dfm}

uses UDataModule, UMy_Function, UHomeLogin, UMainMenu;

procedure TFSingkronisasiPusat.GetLog;
begin
  with QLog do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT a.id,a.data_name,sdl.year,sdl.month,sdl.created_at,tu.full_name '+
              'FROM t_sync_data a '+
              'LEFT JOIN t_sync_data_log sdl ON sdl.id_sync_data = a.id '+
              'AND sdl.created_at = ( '+
              'SELECT MAX(created_at) '+
              'FROM t_sync_data_log '+
              'WHERE id_sync_data = a.id '+
//              'AND year='+cbTahun.Text+' and month='+IntToStr(cbBulan.ItemIndex+1)+' ) '+
              'AND ((year = ' + cbTahun.Text + ' AND month = ' + IntToStr(cbBulan.ItemIndex + 1) + ') ' +
              'OR (year IS NULL AND month IS NULL)) )' +
              'LEFT  JOIN t_user tu ON tu.user_name = sdl.created_by '+
              'ORDER BY a.id ASC;';
    open;
  end;
end;

procedure TFSingkronisasiPusat.LogSync;
var strYear,strMonth : String;
begin
  strYear:='NULL';
  strMonth:='NULL';
  if cbData.Text<>'PELANGGAN' then
  begin
    strYear:=cbTahun.Text;
    strMonth:=IntToStr(cbBulan.ItemIndex+1);
  end;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='INSERT INTO t_sync_data_log(id_sync_data,sync_data_name,year,month,created_by) '+
              'VALUES((SELECT id from t_sync_data WHERE data_name='+QuotedStr(cbData.Text)+'	),'+QuotedStr(cbData.Text)+','+
              ''+strYear+','+strMonth+','+QuotedStr(Nm)+')';
    ExecSQL;
  end;
end;

procedure TFSingkronisasiPusat.SyncPemakaianBiaya;
var
  TglMulai, TglAkhir: TDateTime;
  Tahun, Bulan: Integer;
  TotalRec, CurrentRec: Integer;
begin
  btProses.Enabled:=False;
  FMainMenu.Load.Visible:=True;
  FMainMenu.Load.ShowPercent:=True;
  FMainMenu.Load.Percent := 0;

  Tahun := StrToInt(cbTahun.Text);
  Bulan := (cbBulan.ItemIndex + 1);

  TglMulai := EncodeDate(Tahun, Bulan, 1);
  TglAkhir := EndOfAMonth(Tahun, Bulan);


  dm.Qtemp.Close;
  dm.Qtemp.SQL.Clear;
  dm.Qtemp.SQL.Text :=
    ' SELECT r.code as kode_tp, r.name as nama_tp, c.initial_code AS kode_group_biaya, '+
    ' c.cost_type AS nama_group_biaya, '+
    ' COALESCE(bulan, ' + QuotedStr(IntToStr(Tahun) + '-' + FormatFloat('00', Bulan) + '-01') + ') AS bulan, '+
    '	COALESCE(biaya, 0) AS biaya,	COALESCE(sbu_code, (select sbu_code from t_tmpsyst) ) AS sbu_code '+
    ' FROM t_region_tp r '+
    ' CROSS JOIN t_ak_type_cost c '+
    ' LEFT JOIN ( SELECT tp_code as kode_tp, initial_code as kode_grouping, '+
     ' TO_CHAR(c.tanggal, ''YYYY-MM-01'') as bulan, sum(amount) as biaya, '+
     ' (select sbu_code from t_tmpsyst) as sbu_code	'+
      ' from t_cost_detail a '+
      ' left join (SELECT a.code, b.cost_type, b.initial_code from t_ak_account a '+
       ' left join t_ak_type_cost b on a.cost_st_id=b.id '+
       ' where cost_st_id>0) b on a.account_code=b.code '+
      ' left join vtransaksi_cost c on a.voucher_no=c.notrans '+
      '	where TO_CHAR(c.tanggal, ''YYYY'')='+QuotedStr(IntToStr(Tahun))+' '+
      ' and TO_CHAR(c.tanggal, ''mm'')='+QuotedStr(Format('%.2d', [Bulan]))+' '+
      '	group by tp_code, initial_code ,TO_CHAR(c.tanggal, ''YYYY-MM-01'') '+
      '	) trans on r.code=trans.kode_tp and c.initial_code=trans.kode_grouping;';
  dm.Qtemp.Open;

  dm.KoneksiPusatMysql.Connected := True;
  dm.QtempPusatMysql.Close;
  dm.QtempPusatMysql.SQL.Clear;
  dm.QtempPusatMysql.SQL.Text :=
    ' DELETE FROM t_biaya_tp '+
    ' WHERE YEAR(bulan)='+QuotedStr(IntToStr(Tahun))+' '+
    ' AND MONTH(bulan)='+QuotedStr(IntToStr(Bulan))+' ' +
    ' AND data_sumber = 1 '+
    ' AND sbu_code = '+QuotedStr(FHomeLogin.vKodePRSH);
  dm.QtempPusatMysql.ExecSQL;

  TotalRec := dm.Qtemp.RecordCount;

  if TotalRec > 0 then
  begin
    CurrentRec := 0;
    dm.Qtemp.First;

    try
      while not dm.Qtemp.Eof do
      begin
        Inc(CurrentRec);

        dm.QtempPusatMysql.Close;
        dm.QtempPusatMysql.SQL.Clear;
        dm.QtempPusatMysql.SQL.Text :=
          'INSERT INTO t_biaya_tp(`data_sumber`, `kode_tp`, `kode_grouping`, `bulan`, `biaya`, `sbu_code`) ' +
          'VALUES (1 , ' +
          QuotedStr(dm.Qtemp.FieldByName('kode_tp').AsString)+ ', ' +
          QuotedStr(dm.Qtemp.FieldByName('kode_group_biaya').AsString)+ ', ' +
          QuotedStr(dm.Qtemp.FieldByName('bulan').AsString)+', ' +
          QuotedStr(StringReplace(FloatToStr(dm.Qtemp.FieldByName('biaya').AsFloat), ',', '.', [])) +', ' +
          QuotedStr(dm.Qtemp.FieldByName('sbu_code').AsString)+')';
        dm.QtempPusatMysql.ExecSQL;

        FMainMenu.Load.Percent := Round((CurrentRec / TotalRec) * 90);
        Application.ProcessMessages;

        dm.Qtemp.Next;
      end;
      FMainMenu.Load.Percent := 95;
      LogSync;
      FMainMenu.Load.Percent := 97;
      GetLog;
      FMainMenu.Load.Percent := 100;
      MessageDlg('Simpan Berhasil..!!', mtInformation, [mbOK], 0);
    finally
      FMainMenu.Load.Percent := 0;
      FMainMenu.Load.ShowPercent:=False;
      btProses.Enabled:=True;
//      FMainMenu.Load.Visible:=False;
    end;
  end
  else begin
    FMainMenu.Load.Percent := 100;
  end;
  btProses.Enabled:=True;
end;


procedure TFSingkronisasiPusat.SyncPelanggan;
var
  TglMulai, TglAkhir: TDateTime;
  Tahun, Bulan: Integer;
  TotalRec, CurrentRec: Integer;
begin

  btProses.Enabled:=False;
  FMainMenu.Load.Visible:=True;
  FMainMenu.Load.ShowPercent:=True;
  FMainMenu.Load.Percent := 0;

  Tahun := StrToInt(cbTahun.Text);
  Bulan := (cbBulan.ItemIndex + 1);

  TglMulai := EncodeDate(Tahun, Bulan, 1);
  TglAkhir := EndOfAMonth(Tahun, Bulan);

  dm.Qtemp.Close;
  dm.Qtemp.SQL.Clear;
  dm.Qtemp.SQL.Text :='SELECT NULL id ,0 id_outlet,''0'' jenisOutlet_ID,''0'' kecamatan_ID,'+
                      'customer_code,customer_name,customer_name_pkp,address,address_document,'+
                      'address_faktur,0 outlet_target,latitude,longitude,'''' kode_distribusi,'''' kode_distribusi2,'+
                      '0 outlet_piutang,COALESCE(npwp,no_npwp) npwp,0 outlet_disc,'+
                      'contact_person1 no_telp,'''' no_hp,0 balance,COALESCE(payment_term,0) jangka_kredit,'+
                      '0 stat_pesan,0 disc_sbn,0 stat_outlet,CASE WHEN deleted_at is NULL then ''1'' else ''0'' end stat_aktif, '+
                      '0 stat_noa,0 parkir,created_at,'+QuotedStr(FHomeLogin.vKodePRSH)+' sbu_code,'+
                      '0 stat_download,'''' ket_prospek,number_va bank_va,no_nik nik,'+
                      '0 type_jual,1 jenisgolongan_ID,email,'''' noHP,idprospek idProspek,'+
                      ' customer_name_pkp outlet_pemilik1,address_faktur outlet_alamat_fp1,code_cust_old, '+
                      'code_kecamatan kode_kec_bps FROM get_customer();';
  dm.Qtemp.Open;

  dm.KoneksiPusatMysql.Connected := True;
  dm.QtempPusatMysql.Close;
  dm.QtempPusatMysql.SQL.Clear;
  dm.QtempPusatMysql.SQL.Text :='DELETE FROM t_outlet_new_temp WHERE lokasi=' + QuotedStr(FHomeLogin.vKodePRSH);
  dm.QtempPusatMysql.ExecSQL;

  TotalRec := dm.Qtemp.RecordCount;

  if TotalRec > 0 then
  begin
    CurrentRec := 0;
    dm.Qtemp.First;

    try
      while not dm.Qtemp.Eof do
      begin
        Inc(CurrentRec);

        dm.QtempPusatMysql.Close;
        dm.QtempPusatMysql.SQL.Clear;
        dm.QtempPusatMysql.SQL.Text :='INSERT t_outlet_new_temp (id,id_outlet,jenisOutlet_ID,kecamatan_ID,'+
                                      'outlet_code,outlet_name,outlet_pemilik,outlet_alamat,outlet_alamat2,'+
                                      'outlet_alamat_fp,outlet_target,outlet_latitude,outlet_longitude,kode_distribusi,'+
                                      'kode_distribusi2,outlet_piutang,NPWP,outlet_disc,no_telp,no_hp,balance,'+
                                      'jangka_kredit,stat_pesan,disc_sbn,stat_outlet,stat_aktif,stat_noa,parkir,'+
                                      'date_create,lokasi,stat_download,ket_prospek,bank_va,nik,type_jual,'+
                                      'jenisGolongan_ID,email,noHP,idProspek,outlet_pemilik1,outlet_alamat_fp1,'+
                                      'code_cust,kode_kec_bps) ' +
                                      'VALUES (' +
                                      'NULL, ' + // id
                                      IntToStr(dm.Qtemp.FieldByName('id_outlet').AsInteger) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('jenisOutlet_ID').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('kecamatan_ID').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('customer_code').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('customer_name').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('customer_name_pkp').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('address').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('address_document').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('address_faktur').AsString) + ', ' +
                                      StringReplace(FloatToStr(dm.Qtemp.FieldByName('outlet_target').AsFloat), ',', '.', []) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('latitude').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('longitude').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('kode_distribusi').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('kode_distribusi2').AsString) + ', ' +
                                      StringReplace(FloatToStr(dm.Qtemp.FieldByName('outlet_piutang').AsFloat), ',', '.', []) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('npwp').AsString) + ', ' +
                                      StringReplace(FloatToStr(dm.Qtemp.FieldByName('outlet_disc').AsFloat), ',', '.', []) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('no_telp').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('no_hp').AsString) + ', ' +
                                      StringReplace(FloatToStr(dm.Qtemp.FieldByName('balance').AsFloat), ',', '.', []) + ', ' +
                                      IntToStr(dm.Qtemp.FieldByName('jangka_kredit').AsInteger) + ', ' +
                                      IntToStr(dm.Qtemp.FieldByName('stat_pesan').AsInteger) + ', ' +
                                      StringReplace(FloatToStr(dm.Qtemp.FieldByName('disc_sbn').AsFloat), ',', '.', []) + ', ' +
                                      IntToStr(dm.Qtemp.FieldByName('stat_outlet').AsInteger) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('stat_aktif').AsString) + ', ' +
                                      IntToStr(dm.Qtemp.FieldByName('stat_noa').AsInteger) + ', ' +
                                      IntToStr(dm.Qtemp.FieldByName('parkir').AsInteger) + ', ' +
                                      QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:ss', dm.Qtemp.FieldByName('created_at').AsDateTime)) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('sbu_code').AsString) + ', ' +
                                      IntToStr(dm.Qtemp.FieldByName('stat_download').AsInteger) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('ket_prospek').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('bank_va').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('nik').AsString) + ', ' +
                                      IntToStr(dm.Qtemp.FieldByName('type_jual').AsInteger) + ', ' +
                                      IntToStr(dm.Qtemp.FieldByName('jenisgolongan_ID').AsInteger) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('email').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('noHP').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('idProspek').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('outlet_pemilik1').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('outlet_alamat_fp1').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('code_cust_old').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('kode_kec_bps').AsString) + ')';
        dm.QtempPusatMysql.ExecSQL;


        FMainMenu.Load.Percent := Round((CurrentRec / TotalRec) * 90);
        Application.ProcessMessages;

        dm.Qtemp.Next;
      end;

      dm.QtempPusatMysql.Close;
      dm.QtempPusatMysql.SQL.Clear;
      dm.QtempPusatMysql.SQL.Text :='DELETE FROM t_outlet_new WHERE lokasi=' + QuotedStr(FHomeLogin.vKodePRSH);
      dm.QtempPusatMysql.ExecSQL;
      FMainMenu.Load.Percent := 95;

      dm.QtempPusatMysql.Close;
      dm.QtempPusatMysql.SQL.Clear;
      dm.QtempPusatMysql.SQL.Text :='INSERT INTO t_outlet_new(id,id_outlet,jenisOutlet_ID,'+
                                    'kecamatan_ID,outlet_code,outlet_name,outlet_pemilik,'+
                                    'outlet_alamat,outlet_alamat2,outlet_alamat_fp,outlet_target,'+
                                    'outlet_latitude,outlet_longitude,kode_distribusi,kode_distribusi2,'+
                                    'outlet_piutang,NPWP,outlet_disc,no_telp,no_hp,balance,jangka_kredit,'+
                                    'stat_pesan,disc_sbn,stat_outlet,stat_aktif,stat_noa,parkir,date_create,'+
                                    'lokasi,stat_download,ket_prospek,bank_va,nik,type_jual,jenisGolongan_ID,'+
                                    'email,noHP,idProspek,outlet_pemilik1,outlet_alamat_fp1,code_cust) '+
                                    '(SELECT a.id,a.id_outlet,a.jenisOutlet_ID,a.kecamatan_ID,a.outlet_code,'+
                                    'a.outlet_name,a.outlet_pemilik,a.outlet_alamat,a.outlet_alamat2,a.outlet_alamat_fp,'+
                                    'a.outlet_target,a.outlet_latitude,a.outlet_longitude,b.kode_distribusi kode_distribusi,'+
                                    'b.kode_distribusi kode_distribusi2,a.outlet_piutang,a.NPWP,a.outlet_disc,a.no_telp,'+
                                    'a.no_hp,a.balance,a.jangka_kredit,a.stat_pesan,a.disc_sbn,a.stat_outlet,a.stat_aktif,'+
                                    'a.stat_noa,a.parkir,a.date_create,a.lokasi,a.stat_download,a.ket_prospek,a.bank_va,'+
                                    'a.nik,type_jual,a.jenisGolongan_ID,a.email,a.noHP,a.idProspek,a.outlet_pemilik1,'+
                                    'a.outlet_alamat_fp1,a.code_cust '+
                                    'FROM t_outlet_new_temp a '+
                                    'LEFT JOIN t_wilayah b on b.kode_kec_bps=a.kode_kec_bps) ';
      dm.QtempPusatMysql.ExecSQL;
      LogSync;
      FMainMenu.Load.Percent := 97;
      GetLog;
      FMainMenu.Load.Percent := 100;
      MessageDlg('Simpan Berhasil..!!', mtInformation, [mbOK], 0);


    finally
      FMainMenu.Load.Percent := 0;
      FMainMenu.Load.ShowPercent:=False;
      btProses.Enabled:=True;
//      FMainMenu.Load.Visible:=False;
    end;
  end
  else begin
    FMainMenu.Load.Percent:=100;
  end;
  btProses.Enabled:=True;
end;

procedure TFSingkronisasiPusat.SyncDPP;
var
  TglMulai, TglAkhir: TDateTime;
  Tahun, Bulan: Integer;
  TotalRec, CurrentRec: Integer;
begin
  btProses.Enabled:=False;
  FMainMenu.Load.Visible:=True;
  FMainMenu.Load.ShowPercent:=True;
  FMainMenu.Load.Percent := 0;

  Tahun := StrToInt(cbTahun.Text);
  Bulan := (cbBulan.ItemIndex + 1);

  TglMulai := EncodeDate(Tahun, Bulan, 1);
  TglAkhir := EndOfAMonth(Tahun, Bulan);

  dm.Qtemp.Close;
  dm.Qtemp.SQL.Clear;
  dm.Qtemp.SQL.Text :='SELECT '''' kode_kab,COALESCE(b.code_tp,c.code_tp) kode_tp,' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglMulai)) + ' bulan,'+
                      'COUNT(a.no_invoice) jum_nota_tagihan,SUM(a.paid_amount) jum_nominal_tagihan, '+
                      'SUM(CASE WHEN a.cash > 0::numeric THEN 1 ELSE 0 END)+ '+
                      'SUM(CASE WHEN a.receipt > 0::numeric THEN 1 ELSE 0 END)+ '+
                      'SUM(CASE WHEN a.counter_bill > 0::numeric THEN 1 ELSE 0 END)+ '+
                      'SUM(CASE WHEN a.cheque_amount1 > 0::numeric THEN 1 ELSE 0 END) jum_nota_tertagih, '+
                      '(SUM(a.cash)+SUM(a.receipt)+SUM(a.counter_bill)+SUM(a.cheque_amount1)) jum_nominal_tertagih,'+
                      ' ' + QuotedStr(FHomeLogin.vKodePRSH)+' sbu_code,''0'' jenis_kolektor, 1 sumber_date,'+
                      'COALESCE(b.code_kecamatan,c.code_kecamatan) code_kecamatan '+
                      'FROM t_dpp a '+
                      'LEFT JOIN get_selling(False) b on b.trans_no=a.no_invoice '+
                      'LEFT JOIN get_customer() c on c.customer_code=a.code_cust '+
                      'WHERE a.date_dpp BETWEEN ' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglMulai)) + ' AND '+
                      ' ' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglAkhir)) + ' '+
                      'GROUP BY COALESCE(b.code_tp,c.code_tp) ,COALESCE(b.code_kecamatan,c.code_kecamatan)';
  dm.Qtemp.Open;

  dm.KoneksiPusatMysql.Connected := True;
  dm.QtempPusatMysql.Close;
  dm.QtempPusatMysql.SQL.Clear;
  dm.QtempPusatMysql.SQL.Text :='DELETE FROM t_eva_kolektor_temp WHERE sbu_code=' + QuotedStr(FHomeLogin.vKodePRSH);
  dm.QtempPusatMysql.ExecSQL;

  TotalRec := dm.Qtemp.RecordCount;

  if TotalRec > 0 then
  begin
    CurrentRec := 0;
    dm.Qtemp.First;

    try
      while not dm.Qtemp.Eof do
      begin
        Inc(CurrentRec);

        dm.QtempPusatMysql.Close;
        dm.QtempPusatMysql.SQL.Clear;
        dm.QtempPusatMysql.SQL.Text :='INSERT t_eva_kolektor_temp (kode_kab,kode_tp,bulan,jum_nota_tagihan,jum_nominal_tagihan,'+
                                      'jum_nota_tertagih,jum_nominal_tertagih,sbu_code,jenis_kolektor,'+
                                      'sumber_data,kode_kec_bps) ' +
                                      'VALUES (' +
                                      QuotedStr(dm.Qtemp.FieldByName('kode_kab').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('kode_tp').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('bulan').AsString) + ', ' +
                                      IntToStr(dm.Qtemp.FieldByName('jum_nota_tagihan').AsInteger) + ', ' +
                                      StringReplace(FloatToStr(dm.Qtemp.FieldByName('jum_nominal_tagihan').AsFloat), ',', '.', []) + ', ' +
                                      IntToStr(dm.Qtemp.FieldByName('jum_nota_tertagih').AsInteger) + ', ' +
                                      StringReplace(FloatToStr(dm.Qtemp.FieldByName('jum_nominal_tertagih').AsFloat), ',', '.', []) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('sbu_code').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('jenis_kolektor').AsString) + ', ' +
                                      IntToStr(dm.Qtemp.FieldByName('sumber_date').AsInteger) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('code_kecamatan').AsString) + ')';
        dm.QtempPusatMysql.ExecSQL;


        FMainMenu.Load.Percent := Round((CurrentRec / TotalRec) * 90);
        Application.ProcessMessages;

        dm.Qtemp.Next;
      end;

      dm.QtempPusatMysql.Close;
      dm.QtempPusatMysql.SQL.Clear;
      dm.QtempPusatMysql.SQL.Text :='DELETE FROM t_eva_kolektor WHERE sbu_code=' + QuotedStr(FHomeLogin.vKodePRSH)+' AND '+
                                    'bulan=' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglMulai)) + ' AND sumber_data=1;';
      dm.QtempPusatMysql.ExecSQL;
      FMainMenu.Load.Percent := 95;

      dm.QtempPusatMysql.Close;
      dm.QtempPusatMysql.SQL.Clear;
      dm.QtempPusatMysql.SQL.Text :='INSERT INTO t_eva_kolektor(kode_kab,kode_tp,bulan,jum_nota_tagihan,'+
                                    'jum_nominal_tagihan,jum_nota_tertagih,jum_nominal_tertagih,sbu_code,'+
                                    'jenis_kolektor,sumber_data) '+
                                    'SELECT LEFT(b.kode_distribusi,10) kode_kabupaten '+
                                    ',a.kode_tp,a.bulan,SUM(a.jum_nota_tagihan),SUM(a.jum_nominal_tagihan),'+
                                    'SUM(a.jum_nota_tertagih),SUM(a.jum_nominal_tertagih),a.sbu_code,a.jenis_kolektor,a.sumber_data '+
                                    'FROM t_eva_kolektor_temp a '+
                                    'LEFT JOIN t_wilayah b on b.kode_kec_bps=a.kode_kec_bps '+
                                    'WHERE a.sbu_code=' + QuotedStr(FHomeLogin.vKodePRSH)+' GROUP BY LEFT(b.kode_distribusi,10) ,a.kode_tp,'+
                                    'a.bulan,a.sbu_code,a.jenis_kolektor,a.sumber_data;';
      dm.QtempPusatMysql.ExecSQL;

      LogSync;
      FMainMenu.Load.Percent := 97;
      GetLog;
      FMainMenu.Load.Percent := 100;
      MessageDlg('Simpan Berhasil..!!', mtInformation, [mbOK], 0);


    finally
      FMainMenu.Load.Percent := 0;
      FMainMenu.Load.ShowPercent:=False;
      btProses.Enabled:=True;
//      FMainMenu.Load.Visible:=False;
    end;
  end else begin
    FMainMenu.Load.Percent:=100;
  end;
  btProses.Enabled:=True;
end;

procedure TFSingkronisasiPusat.SyncPiutang;
var
  TglMulai, TglAkhir: TDateTime;
  Tahun, Bulan: Integer;
  TotalRec, CurrentRec: Integer;
begin
//  btProses.Enabled:=False;
//  FMainMenu.Load.Visible:=True;
//  FMainMenu.Load.ShowPercent:=True;
//  FMainMenu.Load.Percent := 0;

  Tahun := StrToInt(cbTahun.Text);
  Bulan := (cbBulan.ItemIndex + 1);

  TglMulai := EncodeDate(Tahun, Bulan, 1);
  TglAkhir := EndOfAMonth(Tahun, Bulan);

  dm.Qtemp.Close;
  dm.Qtemp.SQL.Clear;
  dm.Qtemp.SQL.Text :='SELECT code_cust,'''' kode_child,name_cust,'''' kode_kecamatan,''''kode_kabupaten,'''' kode_distributor,'+
                      'code_tp kode_tp,'''' nama_kecamatan,'''' nama_kabupaten,'''' nama_distributor,'''' nama_tp,'+
                      ' ' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglMulai)) + ' bulan,no_inv_tax no_faktur,trans_date,'''' jenis_produk,''0'' id_jenis,'+
                      'piutang,bayar,sisa_piutang,sbu_code,1 sumber_date,code_kecamatan '+
                      'FROM get_piutang_invoice2(' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglAkhir)) + ');';
  dm.Qtemp.Open;

  dm.KoneksiPusatMysql.Connected := True;
  dm.QtempPusatMysql.Close;
  dm.QtempPusatMysql.SQL.Clear;
  dm.QtempPusatMysql.SQL.Text :='DELETE FROM t_piutang_temp WHERE sbu_code=' + QuotedStr(FHomeLogin.vKodePRSH);
  dm.QtempPusatMysql.ExecSQL;

  TotalRec := dm.Qtemp.RecordCount;

  if TotalRec > 0 then
  begin
    CurrentRec := 0;
    dm.Qtemp.First;

    try
      while not dm.Qtemp.Eof do
      begin
        Inc(CurrentRec);

        dm.QtempPusatMysql.Close;
        dm.QtempPusatMysql.SQL.Clear;
        dm.QtempPusatMysql.SQL.Text :='INSERT t_piutang_temp (kocus,kode_child,nama_outlet,'+
                                      'kode_kecamatan,kode_kabupaten,kode_distributor,kode_tp,nama_kecamatan,nama_kabupaten,'+
                                      'nama_distributor,nama_tp,bulan,no_faktur,tgl_faktur,jenis_produk,id_jenis,piutang,bayar,'+
                                      'sisa_piutang,sbu_code,sumber_data,kode_kec_bps) ' +
                                      'VALUES (' +
                                      QuotedStr(dm.Qtemp.FieldByName('code_cust').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('kode_child').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('name_cust').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('kode_kecamatan').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('kode_kabupaten').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('kode_distributor').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('kode_tp').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('nama_kecamatan').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('nama_kabupaten').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('nama_distributor').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('nama_tp').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('bulan').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('no_faktur').AsString) + ', ' +
                                      QuotedStr(FormatDateTime('yyyy-mm-dd', dm.Qtemp.FieldByName('trans_date').AsDateTime)) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('jenis_produk').AsString) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('id_jenis').AsString) + ', ' +
                                      StringReplace(FloatToStr(dm.Qtemp.FieldByName('piutang').AsFloat), ',', '.', []) + ', ' +
                                      StringReplace(FloatToStr(dm.Qtemp.FieldByName('bayar').AsFloat), ',', '.', []) + ', ' +
                                      StringReplace(FloatToStr(dm.Qtemp.FieldByName('sisa_piutang').AsFloat), ',', '.', []) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('sbu_code').AsString) + ', ' +
                                      IntToStr(dm.Qtemp.FieldByName('sumber_date').AsInteger) + ', ' +
                                      QuotedStr(dm.Qtemp.FieldByName('code_kecamatan').AsString) + ')';
        dm.QtempPusatMysql.ExecSQL;


        FMainMenu.Load.Percent := 70 + Round((CurrentRec / TotalRec) * 20);
        Application.ProcessMessages;

        dm.Qtemp.Next;
      end;

      dm.QtempPusatMysql.Close;
      dm.QtempPusatMysql.SQL.Clear;
      dm.QtempPusatMysql.SQL.Text :='DELETE FROM t_piutang WHERE sbu_code=' + QuotedStr(FHomeLogin.vKodePRSH)+' AND '+
                                    'bulan=' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglMulai)) + ' AND sumber_data=1;';
      dm.QtempPusatMysql.ExecSQL;
      FMainMenu.Load.Percent := 90;
      dm.QtempPusatMysql.Close;
      dm.QtempPusatMysql.SQL.Clear;
      dm.QtempPusatMysql.SQL.Text :='INSERT INTO t_piutang (kocus,kode_child,nama_outlet,kode_kecamatan,kode_kabupaten,'+
                                    'kode_distributor,kode_tp,nama_kecamatan,nama_kabupaten,nama_distributor,nama_tp,bulan,'+
                                    'no_faktur,tgl_faktur,jenis_produk,id_jenis,piutang,bayar,sisa_piutang,sbu_code,sumber_data) '+
                                    'SELECT a.kocus,a.kode_child,a.nama_outlet,LEFT(b.kode_distribusi,13) kode_kecamatan,'+
                                    'LEFT(b.kode_distribusi,10) kode_kabupaten,a.kode_distributor,b.kode_tp,b.nama_kecamatan,'+
                                    'b.nama_kabupaten,a.nama_distributor,b.nama_tp,a.bulan,a.no_faktur,a.tgl_faktur,'+
                                    'a.jenis_produk,a.id_jenis,a.piutang,a.bayar,a.sisa_piutang,a.sbu_code,a.sumber_data '+
                                    'FROM t_piutang_temp a '+
                                    'LEFT JOIN t_wilayah b on b.kode_kec_bps=a.kode_kec_bps '+
                                    'WHERE a.sbu_code=' + QuotedStr(FHomeLogin.vKodePRSH)+';';
      dm.QtempPusatMysql.ExecSQL;

      LogSync;
      FMainMenu.Load.Percent := 97;
      GetLog;
      FMainMenu.Load.Percent := 100;
      MessageDlg('Simpan Berhasil..!!', mtInformation, [mbOK], 0);


    finally
      FMainMenu.Load.Percent := 0;
      FMainMenu.Load.ShowPercent:=False;
      btProses.Enabled:=True;
//      FMainMenu.Load.Visible:=False;
    end;
  end
  else
  begin
    FMainMenu.Load.Percent := 100;
  end;
  btProses.Enabled:=True;
end;

procedure TFSingkronisasiPusat.SyncTargetPenjualan;
var
  Tahun, Bulan: Integer;
  TotalRec, CurrentRec: Integer;
begin
  btProses.Enabled:=False;
  FMainMenu.Load.Visible:=True;
  FMainMenu.Load.ShowPercent:=True;
  FMainMenu.Load.Percent := 0;

  Tahun := StrToInt(cbTahun.Text);
  Bulan := (cbBulan.ItemIndex + 1);

  dm.Qtemp.Close;
  dm.Qtemp.SQL.Clear;
  dm.Qtemp.SQL.Text :=
    'SELECT a.customer_code, d.item_code_integration kode, NULL id_jenis, NULL id_kategori, ' +
    'code_tp, tp nama_tp, '''' kode_area, '''' nama_area, '''' nama_kabupaten, '''' nama_kecamatan, ' +
    'a.month bulan, a.year tahun, COALESCE(c.qty, 0) qty, COALESCE(c.value, 0) value, ' +
    'CASE WHEN a.deleted_at IS NULL THEN ''1'' ELSE ''0'' END status, ' +
    'a.sbu_code, 1 sumber_data, b.code_kecamatan kode_kec_bps, ' +
    'd.item_code_integration kode_barang_smart ' +
    'FROM t_customer_sales_target a ' +
    'LEFT JOIN get_customer() b ON b.customer_code = a.customer_code ' +
    'LEFT JOIN t_customer_sales_target_det c ON c.id_customer_sales_target = a.id_customer_sales_target AND c.status = TRUE ' +
    'LEFT JOIN t_item d ON d.item_code = c.item_code ' +
    'WHERE a.customer_code <> '''' AND a.customer_code IS NOT NULL ' +
    'AND a.year = ' + QuotedStr(cbTahun.Text) + ' AND a.month = ' + IntToStr(Bulan) + ' ' +
    'AND a.deleted_at IS NULL ' +
    'ORDER BY a.year ASC, a.month ASC, a.customer_code ASC;';
  dm.Qtemp.Open;

  dm.KoneksiPusatMysql.Connected := True;
  dm.QtempPusatMysql.Close;
  dm.QtempPusatMysql.SQL.Clear;
  dm.QtempPusatMysql.SQL.Text :=
    'DELETE FROM t_mtarget_item_temp WHERE tahun = ' + QuotedStr(cbTahun.Text) + ' AND bulan = ' + IntToStr(Bulan) + ' ' +
    'AND sumber_data = 1 AND lokasi = ' + QuotedStr(FHomeLogin.vKodePRSH);
  dm.QtempPusatMysql.ExecSQL;

  TotalRec := dm.Qtemp.RecordCount;

  if TotalRec > 0 then
  begin
    CurrentRec := 0;
    dm.Qtemp.First;

    try
      while not dm.Qtemp.Eof do
      begin
        Inc(CurrentRec);

        dm.QtempPusatMysql.Close;
        dm.QtempPusatMysql.SQL.Clear;
        dm.QtempPusatMysql.SQL.Text :=
          'INSERT INTO t_mtarget_item_temp (kode_outlet, kode, id_jenis, ' +
          'id_kategori, kode_tp, nama_tp, kode_area, nama_area, nama_kabupaten, nama_kecamatan, ' +
          'bulan, tahun, qty, value, status, lokasi, sumber_data, kode_kec_bps, kode_barang_smart) ' +
          'VALUES (' +
          QuotedStr(dm.Qtemp.FieldByName('customer_code').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('kode').AsString) + ', ' +
          'NULL, ' + // id_jenis
          'NULL, ' + // id_kategori
          QuotedStr(dm.Qtemp.FieldByName('code_tp').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('nama_tp').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('kode_area').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('nama_area').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('nama_kabupaten').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('nama_kecamatan').AsString) + ', ' +
          IntToStr(dm.Qtemp.FieldByName('bulan').AsInteger) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('tahun').AsString) + ', ' +
          StringReplace(FloatToStr(dm.Qtemp.FieldByName('qty').AsFloat), ',', '.', []) + ', ' +
          StringReplace(FloatToStr(dm.Qtemp.FieldByName('value').AsFloat), ',', '.', []) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('status').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('sbu_code').AsString) + ', ' +
          IntToStr(dm.Qtemp.FieldByName('sumber_data').AsInteger) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('kode_kec_bps').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('kode_barang_smart').AsString) + ')';
        dm.QtempPusatMysql.ExecSQL;


        FMainMenu.Load.Percent := Round((CurrentRec / TotalRec) * 90);
        Application.ProcessMessages;

        dm.Qtemp.Next;
      end;

      dm.QtempPusatMysql.Close;
      dm.QtempPusatMysql.SQL.Clear;
      dm.QtempPusatMysql.SQL.Text :=
        'DELETE FROM t_mtarget_item WHERE tahun = ' + QuotedStr(cbTahun.Text) + ' AND bulan = ' + IntToStr(Bulan) + ' ' +
        'AND sumber_data = 1 AND lokasi = ' + QuotedStr(FHomeLogin.vKodePRSH);
      dm.QtempPusatMysql.ExecSQL;
      FMainMenu.Load.Percent := 95;

      dm.QtempPusatMysql.Close;
      dm.QtempPusatMysql.SQL.Clear;
      dm.QtempPusatMysql.SQL.Text :=
        'INSERT INTO t_mtarget_item (kode_outlet, kode, id_jenis, ' +
        'id_kategori, kode_tp, nama_tp, kode_area, nama_area, nama_kabupaten, nama_kecamatan, ' +
        'bulan, tahun, qty, value, status, lokasi, sumber_data) ' +
        'SELECT a.kode_outlet, a.kode, e.jenisProduct_ID id_jenis, ' +
        'e.kategori_id id_kategori, a.kode_tp, a.nama_tp, c.kode_area, ' +
        'd.nama_area, b.nama_kabupaten, b.nama_kecamatan, a.bulan, a.tahun, ' +
        'a.qty, a.value, a.status, a.lokasi, a.sumber_data FROM t_mtarget_item_temp a ' +
        'LEFT JOIN t_wilayah b ON b.kode_kec_bps = a.kode_kec_bps ' +
        'LEFT JOIN t_m_tp c ON c.kodetp = b.kode_tp2 AND c.sbu_code = ' + QuotedStr(FHomeLogin.vKodePRSH) + ' ' +
        'LEFT JOIN t_m_area d ON d.kode_area = c.kode_area AND d.sbu_code = ' + QuotedStr(FHomeLogin.vKodePRSH) + ' ' +
        'LEFT JOIN t_item_product e ON e.itemProduct_code = a.kode WHERE ' +
        'tahun = ' + QuotedStr(cbTahun.Text) + ' AND bulan = ' + IntToStr(Bulan) + ';';
      dm.QtempPusatMysql.ExecSQL;

      LogSync;
      FMainMenu.Load.Percent := 97;
      GetLog;

      FMainMenu.Load.Percent := 100;
      MessageDlg('Simpan Berhasil..!!', mtInformation, [mbOK], 0);


    finally
      FMainMenu.Load.Percent := 0;
      FMainMenu.Load.ShowPercent:=False;
      btProses.Enabled:=True;
//      FMainMenu.Load.Visible:=False;
    end;
  end
  else begin
    FMainMenu.Load.Percent:=100;
  end;
  btProses.Enabled:=True;
end;

procedure TFSingkronisasiPusat.SyncPenjualan;
var
  TglMulai, TglAkhir: TDateTime;
  Tahun, Bulan: Integer;
  TotalRec, CurrentRec: Integer;
begin
  btProses.Enabled:=False;
  FMainMenu.Load.Visible:=True;
  FMainMenu.Load.ShowPercent:=True;
  FMainMenu.Load.Percent := 0;

  Tahun := StrToInt(cbTahun.Text);
  Bulan := (cbBulan.ItemIndex + 1);

  TglMulai := EncodeDate(Tahun, Bulan, 1);
  TglAkhir := EndOfAMonth(Tahun, Bulan);


  dm.Qtemp.Close;
  dm.Qtemp.SQL.Clear;
  dm.Qtemp.SQL.Text :=
    'SELECT a.trans_no, a.no_inv_tax, a.code_cust, a.name_cust, NULL kode_distribusi, '''' kode_area, ' +
    'a.code_tp kode_tp, NULL kode_kabupaten, NULL kode_kecamatan, '''' kode_distributor, NULL nama_kecamatan, ' +
    'NULL nama_kabupaten, NULL nama_tp, '''' nama_area, '''' nama_distributor, a.trans_date tgltrans, ' +
    'item_code_integration kdbrg, NULL kode_jenis, NULL id_jenis, ' +
    'NULL jenis_outlet, ''0'' stat_noa, b.unit_price harga, b.amount qty, ' +
    'b.sub_total dpp, b.ppn_percent ppn, b.ppn_value jum_ppn, b.grand_tot jum_netto, a.sbu_code, 1 sumber_data, ' +
    'a.code_kecamatan kode_kec_bps, c.item_code_integration, code_type kode_jenis_smartboa FROM get_selling(false) a ' +
    'LEFT JOIN t_selling_det b ON b.trans_no = a.trans_no ' +
    'LEFT JOIN t_item c ON c.item_code = b.code_item ' +
    'WHERE a.trans_date BETWEEN ' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglMulai)) + ' AND ' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglAkhir)) + ' AND ' +
    'a.deleted_at IS NULL ORDER BY trans_date ASC, trans_no ASC;';
  dm.Qtemp.Open;

  dm.KoneksiPusatMysql.Connected := True;
  dm.QtempPusatMysql.Close;
  dm.QtempPusatMysql.SQL.Clear;
  dm.QtempPusatMysql.SQL.Text :=
    'DELETE FROM t_jual_temp WHERE tgltrans BETWEEN ' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglMulai)) + ' AND ' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglAkhir)) + ' ' +
    'AND sumber_data = 1 AND sbu_code = ' + QuotedStr(FHomeLogin.vKodePRSH);
  dm.QtempPusatMysql.ExecSQL;

  TotalRec := dm.Qtemp.RecordCount;

  if TotalRec > 0 then
  begin
    CurrentRec := 0;
    dm.Qtemp.First;

    try
      while not dm.Qtemp.Eof do
      begin
        Inc(CurrentRec);

        dm.QtempPusatMysql.Close;
        dm.QtempPusatMysql.SQL.Clear;
        dm.QtempPusatMysql.SQL.Text :=
          'INSERT INTO t_jual_temp(no_inv, nofakturpajak, kocus, nama_outlet, ' +
          'kode_distribusi, kode_area, kode_tp, kode_kabupaten, kode_kecamatan, ' +
          'kode_distributor, nama_kecamatan, nama_kabupaten, nama_tp, nama_area, ' +
          'nama_distributor, tgltrans, kdbrg, kode_jenis, id_jenis, jenis_outlet, ' +
          'stat_noa, harga, qty, dpp, ppn, jum_ppn, jum_netto, sbu_code, sumber_data, ' +
          'kode_kec_bps, item_code_integration, kode_jenis_smartboa) ' +
          'VALUES (' +
          QuotedStr(dm.Qtemp.FieldByName('trans_no').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('no_inv_tax').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('code_cust').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('name_cust').AsString) + ', ' +
          'NULL, ' +
          QuotedStr(dm.Qtemp.FieldByName('kode_area').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('kode_tp').AsString) + ', ' +
          'NULL, NULL, ' +
          QuotedStr(dm.Qtemp.FieldByName('kode_distributor').AsString) + ', ' +
          'NULL, NULL, NULL, ' +
          QuotedStr(dm.Qtemp.FieldByName('nama_area').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('nama_distributor').AsString) + ', ' +
          QuotedStr(FormatDateTime('yyyy-mm-dd', dm.Qtemp.FieldByName('tgltrans').AsDateTime)) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('kdbrg').AsString) + ', ' +
          'NULL, NULL, NULL, ' +
          QuotedStr(dm.Qtemp.FieldByName('stat_noa').AsString) + ', ' +
          QuotedStr(StringReplace(FloatToStr(dm.Qtemp.FieldByName('harga').AsFloat), ',', '.', [])) + ', ' +
          QuotedStr(StringReplace(FloatToStr(dm.Qtemp.FieldByName('qty').AsFloat), ',', '.', [])) + ', ' +
          QuotedStr(StringReplace(FloatToStr(dm.Qtemp.FieldByName('dpp').AsFloat), ',', '.', [])) + ', ' +
          FloatToStr(dm.Qtemp.FieldByName('ppn').AsFloat) + ', ' +
          QuotedStr(StringReplace(FloatToStr(dm.Qtemp.FieldByName('jum_ppn').AsFloat), ',', '.', [])) + ', ' +
          QuotedStr(StringReplace(FloatToStr(dm.Qtemp.FieldByName('jum_netto').AsFloat), ',', '.', [])) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('sbu_code').AsString) + ', ' +
          IntToStr(dm.Qtemp.FieldByName('sumber_data').AsInteger) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('kode_kec_bps').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('kdbrg').AsString) + ', ' +
          QuotedStr(dm.Qtemp.FieldByName('kode_jenis_smartboa').AsString) + ')';
        dm.QtempPusatMysql.ExecSQL;

        FMainMenu.Load.Percent := Round((CurrentRec / TotalRec) * 60);
        Application.ProcessMessages;

        dm.Qtemp.Next;
      end;

      dm.QtempPusatMysql.Close;
      dm.QtempPusatMysql.SQL.Clear;
      dm.QtempPusatMysql.SQL.Text :=
        'DELETE FROM t_jual WHERE tgltrans BETWEEN ' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglMulai)) + ' AND ' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglAkhir)) + ' ' +
        'AND sumber_data = 1 AND sbu_code = ' + QuotedStr(FHomeLogin.vKodePRSH);
      dm.QtempPusatMysql.ExecSQL;
      FMainMenu.Load.Percent := 65;

      dm.QtempPusatMysql.Close;
      dm.QtempPusatMysql.SQL.Clear;
      dm.QtempPusatMysql.SQL.Text :=
        'INSERT INTO t_jual (no_inv, nofakturpajak, kocus, nama_outlet, kode_distribusi, ' +
        'kode_area, kode_tp, kode_kabupaten, kode_kecamatan, kode_distributor, ' +
        'nama_kecamatan, nama_kabupaten, nama_tp, nama_area, nama_distributor, ' +
        'tgltrans, kdbrg, kode_jenis, id_jenis, jenis_outlet, ' +
        'stat_noa, harga, qty, dpp, ppn, jum_ppn, jum_netto, sbu_code, sumber_data) ' +
        'SELECT a.no_inv, a.nofakturpajak, a.kocus, a.nama_outlet, b.kode_distribusi, c.kode_area, ' +
        'a.kode_tp, LEFT(b.kode_distribusi, 10) kode_kabupaten, LEFT(b.kode_distribusi, 13) kode_kecamatan, ' +
        'b.kode_distributor, b.nama_kecamatan, b.nama_kabupaten, b.nama_tp, d.nama_area, '''' nama_distributor, ' +
        'a.tgltrans, a.kdbrg, f.kode_jenis, e.jenisProduct_ID id_jenis, ' +
        'g.kode_jenis_pusat jenis_outlet, ' +
        'a.stat_noa, a.harga, a.qty, a.dpp, a.ppn, a.jum_ppn, a.jum_netto, a.sbu_code, a.sumber_data ' +
        'FROM t_jual_temp a ' +
        'LEFT JOIN t_wilayah b ON b.kode_kec_bps = a.kode_kec_bps ' +
        'LEFT JOIN t_m_tp c ON c.kodetp = b.kode_tp2 AND c.sbu_code = ' + QuotedStr(FHomeLogin.vKodePRSH) + ' ' +
        'LEFT JOIN t_m_area d ON d.kode_area = c.kode_area AND d.sbu_code = ' + QuotedStr(FHomeLogin.vKodePRSH) + ' ' +
        'LEFT JOIN t_item_product e ON e.itemProduct_code = a.kdbrg ' +
        'LEFT JOIN t_jenis_product f ON f.ID = e.jenisProduct_ID ' +
        'LEFT JOIN t_jenis_outlet_integrasi g ON g.kode = a.kode_jenis_smartboa ' +
        'WHERE a.tgltrans BETWEEN ' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglMulai)) + ' AND ' + QuotedStr(FormatDateTime('yyyy-mm-dd', TglAkhir)) + ' AND ' +
        'a.sumber_data = 1 AND a.sbu_code = ' + QuotedStr(FHomeLogin.vKodePRSH) + ' ORDER BY a.no_inv ASC;';
      dm.QtempPusatMysql.ExecSQL;

      LogSync;
      GetLog;
      FMainMenu.Load.Percent := 70;
      Application.ProcessMessages;
//      MessageDlg('Simpan Berhasil..!!', mtInformation, [mbOK], 0);

    finally
//      FMainMenu.Load.Percent := 0;
//      FMainMenu.Load.ShowPercent:=False;
//      btProses.Enabled:=True;
//      FMainMenu.Load.Visible:=False;
    end;
  end
  else
  begin
    FMainMenu.Load.Percent := 70;
  end;
//  btProses.Enabled:=True;
end;

procedure TFSingkronisasiPusat.btProsesClick(Sender: TObject);
begin
  if cbData.Text = 'PENJUALAN' then
  begin
    SyncPenjualan ;
    SyncPiutang;
  end;
  if cbData.Text = 'TARGET PENJUALAN' then
  begin
    SyncTargetPenjualan ;
  end;
  if cbData.Text = 'PEMAKAIAN BIAYA' then
  begin
    SyncPemakaianBiaya;
  end;
  if cbData.Text = 'DAFTAR PENAGIHAN PIUTANG' then
  begin
    SyncDPP;
  end;
  if cbData.Text = 'PELANGGAN' then
  begin
    SyncPelanggan;
  end;
end;

procedure TFSingkronisasiPusat.cbBulanChange(Sender: TObject);
begin
  GetLog;
end;

procedure TFSingkronisasiPusat.cbDataChange(Sender: TObject);
begin
  if cbData.Text='PELANGGAN' then
  begin
    RzLabel2.Visible:=False;
    RzLabel3.Visible:=False;
    cbBulan.Visible:=False;
    cbTahun.Visible:=False;
  end else begin
    RzLabel2.Visible:=True;
    RzLabel3.Visible:=True;
    cbBulan.Visible:=True;
    cbTahun.Visible:=True;
  end;
end;

procedure TFSingkronisasiPusat.cbTahunChange(Sender: TObject);
begin
  GetLog;
end;

procedure TFSingkronisasiPusat.FormShow(Sender: TObject);
var
  TahunMulai, TahunSekarang, I: Integer;
begin
  IdSync:='';
  btProses.Enabled:=True;
  cbData.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' SELECT data_name FROM t_sync_data ORDER BY data_name ASC';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbData.Items.Add(Dm.Qtemp['data_name']);
    Dm.Qtemp.Next;
  end;

  cbBulan.ItemIndex:=0;

  cbTahun.Items.Clear;
  TahunMulai := 2026;
  TahunSekarang := YearOf(Now);
  for I := TahunMulai to TahunSekarang do
  begin
    cbTahun.Items.Add(IntToStr(I));
  end;
  if cbTahun.Items.Count > 0 then
    cbTahun.ItemIndex := cbTahun.Items.Count - 1;

  GetLog;

end;

end.
