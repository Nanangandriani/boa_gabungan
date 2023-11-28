unit UNew_PO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, RzButton, RzBtnEdt, RzEdit, RzCmboBx, Vcl.Mask, Vcl.ExtCtrls,
  MemTableDataEh, Data.DB, MemTableEh, MemDS, DBAccess, Uni, Vcl.ComCtrls;

type
  TFNew_PO = class(TForm)
    pninput: TPanel;
    Label1: TLabel;
    qty: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label15: TLabel;
    Label20: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    EdKd_supp: TEdit;
    DtPO: TRzDateTimeEdit;
    EdNo: TEdit;
    DtBln: TRzDateTimeEdit;
    DtTh: TRzDateTimeEdit;
    Edno_kontrak: TRzComboBox;
    EdNopo: TRzEdit;
    EdCurr: TRzComboBox;
    EdStatus: TComboBox;
    EdJenisAngkut: TRzComboBox;
    Edjenispo: TRzComboBox;
    Edjatuh_tempo: TRzEdit;
    EdNm_supp: TRzButtonEdit;
    DtDelivery: TRzDateTimeEdit;
    Ednilai_curr: TRzEdit;
    RzBitBtn1: TRzBitBtn;
    DtDelivery2: TRzDateTimeEdit;
    cb_gudang: TComboBox;
    DBGridDetail: TDBGridEh;
    Panel2: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    EdPPn: TEdit;
    EdPPh23: TEdit;
    EdSubtotal: TRzEdit;
    Edpph: TRzEdit;
    Edppn2: TRzEdit;
    EdGrandtotal: TRzEdit;
    EdKet: TMemo;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    DsGudang: TDataSource;
    DsItempo: TDataSource;
    QGudang: TUniQuery;
    MemItempo: TMemTableEh;
    Nopo: TEdit;
    DateTimePicker1: TDateTimePicker;
    Edurut: TEdit;
    Edbln: TEdit;
    Edth: TEdit;
    Button1: TButton;
    Edhari: TEdit;
    procedure BSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdNm_suppButtonClick(Sender: TObject);
    procedure DBGridDetailColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DtPOChange(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure Edjatuh_tempoChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EdNm_suppChange(Sender: TObject);
  private
    { Private declarations }
     procedure Clear;
  public
    { Public declarations }
     kdsbu:string;
     function AmbilDanUpdateNomorUrut: Integer;
     Procedure Loaditem;
     Procedure Loaditem2;
     Procedure Autonumber;
     Procedure Simpan;
     Procedure Simpan2;
     Procedure Update;
     Procedure Update2;
     Procedure Totalpo;

  end;

function FNew_PO: TFNew_PO;

var
  //FNew_PO: TFNew_PO;
  Status,kd_gd,kdsb,nopo:string;
  subtotal,ppn,pph,grandtotal:Real;
  StatusTr:integer;
implementation

{$R *.dfm}

uses UDataModule, UNew_Penomoran,UPO, USearch_Supplier_SPB, UListItempo,
  UMainMenu,UMy_Function;

var
  realFNew_PO: TFNew_PO;
// implementasi function
function FNew_PO: TFNew_PO;
begin
  if RealFNew_PO <> nil then
    FNew_PO:= RealFNew_PO
  else
    Application.CreateForm(TFNew_PO, Result);
end;


procedure TFNew_PO.Autonumber;
begin
  idmenu:='M4302';
  strday2:=Dtpo.Date;
  Nopo.Text:=getNourutBlnPrshthn_kode(strday2,'purchase.t_po','');
  Edurut.Text:=order_no;
end;


function TFNew_PO.AmbilDanUpdateNomorUrut: Integer;
var
  Query: TUniQuery;
  CurrentMonth, CurrentYear, MaxNomorUrut: Integer;
  year, month, day: Word;
  SelectedDate: TDateTime;
begin
    DecodeDate(SelectedDate, Year, Month, day);
    Query.Connection := dm.koneksi;
    Query := TUniQuery.Create(nil);
  try
    CurrentMonth := month;
    CurrentYear  := Year;

    Query := TUniQuery.Create(nil);
    try
      Query.SQL.Text := 'SELECT MAX(No_Urut) FROM purchase.t_po ' +
                        'WHERE Bulan = :bulan AND Tahun = :tahun';
      Query.ParamByName('bulan').AsInteger := CurrentMonth;
      Query.ParamByName('tahun').AsInteger := CurrentYear;
      Query.ExecSQL;

      MaxNomorUrut := Query.Fields[0].AsInteger;

      // Jika bulan berbeda, reset nomor urut
      if (not Query.Eof) and (MaxNomorUrut > 0) then
        MaxNomorUrut := 0;

      // Tambahkan 1 ke nomor urut dan simpan dalam tabel
      MaxNomorUrut := MaxNomorUrut + 1;

      Query.SQL.Text := 'INSERT INTO purchase.t_po (No_Urut, Bulan, Tahun) ' +
                        'VALUES (:nourut, :bulan, :tahun)';
      Query.ParamByName('nourut').AsInteger := MaxNomorUrut;
      Query.ParamByName('bulan').AsInteger := CurrentMonth;
      Query.ParamByName('tahun').AsInteger := CurrentYear;
      Query.ExecSQL;
    finally
      Query.Free;
    end;
  finally
    Query.Free;
  end;

  Result := MaxNomorUrut;
end;




procedure TFNew_PO.Totalpo;
var Ppn1,pph1:Real;
begin
  Ppn1:= StrToInt(EdPPn.TEXT);
  EdSubtotal.Text:=DBGridDetail.Columns[6].Footer.sumvalue;
  Subtotal:=DBGridDetail.Columns[6].Footer.sumvalue;
  PPN:=subtotal/100 * ppn1;
  EdPPN2.Text:=FloatToStr(ppn);
  PPH:=(SubTOTAL)/100*(STRTOFLOAT(EDpph23.TEXT));
  Edpph.Text:=FloatToStr(pph);
  EdGrandTotal.Text:=FLOATTOSTR(subtotal-pph+ppn);
  GrandTotal:=subtotal-pph+ppn;
end;

procedure TFNew_PO.Loaditem;
begin
   with dm.QTemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_kontrak_kerjasama_det where no_kontrak='+QuotedStr(Edno_kontrak.Text);
      ExecSQL;
    end;
    Dm.QTemp2.First;
    while not dm.QTemp2.Eof do
    begin
      // FNew_itempo.EdKd_material.Items.Add(Dm.Qtemp2.FieldByName('kd_material_stok').AsString);
    Dm.QTemp2.Next;
    end;
    with Flistitempo.QMaterial_stok do
    begin
      close;
      sql.Clear;
      sql.Text:=' SELECT a.no_kontrak,a.kd_material_stok,a.qty,a.harga,a.satuan,a.total_harga,'+
                ' a.sisaqty,a.totalpo,b.nm_material,a.ppn FROM t_kontrak_kerjasama_det AS "a" '+
                ' INNER JOIN t_material_stok AS b ON a.kd_material_stok = b.kd_material_stok '+
                ' where A.no_kontrak='+QuotedStr(Edno_kontrak.Text)+''+
                ' GROUP BY a.no_kontrak,a.kd_material_stok,a.qty,a.harga,a.satuan, '+
                ' a.total_harga, a.sisaqty,a.totalpo,b.nm_material,a.ppn '+
                ' ORDER BY kd_material_stok DESC ';
      ExecSQL;
    end;
    Flistitempo.QMaterial_stok.Open;
    Flistitempo.DBGridMaterial.Show;
    Flistitempo.DBGridMaterial2.Hide;
    Flistitempo.Bedit.Visible:=true;
    Flistitempo.BEdit2.Visible:=False;
end;

procedure TFNew_PO.Loaditem2;
begin
    with dm.QTemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from purchase.t_material';
      ExecSQL;
    end;
    Dm.QTemp2.First;
    while not dm.QTemp2.Eof do
    begin
     //FNew_itempo.EdKd_material.Items.Add(Dm.Qtemp2.FieldByName('kd_material').AsString);
    Dm.QTemp2.Next;
    end;
     with Flistitempo.QMaterial_stok2 do
    begin
      close;
      sql.Clear;
      sql.Text:=' select A.*,B.supplier_name , C.nm_material from purchase.t_material_stok A  '+
                ' left join t_supplier B on A.kd_supplier=B.supplier_code  '+
                ' inner join purchase.t_material C on A.kd_material=C.kd_material  '+
                ' where A.kd_supplier='+QuotedStr(EdKd_supp.Text)+' and '+
                ' C.jenis<>''PRODUKSI''';
      ExecSQL;
    end;
    Flistitempo.QMaterial_stok2.Open;
    if Flistitempo.Qmaterial_stok2.RecordCount<>0 then
    begin
    with Flistitempo.QMaterial_stok2 do
    begin
      close;
      sql.Clear;
      sql.Text:=' select a.kd_material,a.kd_supplier, a.kd_material_stok,a.no_urut,a.kd_urut, '+
                '	a.qty,a.satuan, a.merk,a.nm_material,a.no_material,	a.qtyperkonversi, '+
                ' a.qtykonversi,a.satuankonversi,B.nm_supplier , C.nm_material,C.jenis '+
                ' from t_material_stok A  '+
                ' left join t_supplier B on A.kd_supplier=B.kd_supplier  '+
                ' inner join t_material C on A.kd_material=C.kd_material  '+
                ' where A.kd_supplier='+QuotedStr(EdKd_supp.Text)+'and c.jenis<>''PRODUKSI'''+
                ' group by a.kd_material,a.kd_supplier, a.kd_material_stok,a.no_urut,a.kd_urut, '+
                '	a.qty,a.satuan, a.merk,a.nm_material,a.no_material,	a.qtyperkonversi, '+
                ' a.qtykonversi,a.satuankonversi,B.nm_supplier , C.nm_material,c.jenis';
      ExecSQL;
    end;
    Flistitempo.QMaterial_stok2.Open;
    end else
    with Flistitempo.QMaterial_stok2 do
    begin
      close;
      sql.Clear;
      sql.Text:=' select A.*,B.supplier_name , C.nm_material,C.jenis from purchase.t_material_stok A  '+
                ' left join t_supplier B on A.kd_supplier=B.supplier_code  '+
                ' inner join purchase.t_material C on A.kd_material=C.kd_material  '+
                ' where C.jenis<>''PRODUKSI'' and b.supplier_name is Null';
      ExecSQL;
    end;
    Flistitempo.QMaterial_stok2.Open;
    Flistitempo.DBGridMaterial2.Show;
    Flistitempo.DBGridMaterial.Hide;
    Flistitempo.Bedit2.Visible:=true;
    Flistitempo.BEdit.Visible:=False;
end;

procedure TFNew_PO.Clear;
begin
  EdNo.Text:='';
  EdKd_supp.Text:='';
  EdNm_supp.Text:='';
  EdStatus.Text:='';
  EdPPh23.Text:='10';
  EdPPn.Text:='10';
  EdKet.Text:='';
  EdCurr.Text:='';
  Edjenispo.Text:='';
  DtPO.Date:=Now;
  DtDelivery.Date:=Now;
  DtDelivery2.Date:=Now;
  MemItempo.EmptyTable;
  EdNopo.Text:='';
end;

procedure TFNew_PO.DBGridDetailColumns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  Flistitempo.Show;
  if EdStatus.Text='KONTRAK KERJASAMA' then
  begin
    Self.Loaditem
  end else
    Self.Loaditem2;
end;

procedure TFNew_PO.DtPOChange(Sender: TObject);
var
    SelectedDate: TRzDateTimeEdit;
    year, month, day: word;
begin
   with dm.Qtemp2 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DtPO.Date))+' :: DATE, ''dd'') hari ';
     Open;
   end;
   Edhari.Text:=dm.Qtemp2.FieldByName('hari').AsString;

   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DtPO.Date))+' :: DATE, ''yyyy'') tahun ';
     Open;
   end;
   Edth.Text:=dm.Qtemp.FieldByName('tahun').AsString;

   with dm.Qtemp1 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DtPO.Date))+' :: DATE, ''mm'') bulan ';
     Open;
   end;
   Edbln.Text:=dm.Qtemp1.FieldByName('bulan').AsString;

