unit UNew_Penomoran;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, RzCmboBx,
  Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzPanel, RzBtnEdt, Data.DB, MemDS, DBAccess,
  Uni, RzLstBox, MemTableDataEh, MemTableEh, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  DataDriverEh, Vcl.Buttons, Vcl.ComCtrls;

type
  TFNew_Penomoran = class(TForm)
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LabelHasil: TLabel;
    EdNama: TRzEdit;
    eddigit_count: TRzEdit;
    CbTipeNo: TRzComboBox;
    CBKomponen_No: TRzComboBox;
    btnplus: TRzBitBtn;
    RzPanel2: TRzPanel;
    RzBitBtn4: TRzBitBtn;
    BCancel: TRzBitBtn;
    btnplus2: TRzBitBtn;
    Ed_Komp: TRzButtonEdit;
    qnumb_det_tmp: TUniQuery;
    Edbut_th: TRzButtonEdit;
    Edbut_bln: TRzButtonEdit;
    Edbut_tgl: TRzButtonEdit;
    Edbut_counter: TRzButtonEdit;
    Edbut_pemisah: TRzButtonEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    LabelA: TLabel;
    LabelB: TLabel;
    Edhasil: TEdit;
    Ed_comp: TEdit;
    IdComp: TEdit;
    Qcomp: TUniQuery;
    CbTipe_transaksi: TRzComboBox;
    Kdsubmenu: TRzEdit;
    MemTableEh1: TMemTableEh;
    DataSource1: TDataSource;
    KdType: TRzEdit;
    KdKonter: TRzEdit;
    Kd: TRzEdit;
    DBGridEh1: TDBGridEh;
    DataSource2: TDataSource;
    Query: TUniQuery;
    BTNclear: TRzBitBtn;
    DataSetDriverEh1: TDataSetDriverEh;
    UniQuery2: TUniQuery;
    UniQuery3: TUniQuery;
    DataSource3: TDataSource;
    Qnumb_det: TUniQuery;
    Qnumb: TUniQuery;
    qnumb_det_tmpid: TIntegerField;
    qnumb_det_tmpid_param: TSmallintField;
    qnumb_det_tmpparam_name: TStringField;
    qnumb_det_tmpurutan: TSmallintField;
    qnumb_det_tmptrans_no: TStringField;
    DBGridEhNotemp: TDBGridEh;
    CheckBox1: TCheckBox;
    BitBtn1: TBitBtn;
    UniQuery4: TUniQuery;
    Ed1: TEdit;
    Ed2: TEdit;
    Ed3: TEdit;
    Ed6: TEdit;
    Ed5: TEdit;
    Ed4: TEdit;
    Ed7: TEdit;
    Ed8: TEdit;
    Ed10: TEdit;
    Ed9: TEdit;
    BitBtn2: TBitBtn;
    QtypeNo: TUniQuery;
    QnumbComp: TUniQuery;
    Qtranstype: TUniQuery;
    Edit3: TEdit;
    CheckAdd: TCheckBox;
    CbAdd: TRzComboBox;
    Label13: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    qnumb_det_tmpdelimiter: TStringField;
    DateTimePicker1: TDateTimePicker;
    BitBtn3: TBitBtn;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    BCari: TRzButtonEdit;
    EdAdd: TEdit;
    QAdditional: TUniQuery;
    procedure BCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CBKomponen_NoSelect(Sender: TObject);
    procedure Ed_KompButtonClick(Sender: TObject);
    procedure Edbut_thButtonClick(Sender: TObject);
    procedure Edbut_blnButtonClick(Sender: TObject);
    procedure Edbut_tglButtonClick(Sender: TObject);
    procedure Edbut_counterButtonClick(Sender: TObject);
    procedure Edbut_pemisahButtonClick(Sender: TObject);
    procedure Edbut_thChange(Sender: TObject);
    procedure Edbut_pemisahChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnplus2Click(Sender: TObject);
    procedure btnplusClick(Sender: TObject);
    procedure Ed_KompChange(Sender: TObject);
    procedure EdhasilChange(Sender: TObject);
    procedure eddigit_countChange(Sender: TObject);
    procedure CbTipe_transaksiSelect(Sender: TObject);
    procedure CbTipeNoSelect(Sender: TObject);
    procedure BTNclearClick(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure IdCompChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckAddClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure CbAddSelect(Sender: TObject);
    procedure BCariButtonClick(Sender: TObject);


  private
    { Private declarations }
     class
     var
     FCount: Integer;
     FPrefix: string;
     FParameter: string;
  public
    { Public declarations }

     vpanggil,vnamapershfull,vKODEPRSH,vnmprsh_short,username,vkodeprsh2,vkota,vnamapersh,thn,thnsingkt,bln,blnrom,hr,teks_pemisah,customSerial,notif:string;
     vNOURUT,count,digitcounter:integer;

     function convbulanrom(nobulan:Integer):string;
     function conv_terbilang(nilai:string):string;
     function Terbilang(sValue: string):string;
     function ConvKeHuruf(inp: string): string;
     //function digitnumber(a:integer):integer;
     function getNourutBlnPrshthn_kode(tgl:TDateTime;Tablename,kode:string):string;
     function getNourutBlnPrshthn(tgl:TDateTime;Tablename:string):string;

     constructor Create(const prefix, parameter: string);
     function GenerateAutoNumber: string;
     function AddSchemeAndTableName(const scheme, tableName: string): string;
     function getcounter(tgl:TDateTime;Tablename,kode:string):string;
     function GenerateCustomSerialNumber(startingNumber, digits: Integer): string;
     function ResetNumberBulan(date:TDateTime): Boolean;
     function ResetNumbertahun(date:TDateTime): Boolean;
     function ResetNumberhari(date:TDateTime): Boolean;

     //function GiveZero(const aNumber, aMaxDigit: Integer): String;
     procedure numb_comp_load;
     procedure numb_type_load;
     procedure trans_type_load;
     procedure autonumbsettingno;
     procedure refresh_temp;
     procedure getparam;
     procedure gettahun;
     procedure Autonumb;
     procedure testautonumber;
     procedure additional_load;

  end;

function FNew_Penomoran: TFNew_Penomoran;


implementation

{$R *.dfm}

uses UDataModule, UNew_Additional, UPenomoran;

var
  realFNew_Penomoran: TFNew_Penomoran;
// implementasi function
function FNew_Penomoran: TFNew_Penomoran;
begin
  if realFNew_Penomoran <> nil then
    FNew_Penomoran:= realFNew_Penomoran
  else
    Application.CreateForm(TFNew_Penomoran, Result);
end;


function TFNew_Penomoran.ResetNumberhari(date:TDateTime): Boolean;
var
  year,month,day: Word;
  Currentday,CurrentMonth, CurrentYear,LastMonth,LastYear:string;
  Currentnumber:integer;
begin
   decodedate(date,Year,month,day);
   currentday  :=inttostr(day);
   CurrentMonth:=inttostr(month);
   CurrentYear :=inttostr(year);

   if (CurrentMonth <> LastMonth) or (CurrentYear <> LastYear) then
   begin
      // Hari atau Bulan atau tahun berubah, reset nomor urut
      LastMonth := CurrentMonth;
      LastYear  := CurrentYear;
      CurrentNumber := 1; // Reset nomor urut ke 1 atau nilai awal yang sesuai
      Result := True;     // Kembalikan True jika reset berhasil
   end
   else
   begin
      Inc(CurrentNumber); // Tambahkan nomor urut
      Result := False;    // Kembalikan False jika tidak ada reset
   end;
end;

function TFNew_Penomoran.ResetNumbertahun(date:TDateTime): Boolean;
var
  year,month,day: Word;
  Currentday,CurrentMonth, CurrentYear,LastMonth,LastYear:string;
  Currentnumber:integer;
begin
   decodedate(date,Year,month,day);
   currentday  :=inttostr(day);
   CurrentMonth:=inttostr(month);
   CurrentYear :=inttostr(year);

   if  (CurrentYear <> LastYear) then
   begin
      // Tahun berubah, reset nomor urut
      LastMonth := CurrentMonth;
      LastYear  := CurrentYear;
      CurrentNumber := 1; // Reset nomor urut ke 1 atau nilai awal yang sesuai
      Result := True;     // Kembalikan True jika reset berhasil
   end
   else
   begin
      Inc(CurrentNumber); // Tambahkan nomor urut
      Result := False;    // Kembalikan False jika tidak ada reset
   end;
end;

function TFNew_Penomoran.ResetNumberBulan(date:TDateTime): Boolean;
var
  year,month,day: Word;
  Currentday,CurrentMonth, CurrentYear,LastMonth,LastYear:string;
  Currentnumber:integer;
begin
   decodedate(date,Year,month,day);
   currentday  :=inttostr(day);
   CurrentMonth:=inttostr(month);
   CurrentYear :=inttostr(year);

   if (CurrentMonth <> LastMonth) or (CurrentYear <> LastYear) then
   begin
      // Bulan atau tahun berubah, reset nomor urut
      LastMonth := CurrentMonth;
      LastYear  := CurrentYear;
      CurrentNumber := 1; // Reset nomor urut ke 1 atau nilai awal yang sesuai
      Result := True;     // Kembalikan True jika reset berhasil
   end
   else
   begin
      Inc(CurrentNumber); // Tambahkan nomor urut
      Result := False;    // Kembalikan False jika tidak ada reset
   end;
end;

function TFNew_Penomoran.GenerateCustomSerialNumber(startingNumber, digits: Integer): string;
begin
  // Mengonversi nomor awal ke dalam string
  Result := IntToStr(startingNumber);

  // Mengisi digit hingga mencapai jumlah yang diinginkan
  while Length(Result) < digits do
  begin
    Result := '0' + Result;
  end;
end;

function TFNew_Penomoran.AddSchemeAndTableName(const scheme, tableName: string): string;
begin
  Result := scheme + '.' + tableName;
end;

function TFNew_Penomoran.getcounter( tgl: TDateTime; Tablename, kode: string): string;
var
  year, month, day: word;
  strtemp,strcounter,schemaName,strtgl,strbulan,strtahun,conv_romawi: string;
  q:TUniQuery;
  i,n:Integer;
begin
      decodedate(tgl,Year,month,day);
      strbulan:=convbulanrom(month);
      strtahun:=inttostr(year);
      strtemp:=inttostr(month);
      schemaName := 'my_schema';

      strcounter:='Select max(NOURUT) from '+schemaName+'.'+Tablename+' ';
      strcounter:=strcounter+' WHERE BULAN='+ quotedstr(strbulan)+' AND TAHUN='+quotedstr(strtahun);
      q:=TUniQuery.Create(self);
      q.Connection:=dm.Koneksi;
      q.SQL.Add(strcounter);
      q.Open;
      if q.RecordCount=0 then
      n:=0
      else
      n:=q.fields[0].AsInteger;
      vNOURUT:=n+1;
      strtemp:=inttostr(n+1);
      strcounter:='';
      for i:=1 to digitcounter-length(strtemp) do
      begin
        strcounter:=strcounter+'0';
      end;

      Result:=strcounter;
end;

procedure  TFNew_Penomoran.testautonumber;
var
  N: Integer;
  I: Integer;
begin
  with dm.qtemp do
  begin
    sql.Clear;
    sql.Text:='';
    open;
  end;
  N := 10; // Change N to the desired number of digits

  for I := 1 to N do
  begin
    // Do something with the auto-numbered digit I
    // For example, display it in a message box:
    ShowMessage('Digit: ' + IntToStr(I));
  end;

end;

function TFNew_Penomoran.GenerateAutoNumber: string;
var
  query :string;
begin
  {query:=' SELECT a.*,b.description,b.note,c.digit_counter, '+
         ' case when b.id=1 then(SELECT TO_CHAR(NOW() :: DATE, ''yyyy'') tahun) '+
         ' when b.id=2 then (SELECT TO_CHAR(NOW() :: DATE, ''yy'') tahun) '+
         ' when b.id=3 then (SELECT TO_CHAR(NOW() :: DATE, ''mm'') bulan) '+
         ' when b.id=4 then (SELECT trim(TO_CHAR(NOW() :: DATE, ''RM'')) bulan) '+
         ' when b.id=5 then (SELECT TO_CHAR(NOW() :: DATE, ''dd'') hari) '+
         // --when b.id=6 then
         ' else a.param_name end param, c.trans_type,d.note as reset FROM t_numb_det a '+
         ' left join t_numb_component b on a.id_param=b.id '+
         ' inner join t_numb c on a.trans_no=c.trans_no    '+
         ' left join t_numb_type d on c.reset_type=d.id    '+
         ' where c.trans_type=''Penjualan'' '+
         ' ORDER BY a.trans_no,a.urutan ';

  with dm.Qtemp do
  begin
     close;
     sql.Clear;
     sql.Add('query');
     open;
  end;
      }

  Inc(FCount);
  Result := FPrefix + FParameter + IntToStr(FCount);
end;


constructor TFNew_Penomoran.Create(const prefix: string; const parameter: string);
begin
  FPrefix := prefix;
  FParameter := parameter;
end;

procedure TFNew_Penomoran.DateTimePicker1Change(Sender: TObject);
var
    SelectedDate: TDateTime;
    year, month, day: word;
begin
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' :: DATE, ''yyyy'') tahun ';
     Open;
   end;
   Edit8.Text:=dm.Qtemp.FieldByName('tahun').AsString;

   with dm.Qtemp1 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' :: DATE, ''mm'') bulan ';
     Open;
   end;
   Edit9.Text:=dm.Qtemp1.FieldByName('bulan').AsString;
end;

function TFNew_Penomoran.getNourutBlnPrshthn_kode(tgl:TDateTime;Tablename,kode:string):string;
var
  year, month, day: word;
  strsepr: string[1];
begin

end;


function TFNew_Penomoran.getNourutBlnPrshthn(tgl:TDateTime;Tablename:string):string;
var
  year, month, day: word;
  strsepr: string[1];
  strtemp,strbukti, strtgl,strbulan,strtahun: string;
  q:TUniQuery;
  i,n:Integer;
begin
  decodedate(tgl,Year,month,day);
  strsepr:='/';
  strbulan:=convbulanrom(month);
  strtahun:=inttostr(year);
  strtemp:=inttostr(month);
end;


procedure TFNew_Penomoran.Autonumb;
var param,query,notif:string;
    i:integer;
begin
    query:='SELECT a.*,b.description,b.note, '+
            'case when b.id=1 then(SELECT TO_CHAR(NOW() :: DATE, ''yyyy'') tahun) '+
            'when b.id=2 then (SELECT TO_CHAR(NOW() :: DATE, ''yy'') tahun) '+
            'when b.id=3 then (SELECT TO_CHAR(NOW() :: DATE, ''mm'') bulan) '+
            'when b.id=4 then (SELECT trim(TO_CHAR(NOW() :: DATE, ''RM'')) bulan) '+
            'when b.id=5 then (SELECT TO_CHAR(NOW() :: DATE, ''dd'') hari)  '+
            'else a.param_name end param, '+
            'c.trans_type,d.note as reset FROM t_numb_det a '+
            'left join t_numb_component b on a.id_param=b.id '+
            'inner join t_numb c on a.trans_no=c.trans_no    '+
            'left join t_numb_type d on c.reset_type=d.id    '+
            //'where c.trans_type=''Pembelian''     '+
            'ORDER BY a.trans_no,a.urutan';
     with dm.Qtemp do
     begin
          close;
          sql.Clear;
          sql.add(query);
          Open;
     end;
     param:=dm.Qtemp.fieldbyname('id_param').Asstring;

     notif:='';
     dm.qtemp.First;
     while not dm.qtemp.eof do
     begin
       with dm.qtemp do
       begin
          notif:=notif+dm.qtemp.FieldByName('param').AsString;
       end;
       dm.qtemp.next;
     end;
     //edit3.text:=notif;
end;

procedure TFNew_Penomoran.gettahun;
var
  Date : TDateTime;
  Year,Month,Day : Word;
  yyyy,mm,dd : string;
begin
  DecodeDate(Now,Year,Month,Day);
  yyyy:=inttostr(year);
  mm:=inttostr(month);
  dd:=inttostr(day);
end;


function DecToRoman(decimal:longint):string;  //Romawi
const
 numbers:Array [1..13] of integer=(1,4,5,9,10,40,50,90,100,400,500,900,1000);
 romans :Array [1..13] of string=('I','IV','V','IX','X','XL','L','XC','C','CD','D','CM','M');
Var
  i:integer;
begin
    result:='';
    for I := 13 downto 1 do
    while (Decimal >=Numbers[i]) do
    begin
      Decimal:=Decimal-Numbers[i];
      Result:=Result+Romans[i];
    end;

end;

 {function TFNew_Penomoran.digitnumber(a: Integer): Integer;
 begin
    if a=1 then
      Result := 0
    else
    if a=2  then
      Result :=00
    else
    if a=3 then
      Result :=000
    else
    if a=4 then
      Result :=0000
    else
    if a=5 then
      Result :=00000
 end;}

{function TFNew_Penomoran.GiveZero(const aNumber, aMaxDigit: Integer): String;
var
  formatSpecifier: String;
begin
   formatSpecifier := Format('%%.%dd', [aMaxDigit]);
  // formatSpecifier will result like this: '%.5d' if aMaxDigit=5
   Result := Format(formatSpecifier, [aNumber]);
end;}




// Fungsi Untuk Merubah Angka Menjadi Huruf/Terbilang
function TFNew_Penomoran.Terbilang(sValue: string):string;
const
  Angka : array [1..20] of string =
  ('', 'Satu', 'Dua', 'Tiga', 'Empat',
  'Lima', 'Enam', 'Tujuh', 'Delapan',
  'Sembilan', 'Sepuluh', 'Sebelas',
  'Duabelas', 'Tigabelas', 'Empatbelas',
  'Limabelas', 'Enambelas', 'Tujuhbelas',
  'Delapanbelas', 'Sembilanbelas');
  sPattern: string = '000000000000000';

var
  S,kata : string;
  Satu, Dua, Tiga, Belas, Gabung: string;
  Sen, Sen1, Sen2: string;
  Hitung : integer;
  one, two, three: integer;
begin
    One := 4;
    Two := 5;
    Three := 6;
    Hitung := 1;
    Kata := '';
    S := copy(sPattern, 1, length(sPattern) - length(trim(sValue))) + sValue;
    Sen1 := Copy(S, 14, 1);
    Sen2 := Copy(S, 15, 1);
    Sen := Sen1 + Sen2;
    while Hitung < 5 do
    begin
      Satu := Copy(S, One, 1);
      Dua := Copy(S, Two, 1);
      Tiga := Copy(S, Three, 1);
      Gabung := Satu + Dua + Tiga;

    if StrToInt(Satu) = 1 then
      Kata := Kata + 'Seratus '
    else
    if StrToInt(Satu) > 1 Then
      Kata := Kata + Angka[StrToInt(satu)+1] + ' Ratus ';

    if StrToInt(Dua) = 1 then
    begin
      Belas := Dua + Tiga;
      Kata := Kata + Angka[StrToInt(Belas)+1];
    end
    else
    if StrToInt(Dua) > 1 Then
      Kata := Kata + Angka[StrToInt(Dua)+1] + ' Puluh ' +
      Angka[StrToInt(Tiga)+1]
    else
    if (StrToInt(Dua) = 0) and (StrToInt(Tiga) > 0) Then
    begin
      if ((Hitung = 3) and (Gabung = '001')) or
      ((Hitung = 3) and (Gabung = ' 1')) then
      Kata := Kata + 'Seribu '
      else
      Kata := Kata + Angka[StrToInt(Tiga)+1];
    end;

    if (hitung = 1) and (StrToInt(Gabung) > 0) then
      Kata := Kata + ' Milyar '
    else
    if (Hitung = 2) and (StrToInt(Gabung) > 0) then
      Kata := Kata + ' Juta '
    else
    if (Hitung = 3) and (StrToInt(Gabung) > 0) then
    begin
      if (Gabung = '001') or (Gabung = ' 1') then
      Kata := Kata + ''
    else
      Kata := Kata + ' Ribu ';
    end;
    Hitung := Hitung + 1;
    One := One + 3;
    Two := Two + 3;
    Three := Three + 3;
    end;

    if length(Kata) > 1 then Kata := Kata;

    Result := Kata;

end;


// Fungsi Untuk Convert Angka Jadi Huruf
function TFNew_Penomoran.ConvKeHuruf(inp: string): string;
var
a,b,c,Poskoma,PosTitik : integer;
temp,angka,dpnKoma,BlkKoma : string;
AdaKoma: boolean;

begin
  PosKoma:= pos(',',Inp);
  PosTitik:= pos('.',Inp);
    if (Poskoma<>0) or (posTitik<> 0) then
        begin
        adaKoma:= true;
        if PosKoma= 0 then posKoma:= PosTitik;
        end else
        begin
        adakoma:= False;
        DpnKoma:= inp;
        end;

// Jika ada Koma
if adakoma then
   begin
    dpnkoma:= copy(inp,1,posKoma-1);
    blkKoma:= Copy(inp,posKoma+1,length(inp)-posKoma);
    if trim(DpnKoma)='0' then
       temp:= 'Nol'+ ' Koma ' + terbilang(blkKoma)
        else
          temp:= Terbilang(dpnKoma)+ ' Koma ' + Terbilang(blkKoma);
// Jika Tidak ada Koma
   end else begin
   temp:=Terbilang(dpnKoma);
   end;

   Result:= temp;
end;


function TFNew_Penomoran.conv_terbilang(nilai:string):string;
var temu,titik,i:integer;
    hasil,hasil2,sisa_koma,huruf_awal,terbilang,temp,dpnkoma,blkkoma:string;
    adakoma:boolean;
begin
   temu:=pos(',',nilai);
    titik:=pos('.',nilai);
   // dpnkoma:=LowerCase(UraikanAngka(copy(nilai,1,temu-1)));
   //blkkoma:=LowerCase(UraikanAngka(copy(nilai,temu+1,length(nilai))));
    terbilang:=UpperCase(huruf_awal)+copy(hasil,2,length(hasil)-1);
    if (temu<>0) or (titik<>0) then
    begin
      adaKoma:= true;
      if temu= 0 then
      begin
         temu:= Titik;
      end
      else
      begin
          adakoma:= False;
          DpnKoma:= nilai;
      end;
    end;

    // Jika ada Koma
    if adakoma then
    begin
      dpnkoma:= copy(nilai,1,temu-1);
      blkKoma:= Copy(nilai,temu+1,length(nilai)-temu);
      if trim(DpnKoma)='0' then
      begin
         //temp:= 'Nol'+ ' Koma ' + terbilang(blkKoma);
      end
      else
      begin
        //temp:= Terbilang(dpnKoma)+ ' Koma ' +terbilang(blkKoma);
      end;
  // Jika Tidak ada Koma
    end
    else
    begin
     //temp:=Terbilang(dpnKoma);
    end;
    result:=temp;
end;


function TFNew_Penomoran.convbulanrom(nobulan: Integer): string;
begin
  case nobulan of
    1:Result:='I';
    2:Result:='II';
    3:Result:='III';
    4:Result:='IV';
    5:Result:='V';
    6:Result:='VI';
    7:Result:='VII';
    8:Result:='VIII';
    9:Result:='IX';
    10:Result:='X';
    11:Result:='XI';
    12:Result:='XII';
  end;
end;

function buttonCreate(onClickEvent: TProcedure;
  left: integer; top: integer; width: integer; height: integer;
  anchors: TAnchors; caption: string; parent: TWinControl; form: TForm): TButton;
var
  theButton: TButton;
begin
  theButton := TButton.Create(form);
  theButton.width := width;
  theButton.height := height;
  theButton.left := left;
  theButton.top := top;
  theButton.parent := parent;
  theButton.anchors := anchors;
  //theButton.OnClick := onClickEvent;
  theButton.Caption := caption;
  result := theButton;
end;

procedure TFNew_Penomoran.trans_type_load;
begin
    with Qtranstype do
    begin
      close;
      sql.Text:='select * from t_menu_sub order by submenu ASC ';
      Open;
    end;
    CbTipe_transaksi.Items.Clear;
    Qtranstype.First;
    while not Qtranstype.Eof do
    begin
      CbTipe_transaksi.Items.Add(Qtranstype.FieldByName('submenu').AsString);
      Qtranstype.Next;
    end;
end;

procedure TFNew_Penomoran.numb_comp_load;
begin
      with QnumbComp do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from t_numb_component where note NOT like ''%AD%'' order by id ASC';
        Open;
      end;
      CBKomponen_No.Items.Clear;
      QnumbComp.First;
      while not QnumbComp.Eof do
      begin
        CBKomponen_No.Items.Add(QnumbComp['description']);
        QnumbComp.Next;
      end;
end;

procedure TFNew_Penomoran.numb_type_load;
begin
    with QtypeNo do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_numb_type order by id ASC';
      Open;
    end;
    CbTipeNo.items.clear;
    QtypeNo.First;
    while not QtypeNo.Eof do
    begin
      CbTipeNo.Items.Add(QtypeNo['description']);
      QtypeNo.Next;
    end;
end;

procedure TFNew_Penomoran.Ed_KompButtonClick(Sender: TObject);
begin
  btnplus.Visible:=true;
  Ed_Komp.Visible:=false;
  btnplus2.Visible:=false;
end;

procedure TFNew_Penomoran.Ed_KompChange(Sender: TObject);
begin
   Edbut_pemisah.Text:=Ed_Komp.Text;
end;

procedure TFNew_Penomoran.FormShow(Sender: TObject);
begin
    DateTimePicker1.Date:=Now;
    refresh_temp;
    autonumbsettingno;
    CBKomponen_No.Text:='';
    trans_type_load;
    numb_type_load;
    numb_comp_load;
    //additional_load;
    qnumb_det_tmp.Close;
    qnumb_det_tmp.Open;
   if CheckBox1.Checked then
   begin
     CheckBox1Click(sender);
   end;
end;

procedure TFNew_Penomoran.RzBitBtn4Click(Sender: TObject);
var i:integer;
begin
    if Ednama.Text='' then
    begin
      MessageDlg('Nama Penomoran Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      Ednama.SetFocus;
      Exit;
    end;
    if CbTipe_transaksi.Text='' then
    begin
      MessageDlg('Tipe Transaksi Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      CbTipe_transaksi.SetFocus;
      Exit;
    end;
     if CBTipeNo.Text='' then
    begin
      MessageDlg('TipePenomoran Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      CBTipeNo.SetFocus;
      Exit;
    end;
    if CBKomponen_No.Text='' then
    begin
      MessageDlg('Komponen Penomoran Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      CBKomponen_No.SetFocus;
      Exit;
    end;

    if application.MessageBox('Apakah anda yakin akan menyimpan data?','confirm',mb_yesno or MB_ICONQUESTION)=id_yes then
    begin
      with qnumb_det_tmp do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from t_numb_det_tmp';
        open;
      end;
      if qnumb_det_tmp.RecordCount<>0 then
      begin
         CheckBox1Click(sender);
      end;


     if DBGridEhNotemp.SelectedRows.Count > 0 then
     begin
       with DBGridEhNotemp.DataSource.DataSet do
       begin
         for I := 0 to DBGridEhNotemp.SelectedRows.Count-1 do
         begin
            GotoBookmark(DBGridEhNotemp.SelectedRows.Items[i]);
            with dm.Qtemp do
            begin
                close;
                sql.clear;
                sql.add('insert into t_numb_det (trans_no,param_name,urutan,id_param,delimiter)');
                sql.add('values(:1,:2,:3,:4,:5)');
                params.parambyname('1').Value:=DBGridEhNotemp.Fields[3].Value;
                params.parambyname('2').Value:=DBGridEhNotemp.Fields[2].Value;
                params.parambyname('3').Value:=DBGridEhNotemp.Fields[4].Value;
                params.parambyname('4').Value:=DBGridEhNotemp.Fields[1].Value;
                params.parambyname('5').Value:=',';
                execute;
            end;
         end;
       end;
       Close;
     end;

     with dm.Qtemp do
     begin
         close;
         sql.clear;
         sql.add('insert into t_numb (trans_no,trans_type,numb_type,digit_counter,component_description,reset_type,additional_status,remarks)');
         sql.add('values(:1,:2,:3,:4,:5,:6,:7,:8)');
         params.parambyname('1').value:=kd.Text;
         params.parambyname('2').value:=CbTipe_transaksi.text;
         params.parambyname('3').value:=Kdsubmenu.text;
         params.parambyname('4').value:=KdKonter.Text;
         params.parambyname('5').value:=Edhasil.Text;
         params.parambyname('6').value:=kdtype.Text;
         if CheckAdd.Checked=true then
         params.parambyname('7').value:='true'
         else
         params.parambyname('7').value:='false';
         params.parambyname('8').value:=EdNama.Text;
         execute;
     end;
     Qnumb.close;
     Qnumb.Open;
     showmessage('Simpan data berhasil');

      with qnumb_det_tmp do
      begin
        close;
        sql.Clear;
        sql.Text:=' delete from t_numb_det_tmp ';
        execute;
      end;

      {with uniquery1 do
    begin
      close;
      sql.Clear;
      sql.Text:=' select * from t_numb_det_tmp '+
                ' where trans_no='+quotedstr(kd.Text);
      open;
    end; }
    {if uniquery1.RecordCount<>0 then
    begin
        CheckBox1.Checked:=True;
        while not uniquery1.eof do
        begin
          with dm.Qtemp do
          begin
            close;
            sql.clear;
            sql.add('insert into t_numb_det (trans_no,param_name,urutan,id_param)');
            sql.add('values(:1,:2,:3,:4)');
            params.parambyname('1').asstring:=uniquery1.FieldByName('trans_no').AsString;
            params.parambyname('2').asstring:=uniquery1.FieldByName('param_name').AsString;
            params.parambyname('3').asinteger:=uniquery1.FieldByName('urutan').AsInteger;
            params.parambyname('4').asstring:=uniquery1.FieldByName('id_param').AsString;
            execute;
          end;
          dm.Qtemp.next;
        end;}
      //DBGridEhNotemp.SelectedRows.SelectAll;
       {if CheckAll.Checked then
       begin
          DBGridItemDimensi.SelectedRows.SelectAll;
       end
       else
          DBGridItemDimensi.SelectedRows.Clear;}

    {with Qnumb_det do
    begin
      close;
      sql.Clear;
      sql.Add('select * from t_numb_det ');
      open;
    end;}
      FPenomoran.ActRoExecute(sender);
    end;
end;

procedure TFNew_Penomoran.BCancelClick(Sender: TObject);
begin
   BtNClearClick(sender);
   with dm.qtemp do
   begin
     close;
     sql.clear;
     sql.Text:='select * from t_numb_det where trans_no='+QuotedStr(kd.Text);
     Execute;
   end;
   if dm.Qtemp.RecordCount > 0 then
   begin
     with dm.Qtemp2 do
     begin
       close;
       sql.Clear;
       sql.Text:='delete t_numb_det where trans_no='+QuotedStr(kd.Text);
       Execute;
     end;
   end;
   FPenomoran.ActRoExecute(sender);
   Close;
end;

procedure TFNew_Penomoran.BCariButtonClick(Sender: TObject);
begin
   FNew_Additional.Show;
end;

procedure TFNew_Penomoran.Edbut_blnButtonClick(Sender: TObject);
begin
   Edbut_bln.Clear;
   Edbut_bln.visible:=false;
end;

procedure TFNew_Penomoran.Edbut_counterButtonClick(Sender: TObject);
begin
   Edbut_counter.Clear;
   Edbut_counter.visible:=false;
end;

procedure TFNew_Penomoran.Edbut_pemisahButtonClick(Sender: TObject);
begin
   Edbut_pemisah.Clear;
   Edbut_pemisah.visible:=false;
end;

procedure TFNew_Penomoran.Edbut_pemisahChange(Sender: TObject);
begin
   Edbut_pemisah.Text:=Ed_Komp.Text;
end;

procedure TFNew_Penomoran.Edbut_tglButtonClick(Sender: TObject);
begin
   Edbut_tgl.Clear;
   Edbut_tgl.visible:=false;
end;

procedure TFNew_Penomoran.Edbut_thButtonClick(Sender: TObject);
begin
  Edbut_th.Clear;
  Edbut_th.visible:=false;

end;

procedure TFNew_Penomoran.Edbut_thChange(Sender: TObject);
begin
  //LabelHasil.Caption:=(Edbut_th.text)+(Edbut_bln.Text)+(Edbut_tgl.Text)+(Edbut_counter.text)+(Edbut_pemisah.text);
  //Edhasil.Text:= (Edbut_th.text)+(Edbut_bln.Text)+(Edbut_tgl.Text)+(Edbut_counter.text)+(Edbut_pemisah.text)
end;

procedure TFNew_Penomoran.eddigit_countChange(Sender: TObject);
var i:integer;
begin
    if eddigit_count.Text='' then
    begin
       eddigit_count.Text:='0';
    end;

    if eddigit_count.Text='0' then
    begin
       Ed_comp.text:= '';
    end
    else
    if eddigit_count.Text='1' then
      begin
        Ed_comp.text:= '0';
        kdkonter.Text:='1';
      end
    else
    if eddigit_count.Text='2'  then
      begin
        Ed_comp.text:='00';
        kdkonter.text:='2';
      end
    else
    if eddigit_count.Text='3' then
      begin
        Ed_comp.text :='000';
        kdkonter.text:='3';
      end
    else
    if eddigit_count.Text='4' then
      begin
        Ed_comp.text :='0000';
        kdkonter.text:='4';
      end
    else
    if eddigit_count.Text='5' then
    begin
      Ed_comp.text :='00000';
      kdkonter.text:='5';
    end;
    if eddigit_count.Text >'5' then
    begin
        MessageDlg('Digit Counter Tidak Boleh Lebih dari 5 ',MtWarning,[MbOk],0);
        Ed_comp.text:= ''; 
        Exit;           
    end;       

    {i:=strtoint(eddigit_count.Text);
    if eddigit_count.Text='' then
    begin
       eddigit_count.Text:='0';
    end;

    if i=0 then
    begin
       Ed_comp.text:= '';
    end
    else
    if i=1 then
      begin
        Ed_comp.text:= '0';
        kdkonter.Text:='1';
      end
    else
    if i=2  then
      begin
        Ed_comp.text:='00';
        kdkonter.text:='2';
      end
    else
    if i=3 then
      begin
        Ed_comp.text :='000';
        kdkonter.text:='3';
      end
    else
    if i=4 then
      begin
        Ed_comp.text :='0000';
        kdkonter.text:='4';
      end
    else
    if i=5 then
      Ed_comp.text :='00000' }
end;

procedure TFNew_Penomoran.EdhasilChange(Sender: TObject);
begin
     {with dm.Qtemp do
     begin
          close;
          sql.Clear;
          sql.text:='SELECT a.*,b.description,b.note, '+
                    'case when b.id=1 then(SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' :: DATE, ''yyyy'') tahun) '+
                    'when b.id=2 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' :: DATE, ''yy'') tahun) '+
                    'when b.id=3 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' :: DATE, ''mm'') bulan) '+
                    'when b.id=4 then (SELECT trim(TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' :: DATE, ''RM'')) bulan) '+
                    'when b.id=5 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' :: DATE, ''dd'') hari)  '+
                    'else a.param_name end param, '+
                    'c.trans_type,d.note as reset FROM t_numb_det a '+
                    'left join t_numb_component b on a.id_param=b.id '+
                    'inner join t_numb c on a.trans_no=c.trans_no    '+
                    'left join t_numb_type d on c.reset_type=d.id    '+
                    'where c.trans_type='+Quotedstr(CbTipe_transaksi.Text)+'     '+
                    'ORDER BY a.trans_no,a.urutan';
          Open;
     end;
     notif:='';
     dm.qtemp.First;
     while not dm.qtemp.eof do
     begin
          if dm.qtemp.FieldByName('id_param').Asinteger<>6 then
          begin
            notif:=notif+dm.qtemp.FieldByName('param').AsString;
          end;

          if dm.qtemp.FieldByName('id_param').Asinteger=6 then
          begin

          end;
       dm.qtemp.next;
     end;
     labelhasil.caption:=notif;}

