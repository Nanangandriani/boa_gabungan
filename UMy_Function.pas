unit UMy_Function;

interface

Uses SysUtils, frxClass,uni;
  function convbulan(nobulan:Integer):string;
  function GenerateNumber(startingNumber, digits: Integer): string;
  function getNourutBlnPrshthn_kode(tgl:TDateTime;Tablename,kode:string):string;
  function GetNourut(tgl:TDateTime;Tablename,kode:string):string;
  //rudy
  function SelectRow(cSelect: String): String;
  function Sys_Batas_Data(fieldtanggal: String): String;
  function UpdateLogErrorAPI(base_url: String; path: String; token: String; lInsert: Boolean; endpoint: String; cKet: String = ''): Boolean;
  function MyExecuteSQL(cSQL: String): Boolean;
  function UraikanAngka(S:String):String;
  function terbilang(sValue: string):string;
  procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);

  var strday,strmonth,stryear,notif,notrans,idmenu,order_no,Vtgl,Vbln,Vthn,vStatusTrans,vBatas_Data,cLocation:string;
      strday2:TDate;
      status_pakai_terbilang : Integer;
      Voice:array[1..100] of string;

implementation

uses UDataModule, UHomeLogin;
function terbilang(sValue: string):string;
const
Angka : array [1..20] of string =
('', 'Satu', 'Dua', 'Tiga', 'Empat',
'Lima', 'Enam', 'Tujuh', 'Delapan',
'Sembilan', 'Sepuluh', 'Sebelas',
'Dua Belas', 'Tiga Belas', 'Empat Belas',
'Lima Belas', 'Enam Belas', 'Tujuh Belas',
'Delapan Belas', 'Sembilan Belas');
sPattern: string = '000000000000000';

var
S,Rupiah : string;
Satu, Dua, Tiga, Belas, Gabung: string;
Sen, Sen1, Sen2: string;
Hitung : integer;
one, two, three: integer;
begin
  One := 4;
  Two := 5;
  Three := 6;
  Hitung := 1;
  Rupiah := '';
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
    Rupiah := Rupiah + 'Seratus '
    else
    if StrToInt(Satu) > 1 Then
    Rupiah := Rupiah + Angka[StrToInt(satu)+1] + ' Ratus ';

    if StrToInt(Dua) = 1 then
    begin
      Belas := Dua + Tiga;
      Rupiah := Rupiah + Angka[StrToInt(Belas)+1];
    end
    else
    if StrToInt(Dua) > 1 Then
    Rupiah := Rupiah + Angka[StrToInt(Dua)+1] + ' Puluh ' +
    Angka[StrToInt(Tiga)+1]
    else
    if (StrToInt(Dua) = 0) and (StrToInt(Tiga) > 0) Then
    begin
      if ((Hitung = 3) and (Gabung = '001')) or
      ((Hitung = 3) and (Gabung = ' 1')) then
      Rupiah := Rupiah + 'Seribu '
      else
      Rupiah := Rupiah + Angka[StrToInt(Tiga)+1];
    end;

    if (hitung = 1) and (StrToInt(Gabung) > 0) then
    Rupiah := Rupiah + ' Milyar '
    else
    if (Hitung = 2) and (StrToInt(Gabung) > 0) then
    Rupiah := Rupiah + ' Juta '
    else
    if (Hitung = 3) and (StrToInt(Gabung) > 0) then
    begin
      if (Gabung = '001') or (Gabung = ' 1') then
      Rupiah := Rupiah + ''
      else
      Rupiah := Rupiah + ' Ribu ';
    end;
    Hitung := Hitung + 1;
    One := One + 3;
    Two := Two + 3;
    Three := Three + 3;
  end;
  if status_pakai_terbilang=1 then
  begin
    if length(Rupiah) > 1 then Rupiah := Rupiah + ' Rupiah ';
  end
  else if status_pakai_terbilang = 2 then
  begin
    if length(Rupiah) > 1 then Rupiah := Rupiah ;
  end;
  Result := Rupiah;
end;

function RIGHT(S: string; j:Integer): string;
begin
  RIGHT := Copy(s,(length(s)-(j-1)),j);
end;