end;

procedure TFNew_PO.Edjatuh_tempoChange(Sender: TObject);
begin
    if Edjatuh_tempo.text='' then
       Edjatuh_tempo.text:='0';
end;

procedure TFNew_PO.EdNm_suppButtonClick(Sender: TObject);
begin
    with FSearch_Supplier_SPB do
    begin
      Show;
      QSupplier.Close;
      QSupplier.Open;
    end;
end;

procedure TFNew_PO.EdNm_suppChange(Sender: TObject);
begin
    with Dm.Qtemp do
    begin
      close;
      sql.Text:='select * from t_supplier where supplier_name='+QuotedStr(EdNm_supp.Text);
      ExecSQL;
    end;
    EdKd_supp.Text:=Dm.Qtemp.FieldByName('supplier_code').AsString;
    Edno_kontrak.Clear;
    with dm.QTemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_coop_contract where kd_supplier='+QuotedStr(EdKd_supp.Text)+''+
                ' and status = ''1'' AND "Status_Approval"=''1'' order by no_kontrak Desc';

      ExecSQL;
    end;
    if dm.QTemp2['No_kontrak']<>'' then
    begin
      Edno_kontrak.Text:='0';
    end else
    Dm.QTemp2.First;
    while not dm.QTemp2.Eof do
    begin
    Edno_kontrak.Items.Add(Dm.Qtemp2.FieldByName('contract_no').AsString);
    Dm.QTemp2.Next;
    end;