end;

procedure TFNew_Penomoran.BitBtn1Click(Sender: TObject);
var param:string;
    i:integer;
    query,query2,query3:string;
    SelectedDate: TDateTime;
    year, month, day: word;
    //notif:string;
begin
     SelectedDate := DateTimePicker1.Date;
     DecodeDate(SelectedDate, Year, Month, day);
     //query:='SELECT TRIM(TO_CHAR(max(no_urut)+1,''0000'')) as urut from pembelian.t_po where tahun=''2023'' and bulan=''10'' ';
     //query:='SELECT TRIM(TO_CHAR(max(no_urut)+1,strcounter(digit_number))) as urut from pembelian.t_po where tahun=''2023'' and bulan=''10'' ';
     query:='SELECT max(no_urut)+1 as urut from pembelian.t_po where tahun='+Quotedstr(inttostr(year))+' and bulan='+Quotedstr(inttostr(month))+ '';
     with dm.Qtemp1 do
     begin
          close;
          sql.Clear;
          sql.add(query);
          open;
     end;
     edit6.Text:=dm.Qtemp1.FieldByName('urut').AsString;

     query2:='SELECT digit_counter from t_numb where numb_type=''Pembelian''';
     with dm.Qtemp2 do
     begin
          close;
          sql.Clear;
          sql.add(query2);
          open;
     end;
     //Edit7.Text:=inttostr(digitcounter);
     Edit7.Text:=dm.Qtemp2.FieldByName('digit_counter').AsString;

     query3:='SELECT reset_type from t_numb where numb_type=''Pembelian''';
     with dm.Qtemp3 do
     begin
          close;
          sql.Clear;
          sql.add(query3);
          open;
     end;
     Edit10.Text:=dm.Qtemp3.FieldByName('reset_type').AsString;

     with dm.Qtemp do
     begin
          close;
          sql.Clear;
          sql.text:='SELECT a.*,b.description,b.note,c.digit_counter,reset_type, '+
                    'case when b.id=1 then(SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' :: DATE, ''yyyy'') tahun) '+
                    'when b.id=2 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' :: DATE, ''yy'') tahun) '+
                    'when b.id=3 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' :: DATE, ''mm'') bulan) '+
                    'when b.id=4 then (SELECT trim(TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' :: DATE, ''RM'')) bulan) '+
                    'when b.id=5 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' :: DATE, ''dd'') hari)  '+
                    //'when b.id=6 then '+Quotedstr(dm.Qtemp1['urut'])+' else a.param_name end param, '+
                    'when b.id=6 then '+Quotedstr(GenerateCustomSerialNumber(dm.Qtemp1['urut'],(dm.Qtemp2['digit_counter'])))+' else a.param_name end param, '+
                    'c.trans_type,d.note as reset FROM t_numb_det a '+
                    'left join t_numb_component b on a.id_param=b.id '+
                    'inner join t_numb c on a.trans_no=c.trans_no    '+
                    'left join t_numb_type d on c.reset_type=d.id    '+
                    'where c.trans_type=''Pembelian''     '+
                    'ORDER BY a.trans_no,a.urutan';
          Open;
     end;
     param:=dm.Qtemp.fieldbyname('id_param').Asstring;

     notif:='';
     dm.qtemp.First;
     while not dm.qtemp.eof do
     begin
        //if dm.qtemp.FieldByName('id_param').Asinteger<>6 then
        //begin
           notif:=notif+dm.qtemp.FieldByName('param').AsString;
            //showmessage(notif);
        //end;

        //if dm.qtemp.FieldByName('id_param').Asinteger=6 then
        //begin
           //notif:=notif+'Nanti baca tabel';
            //showmessage(notif);
        //end;
        dm.qtemp.next;
     end;
     edit3.text:=notif;

     {digitcounter:=0;
     dm.Qtemp.First;
     while not dm.qtemp.eof do
     begin
        digitcounter:=dm.Qtemp.FieldByName('digit_counter').AsInteger;
        //showmessage(inttostr(digitcounter));
        dm.qtemp.next;
     end; }

