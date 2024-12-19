unit URincianPot_Penjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzBtnEdt, Vcl.ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, RzButton;

type
  TFRincianPot_Penjualan = class(TForm)
    Panel1: TPanel;
    Label39: TLabel;
    Label38: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    edNama_Pelanggan: TRzButtonEdit;
    edKode_Pelanggan: TEdit;
    edNomorTrans: TEdit;
    DBGridCustomer: TDBGridEh;
    dsMasterData: TDataSource;
    MemMasterData: TMemTableEh;
    MemMasterDatakd_brg: TStringField;
    MemMasterDatanm_brg: TStringField;
    MemMasterDatapot_value_1: TCurrencyField;
    MemMasterDatapot_value_2: TCurrencyField;
    MemMasterDatapot_value_3: TCurrencyField;
    MemMasterDatapot_value_4: TCurrencyField;
    MemMasterDatapot_persen_1: TFloatField;
    MemMasterDatapot_persen_2: TFloatField;
    MemMasterDatapot_persen_3: TFloatField;
    MemMasterDatapot_persen_4: TFloatField;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    MemMasterDataharga_satuan: TCurrencyField;
    MemMasterDatasatuan: TStringField;
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AmbilDataKlasifikasi;
  end;

var
  FRincianPot_Penjualan: TFRincianPot_Penjualan;

implementation

{$R *.dfm}

uses UDataModule;

procedure TFRincianPot_Penjualan.AmbilDataKlasifikasi;
var
    id_jenis,stat_outlet,group_item,batas_disc,id_kategori,
    jenis_disc,batastTotalValue,batasTotalQty,batasValuePerItem,batasQtyPerItem:integer;
    tot_bruto,dpp_sbn,ndisc_sbn,dpp_temp,diskon,hdisc:real;
    disc_stat,special_proses,next_proses:boolean;
    kd_cust,kd_item,satuan,kd_JenisOutlet, kd_Kategori:string;
    stat_fp,qty,type_jual,jenis_jual,stat_bayar,stat_promo,jumlah_item:integer;
    stat_klasifikasi,hjual,disc1,disc2,disc3,disc4,disc,
    bruto,ndisc,ndiscBruto1,ndiscBruto2,ndiscBruto3,ndiscBruto4,dpp,ppn,nppn,netto,total:real;