function rubah(masukan:string):String ;
Var
   Nilai : Array[1..3] of integer;
   kata : Array[1..3] of string;
   Tabelkata  : Array[1..9] of string;
   TabelSufix : Array[1..4] of String;
   nilaiis,suffix : String;
   Counter,indexnilai,a,lahe : Integer;
   keluar: string;
Begin
     lahe :=1;
     if (masukan='')
     then begin Voice[lahe]:='Kosong';exit; end;
     tabelkata[1]:='Satu ';
     tabelkata[2]:='Dua ';
     tabelkata[3]:='Tiga ';
     tabelkata[4]:='Empat ';
     tabelkata[5]:='Lima ';
     tabelkata[6]:='Enam ';
     tabelkata[7]:='Tujuh ';
     tabelkata[8]:='Delapan ';
     tabelkata[9]:='Sembilan ';
     tabelsufix[1]:='Milyar ' ;
     tabelsufix[2]:='Juta ';
     tabelsufix[3]:='Ribu ';
     tabelsufix[4]:=''     ;
     keluar := right('00000000000'+masukan,12);
     counter :=1;
     while counter<=4 do
     Begin
        nilaiis := Copy(keluar,(counter-1)*3+1,3);
        indexnilai:=1;
        while indexnilai<=3 do
        Begin
           nilai[indexnilai]:=StrToInt(Copy(nilaiis,indexnilai,1))  ;
           if nilai[indexnilai]<>0
           then kata[indexnilai]:=tabelkata[nilai[indexnilai]];
           indexnilai:=indexnilai+1;
        end;
        suffix := tabelsufix[counter];
        if nilai[1]<>0 then
        Begin
             if nilai[1]=1
             Then begin
                  Voice[lahe]:='Seratus ';
                  inc(lahe);
                  End{Return}
             Else
             if nilai[1] > 1 Then
             Begin
              Voice[lahe]:=kata[1];
                inc(lahe);
               Voice[lahe]:='Ratus ';
                inc(lahe);
             End;

        End;
        if nilai[2]<>0 then
        Begin
           if (nilai[2]=1) and (nilai[3]=0 )
           then begin
                Voice[lahe]:='Sepuluh ';
                inc(lahe);
                end {retu ;}
           Else if (nilai[2]=1) and (nilai[3]=1)
                then  begin
                      Voice[lahe]:='Sebelas ';
                      inc(lahe);
                      end
                       {retu;}
                Else if (nilai[2]=1) and (nilai[3] > 1)
                     then begin
                          Voice[lahe]:=kata[3];
                          inc(lahe);
                          Voice[lahe]:='Belas ';
                          inc(lahe);
                          end
                           {Retu}
                     Else  begin
                           Voice[lahe]:=kata[2];
                           inc(lahe);
                           Voice[lahe]:='Puluh ';
                           inc(lahe);
                           end;
        End;
        if (nilai[3]<>0) and (nilai[2]<>1) then
        Begin
           if ((nilai[2]=0) and (nilai[3]=0)) or
              ((nilai[2]=1) and (nilai[3]=0)) or
              ((nilai[2]=1) and (nilai[3]=1)) or
              ((nilai[2]=1) and (nilai[3]=1))
           Then {retu}
           Else Begin
                  If (Counter = 3) and (nilai[1]=0) and (nilai[2]=0) and (nilai[3]=1)
                  Then  begin
                        Voice[lahe]:='Se';
                        inc(lahe);
                        end {Retu;}
                  Else  If (Counter = 3) and (nilai[1]=0) and (nilai[2]=0) and (nilai[3]>1)
                        Then begin
                             Voice[lahe]:=kata[3];
                             inc(lahe);
                             end {Retu;}
                        Else If (Counter = 4) and (nilai[1]=0) and (nilai[2]=0) and  (nilai[3]=1)
                             Then begin
                                  Voice[lahe]:=kata[3];
                                  inc(lahe);
                                  end {Retu}
                             Else If (nilai[2] <> 1) and (nilai[3] > 0 )
                                  Then begin
                                       Voice[lahe]:=kata[3];
                                       inc(lahe);
                                       end {Retu}
                                  Else If (counter < 5) and (nilai[3]>0)
                                       Then begin
                                            Voice[lahe]:=kata[3];
                                            inc(lahe);
                                            End; {Retu}
                End;
        End;
        if (strtoint(nilaiis) <> 0) and (counter < 4)
        then begin
             Voice[lahe]:=suffix;
             inc(lahe);
             end;
        counter :=counter+1;
     End;
     keluar:= keluar;
     A:=LENGTH(keluar)  ;
     keluar :=RIGHT(keluar,A-12);
