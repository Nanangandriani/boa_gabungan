unit UNew_Penomoran;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, RzCmboBx,
  Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzPanel, RzBtnEdt, Data.DB, MemDS, DBAccess,
  Uni, RzLstBox;

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
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    eddigit_count: TRzEdit;
    RzComboBox1: TRzComboBox;
    CBKomponen_No: TRzComboBox;
    btnplus: TRzBitBtn;
    RzPanel2: TRzPanel;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    btnplus2: TRzBitBtn;
    Ed_Komp: TRzButtonEdit;
    UniQuery1: TUniQuery;
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
    procedure RzBitBtn5Click(Sender: TObject);
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


  private
    { Private declarations }
  public
    { Public declarations }
     function convbulanrom(nobulan:Integer):string;
     function conv_terbilang(nilai:string):string;
     function Terbilang(sValue: string):string;
     function ConvKeHuruf(inp: string): string;
     function digitnumber(a:integer):integer;
     //function GiveZero(const aNumber, aMaxDigit: Integer): String;

  end;

var
  FNew_Penomoran: TFNew_Penomoran;

implementation

{$R *.dfm}

uses UDataModule;

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

 function TFNew_Penomoran.digitnumber(a: Integer): Integer;
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
 end;

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
   //LabelHasil.Caption:='';
   //Ed_Komp.Visible:=false;
   //btnplus2.Visible:=false;
   //btnplus.Visible:=true;
end;

procedure TFNew_Penomoran.RzBitBtn5Click(Sender: TObject);
begin
   Close;
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
    i:=strtoint(eddigit_count.Text);
    if eddigit_count.Text='' then
       exit;
       eddigit_count.Text:='0';
    if i=0 then
       Ed_comp.text:= ''
    else
    if i=1 then
       Ed_comp.text:= '0'
    else
    if i=2  then
      Ed_comp.text:='00'
    else
    if i=3 then
      Ed_comp.text :='000'
    else
    if i=4 then
      Ed_comp.text :='0000'
    else
    if i=5 then
      Ed_comp.text :='00000'
   //digitnumber(i);


end;

procedure TFNew_Penomoran.EdhasilChange(Sender: TObject);
begin
    LabelHasil.Caption:=Edhasil.text;
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
  i:integer;
begin
   edhasil.Text:=edhasil.Text+Ed_comp.Text;
   ed_komp.Clear;
   LabelHasil.Caption:= edhasil.Text;

   { for I := 0 to CBKomponen_No.ItemIndex do
    begin
        B := TrzButtonEdit.Create(Self);
        B.Parent := Self;
        B.Height := 25;
        B.Width := 85;
        B.Left := 213;
        B.Top := 240;
        B.ButtonKind:=bkreject;
    end;}
end;

procedure TFNew_Penomoran.Button1Click(Sender: TObject);
begin
   LabelA.Caption:=Terbilang(Edit1.Text);
end;

procedure TFNew_Penomoran.Button2Click(Sender: TObject);
begin
   LabelB.Caption:=ConvKeHuruf(Edit2.Text);
end;

procedure TFNew_Penomoran.CBKomponen_NoSelect(Sender: TObject);
var
 th,bln,hr :word;
 counter:integer;

begin
   if CBKomponen_No.ItemIndex=0 then
   begin
      with uniquery1 do
      begin
        close;
        sql.Clear;
        sql.Create.Add(' SELECT date_part(''year'', now()) Tahun ');
        //sql.Create.Add(' SELECT TO_CHAR(NOW() :: DATE, ''yy'') Tahun '); //th 2 digit
        Open;
      end;
      Ed_comp.Text:=uniquery1.FieldByName('tahun').AsString;
      //Edbut_th.Text:=uniquery1.FieldByName('tahun').AsString;
      //ListBox1.Items.Add(Edbut_th.Text);
   end
   else
   if CBKomponen_No.ItemIndex=1 then
   begin
      with uniquery1 do
      begin
        close;
        sql.Clear;
        //sql.Create.Add(' SELECT date_part(''year'', now()) Tahun ');
        sql.Create.Add(' SELECT TO_CHAR(NOW() :: DATE, ''yy'') Tahun '); //th 2 digit
        Open;
      end;
      Ed_comp.Text:=uniquery1.FieldByName('tahun').AsString;
   end
   else
   if CBKomponen_No.ItemIndex=2 then
   begin
      with uniquery1 do
      begin
        close;
        sql.Clear;
        sql.Create.Add(' SELECT date_part(''month'', now()) bulan ');
        Open;
      end;
      Ed_comp.Text:=uniquery1.FieldByName('bulan').AsString;
      //Edbut_bln.Text:=uniquery1.FieldByName('bulan').AsString;
      //ListBox1.Items.Add(Edbut_bln.Text);
   end
   else
   if CBKomponen_No.ItemIndex=3 then  //Bulan Romawi
   begin
      with uniquery1 do
      begin
        close;
        sql.Clear;
        sql.Create.Add(' SELECT date_part(''month'', now()) bulan ');
        Open;
      end;
      Ed_comp.Text:=uniquery1.FieldByName('bulan').AsString;
      Ed_comp.Text:=DecToRoman(strtoint(Ed_comp.Text));
      //Ed_comp.Text:=convbulanrom(uniquery1.FieldByName('bulan').AsString);

   end
   else
   if CBKomponen_No.ItemIndex=4 then
   begin
      with uniquery1 do
      begin
        close;
        sql.Clear;
        sql.Create.Add(' SELECT date_part(''day'', now()) tgl ');
        Open;
      end;
      Ed_comp.Text:=uniquery1.FieldByName('tgl').AsString;
      Edbut_tgl.Text:=uniquery1.FieldByName('tgl').AsString;
      //ListBox1.Items.Add(Edbut_tgl.Text);

   end
   else
   if CBKomponen_No.ItemIndex=5 then
   begin
      //Ed_comp.Text:=eddigit_count.Text;
      Counter := 0;
      Ed_comp.Text:= IntToStr(Counter);

   end
   else
   if CBKomponen_No.ItemIndex=6 then
   begin
       Ed_comp.Text:='';
     //btnplus.Visible:=true;
     //Ed_Komp.Visible:=true;
     //btnplus2.Visible:=true;
   end;
   {else
   begin
      //btnplus.Visible:=true;
      Ed_Komp.Visible:=true;
      btnplus2.Visible:=true;
   end;}


end;

end.