end;

procedure TFNew_Penomoran.BitBtn2Click(Sender: TObject);
var
  orderGenerator, invoiceGenerator: TFNew_Penomoran;
  orderNumber, invoiceNumber: string;
begin
   orderGenerator := TFNew_Penomoran.Create('ORD-', 'A');
   //invoiceGenerator := TFNew_Penomoran.Create('INV-', 'B');

   orderNumber := orderGenerator.GenerateAutoNumber;
   //invoiceNumber := invoiceGenerator.GenerateAutoNumber;
   edit4.Text:= orderNumber;
   //edit5.Text:= invoiceNumber;

end;

procedure TFNew_Penomoran.BitBtn3Click(Sender: TObject);
var
  nourut: Integer;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' Select Max(No_urut) as nomor from pembelian.t_po';
    open;
  end;
  nourut:=dm.Qtemp.FieldByName('nomor').AsInteger+1;
  edit5.Text:=inttostr(nourut);

end;

procedure TFNew_Penomoran.BTNclearClick(Sender: TObject);
begin
   with qnumb_det_tmp do
   begin
     close;
     sql.clear;
     sql.add('delete from t_numb_det_tmp where trans_no='+Quotedstr(kd.text));
     execute;
   end;
   Edhasil.Clear;
end;

procedure TFNew_Penomoran.btnplus2Click(Sender: TObject);
var
  B: TrzButtonEdit;
