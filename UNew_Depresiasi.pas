unit UNew_Depresiasi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RzEdit, Vcl.Mask,
  RzButton, Vcl.ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, MemTableDataEh,
  Data.DB, MemTableEh, DateUtils, Vcl.Samples.Spin, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Samples.Gauges;

type
  TFNew_Depresiasi = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EdNilai: TRzEdit;
    Edkd_asset: TRzComboBox;
    Edket: TMemo;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    DBGridEh1: TDBGridEh;
    MemDepresiasi2: TMemTableEh;
    DsDepresiasi: TDataSource;
    Panel2: TPanel;
    cbbulan: TComboBox;
    edth: TSpinEdit;
    Cbharta: TComboBox;
    Edkd_Depresiasi: TRzEdit;
    dt_depresiasi: TRzDateTimeEdit;
    CbKelompok: TRzComboBox;
    Label10: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Lbbulan: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    MemDep2: TMemTableEh;
    DsDep2: TDataSource;
    procedure Edkd_assetSelect(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure EdNilaiChange(Sender: TObject);
    procedure CbPeriodeSelect(Sender: TObject);
    procedure CbKelompokSelect(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbbulanSelect(Sender: TObject);
    procedure CbMingguanSelect(Sender: TObject);
    procedure CbhartaSelect(Sender: TObject);
    procedure CbHarta2Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Load;
    Procedure Autonumber;
    procedure Clear;
  end;

Function  FNew_Depresiasi: TFNew_Depresiasi;
var  jmlh,thn,bln,tglno,nourut,kd_akun,bulan,kd_harta:string;
    i,i2,bln1,bln2,statustr:integer;

implementation

{$R *.dfm}

uses UDataModule, UMainmenu, UDepresiasi, UHomeLogin;
var
  RealFNew_Depr: TFNew_Depresiasi;
function FNew_Depresiasi: TFNew_Depresiasi;
begin
  if RealFNew_Depr <> nil then
    FNew_Depresiasi:= RealFNew_Depr
  else
    Application.CreateForm(TFNew_Depresiasi, Result);
end;

function GetNamaBulan(nobulan:Integer):string;
begin
  case nobulan of
    1:Result:='JANUARI';
    2:Result:='FEBRUARI';
    3:Result:='MARET';
    4:Result:='APRIL';
    5:Result:='MEI';
    6:Result:='JUNI';
    7:Result:='JULI';
    8:Result:='AGUSTUS';
    9:Result:='SEPTEMBER';
    10:Result:='OKTOBER';
    11:Result:='NOVEMBER';
    12:Result:='DESEMBER';
  end;
end;

function GetNoBulan2(nobulan2:Integer):string;
begin
  case nobulan2 of
    0:result:='1';
    1:result:='2';
    2:result:='3';
    3:result:='4';
    4:result:='5';
    5:result:='6';
    6:result:='7';
    7:result:='8';
    8:result:='9';
    9:result:='10';
    10:result:='11';
    11:result:='12';
  end;
end;

Function Ribuan(Edit : TRzEdit):String;
var
  NilaiRupiah: string;
  AngkaRupiah: Currency;
begin
if Edit.Text='0' then Exit;
  NilaiRupiah := Edit.text;
  NilaiRupiah := StringReplace(NilaiRupiah,',','',[rfReplaceAll,rfIgnoreCase]);
  NilaiRupiah := StringReplace(NilaiRupiah,'.','',[rfReplaceAll,rfIgnoreCase]);
  AngkaRupiah := StrToCurrDef(NilaiRupiah,0);
  Edit.Text := FormatCurr('#,###',AngkaRupiah);
  Edit.SelStart := length(Edit.text);
end;
Function HapusFormat(Nilai:TRzEdit):Integer;
var
  Hasil:String;
begin
  Hasil:=Nilai.Text;
  Hasil:=StringReplace(Hasil,',','',[rfReplaceAll,rfIgnoreCase]);
  Hasil:=StringReplace(Hasil,'.','',[rfReplaceAll,rfIgnoreCase]);
  Result:=StrToInt(Hasil);
end;
function IntToRoman(Value : Longint):String;  // fungsi
    const
    arabics: Array[1..12] of integer=(1,2,3,4,5,6,7,8,9,10,11,12);
    Romans: Array [1..12] Of string=('I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII');
    Var  i :integer;
    begin
    For i := 12 downto 1 do
    while (Value >= Arabics[i]) do
    begin
      Value := Value - Arabics[i];
      Result:= Result + Romans[i];
    end;
end;

procedure TFNew_Depresiasi.Autonumber;
  var i      : integer;
    urut   : integer;
    yr,mt,dy,noSJ,noEX ,yn : string;
    yy,d,M : word;
    code   : string;
    //urutan   : string;
    EditComplete : string;
    maxmy  : string;
begin
(*Find encode of the date*)
 DecodeDate(dt_depresiasi.Date, yy,M,d );
 yr:=intTostr(yy);
 yn:=copy(yr,3,2);
 mt:=IntToStr(M);
 dy:=IntToStr(d);
 (*looking for max mm/yy*)
 thn:=FormatDateTime('yyy',dt_depresiasi.Date);
 bln:=FormatDateTime('mm',dt_depresiasi.Date);
 tglno:=FormatDateTime('dd',dt_depresiasi.Date);
 maxmy:= (yn);
with dm.Qtemp do
  begin
    close;
    sql.Clear;
   // sql.Text:='select max(left(notrans,3)) urut from t_asset_penyusutan_perminggu where tahun='+QuotedStr(thn)+' and bulan='+QuotedStr(cbbulan.Text);
    sql.Text:='select  coalesce(max(left(transno,3))::int, 0) as  urut from t_depresiasi where trans_year='+QuotedStr(thn);
    open;
  end;
   if dm.qtemp['urut']=0 then
   begin
      code := '1' ;
   end else
      code:= IntToStr(dm.Qtemp['urut']+ 1);
   if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;
  EditComplete:=CODE;
  nourut:=code;
  showmessage(editcomplete) ;
  Edkd_Depresiasi.Text:= EditComplete+ '/'+maxmy + '/' +FHomeLogin.vkodeprsh;
  //Ed_DepNo2.Text:= EditComplete+ '/'+maxmy + '/' + FHomeLogin.vkodeprsh;
end;

Procedure TFNew_Depresiasi.Clear;
begin
  Edkd_Depresiasi.Text:='';
  EdNilai.Text:='0';
  Edkd_asset.Text:='';
  Edket.Text:='';
  dt_depresiasi.Date:=now;
  //DtPeriode.Date:=now;
  //DtPeriode2.Date:=now;
  //CbPeriode.Text:='';
  MemDepresiasi2.EmptyTable;
end;


procedure TFNew_Depresiasi.BBatalClick(Sender: TObject);
begin
  Close;
  FDepresiasi.dxBRefreshClick(sender);
end;

procedure TFNew_Depresiasi.BEditClick(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Simpan No. '+Edkd_Depresiasi.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
    then begin
    if not dm.koneksi.InTransaction then
      dm.koneksi.StartTransaction;
        try
        begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:=' update t_depresiasi set trans_date=:tgl,trans_month=:bulan,trans_year=:tahun,total=:total,'+
                ' account_code=:kd_akun,change_by=:pic,change_date=now() where transno=:transno';
                paramByName('transno').Value:=Edkd_Depresiasi.Text;
                ParamByName('tgl').Value:=FormatDateTime('yyy-mm-dd',dt_depresiasi.Date);
                ParamByName('tahun').Value:=edth.Text;
                ParamByName('bulan').Value:=bulan;
                ParamByName('total').Value:=DBGridEh1.Columns[2].Footer.SumValue;
                ParamByName('kd_akun').AsString:=kd_akun;
      ExecSQL;
    end;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='delete from t_depresiasi_det where transno='+QuotedStr(Edkd_Depresiasi.Text);
      ExecSQL;
    end;
    MemDepresiasi2.First;
    while not MemDepresiasi2.Eof do
    begin
           with dm.Qtemp do
              begin
                close;
                sql.Clear;
                sql.Text:='insert into t_depresiasi_det(transno,kode_asset,jumlah)'+
                            'Values(:notrans,:kd_asset,:jumlah)';
                            ParamByName('notrans').Value:=Edkd_Depresiasi.Text;
                            ParamByName('kd_asset').Value:=MemDepresiasi2['no_asset'];
                            ParamByName('jumlah').Value:=MemDepresiasi2['jmlh_dep'];
                  ExecSQL;
              end;
      MemDepresiasi2.Next;
    end;
        dm.koneksi.Commit;
        Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
        BBatalClick(sender);
        end
        Except
        on E :Exception do
        begin
          MessageDlg(E.Message,mtError,[MBok],0);
          dm.koneksi.Rollback;
        end;
        end;
    end;
end;

procedure TFNew_Depresiasi.BSimpanClick(Sender: TObject);
begin
with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_depresiasi where trans_year='+QuotedStr(edth.Text)+' '+
  ' and trans_month='+QuotedStr(bulan);
  ExecSQL;
end;
  if DM.Qtemp2.RecordCount=0 then
  begin
    Autonumber;
    if messageDlg ('Anda Yakin Simpan No. '+Edkd_Depresiasi.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
    then begin
    if not dm.koneksi.InTransaction then
      dm.koneksi.StartTransaction;
        try
        begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='insert into t_depresiasi(transno,trans_year,trans_month,trans_date,kd_harta,total,account_code,created_by)'+
                  'Values(:transno,:tahun,:bulan,:tgl,:kd_harta,:total,:kd_akun,:pic)';
                  ParamByName('transno').Value:=Edkd_Depresiasi.Text;
                  ParamByName('tgl').Value:=FormatDateTime('yyy-mm-dd',dt_depresiasi.Date);
                  ParamByName('tahun').Value:=edth.Text;
                  ParamByName('bulan').Value:=bulan;
                  ParamByName('kd_harta').Value:=kd_harta;
                  ParamByName('pic').Value:=nm;
                  ParamByName('total').Value:=DBGridEh1.Columns[2].Footer.SumValue;
                  ParamByName('kd_akun').AsString:=kd_akun;
        ExecSQL;
      end;
      MemDepresiasi2.First;
      while not MemDepresiasi2.Eof do
      begin
        with dm.QTemp3 do
        begin
          close;
          sql.Clear;
          sql.Text:='select * from t_depresiasi_year where trans_year='+QuotedStr(edth.Text)+' and kode_asset='+QuotedStr(MemDepresiasi2['no_asset']);
          ExecSQL;
        end;
          if DM.QTemp3.RecordCount=0 then
          begin
            with dm.QTemp2 do
            begin
              close;
              sql.Clear;
              sql.Text:='insert into t_depresiasi_year(trans_year,kode_asset,depresiasi)'+
                        'Values(:thn,:kd_asset,:penyusutan)';
                        ParamByName('thn').Value:=edth.Text;
                        ParamByName('kd_asset').Value:=MemDepresiasi2['no_asset'];
                        ParamByName('penyusutan').Value:=MemDepresiasi2['jmlh_dep'];
              ExecSQL;
            end;
            with dm.Qtemp do
              begin
                close;
                sql.Clear;
                sql.Text:='insert into t_depresiasi_det(transno,kode_asset,jumlah)'+
                            'Values(:notrans,:kd_asset,:jumlah)';
                            ParamByName('notrans').Value:=Edkd_Depresiasi.Text;
                            ParamByName('kd_asset').Value:=MemDepresiasi2['no_asset'];
                            ParamByName('jumlah').Value:=MemDepresiasi2['jmlh_dep'];
                  ExecSQL;
              end;
          end;
          if DM.QTemp3.RecordCount=1 then
            begin
              with dm.Qtemp do
              begin
                close;
                sql.Clear;
                sql.Text:='insert into t_depresiasi_det(transno,kode_asset,jumlah)'+
                            'Values(:notrans,:kd_asset,:jumlah)';
                            ParamByName('notrans').Value:=Edkd_Depresiasi.Text;
                            ParamByName('kd_asset').Value:=MemDepresiasi2['no_asset'];
                            ParamByName('jumlah').Value:=MemDepresiasi2['jmlh_dep'];
                  ExecSQL;
              end;
            end;
            MemDepresiasi2.Next;
      end;
        dm.koneksi.Commit;
        Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
        BBatalClick(sender);
        end
        Except
        on E :Exception do
        begin
          MessageDlg(E.Message,mtError,[MBok],0);
          dm.koneksi.Rollback;
        end;
        end;
    end;
  end else
    ShowMessage('Maaf Periode ini Sudah Pernah di Input');
end;

procedure TFNew_Depresiasi.cbbulanSelect(Sender: TObject);
begin
with dm.qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_month where month='+QuotedStr(cbbulan.Text);
  Execute;
end;
  bulan:=IntToStr(dm.qtemp['id']);
with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select dra.*,ma.nama_barang from tdetail_rincian_asset dra inner join tmaster_asset ma on '+
    ' dra.kode_asset=ma.kode_asset'+
    ' where dra.tahun='+QuotedStr(edth.Text)+' and dra.bulan_angka='+QuotedStr(bulan)+' order by id ';
    open;
  end;
    MemDepresiasi2.EmptyTable;
    MemDepresiasi2.OPEN;
    dm.Qtemp.First;
    while not DM.Qtemp.Eof do
    begin
    MemDepresiasi2.Insert;
    MemDepresiasi2['no_asset']:=DM.Qtemp['kode_asset'];
    MemDepresiasi2['nm_barang']:=DM.Qtemp['nama_barang'];
    MemDepresiasi2['jmlh_dep']:=DM.Qtemp['jumlah'];
  //  MemDepresiasi2['jmlh_dep']:=MemDepresiasi2['nilai_dep']*strtofloat(jmlh);
    MemDepresiasi2.Post;
      DM.Qtemp.Next;
    end;
end;

procedure TFNew_Depresiasi.Edkd_assetSelect(Sender: TObject);
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_asset where kd_asset='+QuotedStr(Edkd_asset.Text);
  ExecSQL;
end;
  EdNilai.Text:=Dm.Qtemp['nilai_depresiasi'];
end;

procedure TFNew_Depresiasi.EdNilaiChange(Sender: TObject);
begin
  Ribuan(EdNilai);
end;

procedure TFNew_Depresiasi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFNew_Depresiasi.FormCreate(Sender: TObject);
begin
  RealFNew_Depr:=self;
end;

procedure TFNew_Depresiasi.FormDestroy(Sender: TObject);
begin
  RealFNew_Depr:=nil;
end;

procedure TFNew_Depresiasi.FormShow(Sender: TObject);
begin
  MemDep2.Open;
  load;
  i:=DM.Qtemp.RecordCount;
  edth.Value:=strtoint(FormatDateTime('yyy',Now()));
end;

Procedure TFNew_Depresiasi.Load;
begin
  Edkd_asset.Clear;
  edth.Clear;
  Cbharta.Clear;
  WITH DM.Qtemp DO
  begin
    close;
    sql.Clear;
    sql.Text:=' SELECT * from tmaster_harta_asset order by id';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    Cbharta.Items.Add(Dm.Qtemp['nama_harta']);
    Dm.Qtemp.Next;
  end;
  cbbulan.Clear;
  WITH DM.Qtemp DO
  begin
    close;
    sql.Clear;
    sql.Text:=' SELECT * from t_month order by id';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbbulan.Items.Add(Dm.Qtemp['month']);
    Dm.Qtemp.Next;
  end;
    dt_depresiasi.Date:=now();
    edth.Text:=FormatDateTime('yyyy',now());
end;

procedure TFNew_Depresiasi.CbHarta2Select(Sender: TObject);
begin;
end;

procedure TFNew_Depresiasi.CbhartaSelect(Sender: TObject);
begin
 with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from tmaster_harta_asset where nama_harta='+QuotedStr(Cbharta.Text);
    ExecSQL;
  end;
  kd_akun:=DM.Qtemp['kodekredit'];
  kd_harta:=DM.Qtemp['kd_nama_harta'];
end;

procedure TFNew_Depresiasi.CbKelompokSelect(Sender: TObject);
begin
MemDepresiasi2.EmptyTable;
MemDepresiasi2.Close;
MemDepresiasi2.Open;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT a.category,d.kd_asset,a.nm_material,d.nilai_depresiasi from t_material a INNER JOIN t_category_material b on '+
        ' a.category=b.category INNER JOIN t_material_stok c on a.kd_material=c.kd_material INNER JOIN '+
        ' t_asset d on c.kd_material_stok=d.kd_barang  where a.category='+QuotedStr(CbKelompok.Text)+''+
        ' ORDER BY left("right"(kd_asset,6),2),d.kd_asset DESC';
    ExecSQL;
  end;
  DM.Qtemp.First;
  while not DM.Qtemp.Eof do
  begin
    MemDepresiasi2.Insert;
    MemDepresiasi2['no_asset']:=DM.Qtemp['kd_asset'];
    MemDepresiasi2['nm_barang']:=DM.Qtemp['nm_material'];
    MemDepresiasi2['nilai_dep']:=DM.Qtemp['nilai_depresiasi'];
    MemDepresiasi2['jmlh_dep']:=MemDepresiasi2['nilai_dep']*strtofloat(jmlh);
    MemDepresiasi2.Post;
    DM.Qtemp.Next;
  end;
end;

procedure TFNew_Depresiasi.CbMingguanSelect(Sender: TObject);
begin
{ with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_asset_setting';
    ExecSQL;
  end;     }
  with DM.QTemp do
  begin
    close;
    sql.Clear;
 //   sql.Text:=' select * from t_asset_setting WHERE tahun='+QuotedStr(edth.Text)+' and bulan='+QuotedStr(cbbulan.Text)+''+
    //          ' and minggu='+QuotedStr(CbMingguan.Text)+' order by id';
    ExecSQL;
  end;
//  DtPeriode.Date:=DM.Qtemp['periode1'];
//  DtPeriode2.Date:=DM.Qtemp['periode2'];
  if DM.QTemp.RecordCount>0 then
  begin
    MemDepresiasi2.EmptyTable;
    MemDepresiasi2.Close;
    MemDepresiasi2.Open;
    with dm.Qtemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='select a.tgl_perolehan,a1.id,a1.tahun,a1.bulan,a1.bulan2,a1.nominal,a1.nourut,a1.kd_asset,a1.pic,'+
      ' a.kd_akun,a2.mg,a.nm_material, round(cast(a1.nominal/a2.mg as numeric),2) as nilai_peny from '+
      ' (select a.*,c.nm_material from t_asset a INNER JOIN t_material_stok c on c.kd_material_stok=a.kd_barang where '+
      ' tahun_perolehan='+QuotedStr(edth.Text)+' and cast(bln as numeric)='+QuotedStr(dm.QTemp['bulan2'])+') a  '+
      ' INNER JOIN t_asset_perbulan a1 on a.kd_asset=a1.kd_asset INNER JOIN LATERAL(select count(minggu) mg from '+
      ' t_asset_setting ab WHERE ab.tahun='+QuotedStr(edth.Text)+' and ab.bulan='+QuotedStr(cbbulan.Text)+' and  '+
      ' ab.periode2 >= a.tgl_perolehan GROUP BY ab.tahun,ab.bulan) a2 on 1=1 WHERE a1.tahun='+QuotedStr(edth.Text)+' and '+
  //    ' a1.bulan='+QuotedStr(cbbulan.Text)+' and a.tgl_perolehan <'+QuotedStr(FormatDateTime('yyy-mm-dd',(DtPeriode2.Date)))+''+
      ' UNION '+
      ' select tgl_perolehan,id,tahun,bulan,bulan2,nominal,nourut,kd_asset,pic,kd_akun,minggu,nm_material,'+
      ' round(cast(nominal/minggu as numeric),0) nilai_peny from (select a.*,b.kd_akun,b.tgl_perolehan,(select '+
      ' count(minggu) mg from t_asset_setting WHERE tahun='+QuotedStr(edth.Text)+' and bulan='+QuotedStr(cbbulan.Text)+''+
      ' GROUP BY tahun,bulan) minggu,c.nm_material from t_asset_perbulan a INNER JOIN (select * from t_asset where '+
      ' tahun_perolehan<>'+QuotedStr(edth.Text)+' and cast(bln as numeric)<>'+QuotedStr(dm.qtemp['bulan2'])+') b on '+
      ' a.kd_asset=b.kd_asset INNER JOIN t_material_stok c on c.kd_material_stok=b.kd_barang WHERE kd_akun='+QuotedStr(kd_akun)+''+
      ' and tahun='+QuotedStr(edth.Text)+' and bulan='+QuotedStr(cbbulan.Text)+') x ORDER BY id ';

      {'select *,round(cast(nominal/minggu as numeric),0) nilai_peny from (select a.*,b.kd_akun,(select count(minggu) mg '+
      ' from t_asset_setting WHERE tahun='+QuotedStr(edth.Text)+' and bulan='+QuotedStr(cbbulan.Text)+' GROUP BY tahun,bulan) '+
      ' minggu,c.nm_material from t_asset_perbulan a INNER JOIN t_asset b on a.kd_asset=b.kd_asset INNER JOIN '+
      ' t_material_stok c on c.kd_material_stok=b.kd_barang WHERE kd_akun='+QuotedStr(kd_akun)+' and '+
      ' tahun='+QuotedStr(edth.Text)+' and bulan='+QuotedStr(cbbulan.Text)+') x';}
      open;
    end;
    DM.Qtemp2.First;
    while not DM.Qtemp2.Eof do
    begin
      MemDepresiasi2.Insert;
      MemDepresiasi2['no_asset']:=DM.Qtemp2['kd_asset'];
      MemDepresiasi2['nm_barang']:=DM.Qtemp2['nm_material'];
      MemDepresiasi2['jmlh_dep']:=DM.Qtemp2['nilai_peny'];
      MemDepresiasi2.Post;
      DM.Qtemp2.Next;
    end;
  end;
end;

procedure TFNew_Depresiasi.CbPeriodeSelect(Sender: TObject);
begin
MemDepresiasi2.EmptyTable;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select kd_asset,b.nm_material,a.nilai_depresiasi from t_asset a inner JOIN t_material_stok b on a.kd_barang=b.kd_material_stok';
    ExecSQL;
  end;
  DM.Qtemp.First;
  while not DM.Qtemp.Eof do
  begin
    MemDepresiasi2.Insert;
    MemDepresiasi2['no_asset']:=DM.Qtemp['kd_asset'];
    MemDepresiasi2['nm_barang']:=DM.Qtemp['nm_material'];
    MemDepresiasi2['jmlh_dep']:=DM.Qtemp['nilai_depresiasi'];
    MemDepresiasi2.Post;
    DM.Qtemp.Next;
  end;
end;

end.
