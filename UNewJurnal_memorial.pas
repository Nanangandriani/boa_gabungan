unit UNewJurnal_memorial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure Autocode;
  end;

Function  FNewJurnal_memo: TFNewJurnal_memo;
var  Status,jenismemo:Integer;

implementation

{$R *.dfm}

uses //browse_akun_kredit,Ubrowse_daftar_penerimaan_pembayaran_piutang,
UDataModule, UListJurnal_memorial,UCari_ket_memorial, UCari_SumberMemorial, UMainmenu;
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
Urut,bulan1 : Integer;
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
    Sql.Text := 'select kode_perusahaan from t_data_perusahaan';
    open;
  end;
  kode_perusahaan:=dm.QTemp3.FieldByName('kode_perusahaan').AsString;
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

procedure TFNewJurnal_memo.Save;
var
total_debit,total_kredit : Currency;
begin
  Autocode;
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
      sql.Text:='Insert Into t_jurnal_memorial(no_bukti_memo,tgl,keterangan,no_bk,no_faktur,status_pembulatan,status_post,bln,thn,id_ket,pic) '+
      'Values (:parno_bukti_memo,:partgl,:parketerangan,:parno_bk,:parno_faktur,:parstatus_pembulatan,:parstatus_post,:bln,:thn,:id_ket,:pic)';
      parambyname('parno_bukti_memo').Value:=edno_bukti_memorial.Text;
      parambyname('partgl').Value:=DTtgl.Text;
      parambyname('parketerangan').Value:=Memket.Text;
      parambyname('parno_bk').Value:=edno_bk_pembulatan.Text;
      parambyname('parno_faktur').Value:=edno_faktur_pembulatan.Text;
      parambyname('bln').Value:=cbbulan.Text;
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
      execsql;
    end;

    MemTableEh1.First;
    while not MemTableEh1.Eof do
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Insert Into t_jurnal_memorial_detail(no_bukti_memo,akun_kredit,debit,kredit) '+
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
      sql.Add('Delete From t_jurnal_memorial_detail');
      sql.Add('where no_bukti_memo=:parno_bukti_memo');
      ParamByName('parno_bukti_memo').Value := edno_bukti_memorial.Text;
      execsql;
    end;

    with Dm.Qtemp2 do
    begin
      close;
      Sql.Clear;
      Sql.Text:='update t_jurnal_memorial set tgl=:partgl,id_ket=:idket,bln=:bln,thn=:thn,pic=:pic,'+
                'keterangan=:parketerangan,no_bk=:parno_bk,no_faktur=:parno_faktur where no_bukti_memo=:parno_bukti_memo';
      parambyname('parno_bukti_memo').Value:=edno_bukti_memorial.Text;
      parambyname('partgl').Value:=DTtgl.Text;
      parambyname('parketerangan').Value:=Memket.Text;
      parambyname('parno_bk').Value:=edno_bk_pembulatan.Text;
      parambyname('parno_faktur').Value:=edno_faktur_pembulatan.Text;
      parambyname('bln').Value:=cbbulan.Text;
      parambyname('thn').Value:=edth.Text;
      parambyname('idket').AsString:=Edkd_ket.Text;
    //  ShowMessage('0');
      parambyname('pic').AsString:=nm;
      ExecSql;
    end;
    MemTableEh1.First;
    while not MemTableEh1.Eof do
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Insert Into t_jurnal_memorial_detail(no_bukti_memo,akun_kredit,debit,kredit) '+
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
end;

procedure TFNewJurnal_memo.RzBitBtn1Click(Sender: TObject);
begin
//  Fdaftarmemorial.ShowModal;
end;