end;

{procedure TFNew_PO.Autonumber;
var param:string;
    i,resettype,nourut,current_month,current_year:integer;
    query,query2,query3,query4:string;
    SelectedDate: TDateTime;
    year, month, day: word;
begin
     SelectedDate := DtPO.Date;
     DecodeDate(SelectedDate, Year, Month, day);

     with dm.Qtemp do
     begin
         close;
         sql.Clear;
         sql.add('SELECT reset_type as reset from t_numb where numb_type=''Purchase Order'' ');
         open;
     end;
     resettype:=dm.Qtemp.Fieldbyname('reset').Asinteger;

     query:='SELECT bulan,tahun,max(no_urut) as urut from pembelian.t_po '+
            'where tahun='+Quotedstr(inttostr(year))+' and bulan='+Quotedstr(inttostr(month))+' group by bulan,tahun';

     with dm.Qtemp1 do
     begin
          close;
          sql.Clear;
          sql.add(query);
          open;
     end;

     if (dm.Qtemp1.RecordCount=0) then
        nourut :=1
     else
        //if dm.Qtemp1.RecordCount<>0 then
        showmessage(inttostr(dm.Qtemp1.FieldByName('urut').AsInteger));
        nourut :=dm.Qtemp1.FieldByName('urut').AsInteger + 1;
        Edurut.Text:=inttostr(nourut);
        //showmessage('0');

     query2:='SELECT digit_counter from t_numb where numb_type=''Purchase Order''';
     with dm.Qtemp2 do
     begin
          close;
          sql.Clear;
          sql.add(query2);
          open;
     end;

     query3:='SELECT reset_type from t_numb where numb_type=''Purchase Order''';
     with dm.Qtemp3 do
     begin
          close;
          sql.Clear;
          sql.add(query3);
          open;
     end;

     with dm.Qtemp do
     begin
          close;
          sql.Clear;
          sql.text:='SELECT a.*,b.description,b.note,c.digit_counter,reset_type, '+
                    'case when b.id=1 then(SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtpo.Date))+' :: DATE, ''yyyy'') tahun) '+
                    'when b.id=2 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtpo.Date))+' :: DATE, ''yy'') tahun) '+
                    'when b.id=3 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtpo.Date))+' :: DATE, ''mm'') bulan) '+
                    'when b.id=4 then (SELECT trim(TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtpo.Date))+' :: DATE, ''RM'')) bulan) '+
                    'when b.id=5 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtpo.Date))+' :: DATE, ''dd'') hari)  '+
                    'when b.id=6 then '+Quotedstr(Fnew_Penomoran.GenerateCustomSerialNumber(nourut,(dm.Qtemp2['digit_counter'])))+' else a.param_name end param, '+
                    'c.trans_type,d.note as reset FROM t_numb_det a '+
                    'left join t_numb_component b on a.id_param=b.id '+
                    'inner join t_numb c on a.trans_no=c.trans_no    '+
                    'left join t_numb_type d on c.reset_type=d.id    '+
                    'where c.trans_type=''Purchase Order''     '+
                    'ORDER BY a.trans_no,a.urutan';
          Open;
     end;

     Fnew_Penomoran.notif:='';
     dm.qtemp.First;
     while not dm.qtemp.eof do
     begin
        Fnew_Penomoran.notif:=Fnew_Penomoran.notif+dm.qtemp.FieldByName('param').AsString;
        dm.qtemp.next;
     end;
     Nopo.text:=Fnew_Penomoran.notif;
