unit UNew_Kasbon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, Vcl.ComCtrls,
  RzLine, Vcl.ExtCtrls, Vcl.Mask, RzEdit, RzDTP;

type
  TFNew_Kasbon = class(TForm)
    Panel2: TPanel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    edno_bon: TEdit;
    eddiberikan_kpd: TEdit;
    Button2: TButton;
    edkas_kecil: TEdit;
    edjumlah: TEdit;
    edkas: TEdit;
    Panel1: TPanel;
    BTutup: TRzBitBtn;
    btnnew: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Shape1: TShape;
    memket: TMemo;
    Edth: TEdit;
    Edbln: TEdit;
    Edhari: TEdit;
    EdNo: TEdit;
    DTtgl: TRzDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure DTtglChange(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure edkasChange(Sender: TObject);
    procedure edkas_kecilChange(Sender: TObject);
    procedure edjumlahChange(Sender: TObject);
    procedure BTutupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure clear;
    procedure save;
    procedure Update;
    procedure Autocode;
  end;

var
  FNew_Kasbon: TFNew_Kasbon;
  Status_input_kasbon:integer;
implementation

{$R *.dfm}

uses U_List_Kasbon, UDataModule, UHomeLogin, UMy_Function;


procedure TFNew_Kasbon.Update;
begin

end;

procedure TFNew_Kasbon.Autocode;
begin
   idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FKasbon.Name)+'');
   strday2:=dtTgl.Date;
   edNo_bon.Text:=getNourut(strday2,'t_cash_bank_expenditure_submission','');
   EdNo.Text:=Order_no;
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
  Result:=StrToFloat(Hasil);
end;

procedure TFNew_Kasbon.save;
begin
  Autocode;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Insert Into t_kasbon(bon_no,trans_date,given_to,remark,amount,big_cash,petty_cash,order_no,trans_day, '+
              'trans_month,trans_year,created_at,created_by,updated_at,updated_by,deleted_at,deleted_by) '+
              'Values (:parbon_no,:partrans_date,:pargiven_to,:parremark,:paramount,:parbig_cash,:parpetty_cash,'+
              ':parorder_no,:partrans_day,:partrans_month,:partrans_year,:parcreated_at,:parcreated_by,'+
              ':parupdated_at,:parupdated_by,:pardeleted_at,:pardeleted_by)';
    parambyname('parbon_no').Value:=edno_bon.Text;
    parambyname('partrans_date').AsDate:=DTtgl.Date;
    parambyname('pargiven_to').Value:=eddiberikan_kpd.Text;
    parambyname('parremark').Value:=memket.Text;
    parambyname('paramount').Value:=HapusFormat(edjumlah);
    if edkas.Text='' then
    begin
      parambyname('parbig_cash').Value:=0;
    end
    else
    begin
      parambyname('parbig_cash').Value:=HapusFormat(edkas);
    end;

    if edkas_kecil.Text='' then
    begin
      parambyname('parpetty_cash').Value:=0;
    end
    else
    begin
      parambyname('parorder_no').Value:=HapusFormat(edkas_kecil);
    end;

    parambyname('parorder_no').Value:=Edno.Text;
    parambyname('partrans_day').Value:=Edhari.Text;
    parambyname('partrans_month').Value:=Edbln.Text;
    parambyname('partrans_year').Value:=Edth.Text;
    parambyname('parcreated_at').Value:=Now();
    parambyname('parcreated_by').Value:=FHomeLogin.Eduser.Text;
    parambyname('parupdated_at').Value:=NULL;
    parambyname('parupdated_by').Value:=NULL;
    parambyname('pardeleted_at').Value:=NULL;
    parambyname('pardeleted_by').Value:=NULL;
    execsql;
  end;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
end;

procedure TFNew_Kasbon.BSimpanClick(Sender: TObject);
begin
   //if not dm.Koneksi.InTransaction then
    //dm.Koneksi.StartTransaction;
    //try
    if eddiberikan_kpd.Text='' then
    begin
      MessageDlg('Diberikan Kepada Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end
    else if memket.Text='' then
    begin
      MessageDlg('Keterangan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end
    else if (edkas.Text='') and (edkas_kecil.Text='') then
    begin
      MessageDlg('Kas atau Kas Kecil Diisi..!!',mtInformation,[mbRetry],0);
    end
    else if edjumlah.Text='' then
    begin
      MessageDlg('Jumlah Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end
    else if Status_input_kasbon = 0 then
    begin
      Save;
      //Dm.Koneksi.Commit;
    end
    else if Status_input_kasbon = 1 then
    begin
      Update;
      //Dm.Koneksi.Commit;
    end;
    //Except on E :Exception do
      //begin
        //begin
          //MessageDlg('Silahkan ulangi proses simpan..!!', MtError,[mbok],0);
          //Dm.koneksi.Rollback ;
        //end;
      //end;
    //end;
end;

procedure TFNew_Kasbon.BTutupClick(Sender: TObject);
begin
  Close;
end;

procedure TFNew_Kasbon.clear;
begin
  edno_bon.Text:='';
  eddiberikan_kpd.Text:='';
  DTtgl.Date:=NOW;
  memket.Text:='';
  edkas.Text:='';
  edkas_kecil.Text:='';
  edjumlah.Text:='';
  Edno.Text:='';
  Edhari.Text:='';
  Edbln.Text:='';
  Edth.Text:='';
end;

procedure TFNew_Kasbon.DTtglChange(Sender: TObject);
var
    SelectedDate: TRzDateTimeEdit;
    year, month, day: word;
begin
   with dm.Qtemp2 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DTtgl.Date))+' :: DATE, ''dd'') hari ';
     Open;
   end;
   Edhari.Text:=dm.Qtemp2.FieldByName('hari').AsString;

   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DTtgl.Date))+' :: DATE, ''yyyy'') tahun ';
     Open;
   end;
   Edth.Text:=dm.Qtemp.FieldByName('tahun').AsString;

   with dm.Qtemp1 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DTtgl.Date))+' :: DATE, ''mm'') bulan ';
     Open;
   end;
   Edbln.Text:=dm.Qtemp1.FieldByName('bulan').AsString;
end;

procedure TFNew_Kasbon.edjumlahChange(Sender: TObject);
begin
  Ribuan(edjumlah);
end;

procedure TFNew_Kasbon.edkasChange(Sender: TObject);
var
  kas,kas_kecil :real;
begin
    Ribuan(edkas);
    if edkas.Text='' then
    begin
      kas:=0
    end
    else
    begin
      kas:=HapusFormat(edkas);
    end;

    if edkas_kecil.Text='' then
    begin
      kas_kecil:=0
    end
    else
    begin
      kas_kecil:=HapusFormat(edkas_kecil);
    end;
    edjumlah.Text:=FloatToStr(kas + kas_kecil);
end;

procedure TFNew_Kasbon.edkas_kecilChange(Sender: TObject);
var
  kas,kas_kecil :Real;
begin
  Ribuan(edkas_kecil);
  if edkas.Text='' then
  begin
    kas:=0
  end
  else
  begin
    kas:=HapusFormat(edkas);
  end;

  if edkas_kecil.Text='' then
  begin
    kas_kecil:=0
  end
  else
  begin
    kas_kecil:=HapusFormat(edkas_kecil);
  end;
  edjumlah.Text:=FloatToStr(kas + kas_kecil);

end;

procedure TFNew_Kasbon.FormShow(Sender: TObject);
begin
   DTtgl.Date:=Now;
   DTtgl.OnChange(sender);
end;

end.