procedure TFNewJurnal_memo.RzBitBtn2Click(Sender: TObject);
begin
{  Status_browse_akun_kredit:=4;
  with Fbrowse_akun_kredit.UniQuery1 do
  begin
    Close;
    Sql.Clear;
    Sql.Text:=' SELECT a.kode_perkiraan,b.nama_perkiraan,c.nama_header,case when db ISNULL then 0 else db end db,'+
              ' case when kr ISNULL then 0 else kr end kr FROM t_daftar_perkiraan_detail a '+
              ' left join t_daftar_perkiraan b '+
              ' on a.kode_perkiraan=b.kode '+
              ' left join t_header_perkiraan c on b.kode_header=c.kode_header '+
              ' left join (select cast(''2144'' as VARCHAR) kd_akun,masuk_jmlh db,0 kr from '+
              ' t_rekonsiliasi_ppn union select cast(''1211'' as VARCHAR) kd_akun,0 db, masuk_jmlh  '+
              ' kr from t_rekonsiliasi_ppn WHERE filter='+QuotedStr(FormatDateTime('yyy-mm',DTtgl.date))+''+
              ' union /*Pemakaian Bahan Produksi*/'+
              ' select akun,0 db,hargapk db from(select periode,periode2,a.category,akun,sum(hargapk) hargapk '+
              ' from t_sa_persediaan a INNER JOIN t_sa_persediaan_det b on a.notrans=b.notrans inner join (select '+
              ' a.kd_material,b.kode_header akun from t_material a INNER JOIN t_daftar_perkiraan b on a.kd_akun=b.kode) c '+
              ' on b.kd_material=c.kd_material WHERE periode2='+QuotedStr(FormatDateTime('yyy-mm-dd',DTtgl.date))+' '+
              ' GROUP BY periode,periode2,a.category,akun)x)d'+
              ' on d.kd_akun=b.kode where a.id_modul=''7''';
    Open;
  end;
  Fbrowse_akun_kredit.ShowModal;    update ds 11-02-2025}
end;

procedure TFNewJurnal_memo.RzBitBtn3Click(Sender: TObject);
begin
if jenismemo=1 then
begin
 // off ds 11-02-2025 Fbrowse_daftar_penerimaan_pemb_piutang.ShowModal;
end;
  if jenismemo=2 then
  begin
    WITH FCari_SumberMemorial DO
    BEGIN
      Show;
      Edit1.Text:='DO PEMBELIAN';
      WITH QSumber_memo DO
      begin
        close;
        sql.Clear;
        sql.Text:='select * from "V_Sumbermemorial" where ket='+QuotedStr(Edit1.Text);
        Open
      end;
    END;
  end;
  if jenismemo=3 then
  begin
    WITH FCari_SumberMemorial DO
    BEGIN
      Show;
      Edit1.Text:='DO PENJUALAN';
      WITH QSumber_memo DO
      begin
        close;
        sql.Clear;
        sql.Text:='select * from "V_Sumbermemorial" where ket='+QuotedStr(Edit1.Text);
        Open
      end;
    END;
  end;
  if jenismemo=4 then
  begin
    WITH FCari_SumberMemorial DO
    BEGIN
      Show;
      Edit1.Text:='PENJUALAN PROMOSI';
      WITH QSumber_memo DO
      begin
        close;
        sql.Clear;
        sql.Text:='select * from "V_Sumbermemorial" where ket='+QuotedStr(Edit1.Text);
        Open
      end;
    END;
  end;

  if jenismemo=5 then
  begin
    WITH FCari_SumberMemorial DO
    BEGIN
      Show;
      Edit1.Text:='POT PEMBELIAN';
      WITH QSumber_memo DO
      begin
        close;
        sql.Clear;
        sql.Text:='select * from "V_Sumbermemorial" where ket='+QuotedStr(Edit1.Text);
        Open
      end;
    END;
  end;
  if jenismemo=6 then
  begin
    WITH FCari_SumberMemorial DO
    BEGIN
      Show;
      Edit1.Text:='RETUR PEMBELIAN';
      WITH QSumber_memo DO
      begin
        close;
        sql.Clear;
        sql.Text:='select * from "V_Sumbermemorial" where ket='+QuotedStr(Edit1.Text);
        Open
      end;
    END;
  end;
    if jenismemo=7 then
  begin
    WITH FCari_SumberMemorial DO
    BEGIN
      Show;
      Edit1.Text:='PENYUSUTAN ASSET';
      WITH QSumber_memo DO
      begin
        close;
        sql.Clear;
        sql.Text:='select * from "V_Sumbermemorial" where ket='+QuotedStr(Edit1.Text);
        Open
      end;
    END;
  end;
end;

procedure TFNewJurnal_memo.BSaveClick(Sender: TObject);
begin
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

procedure TFNewJurnal_memo.CbJenisSelect(Sender: TObject);
begin
  jenismemo:=CbJenis.ItemIndex;
  edno_bk_pembulatan.Text:='';
  edno_faktur_pembulatan.Text:='';
  MemTableEh1.EmptyTable;
end;

procedure TFNewJurnal_memo.CheckpembuatanClick(Sender: TObject);
begin
  if Checkpembuatan.checked=true then
  begin
    Panel_pembulatan.Visible:=true;
  end
  else
  begin
    Panel_pembulatan.Visible:=false;
  end;
end;

end.
