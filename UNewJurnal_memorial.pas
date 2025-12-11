unit UNewJurnal_memorial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.DateUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, RzRadChk, Vcl.StdCtrls,
  RzEdit, MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Mask,
  RzPanel, RzButton, Vcl.ExtCtrls, RzBtnEdt, Vcl.Buttons, Vcl.Samples.Spin;

type
  TFNewJurnal_memo = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    edno_bukti_memorial: TEdit;
    DTtgl: TRzDateTimeEdit;
    RzPanel2: TRzPanel;
    Label9: TLabel;
    Label10: TLabel;
    RzBitBtn2: TRzBitBtn;
    DataSource1: TDataSource;
    MemTableEh1: TMemTableEh;
    Label11: TLabel;
    Label12: TLabel;
    Memket: TRzMemo;
    Panel_pembulatan: TRzPanel;
    Label4: TLabel;
    Label3: TLabel;
    edno_bk_pembulatan: TEdit;
    edno_faktur_pembulatan: TEdit;
    Label6: TLabel;
    Label5: TLabel;
    DBGridgrn: TDBGridEh;
    DBGridbrowse: TDBGridEh;
    RzBitBtn3: TRzBitBtn;
    Checkpembuatan: TRzCheckBox;
    MemTableEh1kode_akun: TStringField;
    MemTableEh1debit: TFloatField;
    MemTableEh1kredit: TFloatField;
    MemTableEh1nama_akun: TStringField;
    Edkd_ket: TRzEdit;
    SpeedButton1: TSpeedButton;
    cbbulan: TComboBox;
    Label15: TLabel;
    Lbbulan: TLabel;
    edth: TSpinEdit;
    CbJenis: TComboBox;
    Label7: TLabel;
    CbHarta: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure CheckpembuatanClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CbJenisSelect(Sender: TObject);
    procedure CbHartaSelect(Sender: TObject);
    procedure cbbulanSelect(Sender: TObject);
    procedure DTtglChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure Autocode;
    procedure Autonumber;
  end;

Function  FNewJurnal_memo: TFNewJurnal_memo;
var  Status,jenismemo,Urut,bulan1,status_sumber:Integer;

implementation

{$R *.dfm}

uses //browse_akun_kredit,Ubrowse_daftar_penerimaan_pembayaran_piutang,
UDataModule, UListJurnal_memorial,UCari_ket_memorial, UCari_SumberMemorial, UMainmenu,
  browse_akun_kredit, UMy_Function;
var
  RealFNew_JurnalMemo: TFNewJurnal_memo;

function FNewjurnal_memo: TFNewJurnal_memo;
begin
  if RealFNew_JurnalMemo <> nil then
    FNewJurnal_memo:= RealFNew_JurnalMemo
  else
    Application.CreateForm(TFNewJurnal_memo, Result);
end;