begin
    {B := TrzButtonEdit.Create(Self);
    B.Parent := Self;
    B.Height := 23;
    B.Width := 80;
    B.Left := 170;
    B.Top := 183;
    B.ButtonKind:=bkreject;}
    //edhasil.Text:=edhasil.text+ed_komp.text;
    edhasil.Text:=edbut_th.text+Edbut_bln.Text+Edbut_tgl.Text+eddigit_count.Text+Ed_Komp.Text;
    ed_komp.Clear;
end;

procedure TFNew_Penomoran.btnplusClick(Sender: TObject);
var
  B: TrzButtonEdit;
  i,urut:integer;
  hasil:string;
begin
   refresh_temp;
   with qnumb_det_tmp do
   begin
     close;
     sql.Clear;
     sql.Text:='select * from t_numb_det_tmp ';
     open;
   end;
   urut:=qnumb_det_tmp.FieldByName('urutan').AsInteger;
   if qnumb_det_tmp.RecordCount=0 then
   begin
      urut:=1;
   end
   else
      urut:=qnumb_det_tmp.RecordCount+1;   
   with qnumb_det_tmp do
   begin
     close;
     sql.Clear;
     sql.add('insert into t_numb_det_tmp (id_param,param_name,urutan,trans_no,delimiter)');
     sql.add('values(:1,:2,:3,:4,:5)');
     params.parambyname('1').asstring:=Idcomp.Text;
     params.parambyname('2').asstring:=Ed_comp.Text;
     params.parambyname('3').asinteger:=urut;
     params.parambyname('4').asstring:=kd.Text;
     params.parambyname('5').asstring:=',';
     execute;
   end;
   edhasil.Text:=edhasil.Text+Ed_comp.Text;
   ed_komp.Clear;
   LabelHasil.Caption:=edhasil.Text;   