end;}

procedure TFNew_PO.FormShow(Sender: TObject);
begin
   Datetimepicker1.Date:=Now;
   DtBln.Date:=now;
   DtTh.Date:=now;
   DtPO.Date:=Now;
   FPO.Load;
   if MemItempo.Active=False then  MemItempo.Active:=True;
   Self.Clear;
   //Autonumber;
end;

procedure TFNew_PO.Simpan;
var
  Query1,Query2:string;
  CurrentMonth, CurrentYear, MaxNomorUrut: Integer;
  year, month, day: Word;
  SelectedDate: TDateTime;
begin
    {MemItempo.First;
    while not MemItempo.Eof do
    begin
    with dm.Qtemp3 do
    begin
      close;
      sql.Clear;
      sql.Text:=' select sisaqty ,totalpo,kd_material_stok'+
                ' from t_kontrak_kerjasama_det '+
                ' where no_kontrak='+QuotedStr(Edno_kontrak.Text)+''+
                ' and kd_material_stok='+QuotedStr(MemItempo['kd_material_stok']);
      ExecSQL;
    end;
    if Dm.Qtemp3.RecordCount=0 then Dm.Qtemp3['sisaqty']:='0';
    if  MemItempo['qtykonversi'] > Dm.Qtemp3['sisaqty'] then
    begin
     MessageDlg('Quantum Item PO '+Dm.QTemp3['kd_material_stok']+' Melebihi Quantum Kontrak',mtWarning,[mbOK],0);
     Exit;
     end;
    MemItempo.Next;
    end;
    MemItempo.First;
    while not MemItempo.Eof do
    begin
    with dm.Qtemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='update t_kontrak_kerjasama_det set sisaqty=sisaqty -'+QuotedStr(MemItempo['qty'])+''+
                ' , totalpo=totalpo +'+QuotedStr(MemItempo['qty'])+' where no_kontrak='+QuotedStr(Edno_kontrak.Text)+''+
                ' and kd_material_stok='+QuotedStr(MemItempo['kd_material_stok']);
      ExecSQL;
    end;
    MemItempo.Next;
    end;}

     {
     query1:='SELECT max(no_urut) as urut from pembelian.t_po '+
             'where tahun='+Quotedstr(inttostr(year))+' and bulan='+Quotedstr(inttostr(month));

     with dm.Qtemp do
     begin
          close;
          sql.Clear;
          sql.add(query1);
          open;
     end;


     query2:=' SELECT bulan,tahun FROM pembelian.t_po ORDER BY id asc';

     with dm.Qtemp1 do
     begin
          close;
          sql.Clear;
          sql.add(query2);
          open;
     end;

     if dm.Qtemp.Fields[0].AsInteger= Null  then
        MaxNomorUrut := 0;

     IF (currentmonth <> strtoint(Edbln.text)) and (currentyear <> strtoint(Edth.text)) THEN
        MaxNomorUrut := 0
       else
        MaxNomorUrut:= MaxNomorUrut+1; }


    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:=' insert into purchase.t_po(po_no,contract_no,po_date,supplier_code,pph23,ppn,po_type,'+
                ' valas,valas_value,order_no, remarks,type,transportation_type,division_code,status,'+
                ' due_date,"Subtotal","Grandtotal","PPn_Rp","PPh_Rp",delivery_date,"approval_status",'+
                ' delivery2_date,warehouse,sbu_code,pic,po2_no,trans_day,trans_month,trans_year) '+
                ' values(:parnopo,:parno_kontrak,:partgl_po,:parkd_supplier,:parpph23,:parppn,'+
                ' :parjenispo,:parvalas,:parnilai_valas,:parorder_no,:parKeterangan,:parjenis,'+
                ' :parjenisangkutan,:parkd_divisi,:parstatus,:parjatuh_tempo,:parSubtotal,'+
                ' :parGrandtotal,:parPPn_Rp,:parPPh_Rp,:partgl_dlv,:ParStatus_approval,:partgl_dlv2,'+
                ' :pargudang,:parkd_sbu,:parpic,:parnopo2,:partgl,:parbulan,:partahun)';
                ParamByName('parnopo').Value:=Nopo.Text;//EdNopo.Text;
                ParamByName('parno_kontrak').Value:=Edno_kontrak.Text;
                ParamByName('partgl_po').Value:=FormatDateTime('yyy-mm-dd',DtPO.Date);
                ParamByName('parkd_supplier').Value:=EdKd_supp.Text;
                ParamByName('parpph23').Value:=EdPPh23.Text;
                ParamByName('parppn').Value:=EdPPn.Text;
                ParamByName('parjenispo').Value:=EdStatus.Text;
                ParamByName('parvalas').Value:=EdCurr.Text;
                ParamByName('parnilai_valas').Value:=Ednilai_curr.Text;
                ParamByName('parorder_no').Value:=Edurut.text;//EdNo.Text;
                ParamByName('parketerangan').Value:=EdKet.Text;
                ParamByName('parjenis').Value:=Edjenispo.Text;
                ParamByName('parjenisangkutan').Value:=EdJenisAngkut.Text;
                ParamByName('parkd_divisi').Value:='';//Kd_SBU;
                ParamByName('parstatus').Value:='1';
                ParamByName('parjatuh_tempo').value:=Edjatuh_tempo.Text;
                ParamByName('parsubtotal').Value:=0;//FloatToStr(subtotal);
                ParamByName('pargrandtotal').Value:=0;  //FloatToStr(grandtotal);
                ParamByName('parppn_rp').Value:=0; //FloatToStr(ppn);
                ParamByName('parpph_rp').Value:=0; //FloatToStr(pph);
                ParamByName('partgl_dlv').Value:=FormatDateTime('yyy-mm-dd',DtDelivery.Date);
                ParambyName('partgl_dlv2').Value:=FormatDateTime('yyy-mm-dd',DtDelivery2.Date);
                ParamByName('ParStatus_approval').Value:=0;
                ParamByName('pargudang').Value:=cb_gudang.Text;
                ParamByName('parkd_sbu').Value:=kdsbu;
                ParamByName('parpic').Value:=Nm;
                ParamByName('parnopo2').Value:=nopo.text;
                ParamByName('partgl').Value:=Edhari.Text;
                ParamByName('parbulan').Value:=Edbln.Text;
                ParamByName('partahun').Value:=Edth.Text;
      ExecSQL;
    end;
    {MemItempo.First;
    while not MemItempo.Eof do
    begin
    with dm.Qtemp2 do
    begin
      Close;
      sql.Clear;
      sql.Text:='insert into t_podetail(nopo,kd_materialstok,qty,harga,satuan,gudang,conv_currency,'+
                ' qtyterkirim,totalbayar,sisabayar,sisaqty,subtotal,ppn,ppn_rp,pph,pph_rp,'+
                ' grandtotal,qtysp,sisasp)values(:parnopo,:parkd_materialstok,:parqty,:parharga,:parsatuan,'+
                ' :pargudang,:parconv_currency,:parqtyterkirim,:partotalbayar,:parsisabayar,'+
                ' :parsisaqty,:parsubtotal,:parppn,:parppn_rp,:parpph,:parpph_rp,:pargrandtotal,'+
                ' :parqtysp,:parsisasp)';
                ParamByName('parnopo').Value:=EdNopo.Text;
                ParamByName('parkd_materialstok').Value:=MemItempo['kd_material_stok'];
                ParamByName('parqty').Value:=MemItempo['qty'];
                ParamByName('parharga').Value:=MemItempo['harga'];
                ParamByName('parsatuan').Value:=MemItempo['satuan'];
                ParamByName('pargudang').Value:=MemItempo['gudang'];
                ParamByName('parconv_currency').Value:='0';
                ParamByName('parqtyterkirim').Value:=MemItempo['qtyterkirim'];
                ParamByName('partotalbayar').Value:=MemItempo['totalbayar'];
                ParamByName('parsisabayar').Value:=MemItempo['sisabayar'];
                ParamByName('parsisaqty').Value:=MemItempo['sisaqty'];
                ParamByName('parsubtotal').Value:=MemItempo['subtotal'];
                ParamByName('parppn').Value:=MemItempo['ppn'];
                ParamByName('parppn_rp').Value:=MemItempo['ppn_rp'];
                ParamByName('parpph').Value:=MemItempo['pph'];
                ParamByName('parpph_rp').Value:=MemItempo['pph_rp'];
                ParamByName('pargrandtotal').Value:=MemItempo['grandtotal'];
                ParamByName('parqtysp').Value:='0';
                ParamByName('parsisasp').Value:=MemItempo['qty'];
      ExecSQL;
    end;
      MemItempo.Next;
    end;}