procedure TFNewJurnal_memo.Autocode;
var
kode,bulan,tahun,year,kode_perusahaan,cek_bulan_tahun,bulan_a,tahun2 : String;
//Urut,bulan1 : Integer;
begin
  bulan_a := FormatDateTime('mm', DTtgl.Date);
  bulan1 := StrToInt(bulan_a);
  bulan := (bulan_a);
  tahun := FormatDateTime('yy', DTtgl.Date);
  tahun2 := FormatDateTime('yyyy', DTtgl.Date);

  With DM.Qtemp3 do
  begin
    Close;
    SQL.Clear;
    Sql.Text := 'select company_code from t_company';
    open;
  end;
  kode_perusahaan:=dm.QTemp3.FieldByName('company_code').AsString;
  cek_bulan_tahun:= bulan+tahun;

  With DM.Qtemp2 do
  begin
    Close;
    SQL.Clear;
    //old
    //Sql.Text := 'select *,SUBSTR(no_bukti_memo,6) bulan_tahun from t_jurnal_memorial '+
             //   'where EXTRACT(MONTH FROM tgl) = '+ bulan_a +' and EXTRACT(year FROM tgl) ='+tahun2+' order by id DESC limit 1';
    // Update ds 26-03-2024
    Sql.Text := 'select *,SUBSTR(no_bukti_memo,6) bulan_tahun from t_jurnal_memorial where '+
    ' EXTRACT(MONTH FROM tgl) = '+ bulan_a +' and EXTRACT(year FROM tgl) ='+tahun2+' order by substring(no_bukti_memo,3,3) DESC limit 1';
    open;
  end;

  if (Dm.Qtemp2.RecordCount = 0) or (Dm.QTemp2.FieldByName('bulan_tahun').AsString<>cek_bulan_tahun) then
  begin
   urut := 1;
  end
  else
  begin
    With Dm.Qtemp do
    begin
      Close;
      Sql.Clear;
      //Old
     // Sql.Text := 'SELECT substring(no_bukti_memo,3,3) kode FROM t_jurnal_memorial '+
     //             'where EXTRACT(MONTH FROM tgl) = '+ bulan_a +' order by id DESC LIMIT 1';
      // Update ds 26-03-2024 substring(no_bukti_memo,3,3)
      Sql.Text := ' SELECT substring(no_bukti_memo,3,3) kode FROM t_jurnal_memorial '+
                  ' where EXTRACT(MONTH FROM tgl) = '+ bulan_a +' and EXTRACT(year FROM tgl) ='+tahun2+''+
                  ' order by substring(no_bukti_memo,3,3) DESC LIMIT 1';

      Open;
    end;
    Urut := dm.Qtemp.FieldByName('kode').AsInteger + 1;
  end;
  edno_bukti_memorial.Clear;
  kode := inttostr(urut);
  kode := Copy('000'+kode, length('000'+kode)-2, 3);
  edno_bukti_memorial.Text := 'JM'+kode+bulan+tahun;
end;

procedure TFNewJurnal_memo.Autonumber;
begin
  with dm.Qtemp do
  begin
      close;
      sql.clear;
      sql.Text:='Select * from t_menu_sub where link=''FList_jurnal_memorial'' ';
      ExecSQL;
  end;
  idmenu:=dm.Qtemp['submenu_code'];
 // idmenu:='M11004';
  //strday2:=Dtterima.Date;
  strday2:=DTtgl.Date;
  edno_bukti_memorial.Text:=getNourut(strday2,'t_memorial_journal','');
  urut:=StrToInt(order_no);
end;