begin
  kd_cust:='';
  kd_item:='';
  satuan:='';
  stat_fp:=0;
  stat_bayar:=0;
  stat_promo:=0;
  jumlah_item:=0;
  kd_JenisOutlet:='';
  kd_Kategori:='';
  with Dm.Qtemp do //cek Data di grouping
  begin
    close;
    sql.clear;
    sql.add(' Select * from t_sales_classification_group a '+
            ' left JOIN t_sales_classification b on a.id_master=b.id::VARCHAR '+
            ' left JOIN t_sales_classification_det c on a.id_master_det=c.id::VARCHAR '+
            ' where code_cust='+QuotedSTR(kd_cust)+' and '+
            ' a.code_item='+QuotedSTR(kd_item)+' and '+
            ' code_customer_selling_type= '+IntToStr(type_jual)+' and '+
            ' code_sell_type= '+IntToStr(jenis_jual)+' and '+
            ' c.code_unit='+QuotedSTR(satuan)+' ');
    open;
  end;

  if Dm.Qtemp.RecordCount<>0 then  //Pakai Harga Klasifikasi Grouping
  begin
  //with FMainMenu.qexec do
  with Dm.Qtemp3 do
  begin
    close;
    sql.clear;
    sql.add(' Select a.ID as IDKLASIFIKASI, b.ID as IDDETKLASIFIKASI, b.code_item AS KODEBARANG,  '+
            ' c.code_cust AS KOCUS, d.item_name AS NAMABARANG, b.unit_price as HARGAJUAL,  '+
            ' d.unit as SATUAN, disc, disc1, disc2, disc3, disc4,status_disc as stat_potongan, '+
            ' status_disc,1 as stat_klasifikasi '+
            ' from t_sales_classification a '+
            ' LEFT JOIN t_sales_classification_det b on a.id::VARCHAR=b.id_master '+
            ' LEFT JOIN t_sales_classification_group c on b.id::VARCHAR=c.id_master_det '+
            ' LEFT JOIN t_item d on b.code_item=d.item_code  '+
            ' where code_cust='+QuotedSTR(kd_cust)+' and '+
            ' code_customer_selling_type= '+IntToStr(type_jual)+' and '+
            ' code_sell_type= '+IntToStr(jenis_jual)+' and '+
            ' b.code_item='+QuotedSTR(kd_item)+' and a.status_grouping=1 and '+
            ' b.code_unit='+QuotedSTR(satuan)+'  ');
    open;
  end;

  stat_klasifikasi:=Dm.Qtemp3.fieldbyname('stat_klasifikasi').Value;
  hjual:=Dm.Qtemp3.fieldbyname('HARGAJUAL').Value;
  {disc:=fmainmenu.qexec.fieldbyname('disc').asfloat+fmainmenu.qexec.fieldbyname('disc1').asfloat+fmainmenu.qexec.fieldbyname('disc2').asfloat+
        fmainmenu.qexec.fieldbyname('disc3').asfloat+fmainmenu.qexec.fieldbyname('disc4').asfloat; }
  diskon:=Dm.Qtemp3.fieldbyname('disc').asfloat;
  disc1:=Dm.Qtemp3.fieldbyname('disc1').asfloat;
  disc2:=Dm.Qtemp3.fieldbyname('disc2').asfloat;
  disc3:=Dm.Qtemp3.fieldbyname('disc3').asfloat;
  disc4:=Dm.Qtemp3.fieldbyname('disc4').asfloat;
  //showmessage('X');

  end
  else
  if Dm.Qtemp.RecordCount=0 then //Klasifikasi Umum Cek Type Perhitungan
  begin
  with Dm.Qtemp2 do
  begin
    close;
    sql.clear;//belum
    sql.add(' SELECT perhitungan, e.hjual as hargamaster  FROM `tdata_klasifikasi` a '+
            ' LEFT JOIN t_jenis_outlet b on b.id=a.idjenis '+
            ' LEFT JOIN t_kategori c on c.id=a.idkategori '+
            ' LEFT JOIN tdata_detklasifikasi d on d.idklasifikasi=a.id '+
            ' LEFT JOIN tdata_masterharga e on e.idjenis=a.idjenis and d.kdbrg=e.kdbrg  Where '+
            ' a.idjenis = '+QuotedSTR(kd_JenisOutlet)+' and '+
            ' a.idkategori = '+QuotedSTR(kd_Kategori)+' and '+
            ' stat_bayar = '+IntToStr(stat_bayar)+' and '+
            ' stat_ppn = '+IntToStr(stat_fp)+' and '+
            ' stat_promo ='+IntToStr(stat_promo)+' and '+
            ' stat_grouping= 0 and '+
            ' type_jual= '+IntToStr(type_jual)+' and '+
            ' jenis_jual= '+IntToStr(jenis_jual)+' and '+
            ' d.kdbrg='+QuotedSTR(kd_item)+' and '+
            ' d.satuan='+QuotedSTR(satuan)+' LIMIT 1');
    open;
  end;

  {if fmainmenu.qexec2.fieldbyname('hargamaster').asfloat=null then
  begin
    Messagedlg('Data Klasifikasi Untuk '+QuotedSTR(query2.fieldbyname('kd_brg').asstring)+' Belum Ada Harga Master, Silakan Hubungi IT...',MtInformation,[Mbok],0);
    exit;
  end;}

  with Dm.Qtemp3 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT d.hjual as HARGAJUAL, disc, perhitungan, e.hjual as hargamaster, disc, disc1, disc2, disc3, disc4,stat_potongan,stat_klasifikasi FROM `tdata_klasifikasi` a '+
            ' LEFT JOIN t_jenis_outlet b on b.id=a.idjenis '+
            ' LEFT JOIN t_kategori c on c.id=a.idkategori '+
            ' LEFT JOIN tdata_detklasifikasi d on d.idklasifikasi=a.id  '+
            ' LEFT JOIN tdata_masterharga e on e.idjenis=a.idjenis and d.kdbrg=e.kdbrg  Where '+
            ' a.idjenis = '+QuotedSTR(kd_JenisOutlet)+' and '+
            ' a.idkategori = '+QuotedSTR(kd_Kategori)+' and '+
            ' stat_bayar = '+IntToStr(stat_bayar)+' and '+
            ' stat_ppn = '+IntToStr(stat_fp)+' and '+
            ' stat_promo ='+IntToStr(stat_promo)+' and '+
            ' stat_grouping= 0 and '+
            ' type_jual= '+IntToStr(type_jual)+' and '+
            ' jenis_jual= '+IntToStr(jenis_jual)+' and '+
            ' d.kdbrg='+QuotedSTR(kd_item)+' and '+
            ' d.satuan='+QuotedSTR(satuan)+'');

    if Dm.Qtemp2.FieldByName('perhitungan').value= 0 then  //TOTAL VALUE
    begin
    batastTotalValue:=Dm.Qtemp.fieldbyname('total_value').value;
    sql.add(' and d.batas1 <= '+QuotedSTR(IntToStr(batastTotalValue))+' and '+
            ' d.batas2 >= '+QuotedSTR(IntToStr(batastTotalValue))+'  LIMIT 1 ');
    end;

    if Dm.Qtemp2.FieldByName('perhitungan').value= 1 then  //TOTAL QTY
    begin
    batasTotalQty:=Dm.Qtemp.fieldbyname('total_qty').value;
    sql.add(' and d.batas1 <= '+QuotedSTR(IntToStr(batasTotalQty))+' and '+
            ' d.batas2 >= '+QuotedSTR(IntToStr(batasTotalQty))+'  LIMIT 1 ');
    end;

    if Dm.Qtemp2.FieldByName('perhitungan').value= 2 then  //VALUE PER ITEM
    begin
    batasValuePerItem:=Dm.Qtemp1.fieldbyname('value_per_item').value;
    sql.add(' and d.batas1 <= '+QuotedSTR(IntToStr(batasValuePerItem))+' and '+
            ' d.batas2 >= '+QuotedSTR(IntToStr(batasValuePerItem))+'  LIMIT 1 ');
    end;

    if Dm.Qtemp2.FieldByName('perhitungan').value= 3 then  //QTY PER ITEM
    begin
    batasQtyPerItem:=jumlah_item;
    sql.add(' and d.batas1 <= '+QuotedSTR(IntToStr(batasQtyPerItem))+' and '+
            ' d.batas2 >= '+QuotedSTR(IntToStr(batasQtyPerItem))+'  LIMIT 1 ');
    end;
    open;
  end;

  {if FMainMenu.qexec3.fieldbyname('HARGAJUAL').asfloat<>0 then
     hargajual:=FMainMenu.qexec3.fieldbyname('HARGAJUAL').asfloat
   else
     hargajual:= fmainmenu.qexec.fieldbyname('hjual').value;}

     {disc:=fmainmenu.qexec3.fieldbyname('disc').asfloat+fmainmenu.qexec3.fieldbyname('disc1').asfloat+fmainmenu.qexec3.fieldbyname('disc2').asfloat+
           fmainmenu.qexec3.fieldbyname('disc3').asfloat+fmainmenu.qexec3.fieldbyname('disc4').asfloat;}
     diskon:=Dm.Qtemp3.fieldbyname('disc').asfloat;
     disc1:=Dm.Qtemp3.fieldbyname('disc1').asfloat;
     disc2:=Dm.Qtemp3.fieldbyname('disc2').asfloat;
     disc3:=Dm.Qtemp3.fieldbyname('disc3').asfloat;
     disc4:=Dm.Qtemp3.fieldbyname('disc4').asfloat;
     hjual:=Dm.Qtemp3.fieldbyname('HARGAJUAL').asfloat;
     disc:=Dm.Qtemp3.fieldbyname('disc2').asfloat;
     stat_klasifikasi:=Dm.Qtemp3.fieldbyname('stat_klasifikasi').asfloat;
  end;


     stat_fp:=stat_fp;
     qty:=jumlah_item;
     //bruto:=hjual*qty;
     //dpp:=fmainmenu.qexec3.fieldbyname('disc1').asfloat;


     {if stat_klasifikasi=1 then
     begin
     ndisc:=qty*hjual-(qty*hjual*(disc1/100));
     ndisc:=ndisc+(qty*hjual-(qty*hjual*(disc2/100)));
     ndisc:=ndisc+(qty*hjual-(qty*hjual*(disc3/100)));
     ndisc:=ndisc+(qty*hjual-(qty*hjual*(disc4/100)));
     end; }

     if stat_fp=1 then
     begin
     bruto:=hjual*qty;
     //ndisc:=diskon*qty;
      if stat_klasifikasi=0 then //BACA KLASIFIKASI
      begin
        ndisc:=diskon*qty;
      end;
      //showmessage('stat_klasifikasi '+floattostr(stat_klasifikasi));
        if stat_klasifikasi=1 then //BACA KLASIFIKASI
        begin
        ndiscBruto1:=0;
        ndiscBruto2:=0;
        ndiscBruto3:=0;
        ndiscBruto4:=0;
        //showmessage('bruto '+floattostr(bruto)+', Disc1 '+floattostr(disc1)+', disc2 '+floattostr(disc2)+', disc3 '+floattostr(disc3)+', disc4 '+floattostr(disc4));
        //showmessage('Disc1 '+floattostr(ndisc)+'= ndiscBruto1 '+floattostr(ndiscBruto1)+'+ ndiscBruto2 '+floattostr(ndiscBruto2)+'+ ndiscBruto3 '+floattostr(ndiscBruto3)+'+ ndiscBruto4 '+floattostr(ndiscBruto4));
        //ShowMessage(fmainmenu.qexec3);
        if Dm.Qtemp3.fieldbyname('stat_potongan').value=0 then   //Jika Potongan Disc
        begin
        if (disc1<>0) then
        begin
        //showmessage('brutoDIS1 '+floattostr(bruto)+'= disc1 '+floattostr(disc1));

           ndiscBruto1:=round(bruto*(disc1/100));
           disc1:= ndiscBruto1;
        end;
        if disc2<>0 then
        begin
           ndiscBruto2:=round(((bruto-ndiscBruto1)*(disc2/100)));
           disc2:= ndiscBruto2;

          //showmessage('brutoDIS2 '+floattostr(bruto-ndiscBruto1)+'= disc2 '+floattostr(disc2));
          //showmessage('brutoDIS2 '+floattostr(ndiscBruto2));
        end;
        if disc3<>0 then
        begin
           ndiscBruto3:=round(((bruto-ndiscBruto1-ndiscBruto2)*(disc3/100)));
           disc3:= ndiscBruto3;
        end;
        if disc4<>0 then
        begin
           ndiscBruto4:=bruto-ndiscBruto1-ndiscBruto2-ndiscBruto3*(disc4/100);
           disc4:= ndiscBruto4;
        end;
        end
          else
        if Dm.Qtemp3.fieldbyname('stat_potongan').value=1 then     //Jika Potongan Rupiah
        begin
        if (disc1<>0) then
        begin
        //showmessage('bruto '+floattostr(bruto)+'= disc1 '+floattostr(disc1));

           ndiscBruto1:=qty*disc1;
           disc1:=ndiscBruto1;
        end;
        if disc2<>0 then
        begin
           ndiscBruto2:=qty*disc2;
           disc2:=ndiscBruto2;
        end;
        if disc3<>0 then
        begin
           ndiscBruto3:=qty*disc3;
           disc3:=ndiscBruto3;
        end;
        if disc4<>0 then
        begin
           ndiscBruto4:=qty*disc4;
           disc4:=ndiscBruto4;
        end;
        end;
        ndisc:=ndiscBruto1+ndiscBruto2+ndiscBruto3+ndiscBruto4;
        //showmessage('Disc 1 '+floattostr(ndisc)+'= ndiscBruto1 '+floattostr(ndiscBruto1)+'+ ndiscBruto2 '+floattostr(ndiscBruto2)+'+ ndiscBruto3 '+floattostr(ndiscBruto3)+'+ ndiscBruto4 '+floattostr(ndiscBruto4));
        end;

      dpp:=round(((hjual-(ndisc/qty))/1.11)*qty);
      //ppn:=FMainMenu.vPPN;
      nppn:=ROUND(dpp*(ppn/100));
      //nppn:=StrToFloat(parsing_koma(FloatToStr(nppn)));
      //nppn:=ROUND(nppn);
     end
     else
     begin
     bruto:=hjual*qty;
     //ndisc:=diskon*qty;
     if stat_klasifikasi=0 then
     begin
        ndisc:=diskon*qty;
     end;
     dpp:=round(((hjual-(diskon/qty)))*qty);

     ppn:=0;
     nppn:=0;
  end;
  //ndisc:=strtofloat(parsing_koma(floattostr(ndisc)));
  ndisc:=round(ndisc);
  netto:=dpp+nppn;
  total:=dpp+nppn;


end;

procedure TFRincianPot_Penjualan.BBatalClick(Sender: TObject);
begin
  MemMasterData.EmptyTable;
  Close;
end;

end.
