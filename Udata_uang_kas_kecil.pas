unit Udata_uang_kas_kecil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzLine, Vcl.StdCtrls, RzButton,
  Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, MemDS, DBAccess, Uni;

type
  TFdata_uang_cash_kecil = class(TForm)
    QDataUangCash: TUniQuery;
    ednilai75rb: TEdit;
    edlbr75rb: TEdit;
    ednilai100rb: TEdit;
    DTtanggal: TDateTimePicker;
    Panel1: TPanel;
    BTutup: TRzBitBtn;
    BtnSimpan: TRzBitBtn;
    btnnew: TRzBitBtn;
    BtnHapus: TRzBitBtn;
    ednilaitot: TEdit;
    ednilai50rb: TEdit;
    ednilai20rb: TEdit;
    ednilai10rb: TEdit;
    ednilai5rb: TEdit;
    ednilai2rb: TEdit;
    ednilai1000: TEdit;
    ednilai500: TEdit;
    ednilai200: TEdit;
    ednilai100: TEdit;
    ednilai50: TEdit;
    edlbr50: TEdit;
    edlbr100: TEdit;
    edlbr200: TEdit;
    edlbr500: TEdit;
    edlbr1000: TEdit;
    edlbr2rb: TEdit;
    edlbr5rb: TEdit;
    edlbr10rb: TEdit;
    edlbr20rb: TEdit;
    edlbr50rb: TEdit;
    edlbr100rb: TEdit;
    Label50: TLabel;
    Label49: TLabel;
    Label48: TLabel;
    Label47: TLabel;
    Label46: TLabel;
    Label45: TLabel;
    Label44: TLabel;
    Label43: TLabel;
    Label42: TLabel;
    Label41: TLabel;
    Label40: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    Label37: TLabel;
    Label36: TLabel;
    Label35: TLabel;
    Label34: TLabel;
    Label33: TLabel;
    Label32: TLabel;
    Label31: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    Label26: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Shape1: TShape;
    procedure DTtanggalChange(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure btnnewClick(Sender: TObject);
    procedure BTutupClick(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure edlbr100rbChange(Sender: TObject);
    procedure edlbr75rbChange(Sender: TObject);
    procedure edlbr50rbChange(Sender: TObject);
    procedure edlbr20rbChange(Sender: TObject);
    procedure edlbr10rbChange(Sender: TObject);
    procedure edlbr5rbChange(Sender: TObject);
    procedure edlbr2rbChange(Sender: TObject);
    procedure edlbr1000Change(Sender: TObject);
    procedure edlbr500Change(Sender: TObject);
    procedure edlbr200Change(Sender: TObject);
    procedure edlbr100Change(Sender: TObject);
    procedure edlbr50Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ednilaitotChange(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure Total_nilai;
    procedure Save;
    procedure Update;
  end;

//var
  //Fdata_uang_cash_kecil: TFdata_uang_cash_kecil;

Function Fdata_uang_cash_kecil: TFdata_uang_cash_kecil;
var  a,b,c,d,e,f,g,h,i,j,k,l,m:Real;

implementation

{$R *.dfm}

uses Ustock_opname_kas_kecil, UDataModule, UHomeLogin;

var
  RealFdata_uang_cash_kecil : TFdata_uang_cash_kecil;

function Fdata_uang_cash_kecil : TFdata_uang_cash_kecil;
begin
  if RealFdata_uang_cash_kecil <> nil then
     Fdata_uang_cash_kecil := RealFdata_uang_cash_kecil
  else
    Application.CreateForm(TFdata_uang_cash_kecil, Result);
end;


Function Ribuan(RzEdit : TEdit):String;
var
   NilaiRupiah: string;
   AngkaRupiah: Currency;
begin
  if RzEdit.Text='' then Exit;
   NilaiRupiah := RzEdit.text;
   NilaiRupiah := StringReplace(NilaiRupiah,',','',[rfReplaceAll,rfIgnoreCase]);
   NilaiRupiah := StringReplace(NilaiRupiah,'.','',[rfReplaceAll,rfIgnoreCase]);
   AngkaRupiah := StrToCurrDef(NilaiRupiah,0);
   RzEdit.Text := FormatCurr('#,###',AngkaRupiah);
   RzEdit.SelStart := length(RzEdit.text);
end;

Function HapusFormat(Nilai:TEdit):Real;
var
  Hasil:String;
begin
  Hasil:=Nilai.Text;
  Hasil:=StringReplace(Hasil,',','',[rfReplaceAll,rfIgnoreCase]);
  Hasil:=StringReplace(Hasil,'.','',[rfReplaceAll,rfIgnoreCase]);
  Result:=StrToInt(Hasil);
end;

procedure TFdata_uang_cash_kecil.Save;
begin
      with DM.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Insert Into t_petty_cash_money_data(trans_date,lbr100000,lbr75000,lbr50000,lbr20000,'+
                  'lbr10000,lbr5000,lbr2000,lbr1000,lbr500,lbr200,lbr100,lbr50,'+
                  'nilai100000,nilai75000,nilai50000,nilai20000,nilai10000,nilai5000,nilai2000,'+
                  'nilai1000,nilai500,nilai200,nilai100,nilai50,total_money,created_at,created_by) '+
                  'Values (:partgl_trans,:parlbr100000,:parlbr50000,:parlbr75000,:parlbr20000,'+
                  ':parlbr10000,:parlbr5000,:parlbr2000,:parlbr1000,:parlbr500,:parlbr200,:parlbr100,:parlbr50,'+
                  ':parnilai100000,:parnilai75000,:parnilai50000,:parnilai20000,:parnilai10000,:parnilai5000,:parnilai2000,'+
                  ':parnilai1000,:parnilai500,:parnilai200,:parnilai100,:parnilai50,:partotal_uang,:parcreated_at,:parcreated_by)';
        parambyname('partgl_trans').Value:=FormatDateTime('yyyy-mm-dd',DTtanggal.date);
        if edlbr100rb.Text='' then
        begin
          parambyname('parlbr100000').Value:=0;
        end
        else
        begin
          parambyname('parlbr100000').Value:=HapusFormat(edlbr100rb);
        end;

        if edlbr75rb.Text='' then
        begin
          parambyname('parlbr75000').Value:=0;
        end
        else
        begin
          parambyname('parlbr75000').Value:=HapusFormat(edlbr75rb);
        end;

        if edlbr50rb.Text='' then
        begin
          parambyname('parlbr50000').Value:=0;
        end
        else
        begin
          parambyname('parlbr50000').Value:=HapusFormat(edlbr50rb);
        end;

        if edlbr20rb.Text='' then
        begin
          parambyname('parlbr20000').Value:=0;
        end
        else
        begin
          parambyname('parlbr20000').Value:=HapusFormat(edlbr20rb);
        end;

        if edlbr10rb.Text='' then
        begin
          parambyname('parlbr10000').Value:=0;
        end
        else
        begin
          parambyname('parlbr10000').Value:=HapusFormat(edlbr10rb);
        end;

        if edlbr5rb.Text='' then
        begin
          parambyname('parlbr5000').Value:=0;
        end
        else
        begin
          parambyname('parlbr5000').Value:=HapusFormat(edlbr5rb);
        end;

        if edlbr2rb.Text='' then
        begin
          parambyname('parlbr2000').Value:=0;
        end
        else
        begin
          parambyname('parlbr2000').Value:=HapusFormat(edlbr2rb);
        end;

        if edlbr1000.Text='' then
        begin
          parambyname('parlbr1000').Value:=0;
        end
        else
        begin
          parambyname('parlbr1000').Value:=HapusFormat(edlbr1000);
        end;

        if edlbr500.Text='' then
        begin
          parambyname('parlbr500').Value:=0;
        end
        else
        begin
          parambyname('parlbr500').Value:=HapusFormat(edlbr500);
        end;

        if edlbr200.Text='' then
        begin
          parambyname('parlbr200').Value:=0;
        end
        else
        begin
          parambyname('parlbr200').Value:=HapusFormat(edlbr200);
        end;

        if edlbr100.Text='' then
        begin
          parambyname('parlbr100').Value:=0;
        end
        else
        begin
          parambyname('parlbr100').Value:=HapusFormat(edlbr100);
        end;

        if edlbr50.Text='' then
        begin
          parambyname('parlbr50').Value:=0;
        end
        else
        begin
          parambyname('parlbr50').Value:=HapusFormat(edlbr50);
        end;

        if ednilai100rb.Text='' then
        begin
          parambyname('parnilai100000').Value:=0;
        end
        else
        begin
          parambyname('parnilai100000').Value:=HapusFormat(ednilai100rb);
        end;

        if ednilai75rb.Text='' then //14-06-2020
        begin
          parambyname('parnilai75000').Value:=0;
        end
        else
        begin
          parambyname('parnilai75000').Value:=HapusFormat(ednilai75rb);
        end;

        if ednilai50rb.Text='' then
        begin
          parambyname('parnilai50000').Value:=0;
        end
        else
        begin
          parambyname('parnilai50000').Value:=HapusFormat(ednilai50rb);
        end;

        if ednilai20rb.Text='' then
        begin
          parambyname('parnilai20000').Value:=0;
        end
        else
        begin
          parambyname('parnilai20000').Value:=HapusFormat(ednilai20rb);
        end;

        if ednilai10rb.Text='' then
        begin
          parambyname('parnilai10000').Value:=0;
        end
        else
        begin
          parambyname('parnilai10000').Value:=HapusFormat(ednilai10rb);
        end;

        if ednilai5rb.Text='' then
        begin
          parambyname('parnilai5000').Value:=0;
        end
        else
        begin
          parambyname('parnilai5000').Value:=HapusFormat(ednilai5rb);
        end;

        if ednilai2rb.Text='' then
        begin
          parambyname('parnilai2000').Value:=0;
        end
        else
        begin
          parambyname('parnilai2000').Value:=HapusFormat(ednilai2rb);
        end;

        if ednilai1000.Text='' then
        begin
          parambyname('parnilai1000').Value:=0;
        end
        else
        begin
          parambyname('parnilai1000').Value:=HapusFormat(ednilai1000);
        end;

        if ednilai500.Text='' then
        begin
          parambyname('parnilai500').Value:=0;
        end
        else
        begin
          parambyname('parnilai500').Value:=HapusFormat(ednilai500);
        end;

        if ednilai200.Text='' then
        begin
          parambyname('parnilai200').Value:=0;
        end
        else
        begin
          parambyname('parnilai200').Value:=HapusFormat(ednilai200);
        end;

        if ednilai100.Text='' then
        begin
          parambyname('parnilai100').Value:=0;
        end
        else
        begin
          parambyname('parnilai100').Value:=HapusFormat(ednilai100);
        end;

        if ednilai50.Text='' then
        begin
          parambyname('parnilai50').Value:=0;
        end
        else
        begin
          parambyname('parnilai50').Value:=HapusFormat(ednilai50);
        end;

        if ednilai50.Text='' then
        begin
          parambyname('parnilai50').Value:=0;
        end
        else
        begin
          parambyname('parnilai50').Value:=HapusFormat(ednilai50);
        end;

        parambyname('partotal_uang').Value:=HapusFormat(ednilaitot);
        parambyname('parcreated_at').Value:=NOW;
         parambyname('parcreated_by').Value:=FHomeLogin.Eduser.Text;
        execsql;
      end;
      MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
end;

procedure TFdata_uang_cash_kecil.Update;
begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Update t_petty_cash_money_data set trans_date=:partgl_trans,lbr100000=:parlbr100000,lbr75000=:parlbr75000,'+
                  'lbr50000=:parlbr50000,lbr20000=:parlbr20000,'+
                  'lbr10000=:parlbr10000,lbr5000=:parlbr5000,lbr2000=:parlbr2000,lbr1000=:parlbr1000,'+
                  'lbr500=:parlbr500,lbr200=:parlbr200,lbr100=:parlbr100,lbr50=:parlbr50,'+
                  'nilai100000=:parnilai100000,nilai75000=:parnilai75000,nilai50000=:parnilai50000,nilai20000=:parnilai20000,'+
                  'nilai10000=:parnilai10000,nilai5000=:parnilai5000,nilai2000=:parnilai2000,'+
                  'nilai1000=:parnilai1000,nilai500=:parnilai500,nilai200=:parnilai200,'+
                  'nilai100=:parnilai100,nilai50=:parnilai50,total_money=:partotal_uang,'+
                  'updated_at=:parupdate_date,updated_by=:parupdate_by '+
                  'where trans_date='+QuotedStr(FormatDateTime('yyyy-mm-dd',DTtanggal.date)) ;

        parambyname('partgl_trans').Value:=FormatDateTime('yyyy-mm-dd',DTtanggal.date);
        if edlbr100rb.Text='' then
        begin
          parambyname('parlbr100000').Value:=0;
        end
        else
        begin
          parambyname('parlbr100000').Value:=HapusFormat(edlbr100rb);
        end;

        if edlbr75rb.Text='' then
        begin
          parambyname('parlbr75000').Value:=0;
        end
        else
        begin
          parambyname('parlbr75000').Value:=HapusFormat(edlbr75rb);
        end;

        if edlbr50rb.Text='' then
        begin
          parambyname('parlbr50000').Value:=0;
        end
        else
        begin
          parambyname('parlbr50000').Value:=HapusFormat(edlbr50rb);
        end;

        if edlbr20rb.Text='' then
        begin
          parambyname('parlbr20000').Value:=0;
        end
        else
        begin
          parambyname('parlbr20000').Value:=HapusFormat(edlbr20rb);
        end;

        if edlbr10rb.Text='' then
        begin
          parambyname('parlbr10000').Value:=0;
        end
        else
        begin
          parambyname('parlbr10000').Value:=HapusFormat(edlbr10rb);
        end;

        if edlbr5rb.Text='' then
        begin
          parambyname('parlbr5000').Value:=0;
        end
        else
        begin
          parambyname('parlbr5000').Value:=HapusFormat(edlbr5rb);
        end;

        if edlbr2rb.Text='' then
        begin
          parambyname('parlbr2000').Value:=0;
        end
        else
        begin
          parambyname('parlbr2000').Value:=HapusFormat(edlbr2rb);
        end;

        if edlbr1000.Text='' then
        begin
          parambyname('parlbr1000').Value:=0;
        end
        else
        begin
          parambyname('parlbr1000').Value:=HapusFormat(edlbr1000);
        end;

        if edlbr500.Text='' then
        begin
          parambyname('parlbr500').Value:=0;
        end
        else
        begin
          parambyname('parlbr500').Value:=HapusFormat(edlbr500);
        end;

        if edlbr200.Text='' then
        begin
          parambyname('parlbr200').Value:=0;
        end
        else
        begin
          parambyname('parlbr200').Value:=HapusFormat(edlbr200);
        end;

        if edlbr100.Text='' then
        begin
          parambyname('parlbr100').Value:=0;
        end
        else
        begin
          parambyname('parlbr100').Value:=HapusFormat(edlbr100);
        end;

        if edlbr50.Text='' then
        begin
          parambyname('parlbr50').Value:=0;
        end
        else
        begin
          parambyname('parlbr50').Value:=HapusFormat(edlbr50);
        end;

        if ednilai100rb.Text='' then
        begin
          parambyname('parnilai100000').Value:=0;
        end
        else
        begin
          parambyname('parnilai100000').Value:=HapusFormat(ednilai100rb);
        end;
        if ednilai75rb.Text='' then
        begin
          parambyname('parnilai75000').Value:=0;
        end
        else
        begin
          parambyname('parnilai75000').Value:=HapusFormat(ednilai75rb);
        end;

        if ednilai50rb.Text='' then
        begin
          parambyname('parnilai50000').Value:=0;
        end
        else
        begin
          parambyname('parnilai50000').Value:=HapusFormat(ednilai50rb);
        end;

        if ednilai20rb.Text='' then
        begin
          parambyname('parnilai20000').Value:=0;
        end
        else
        begin
          parambyname('parnilai20000').Value:=HapusFormat(ednilai20rb);
        end;

        if ednilai10rb.Text='' then
        begin
          parambyname('parnilai10000').Value:=0;
        end
        else
        begin
          parambyname('parnilai10000').Value:=HapusFormat(ednilai10rb);
        end;

        if ednilai5rb.Text='' then
        begin
          parambyname('parnilai5000').Value:=0;
        end
        else
        begin
          parambyname('parnilai5000').Value:=HapusFormat(ednilai5rb);
        end;

        if ednilai2rb.Text='' then
        begin
          parambyname('parnilai2000').Value:=0;
        end
        else
        begin
          parambyname('parnilai2000').Value:=HapusFormat(ednilai2rb);
        end;

        if ednilai1000.Text='' then
        begin
          parambyname('parnilai1000').Value:=0;
        end
        else
        begin
          parambyname('parnilai1000').Value:=HapusFormat(ednilai1000);
        end;

        if ednilai500.Text='' then
        begin
          parambyname('parnilai500').Value:=0;
        end
        else
        begin
          parambyname('parnilai500').Value:=HapusFormat(ednilai500);
        end;

        if ednilai200.Text='' then
        begin
          parambyname('parnilai200').Value:=0;
        end
        else
        begin
          parambyname('parnilai200').Value:=HapusFormat(ednilai200);
        end;

        if ednilai100.Text='' then
        begin
          parambyname('parnilai100').Value:=0;
        end
        else
        begin
          parambyname('parnilai100').Value:=HapusFormat(ednilai100);
        end;

        if ednilai50.Text='' then
        begin
          parambyname('parnilai50').Value:=0;
        end
        else
        begin
          parambyname('parnilai50').Value:=HapusFormat(ednilai50);
        end;

        if ednilai50.Text='' then
        begin
          parambyname('parnilai50').Value:=0;
        end
        else
        begin
          parambyname('parnilai50').Value:=HapusFormat(ednilai50);
        end;

        parambyname('partotal_uang').Value:=HapusFormat(ednilaitot);
        parambyname('parupdate_by').Value:=FHomeLogin.Eduser.Text;
        parambyname('parupdate_date').Value:=NOW;
        execsql;
      end;
      MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
end;

procedure TFdata_uang_cash_kecil.Total_nilai;
begin
  if ednilai100rb.Text='' then
  a:=0
  else
  a:=HapusFormat(ednilai100rb);

  if ednilai75rb.Text='' then
  m:=0
  else
  m:=HapusFormat(ednilai75rb);


  if ednilai50rb.Text='' then
  b:=0
  else
  b:=HapusFormat(ednilai50rb);

  if ednilai20rb.Text='' then
  c:=0
  else
  c:=HapusFormat(ednilai20rb);

  if ednilai10rb.Text='' then
  d:=0
  else
  d:=HapusFormat(ednilai10rb);

  if ednilai5rb.Text='' then
  e:=0
  else
  e:=HapusFormat(ednilai5rb);

  if ednilai2rb.Text='' then
  f:=0
  else
  f:=HapusFormat(ednilai2rb);

  if ednilai1000.Text='' then
  g:=0
  else
  g:=HapusFormat(ednilai1000);

  if ednilai500.Text='' then
  h:=0
  else
  h:=HapusFormat(ednilai500);

  if ednilai200.Text='' then
  i:=0
  else
  i:=HapusFormat(ednilai200);

  if ednilai100.Text='' then
  j:=0
  else
  j:=HapusFormat(ednilai100);

  if ednilai50.Text='' then
  k:=0
  else
  k:=HapusFormat(ednilai50);

  l:=a+b+c+d+e+f+g+h+i+j+k+m;
  ednilaitot.text:=FloatToStr(l);
end;

procedure TFdata_uang_cash_kecil.btnnewClick(Sender: TObject);
begin
    self.Clear;
end;

procedure TFdata_uang_cash_kecil.BTutupClick(Sender: TObject);
begin
  Close;
end;

procedure TFdata_uang_cash_kecil.BtnSimpanClick(Sender: TObject);
begin
   with dm.Qtemp2 do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select * from t_petty_cash_money_data '+
                'where trans_date='+QuotedStr(FormatDateTime('yyyy-mm-dd',DTtanggal.date));
      Open;
    end;
    if not DM.Koneksi.InTransaction then
      DM.Koneksi.StartTransaction;
    try
    if ednilaitot.Text='' then
    begin
      MessageDlg('Total Uang Masih Kosong..!!',mtInformation,[mbRetry],0);
    end
    else if DM.QTemp2.RecordCount = 0 then
    begin
      Save;
      DM.Koneksi.Commit;
    end
    else if DM.QTemp2.RecordCount > 0 then
    begin
      Update;
      DM.Koneksi.Commit;
    end;
    Except on E :Exception do
      begin
        begin
          MessageDlg(E.Message,mtError,[MBok],0);
          DM.Koneksi.Rollback ;
        end;
      end;
    end;
end;

procedure TFdata_uang_cash_kecil.Clear;
begin
  edlbr100rb.Text:='';
  edlbr75rb.Text:='';
  edlbr50rb.Text:='';
  edlbr20rb.Text:='';
  edlbr10rb.Text:='';
  edlbr5rb.Text:='';
  edlbr2rb.Text:='';
  edlbr1000.Text:='';
  edlbr500.Text:='';
  edlbr200.Text:='';
  edlbr100.Text:='';
  edlbr50.Text:='';
  ednilai100rb.Text:='';
  ednilai75rb.Text:='';
  ednilai50rb.Text:='';
  ednilai20rb.Text:='';
  ednilai10rb.Text:='';
  ednilai5rb.Text:='';
  ednilai2rb.Text:='';
  ednilai1000.Text:='';
  ednilai500.Text:='';
  ednilai200.Text:='';
  ednilai100.Text:='';
  ednilai50.Text:='';
  ednilaitot.Text:='';
end;



procedure TFdata_uang_cash_kecil.DTtanggalChange(Sender: TObject);
begin
    with dm.Qtemp2 do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select * from t_cash_money_data WHERE trans_date='+QuotedStr(FormatDateTime('yyyy-mm-dd',DTtanggal.date));
      Open;
    end;
    if dm.QTemp2.RecordCount>0 then
    begin
      edlbr100rb.Text:=DM.QTemp2.FieldByName('lbr100000').AsString;
      edlbr75rb.Text:=DM.QTemp2.FieldByName('lbr75000').AsString;
      edlbr50rb.Text:=DM.QTemp2.FieldByName('lbr50000').AsString;
      edlbr20rb.Text:=DM.QTemp2.FieldByName('lbr20000').AsString;
      edlbr10rb.Text:=DM.QTemp2.FieldByName('lbr10000').AsString;
      edlbr5rb.Text:=DM.QTemp2.FieldByName('lbr5000').AsString;
      edlbr2rb.Text:=DM.QTemp2.FieldByName('lbr2000').AsString;
      edlbr1000.Text:=DM.QTemp2.FieldByName('lbr1000').AsString;
      edlbr500.Text:=DM.QTemp2.FieldByName('lbr500').AsString;
      edlbr200.Text:=DM.QTemp2.FieldByName('lbr200').AsString;
      edlbr100.Text:=DM.QTemp2.FieldByName('lbr100').AsString;
      edlbr50.Text:=DM.QTemp2.FieldByName('lbr50').AsString;
    end
    else
    begin
      Clear;
    end;
end;

procedure TFdata_uang_cash_kecil.edlbr1000Change(Sender: TObject);
begin
  if edlbr1000.Text='' then
  begin
    ednilai1000.Text:='';
  end
  else
  begin
    a:=StrToFloat(edlbr1000.Text);
    b:=strtofloat('1000');
    c:=a*b;
    ednilai1000.text:=FloatToStr(c);
  end;
  Total_nilai;
end;

procedure TFdata_uang_cash_kecil.edlbr100Change(Sender: TObject);
begin
  if edlbr100.Text='' then
  begin
    ednilai100.Text:='';
  end
  else
  begin
    a:=StrToFloat(edlbr100.Text);
    b:=strtofloat('100');
    c:=a*b;
    ednilai100.text:=FloatToStr(c);
  end;
  Total_nilai;
end;

procedure TFdata_uang_cash_kecil.edlbr100rbChange(Sender: TObject);
begin
  if edlbr100rb.Text='' then
  begin
    ednilai100rb.Text:='';
  end
  else
  begin
    a:=strtofloat(edlbr100rb.Text);
    b:=strtofloat('100000');
    c:=a*b;
    ednilai100rb.text:=FloatToStr(c);
  end;
  Total_nilai;
end;

procedure TFdata_uang_cash_kecil.edlbr10rbChange(Sender: TObject);
begin
  if edlbr10rb.Text='' then
  begin
    ednilai10rb.Text:='';
  end
  else
  begin
    a:=StrToFloat(edlbr10rb.Text);
    b:=strtofloat('10000');
    c:=a*b;
    ednilai10rb.text:=FloatToStr(c);
  end;
  Total_nilai;
end;

procedure TFdata_uang_cash_kecil.edlbr200Change(Sender: TObject);
begin
    if edlbr200.Text='' then
    begin
      ednilai200.Text:='';
    end
    else
    begin
      a:=StrToFloat(edlbr200.Text);
      b:=strtofloat('200');
      c:=a*b;
      ednilai200.text:=FloatToStr(c);
    end;
    Total_nilai;
end;

procedure TFdata_uang_cash_kecil.edlbr20rbChange(Sender: TObject);
begin
    if edlbr20rb.Text='' then
    begin
      ednilai20rb.Text:='';
    end
    else
    begin
      a:=StrToFloat(edlbr20rb.Text);
      b:=strtofloat('20000');
      c:=a*b;
      ednilai20rb.text:=FloatToStr(c);
    end;
    Total_nilai;
end;

procedure TFdata_uang_cash_kecil.edlbr2rbChange(Sender: TObject);
begin
    if edlbr2rb.Text='' then
    begin
      ednilai2rb.Text:='';
    end
    else
    begin
      a:=StrToFloat(edlbr2rb.Text);
      b:=strtofloat('2000');
      c:=a*b;
      ednilai2rb.text:=FloatToStr(c);
    end;
    Total_nilai;
end;

procedure TFdata_uang_cash_kecil.edlbr500Change(Sender: TObject);
begin
    if edlbr500.Text='' then
    begin
      ednilai500.Text:='';
    end
    else
    begin
      a:=StrToFloat(edlbr500.Text);
      b:=strtofloat('500');
      c:=a*b;
      ednilai500.text:=FloatToStr(c);
    end;
    Total_nilai;
end;

procedure TFdata_uang_cash_kecil.edlbr50Change(Sender: TObject);
begin
    if edlbr50.Text='' then
    begin
      ednilai50.Text:='';
    end
    else
    begin
      a:=StrToFloat(edlbr50.Text);
      b:=strtofloat('50');
      c:=a*b;
      ednilai50.text:=FloatToStr(c);
    end;
    Total_nilai;
end;

procedure TFdata_uang_cash_kecil.edlbr50rbChange(Sender: TObject);
begin
    if edlbr50rb.Text='' then
    begin
      ednilai50rb.Text:='';
    end
    else
    begin
      a:=StrToFloat(edlbr50rb.Text);
      b:=strtofloat('50000');
      c:=a*b;
      ednilai50rb.text:=FloatToStr(c);
    end;
    Total_nilai;
end;

procedure TFdata_uang_cash_kecil.edlbr5rbChange(Sender: TObject);
begin
  if edlbr5rb.Text='' then
  begin
    ednilai5rb.Text:='';
  end
  else
  begin
    a:=StrToFloat(edlbr5rb.Text);
    b:=strtofloat('5000');
    c:=a*b;
    ednilai5rb.text:=FloatToStr(c);
  end;
  Total_nilai;
end;

procedure TFdata_uang_cash_kecil.edlbr75rbChange(Sender: TObject);
begin
  if edlbr75rb.Text='' then
  begin
    ednilai75rb.Text:='';
  end
  else
  begin
    a:=StrToFloat(edlbr75rb.Text);
    b:=strtofloat('75000');
    c:=a*b;
    ednilai75rb.text:=FloatToStr(c);
  end;
  Total_nilai;
end;

procedure TFdata_uang_cash_kecil.ednilaitotChange(Sender: TObject);
begin
    Ribuan(ednilaitot);
end;

procedure TFdata_uang_cash_kecil.FormShow(Sender: TObject);
begin
  DTtanggal.Date:=Now();
end;

procedure TFdata_uang_cash_kecil.BtnHapusClick(Sender: TObject);
begin
    if application.MessageBox('Yakin data akan dihapus?','confirm',mb_yesno or mb_iconquestion)=id_yes then
    begin
      with QDataUangCash do
      begin
        close;
        sql.clear;
        sql.add('delete from t_petty_cash_money_data ');
        sql.Add('where trans_date='+QuotedStr(FormatDateTime('yyyy-mm-dd',DTtanggal.date)));
        Execute;
      end;
    end;
    Messagedlg('Data berhasil dihapus',mtinformation,[mbOk],0);
    Close;
end;

end.