procedure TFNewJurnal_memo.Save;
var
total_debit,total_kredit : Currency;
begin
//  Autocode;
  Autonumber;
  MemTableEh1.First;
  total_debit:=0;
  total_kredit:=0;
  while not MemTableEh1.Eof do
  begin
       total_debit :=total_debit + MemTableEh1['debit'];
       total_kredit :=total_kredit + MemTableEh1['kredit'];
       MemTableEh1.Next;
  end;

  if total_debit<>total_kredit then
  begin
    MessageDlg('Debit Kredit tidak balanced..!!',mtInformation,[MBOK],0);
  end
  else
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Insert Into t_memorial_journal(memo_no,trans_date,notes,bk_no,'+
                'faktur_no,rounding_status,post_status,trans_month,trans_year,notes_id,'+
                'created_by,order_no,trans_day,other_source, memorial_source) '+
                'Values (:parno_bukti_memo,:partgl,:parketerangan,:parno_bk,:parno_faktur,'+
                ':parstatus_pembulatan,:parstatus_post,:bln,:thn,:id_ket,:pic,:order_no,:hr, :os, :memorial_source)';
      parambyname('parno_bukti_memo').Value:=edno_bukti_memorial.Text;
      parambyname('partgl').Value:= FormatDateTime('yyyy-mm-dd',DTtgl.date);
      parambyname('parketerangan').Value:=Memket.Text;
      parambyname('parno_bk').Value:=edno_bk_pembulatan.Text;
      parambyname('parno_faktur').Value:=edno_faktur_pembulatan.Text;
      parambyname('hr').Value:=FormatDateTime('dd',DTtgl.Date);
      parambyname('bln').Value:=cbbulan.ItemIndex;
      parambyname('thn').Value:=edth.Text;
      parambyname('id_ket').asstring:=Edkd_ket.Text;
      ParamByName('pic').AsString:=nm;
      if (edno_bk_pembulatan.Text<>'') and (edno_faktur_pembulatan.Text<>'') then
      begin
        parambyname('parstatus_pembulatan').Value:=1;
      end
      else
      begin
        parambyname('parstatus_pembulatan').Value:=1;
      end;
      parambyname('parstatus_post').Value:=0;
      ParamByName('order_no').Value:=Urut;
      ParamByName('memorial_source').Value:=CbJenis.ItemIndex;
      execsql;
    end;

    MemTableEh1.First;
    while not MemTableEh1.Eof do
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Insert Into t_memorial_journal_detail(memo_no,account_code,debit,kredit) '+
                  'Values (:parno_bukti_memo,:parakun_kredit,:pardebit,:parkredit)';
        parambyname('parno_bukti_memo').Value:=edno_bukti_memorial.Text;
        parambyname('parakun_kredit').Value:=MemTableEh1['kode_akun'];
        if MemTableEh1.FieldByName('debit').AsString='' then begin
          parambyname('pardebit').Value:='0';
        end
        else if MemTableEh1.FieldByName('debit').AsString<>'' then
        begin
          parambyname('pardebit').Value:=MemTableEh1['debit'];
        end;

        if MemTableEh1.FieldByName('kredit').AsString='' then
        begin
          parambyname('parkredit').Value:='0';
        end
        else if MemTableEh1.FieldByName('kredit').AsString<>'' then
        begin
          parambyname('parkredit').Value:=MemTableEh1['kredit'];
        end;
        execsql;
      end;
      MemTableEh1.Next;
    end;

    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    Flist_jurnal_memorial.Refresh;
  end;
end;

procedure TFNewJurnal_memo.SpeedButton1Click(Sender: TObject);
begin
  with FKet_Memorial do
  begin
    show;
    with Qket do
    begin
      close;
      sql.Clear;
      sql.Text:=' select * from t_memorial_notes order by id asc';
      open;
    end;
     Memket.Close;
     Memket.Open;
  end;
end;

procedure TFNewJurnal_memo.Update;
var
total_debit,total_kredit : Currency;
begin
  MemTableEh1.First;
  total_debit:=0;
  total_kredit:=0;
  while not MemTableEh1.Eof do
  begin
       total_debit :=total_debit + MemTableEh1['debit'];
       total_kredit :=total_kredit + MemTableEh1['kredit'];
       MemTableEh1.Next;
  end;
  if total_debit<>total_kredit then
  begin
    MessageDlg('Debit Kredit tidak balanced..!!',mtInformation,[MBOK],0);
  end
  else
  begin
    with Dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Add('Delete From t_memorial_journal_detail');
      sql.Add('where memo_no=:parno_bukti_memo');
      ParamByName('parno_bukti_memo').Value := edno_bukti_memorial.Text;
      execsql;
    end;

    with Dm.Qtemp2 do
    begin
      close;
      Sql.Clear;
      Sql.Text:='update t_memorial_journal set trans_date=:partgl,notes_id=:idket,'+
                'trans_month=:bln,trans_year=:thn,updated_by=:pic,'+
                'updated_at=now(),notes=:parketerangan,bk_no=:parno_bk,'+
                'faktur_no=:parno_faktur, other_source=:os, memorial_source=:memorial_source,'+
                ' order_no=:order_no, trans_day=:hr, '+
                'rounding_status=:parstatus_pembulatan, post_status=:parstatus_post '+
                'where memo_no=:parno_bukti_memo';
      parambyname('parno_bukti_memo').Value:=edno_bukti_memorial.Text;
      parambyname('partgl').Value:=FormatDateTime('yyyy-mm-dd',DTtgl.date);
      parambyname('parketerangan').Value:=Memket.Text;
      parambyname('parno_bk').Value:=edno_bk_pembulatan.Text;
      parambyname('parno_faktur').Value:=edno_faktur_pembulatan.Text;
      parambyname('bln').Value:=cbbulan.ItemIndex;
      parambyname('thn').Value:=edth.Text;
      parambyname('idket').AsString:=Edkd_ket.Text;
    //  ShowMessage('0');
      parambyname('pic').AsString:=nm;
      ParamByName('memorial_source').Value:=CbJenis.ItemIndex;

      ParamByName('order_no').Value:=Urut;
      parambyname('hr').Value:=FormatDateTime('dd',DTtgl.Date);
      if (edno_bk_pembulatan.Text<>'') and (edno_faktur_pembulatan.Text<>'') then
      begin
        parambyname('parstatus_pembulatan').Value:=1;
      end
      else
      begin
        parambyname('parstatus_pembulatan').Value:=1;
      end;
      parambyname('parstatus_post').Value:=0;
      ExecSql;
    end;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='delete from t_memorial_journal_detail where memo_no='+QuotedStr(edno_bukti_memorial.Text);
      Execute;
    end;
    MemTableEh1.First;
    while not MemTableEh1.Eof do
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Insert Into t_memorial_journal_detail(memo_no,account_code,debit,kredit) '+
                  'Values (:parno_bukti_memo,:parakun_kredit,:pardebit,:parkredit)';
        parambyname('parno_bukti_memo').Value:=edno_bukti_memorial.Text;
        parambyname('parakun_kredit').Value:=MemTableEh1['kode_akun'];
        if MemTableEh1.FieldByName('debit').AsString='' then begin
          parambyname('pardebit').Value:='0';
        end
        else if MemTableEh1.FieldByName('debit').AsString<>'' then
        begin
          parambyname('pardebit').Value:=MemTableEh1['debit'];
        end;

        if MemTableEh1.FieldByName('kredit').AsString='' then
        begin
          parambyname('parkredit').Value:='0';
        end
        else if MemTableEh1.FieldByName('kredit').AsString<>'' then
        begin
          parambyname('parkredit').Value:=MemTableEh1['kredit'];
        end;
        execsql;
      end;
      MemTableEh1.Next;
    end;

    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    Flist_jurnal_memorial.Refresh;
  end;
end;

procedure TFNewJurnal_memo.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFNewJurnal_memo.Clear;
begin
  DTtgl.Date:=NOW;
  edno_bukti_memorial.Text:='';
  Memket.Text:='';
  edno_bk_pembulatan.Text:='';
  edno_faktur_pembulatan.Text:='';
  MemTableEh1.EmptyTable;
  Checkpembuatan.Checked:=false;
  Panel_pembulatan.Visible:=false;
  CbJenis.ItemIndex:=0;
end;

procedure TFNewJurnal_memo.DTtglChange(Sender: TObject);
begin
cbbulan.ItemIndex := MonthOf(DTtgl.Date);
edth.Value := YearOf(DTtgl.Date);
end;

procedure TFNewJurnal_memo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNewJurnal_memo.FormCreate(Sender: TObject);
begin
  RealFNew_JurnalMemo:=self;
end;

procedure TFNewJurnal_memo.FormDestroy(Sender: TObject);
begin
  RealFNew_JurnalMemo:=nil;
end;

procedure TFNewJurnal_memo.FormShow(Sender: TObject);
begin
  Panel_pembulatan.Visible:=false;
  edth.Text:=FormatDateTime('yyyy',now());
  MemTableEh1.Close;
  MemTableEh1.Open;
end;

procedure TFNewJurnal_memo.RzBitBtn1Click(Sender: TObject);
begin
//  Fdaftarmemorial.ShowModal;
end;

procedure TFNewJurnal_memo.RzBitBtn2Click(Sender: TObject);
begin
  Status_browse_akun_kredit:=4;
  with Fbrowse_akun_kredit.UniQuery1 do
  begin
    Close;
    Sql.Clear;
    {Sql.Text:=' SELECT a.account_code,b.account_name,c.header_name,case when db ISNULL then 0 else db end db, '+
    ' case when kr ISNULL then 0 else kr end kr FROM t_ak_account_det a left join t_ak_account b on a.account_code=b.code '+
    ' left join t_ak_header c on b.header_code=c.header_code '+
    ' left join (select cast(''2144'' as VARCHAR) kd_akun,ppn_in_amount db,0 kr from '+
    ' t_rekonsiliasi_ppn union select cast(''1211'' as VARCHAR) kd_akun,0 db, ppn_in_amount '+
    ' kr from t_rekonsiliasi_ppn WHERE filter='+QuotedStr(FormatDateTime('yyy-mm',DTtgl.date))+''+
    ' union /*Pemakaian Bahan Produksi*/  '+
    ' select akun,0 db,hargapk db from(select periode,periode2,a.category,akun,sum(price_pk) hargapk '+
    ' from t_sa_persediaan a INNER JOIN t_sa_persediaan_det b on a.trans_no=b.trans_no inner join '+
    ' (select a.item_code,b.account_code akun from t_item a INNER JOIN t_ak_account_sub b on a.account_code=b.account_code2) c '+
    ' on b.item_code=c.item_code WHERE periode2='+QuotedStr(FormatDateTime('yyy-mm-dd',DTtgl.date))+''+
    ' GROUP BY periode,periode2,a.category,akun)x)d on d.kd_akun=b.code where a.module_id=''7''';     }


    {sql.Text:='select aas.account_code2 account_code,aas.account_name,aa.account_name header_name,aas.id,'''' keperluan'+
    ' from t_ak_account_sub aas INNER JOIN t_ak_account aa on aas.account_code=aa.code '+
    ' order by aas.account_code2';}


      SQL.Text:=' SELECT b.code as account_code,b.account_name,c.header_name as account_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                ' left join t_ak_header c on b.header_code=c.header_code'+
                ' LEFT JOIN t_ak_module d on a.module_id=d.id '+
                ' where d.id=7 and b.code is not null  '+
                ' GROUP BY b.code,b.account_name,c.header_name '+
                ' ORDER BY b.code,b.account_name,c.header_name';
    Open;
  end;
  Fbrowse_akun_kredit.Show;
  //update ds 11-02-2025}
end;

procedure TFNewJurnal_memo.RzBitBtn3Click(Sender: TObject);
begin
    WITH FCari_SumberMemorial DO
    BEGIN
      Show;
      WITH QSumber_memo DO
      begin
        close;
        sql.Clear;
        sql.Text:=' select * from "V_Sumbermemorial" '+
                  ' where notr='+inttostr(CbJenis.ItemIndex)+' and '+
                  ' tgl<='+QuotedStr(FormatDateTime('yyyy-MM-dd',FNewJurnal_memo.DTtgl.date))+'';
        Open
      end;
    END;
end;

procedure TFNewJurnal_memo.BSaveClick(Sender: TObject);
begin
  //ShowMessage(IntToStr(Status));
  if not dm.Koneksi.InTransaction then
    dm.Koneksi.StartTransaction;
  try
  if DTtgl.Text='' then
  begin
    MessageDlg('Tanggal Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if Memket.Text='' then
  begin
    MessageDlg('Keterangan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if Status = 0 then
  begin
    Save;
    Dm.Koneksi.Commit;
  end
  else if Status = 1 then
  begin
    Update;
    Dm.Koneksi.Commit;
  end;
  Except on E :Exception do
    begin
      begin
        MessageDlg('Silahkan ulangi proses simpan..!!', MtError,[mbok],0);
        Dm.koneksi.Rollback ;
      end;
    end;
  end;
end;

procedure TFNewJurnal_memo.cbbulanSelect(Sender: TObject);
begin
  bulan1:=cbbulan.ItemIndex;
end;

procedure TFNewJurnal_memo.CbHartaSelect(Sender: TObject);
begin
  MemTableEh1.EmptyTable;
  if cbbulan.Text='' then
  begin
    ShowMessage('Bulan tidak boleh kosong');
    CbHarta.Text:='';
    cbbulan.SetFocus;
    exit;
  end;
  if edth.Text='' then
  begin
    ShowMessage('tahun tidak boleh kosong');
    CbHarta.Text:='';
    cbbulan.SetFocus;
    exit;
  end;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select x.* FROM (select b.kd_harta,a.nama_harta,b.transno,b.total db ,0 kd,b.trans_year,'+
      ' b.trans_month,aasd.account_name ak_name,a.kodedebit kd_akun from tmaster_harta_asset a  '+
      ' INNER JOIN t_depresiasi b on a.kd_nama_harta=b.kd_harta  '+
      ' LEFT JOIN  t_ak_account_sub aasd on a.kodedebit=aasd.account_code2 '+
      ' UNION    '+
      ' select b.kd_harta,a.nama_harta,b.transno,0 db,b.total kd,b.trans_year,b.trans_month,aask.account_name'+
      ' kd_name,a.kodekredit from tmaster_harta_asset a  INNER JOIN t_depresiasi b on a.kd_nama_harta=b.kd_harta '+
      ' LEFT JOIN  t_ak_account_sub aask on a.kodekredit=aask.account_code2) x   '+
      ' where x.trans_year='+QuotedStr(edth.Text)+''+
      ' and x.trans_month='+QuotedStr(inttostr(bulan1))+' and x.nama_harta ='+QuotedStr(CbHarta.Text);
      open;
    end;
      edno_bk_pembulatan.Text:=dm.Qtemp['transno'];
      dm.Qtemp.First;
      while not dm.Qtemp.Eof do
      begin
        MemTableEh1.Insert;
        MemTableEh1['kode_akun']:=dm.Qtemp['kd_akun'];
        MemTableEh1['nama_akun']:=dm.Qtemp['ak_name'];
        MemTableEh1['debit']:=dm.Qtemp['db'];
        MemTableEh1['kredit']:=dm.Qtemp['kd'];
        MemTableEh1.Post;
        dm.Qtemp.Next;
      end;
end;

procedure TFNewJurnal_memo.CbJenisSelect(Sender: TObject);
begin
  jenismemo:=CbJenis.ItemIndex;
  edno_bk_pembulatan.Text:='';
  edno_faktur_pembulatan.Text:='';
  MemTableEh1.EmptyTable;
  if CbJenis.ItemIndex=7 then //Penyusutan Asset
  begin
    label7.Visible:=true;
    CbHarta.Visible:=true;
    CbHarta.Clear;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from tmaster_harta_asset order by id';
      open;
    end;
    Dm.Qtemp.First;
    while not Dm.Qtemp.Eof do
    begin
      CbHarta.Items.Add(Dm.Qtemp['nama_harta']);
      Dm.Qtemp.Next;
    end;
  end;
end;

procedure TFNewJurnal_memo.CheckpembuatanClick(Sender: TObject);
begin
  if Checkpembuatan.checked=true then
  begin
    Panel_pembulatan.Visible:=true;
    CbJenis.ItemIndex:=0;
    CbJenis.Enabled:=true;
    status_sumber:=1;
  end
  else
  begin
    Panel_pembulatan.Visible:=false;
    CbJenis.ItemIndex:=0;
    cbjenis.Enabled:=false;
    status_sumber:=0;
  end;
end;

end.