End;

function UraikanAngka(S:String):String;
var
  i:integer;
  Hasil:String;
begin
    {listbox1.clear;}
    Hasil:='';
    for i:=1 to 100 do  voice[i]:='';
    rubah(S);
    i:=1;
    While i<= 100 do
    begin
       if voice[i]='' then break;
       if ((voice[i+1]='Ratus ') or
           (voice[i+1]='Puluh ') or
           (voice[i+1]='Belas '))
       then begin
            Hasil:=Hasil+voice[i]+voice[i+1];
            i:=i+1;
       end Else
       if ((voice[1]='Se') And
           (voice[i+1]='Ribu '))
       then begin
            Hasil:=Hasil+voice[i]+voice[i+1];
            i:=i+1;
       End
       else Hasil:=Hasil+voice[i];
       Inc(i);
    end;
    UraikanAngka:=Hasil+'Rupiah';
end;

procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);
var
  memo: TfrxMemoView;
begin
  memo := aReport.FindObject(aMemoName) as TfrxMemoView;
  if memo <> nil then
    memo.Text := aText;
end;

function MyExecuteSQL(cSQL: String): Boolean;
begin
  Result := True;
  dm.Qtemp.SQL.Text := cSQL;
    dm.Qtemp.Execute;
end;

function UpdateLogErrorAPI(base_url: String; path: String; token: String; lInsert: Boolean; endpoint: String; cKet: String = ''): Boolean;
var
  cSQL: String;
begin
  if cKet='' then
    cket := 'null'
  else
    cKet := QuotedStr(cKet);

  if lInsert then
    cSQL := ' insert into "public"."terror_api"  '+
            ' (user_name, time, base_url, path, token, endpoint) values ( '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', NOW(), '+QuotedStr(base_url)+', '+
            ' '+QuotedStr(path)+', '+
            ' '+QuotedStr(token)+', '+
            ' '+QuotedStr(endpoint)+')'
  else
    cSQL := ' delete from terror_api '+
            ' where user_name='+QuotedStr(FHomeLogin.Eduser.Text);

  Result := MyExecuteSQL(cSQL);
  //end;
end;

function SelectRow(cSelect: String): String;
var
  UniQuery1: TUniQuery;
begin
  UniQuery1 := TUniQuery.Create(nil);
  UniQuery1.Connection := dm.Koneksi;
  UniQuery1.SQL.Text := cSelect;
  if UniQuery1.Active then
    UniQuery1.Refresh
  else
    UniQuery1.Open;

  Result := UniQuery1.Fields.Fields[0].AsString;
  UniQuery1.Close;
  UniQuery1.Free;
end;

function Sys_Batas_Data(fieldtanggal: String): String;
var
  maxdate:TDateTime;
  tahun, bulan, tanggal:integer;
begin
  if SelectRow('select value_parameter from t_parameter where key_parameter=''sys_batas_data'' ')<> 'ya' then
  begin
    vBatas_Data:='';
  end;

  if SelectRow('select value_parameter from t_parameter where key_parameter=''sys_batas_data'' ')= 'ya' then
  begin
    tahun:=StrToInt(SelectRow('select value_parameter from t_parameter where key_parameter=''year_batas_data'' '));
    bulan:=StrToInt(SelectRow('select value_parameter from t_parameter where key_parameter=''month_batas_data'' '));
    tanggal:=StrToInt(SelectRow('select value_parameter from t_parameter where key_parameter=''date_batas_data'' '));
    maxdate := EncodeDate(tahun, bulan, tanggal);
    if SelectRow('select value_parameter from t_parameter where key_parameter=''type_batas_data'' ')= '0' then
    begin
      vBatas_Data:=' AND '+fieldtanggal+' BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',maxdate))+' and now() ';
    end;
    if SelectRow('select value_parameter from t_parameter where key_parameter=''type_batas_data'' ')= '1' then
    begin
      vBatas_Data:=' AND '+fieldtanggal+' >= DATE_TRUNC('+QuotedSTR('months')+', NOW()) - INTERVAL '+QuotedSTR(''+IntToStr(bulan)+' months')+' ';
    end;
    if SelectRow('select value_parameter from t_parameter where key_parameter=''type_batas_data'' ')= '2' then
    begin
      vBatas_Data:=' AND '+fieldtanggal+' >= DATE_TRUNC('+QuotedSTR('years')+' - INTERVAL '+QuotedSTR(''+IntToStr(tahun)+' years')+' ';
    end;
  end;