end;

procedure TFNew_Penomoran.Button1Click(Sender: TObject);
begin
   LabelA.Caption:=Terbilang(Edit1.Text);
end;

procedure TFNew_Penomoran.Button2Click(Sender: TObject);
begin
   LabelB.Caption:=ConvKeHuruf(Edit2.Text);
end;

procedure TFNew_Penomoran.CbAddSelect(Sender: TObject);
begin
    FNew_Additional.refresh;
    with FNew_Additional.QAdditional do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_additional where code='+Quotedstr(Cbadd.Text);
      Open;
    end;
    Edadd.Text:=FNew_Additional.QAdditional.FieldByName('id').AsString;
end;

procedure TFNew_Penomoran.CBKomponen_NoSelect(Sender: TObject);
var
 th,bln,hr :word;
 counter:integer;

begin
   if CBKomponen_No.ItemIndex=0 then
   begin
      {with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Add(' SELECT date_part(''year'', now()) Tahun ');
        //sql.Create.Add(' SELECT TO_CHAR(NOW() :: DATE, ''yy'') Tahun '); //th 2 digit
        Open;
      end;
      Ed_comp.Text:=dm.Qtemp.FieldByName('tahun').AsString;}
      with Qcomp do
      begin
        close;
        sql.Clear;
        sql.Add('select * from t_numb_component where description='+Quotedstr(CBKomponen_No.Text));
        Open;
        IdComp.Text:=fieldbyname('id').AsString;
        Ed_comp.Text:=FieldByName('note').AsString;
      end;
   end;
   if CBKomponen_No.ItemIndex=1 then
   begin
      {with dm.Qtemp do
      begin
        close;
        sql.Clear;
        //sql.Create.Add(' SELECT date_part(''year'', now()) Tahun ');
        sql.Add(' SELECT TO_CHAR(NOW() :: DATE, ''yy'') Tahun '); //th 2 digit
        Open;
      end;
      Ed_comp.Text:=dm.Qtemp.FieldByName('tahun').AsString;}
      with Qcomp do
      begin
        close;
        sql.Clear;
        sql.Add('select * from t_numb_component where description='+Quotedstr(CBKomponen_No.Text));
        Open;
        IdComp.Text:=fieldbyname('id').AsString;
        Ed_comp.Text:=FieldByName('note').AsString;
      end;
   end;
   if CBKomponen_No.ItemIndex=2 then
   begin
      {with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Add(' SELECT date_part(''month'', now()) bulan ');
        Open;
      end;
      Ed_comp.Text:=dm.Qtemp.FieldByName('bulan').AsString;}
      with Qcomp do
      begin
        close;
        sql.Clear;
        sql.Add('select * from t_numb_component where description='+Quotedstr(CBKomponen_No.Text));
        Open;
        IdComp.Text:=fieldbyname('id').AsString;
        Ed_comp.Text:=FieldByName('Note').AsString;
      end;
   end;
   if CBKomponen_No.ItemIndex=3 then  //Bulan Romawi
   begin
      {with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Add(' SELECT date_part(''month'', now()) bulan ');
        Open;
      end;
      Ed_comp.Text:=dm.Qtemp.FieldByName('bulan').AsString;
      Ed_comp.Text:=DecToRoman(strtoint(Ed_comp.Text)); }

      with Qcomp do
      begin
        close;
        sql.Clear;
        sql.Add('select * from t_numb_component where description='+Quotedstr(CBKomponen_No.Text));
        Open;
        IdComp.Text:=fieldbyname('id').AsString;
        Ed_comp.Text:=FieldByName('note').AsString;
      end;
   end;
   if CBKomponen_No.ItemIndex=4 then
   begin
      {with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Create.Add(' SELECT date_part(''day'', now()) tgl ');
        Open;
      end;
      Ed_comp.Text:=dm.Qtemp.FieldByName('tgl').AsString;
      Edbut_tgl.Text:=dm.Qtemp.FieldByName('tgl').AsString;}

      with Qcomp do
      begin
        close;
        sql.Clear;
        sql.Add('select * from t_numb_component where description='+Quotedstr(CBKomponen_No.Text));
        Open;
        IdComp.Text:=fieldbyname('id').AsString;
        Ed_comp.Text:=FieldByName('note').AsString;
      end;
   end;
   if CBKomponen_No.ItemIndex=5 then
   begin
      Counter := 0;
      Ed_comp.Text:= IntToStr(Counter);

      with Qcomp do
      begin
        close;
        sql.Clear;
        sql.Add('select * from t_numb_component where description='+Quotedstr(CBKomponen_No.Text));
        Open;
        IdComp.Text:=fieldbyname('id').AsString;
      end;
   end;
   if CBKomponen_No.ItemIndex=6 then
   begin
      Ed_comp.Text:='';

      with Qcomp do
      begin
        close;
        sql.Clear;
        sql.Add('select * from t_numb_component where description='+Quotedstr(CBKomponen_No.Text));
        Open;
        IdComp.Text:=fieldbyname('id').AsString;
      end;
   end;
   if CBKomponen_No.ItemIndex=7 then
   begin
      Ed_comp.Text:='';

      with Qcomp do
      begin
        close;
        sql.Clear;
        sql.Add('select * from t_numb_component where description='+Quotedstr(CBKomponen_No.Text));
        Open;
        IdComp.Text:=fieldbyname('id').AsString;
         Ed_comp.Text:=FieldByName('note').AsString;
      end;
   end;
   if CBKomponen_No.ItemIndex=8 then
   begin
      Ed_comp.Text:='';

      with Qcomp do
      begin
        close;
        sql.Clear;
        sql.Add('select * from t_numb_component where description='+Quotedstr(CBKomponen_No.Text));
        Open;
        IdComp.Text:=fieldbyname('id').AsString;
         Ed_comp.Text:=FieldByName('note').AsString;
      end;
   end;
   if CBKomponen_No.ItemIndex=9 then
   begin
      Ed_comp.Text:='';

      with Qcomp do
      begin
        close;
        sql.Clear;
        sql.Add('select * from t_numb_component where description='+Quotedstr(CBKomponen_No.Text));
        Open;
        IdComp.Text:=fieldbyname('id').AsString;
        Ed_comp.Text:=FieldByName('note').AsString;
      end;
   end;
   if CBKomponen_No.ItemIndex=10 then
   begin
      Ed_comp.Text:='';

      with Qcomp do
      begin
        close;
        sql.Clear;
        sql.Add('select * from t_numb_component where description='+Quotedstr(CBKomponen_No.Text));
        Open;
        IdComp.Text:=fieldbyname('id').AsString;
        Ed_comp.Text:=FieldByName('note').AsString;
      end;
   end;
   if CBKomponen_No.ItemIndex=11 then
   begin
      Ed_comp.Text:='';

      with Qcomp do
      begin
        close;
        sql.Clear;
        sql.Add('select * from t_numb_component where description='+Quotedstr(CBKomponen_No.Text));
        Open;
        IdComp.Text:=fieldbyname('id').AsString;
        Ed_comp.Text:=FieldByName('note').AsString;
      end;
   end;
   if CBKomponen_No.ItemIndex=6 then
   begin
    Ed_comp.ReadOnly:=false;
   end else
    Ed_comp.ReadOnly:=true;
