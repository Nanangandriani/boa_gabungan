unit UMy_Function;

interface

Uses SysUtils, frxClass,uni;
  function convbulan(nobulan:Integer):string;
  function GenerateNumber(startingNumber, digits: Integer): string;
  function getNourutBlnPrshthn_kode(tgl:TDateTime;Tablename,kode:string):string;
  function GetNourut(tgl:TDateTime;Tablename,kode:string):string;
  var strday,strmonth,stryear,notif,notrans,idmenu,order_no,Vtgl,Vbln,Vthn:string;
      strday2:TDate;

implementation

uses UDataModule;

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
       strbukti:='Select max(order_no) urut from '+Tablename+' where  code_additional isnull';//where cast(trans_month as integer)='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='2') and (dm.Qtemp['additional_status']='0') then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+'  where  code_additional isnull and  trans_day='+ quotedstr(strday)+' and trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
       //strbukti:='Select max(order_no) urut from '+Tablename+'  where  code_additional isnull and  cast(trans_day as INTEGER)='+ quotedstr(strday)+' and cast(trans_month as INTEGER)='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='3') and (dm.Qtemp['additional_status']='0')then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+'  where  code_additional isnull and trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='4') and (dm.Qtemp['additional_status']='0')then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+'  where code_additional isnull and trans_year='+quotedstr(strtahun);
   end;
      if (dm.Qtemp['id']='1') and (dm.Qtemp['additional_status']<>'0') then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename +' where code_additional='+ quotedstr(kode);//where trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='2') and (dm.Qtemp['additional_status']<>'0') then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+' where  code_additional='+ quotedstr(kode)+' and trans_day='+ quotedstr(strday)+' and trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='3') and (dm.Qtemp['additional_status']<>'0')then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+' where code_additional='+ quotedstr(kode)+' and trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='4') and (dm.Qtemp['additional_status']<>'0')then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+' where code_additional='+ quotedstr(kode)+' and trans_year='+quotedstr(strtahun);
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
       strbukti:='Select max(order_no) urut from '+Tablename+' where  code_additional isnull';//where trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='2') and (dm.Qtemp['additional_status']='0') then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+'  where  code_additional isnull and  cast(trans_day as integer) ='+ quotedstr(strday)+' and cast(trans_month as integer)='+ quotedstr(strbulan)+' AND cast(trans_year as integer)='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='3') and (dm.Qtemp['additional_status']='0')then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+'  where  code_additional isnull and cast(trans_month as integer)='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='4') and (dm.Qtemp['additional_status']='0')then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+'  where code_additional isnull and cast(trans_year as integer)='+quotedstr(strtahun);
   end;
      if (dm.Qtemp['id']='1') and (dm.Qtemp['additional_status']<>'0') then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename +' where code_additional='+ quotedstr(kode);//where trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='2') and (dm.Qtemp['additional_status']<>'0') then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+' where  code_additional='+ quotedstr(kode)+' and cast(trans_day as integer)='+ quotedstr(strday)+' and cast(trans_month as integer)='+ quotedstr(strbulan)+' AND cast(trans_year as integer)='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='3') and (dm.Qtemp['additional_status']<>'0')then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+' where code_additional='+ quotedstr(kode)+' and cast(trans_month as integer)='+ quotedstr(strbulan)+' AND cast(trans_year as integer)='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='4') and (dm.Qtemp['additional_status']<>'0')then
   begin
       strbukti:='Select max(order_no) urut from '+Tablename+' where code_additional='+ quotedstr(kode)+' and cast(trans_year as integer)='+quotedstr(strtahun);
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


end.