end;

function convbulan(nobulan:Integer):string;
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


function GenerateNumber(startingNumber, digits: Integer): string;
begin
  // Mengonversi nomor awal ke dalam string
  Result := IntToStr(startingNumber);
  // Mengisi digit hingga mencapai jumlah yang diinginkan
  while Length(Result) < digits do
  begin
    Result := '0' + Result;
  end;
end;

function getNourutBlnPrshthn_kode(tgl:TDateTime;Tablename,kode:string):string;
var
  year, month, day: word;
  strsepr: string[1];
  strtemp,strbukti, strtgl,strbulan,strtahun,conv_romawi: string;
  q:TUniQuery;
  i,n,nourut:Integer;
  query,query2,query3:string;
begin
   decodedate(tgl,Year,month,day);
   strday:=IntToStr(day);
   strbulan:=inttostr(month);
   strtahun:=inttostr(year);
   // menentukan akses reset number
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='select a.id,b.additional_status from t_numb_type a inner join t_numb b on a.id=b.reset_type where numb_type='+QuotedStr(idmenu);
     open;
   end;
   if (dm.Qtemp['id']='1') and (dm.Qtemp['additional_status']='0') then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+' where  Additional_code isnull';//where cast(trans_month as integer)='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='2') and (dm.Qtemp['additional_status']='0') then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+'  where  Additional_code isnull and  trans_day='+ quotedstr(strday)+' and trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
       //strbukti:='Select max(order_no) urut from '+Tablename+'  where  Additional_code isnull and  cast(trans_day as INTEGER)='+ quotedstr(strday)+' and cast(trans_month as INTEGER)='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='3') and (dm.Qtemp['additional_status']='0')then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+'  where  Additional_code isnull and trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='4') and (dm.Qtemp['additional_status']='0')then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+'  where Additional_code isnull and trans_year='+quotedstr(strtahun);
   end;
      if (dm.Qtemp['id']='1') and (dm.Qtemp['additional_status']<>'0') then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename +' where Additional_code='+ quotedstr(kode);//where trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='2') and (dm.Qtemp['additional_status']<>'0') then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+' where  Additional_code='+ quotedstr(kode)+' and trans_day='+ quotedstr(strday)+' and trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='3') and (dm.Qtemp['additional_status']<>'0')then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+' where Additional_code='+ quotedstr(kode)+' and trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='4') and (dm.Qtemp['additional_status']<>'0')then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+' where Additional_code='+ quotedstr(kode)+' and trans_year='+quotedstr(strtahun);
   end;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      SQL.Add(strbukti);
      Open;
    end;
       if (dm.Qtemp.RecordCount=0) then
        nourut :=1
     else
        nourut :=dm.Qtemp.fields[0].AsInteger+ 1;
      // menentukan counter number
       query2:='SELECT digit_counter from t_numb where numb_type='+QuotedStr(idmenu);
       with dm.Qtemp2 do
       begin
            close;
            sql.Clear;
            sql.add(query2);
            open;
       end;
       // hasil Penggabungan format penomeran sesuai setting berdasarkan akses modulnya masing2
       with dm.Qtemp do
       begin
            close;
            sql.Clear;
            sql.text:='SELECT a.*,b.description,b.note,c.digit_counter,reset_type, '+
                      'case when b.id=1 then(SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''yyyy'') tahun) '+
                      'when b.id=2 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''yy'') tahun) '+
                      'when b.id=3 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''mm'') bulan) '+
                      'when b.id=4 then (SELECT trim(TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''RM'')) bulan) '+
                      'when b.id=5 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''dd'') hari)  '+
                      'when b.id=6 then '+Quotedstr(GenerateNumber(nourut,(dm.Qtemp2['digit_counter'])))+' '+
                      'when b.id=8 then '+Quotedstr(kode)+' else a.param_name end param, '+
                      'c.trans_type,d.note as reset FROM t_numb_det a '+
                      'left join t_numb_component b on a.id_param=b.id '+
                      'inner join t_numb c on a.trans_no=c.trans_no    '+
                      'left join t_numb_type d on c.reset_type=d.id    '+
                      'where c.numb_type='+QuotedStr(idmenu)+'     '+
                      'ORDER BY a.trans_no,a.urutan';
            Open;
       end;
       order_no:=GenerateNumber(nourut,(dm.Qtemp2['digit_counter']));
       notif:='';
       dm.qtemp.First;
       while not dm.qtemp.eof do
       begin
          notif:=notif+dm.qtemp.FieldByName('param').AsString;
          dm.qtemp.next;
       end;
        result:=notif;