end;

procedure TFNew_Penomoran.CbTipeNoSelect(Sender: TObject);
begin
    with DM.Qtemp1 do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_numb_type where description='+Quotedstr(CbTipeNo.Text);
      Open;
    end;
    kdtype.Text:=dm.Qtemp1.FieldByName('id').AsString;
end;

procedure TFNew_Penomoran.CbTipe_transaksiSelect(Sender: TObject);
begin
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='select * from t_menu_sub where submenu='+Quotedstr(CbTipe_transaksi.Text)+' ';
     Open;
   end;
   Kdsubmenu.Text:=dm.Qtemp.fieldbyname('submenu_code').AsString;
end;

procedure TFNew_Penomoran.CheckAddClick(Sender: TObject);
begin
   if CheckAdd.Checked=true then
   begin
     Bcari.Enabled:=True;
     additional_load;
   end;
   if CheckAdd.Checked=False then
   begin
     Bcari.Enabled:=True;
     CBKomponen_No.Text:='';
     numb_comp_load;
   end;

end;

procedure TFNew_Penomoran.CheckBox1Click(Sender: TObject);
begin
   if  CheckBox1.Checked=true then
   begin
     DBGridEhNotemp.SelectedRows.SelectAll;
   end;

end;

procedure TFNew_Penomoran.autonumbsettingno;
var
    Yr, Mn, Dy : Word;
    tahun, bulan, hari, kode: String;
    a,b : integer;
