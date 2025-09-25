unit maenangka;

interface
Uses SysUtils, frxClass,math;

Function UraikanAngka(S:String):String;
function CustomRound(Value: Double): Integer;
procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);


implementation
Var
   Voice:array[1..100] of string;
// cr ds 20-03-2025
function CustomRound(Value: Double): Integer;
begin
  if Frac(Value) = 0.5 then
    Result := Ceil(Value)  // Jika desimalnya 0.5, bulatkan ke atas
  else
    Result := Round(Value); // Jika bukan, gunakan Round biasa
end;

procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);
var
  memo: TfrxMemoView;
begin
  memo := aReport.FindObject(aMemoName) as TfrxMemoView;
  if memo <> nil then
    memo.Text := aText;
end;

function LTrim(S: string): string;
var
  I: Integer;
begin
  for I := 1 to Length(S) do if copy(S,i,1) <> ' ' then break;
  LTrim := copy(s,i,length(s)-(i-1));
end;

function RTrim(S: string): string;
var
  I: Integer;
begin
  for I := length(s) Downto 1 do if copy(S,i,1) <> ' ' then break;
  RTrim := copy(s,1,I);
end;

function AllTrim(S: string): string;
var
   jur :String;
begin
   jur :=LTrim(S);
   AllTrim :=RTrim(Jur);
end;

Function RIGHT(S: string; j:Integer): string;
begin
  RIGHT := Copy(s,(length(s)-(j-1)),j);
end;

Function StrToReal(txt:String) :Real;
Var
   Nilai: Real;
   Out  : Integer;
Begin
     val(txt,Nilai,out);
     StrToReal :=Nilai;
End;

Function RealToStr(txt:real;x:Integer) :string;
Var
   Nilai: String;
Begin
   str(txt:10:x,Nilai);
   RealToStr :=LTrim(Nilai);
End;

Function rubah(masukan:string):String ;
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

Function UraikanAngka(S:String):String;
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

end.
 