end;

function getNourut(tgl:TDateTime;Tablename,kode:string):string;
var
  year, month, day: word;
  strsepr: string[1];
  strtemp,strbukti, strtgl,strbulan,strtahun,conv_romawi: string;
  q:TUniQuery;
  i,n,nourut:Integer;
  query,query2,query3:string;
begin
   decodedate(tgl,Year,month,day);
   strday:=IntToStr(day);
   strbulan:=inttostr(month);
   strtahun:=inttostr(year);
   // menentukan akses reset number
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='select a.id,b.additional_status from t_numb_type a inner join t_numb b on a.id=b.reset_type where numb_type='+QuotedStr(idmenu);
     open;
   end;
   if (dm.Qtemp['id']='1') and (dm.Qtemp['additional_status']='0') then
   begin
       strbukti:='Select cast(max(order_no) as integer) urut from '+Tablename+' where  additional_code isnull';//where trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='2') and (dm.Qtemp['additional_status']='0') then
   begin
       strbukti:='Select cast(max(order_no) as integer) urut from '+Tablename+'  where  additional_code isnull and  cast(trans_day as integer) ='+ quotedstr(strday)+' and cast(trans_month as integer)='+ quotedstr(strbulan)+' AND cast(trans_year as integer)='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='3') and (dm.Qtemp['additional_status']='0')then
   begin
       strbukti:='Select cast(max(order_no) as integer) urut from '+Tablename+'  where  additional_code isnull and cast(trans_month as integer)='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='4') and (dm.Qtemp['additional_status']='0')then
   begin
       strbukti:='Select cast(max(order_no) as integer) urut from '+Tablename+'  where additional_code isnull and cast(trans_year as integer)='+quotedstr(strtahun);
   end;
      if (dm.Qtemp['id']='1') and (dm.Qtemp['additional_status']<>'0') then
   begin
       strbukti:='Select cast(max(order_no) as integer) urut from '+Tablename +' where additional_code='+ quotedstr(kode);//where trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='2') and (dm.Qtemp['additional_status']<>'0') then
   begin
       strbukti:='Select cast(max(order_no) as integer) urut from '+Tablename+' where  additional_code='+ quotedstr(kode)+' and cast(trans_day as integer)='+ quotedstr(strday)+' and cast(trans_month as integer)='+ quotedstr(strbulan)+' AND cast(trans_year as integer)='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='3') and (dm.Qtemp['additional_status']<>'0')then
   begin
       strbukti:='Select cast(max(order_no) as integer) urut from '+Tablename+' where additional_code='+ quotedstr(kode)+' and cast(trans_month as integer)='+ quotedstr(strbulan)+' AND cast(trans_year as integer)='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='4') and (dm.Qtemp['additional_status']<>'0')then
   begin
       strbukti:='Select cast(max(order_no) as integer) urut from '+Tablename+' where additional_code='+ quotedstr(kode)+' and cast(trans_year as integer)='+quotedstr(strtahun);
   end;
    Vthn:=FormatDateTime('yyyy',strday2);
    Vbln:=FormatDateTime('mm',strday2);
    Vtgl:=FormatDateTime('dd',strday2);
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      SQL.Add(strbukti);
      Open;
    end;
       if (dm.Qtemp.RecordCount=0) then
        nourut :=1
     else
        nourut :=dm.Qtemp.fields[0].AsInteger+ 1;
      // menentukan counter number
       query2:='SELECT digit_counter from t_numb where numb_type='+QuotedStr(idmenu);
       with dm.Qtemp2 do
       begin
            close;
            sql.Clear;
            sql.add(query2);
            open;
       end;

       // hasil Penggabungan format penomeran sesuai setting berdasarkan akses modulnya masing2
       with dm.Qtemp do
       begin
            close;
            sql.Clear;
            sql.text:='SELECT a.*,b.description,b.note,c.digit_counter,reset_type, '+
                      'case when b.id=1 then(SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''yyyy'') tahun) '+
                      'when b.id=2 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''yy'') tahun) '+
                      'when b.id=3 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''mm'') bulan) '+
                      'when b.id=4 then (SELECT trim(TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''RM'')) bulan) '+
                      'when b.id=5 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''dd'') hari)  '+
                      'when b.id=6 then '+Quotedstr(GenerateNumber(nourut,(dm.Qtemp2['digit_counter'])))+' '+
                      'when b.id=8 then '+Quotedstr(kode)+' else a.param_name end param, '+
                      'c.trans_type,d.note as reset FROM t_numb_det a '+
                      'left join t_numb_component b on a.id_param=b.id '+
                      'inner join t_numb c on a.trans_no=c.trans_no    '+
                      'left join t_numb_type d on c.reset_type=d.id    '+
                      'where c.numb_type='+QuotedStr(idmenu)+'     '+
                      'ORDER BY a.trans_no,a.urutan';
            Open;
       end;
       order_no:=GenerateNumber(nourut,(dm.Qtemp2['digit_counter']));
       notif:='';
       dm.qtemp.First;
       while not dm.qtemp.eof do
       begin
          notif:=notif+dm.qtemp.FieldByName('param').AsString;
          dm.qtemp.next;
       end;
        result:=notif;