end;


procedure TFNew_PO.Simpan2;
begin

end;

procedure TFNew_PO.Update;
begin

end;

procedure TFNew_PO.Update2;
begin

end;

procedure TFNew_PO.BBatalClick(Sender: TObject);
begin
   //FPO.Show;
   //FPO.ActROExecute(sender);
   Close;
end;

procedure TFNew_PO.BSimpanClick(Sender: TObject);
begin
   { if EdStatus.Text='' then
    begin
      MessageDlg('Status PO Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      EdStatus.SetFocus;
      Exit;
    end;
    if EdNm_supp.Text='' then
    begin
      MessageDlg('Nama Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNm_supp.SetFocus;
      Exit;
    end;
    if EdCurr.Text='' then
    begin
      MessageDlg('Currency Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdCurr.SetFocus;
      Exit;
    end;
    if DtPO.Text='' then
    begin
      MessageDlg('Tanggal Po Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      DtPO.SetFocus;
      Exit;
    end;
    if EdJenisAngkut.Text='' then
    begin
      MessageDlg('Jenis Angkutan Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      EdJenisAngkut.SetFocus;
      Exit;
    end;
    if cb_gudang.Text='' then
    begin
      MessageDlg('Gudang Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      EdJenisAngkut.SetFocus;
      Exit;
    end;

    MemItempo.First;
    while not MemItempo.Eof do
    begin
    if DBGridDetail.Fields[0].AsString='' then
    begin
       MemItempo.Delete;
    end;
    if DBGridDetail.Fields[11].AsString='' then
    begin
      MessageDlg('Gudang Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DBGridDetail.SetFocus;
      Exit;
    end;
    MemItempo.Next;
    end; }



    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
    begin
       Autonumber;
       if EdStatus.Text='KONTRAK KERJASAMA' then
       begin
         Simpan;
       end
       else
         Simpan2;
         dm.koneksi.Commit;
         Messagedlg(' Data Berhasil di Simpan ',MtInformation,[Mbok],0);
       //BBatalClick(sender);
       end
       Except
       on E :Exception do
       begin
         MessageDlg(E.Message,mtError,[MBok],0);
         dm.koneksi.Rollback;
       end;
    end;
    Fpo.ActBaru.OnExecute(sender);
  end;

procedure TFNew_PO.Button1Click(Sender: TObject);
begin
  Autonumber;


end;

end.