begin
  Query.Close;
  Query.Open;
  DecodeDate(now, Yr,Mn,Dy );
  tahun := IntToStr(Yr);
  bulan := IntToStr(Mn);
  hari := IntToStr(Dy);
  a := Query.RecordCount;
  b := Query.RecordCount+1;
  kode:='TR'+FormatDateTime('yyyymmdd',Now)+'-'+IntToStr(Query.RecordCount+1);
  kd.Text := kode;
end;

procedure TFNew_Penomoran.refresh_temp;
begin
  with qnumb_det_tmp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_numb_det_tmp';
    open;
  end;
end;

procedure TFNew_Penomoran.getparam;
var
  th,bln,hr :word;
  param:string;

begin
   {with Qcomp do
   begin
     close;
     sql.clear;
     sql.text:='select * from t_numb_component';
     open;
   end;
   param:=Qcomp.fieldbyname('note').Asstring;}

   with dm.Qtemp do
   begin
        close;
        sql.Clear;
        sql.text:='SELECT a.*,b.description,b.note,c.trans_type,d.note as reset FROM t_numb_det a '+
                  'left join t_numb_component b on a.id_param=b.id '+
                  'inner join t_numb c on a.trans_no=c.trans_no    '+
                  'left join t_numb_type d on c.reset_type=d.id    '+
                  'where c.trans_type=''Penjualan''     '+
                  'ORDER BY a.trans_no,a.urutan';
        Open;
   end;
   param:=dm.Qtemp.fieldbyname('note').Asstring;

   if param='yyyy' then
   begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Add(' SELECT date_part(''year'', now()) Tahun ');
        Open;
      end;
      showmessage(dm.Qtemp.FieldByName('tahun').AsString);
   end;

   if param='yy' then
   begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Create.Add(' SELECT TO_CHAR(NOW() :: DATE, ''yy'') Tahun ');
        Open;
      end;
      showmessage(dm.Qtemp.FieldByName('tahun').AsString);
   end;

   if param='mm' then
   begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Add(' SELECT date_part(''month'', now()) bulan ');
        Open;
      end;
      showmessage(dm.Qtemp.FieldByName('bulan').AsString);
   end;

   if param='MR' then
   begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Add(' SELECT date_part(''month'', now()) bulan ');
        Open;
      end;
      showmessage(DecToRoman(strtoint(dm.Qtemp.FieldByName('bulan').AsString)));
   end;

   if param='dd' then
   begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Add(' SELECT date_part(''day'', now()) tgl ');
        Open;
      end;
      showmessage(dm.Qtemp.FieldByName('tgl').AsString);
   end;

   {if param='no' then
   begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.text:='SELECT a.*,b.description,b.note,c.trans_type,d.note as reset FROM t_numb_det a '+
                  'left join t_numb_component b on a.id_param=b.id '+
                  'inner join t_numb c on a.trans_no=c.trans_no    '+
                  'left join t_numb_type d on c.reset_type=d.id    '+
                  'where a.trans_type=''Penjualan''     '+
                  'ORDER BY a.trans_no,a.urutan';
        Open;
      end;
      showmessage(dm.Qtemp.FieldByName('param_name').AsString);
   end;

   if param='teks' then
   begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.text:='SELECT a.*,b.description,b.note,c.trans_type,d.note as reset FROM t_numb_det a '+
                  'left join t_numb_component b on a.id_param=b.id '+
                  'inner join t_numb c on a.trans_no=c.trans_no    '+
                  'left join t_numb_type d on c.reset_type=d.id    '+
                  'where c.trans_type=''Penjualan''     '+
                  'ORDER BY a.trans_no,a.urutan';
        Open;
      end;
      showmessage(dm.Qtemp.FieldByName('param_name').AsString);
   end;  }

end;

procedure TFNew_Penomoran.IdCompChange(Sender: TObject);
begin
   if idcomp.Text='6'  then
   begin
      eddigit_count.Enabled:=true;
   end
   else
   eddigit_count.Enabled:=false;

end;

procedure TFNew_Penomoran.additional_load;
begin
      with QAdditional do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from t_numb_component  order by id ASC';
        Open;
      end;
      CBKomponen_No.Items.Clear;
      QAdditional.First;
      while not QAdditional.Eof do
      begin
        CBKomponen_No.Items.Add(QAdditional['description']);
        QAdditional.Next;
      end;
    {with  FNew_Additional.QAdditional do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_additional order by id ASC';
      Open;
    end;
    CBAdd.Items.Clear;
    FNew_Additional.QAdditional.First;
    while not FNew_Additional.QAdditional.Eof do
    begin
      CBAdd.Items.Add(FNew_Additional.QAdditional['code']);
      FNew_Additional.QAdditional.Next;
    end;}
end;

end.