end;

 // Fucntion Untuk Bahasa Inggris
const
  Digits: array [1 .. 9] of string = (
    'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine');

  Teens: array [1 .. 9] of string = (
    'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen');

  TenTimes: array [1 .. 9] of string = (
    'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety');
function DoTriplet(TheNumber: Integer): string;
var
  Digit, Num: Integer;
begin
  Result := '';
  Num := TheNumber mod 100;
  if (Num > 10) and (Num < 20) then
  begin
    Result := Teens[Num - 10];
    Num := TheNumber div 100;
  end
  else
  begin
    Num := TheNumber;
    Digit := Num mod 10;
    Num := Num div 10;
    if Digit > 0 then Result := Digits[Digit];
    Digit := Num mod 10;
    Num := Num div 10;
    if Digit > 0 then Result := TenTimes[Digit] + ' ' + Result;
    Result := Trim(Result);
  end;
  Digit := Num mod 10;
 // if (Result <> '') and (Digit > 0) then Result := '- ' + Result;
  if Digit > 0 then Result := Digits[Digit] + ' hundred ' + Result;
  Result := Trim(Result);
end;

function NumberInWords(TheNumber: Integer): string;
var
  Num, Triplet, Pass: Integer;
begin
  if TheNumber < 0 then Result := 'Minus ' + NumberInWords(-TheNumber)
  else
  begin
    Result := '';
    Num := TheNumber;
    if Num > 999999999 then
        raise Exception.Create('Can''t express more than 999,999,999 in words');
    for Pass := 1 to 3 do
    begin
      Triplet := Num mod 1000;
      Num := Num div 1000;
      if Triplet > 0 then
      begin
        if (Pass > 1) and (Result <> '') then Result := ' ' + Result;
        case Pass of
          2: Result := ' thousand' + Result;
          3: Result := ' million' + Result;
        end;
        Result := Trim(DoTriplet(Triplet) + Result);
      end;
    end;
  end;
end;

// Terbilang Indonesia
function Terbilang(sValue: string):string;
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
function ConvKeHuruf(inp: string): string;
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



end.
