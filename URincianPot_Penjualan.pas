unit URincianPot_Penjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzBtnEdt, Vcl.ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, RzButton, MemDS, DBAccess, Uni;

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
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    query2: TUniQuery;
    MemMasterDatakd_brg: TStringField;
    MemMasterDatanm_brg: TStringField;
    MemMasterDataharga_satuan: TCurrencyField;
    MemMasterDatasatuan: TStringField;
    MemMasterDatapot_value_1: TCurrencyField;
    MemMasterDatapot_value_2: TCurrencyField;
    MemMasterDatapot_value_3: TCurrencyField;
    MemMasterDatapot_value_4: TCurrencyField;
    MemMasterDatapot_persen_1: TFloatField;
    MemMasterDatapot_persen_2: TFloatField;
    MemMasterDatapot_persen_3: TFloatField;
    MemMasterDatapot_persen_4: TFloatField;
    MemMasterDatanilai_ppn: TFloatField;
    MemMasterDatajumlah: TFloatField;
    MemMasterDatatotal: TFloatField;
    MemMasterDatadpp: TCurrencyField;
    MemMasterDatanilai_ppn_cortex: TFloatField;
    LabelInformasi: TLabel;
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    id_jenis,stat_outlet,group_item,batas_disc,id_kategori,
    jenis_disc,batastTotalValue,batasTotalQty,batasValuePerItem,batasQtyPerItem:integer;
    tot_bruto,dpp_sbn,ndisc_sbn,dpp_temp,diskon,hdisc:real;
    disc_stat,special_proses,next_proses:boolean;
    kd_cust,kd_item,satuan,kd_JenisOutlet, kd_Kategori, get_uuid, type_jual,jenis_jual,strStatusIncludePPN :string;
    stat_fp,qty,stat_bayar,stat_promo,jumlah_item:integer;
    stat_klasifikasi,hsatuan,hjual,disc1,disc2,disc3,disc4,disc,
    bruto,ndisc,ndiscBruto1,ndiscBruto2,ndiscBruto3,ndiscBruto4,dpp,ppn,nppn,netto,total,hsatuan_cortex,dpp_cortex,nppn_cortex,netto_cortex:real;
    { Public declarations }
    procedure HitungKlasifikasi;
    procedure AmbilDataKlasifikasi;
  end;

var
  FRincianPot_Penjualan: TFRincianPot_Penjualan;

implementation

{$R *.dfm}

uses UDataModule, UMy_Function, UNew_Penjualan, UNew_DataPenjualan, System.Math;

procedure TFRincianPot_Penjualan.HitungKlasifikasi;
begin
  //Query baca tempdetail jual
  if FNew_Penjualan.edNomorTrans.Text<>'' then
  begin
    with query2 do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT a."trans_no", a."id_master", a."code_item" as kd_brg, a."name_item", '+
                ' "group_name", d."group_id",a."amount", a."code_unit", a."name_unit", a."unit_price", a."sub_total", '+
                ' b.code_selling_type as type_cust,b.code_type as jns_cust, d.code as group_item  '+
                ' FROM "public"."t_selling_temp" a '+
                ' LEFT JOIN (SELECT customer_code, code_type, code_selling_type from t_customer where deleted_at is null) b '+
                ' on a.cust_code=b.customer_code  '+
                ' LEFT JOIN t_item c on a.code_item=c.item_code '+
                ' LEFT JOIN t_item_group d on c.group_id=d.group_id  '+
                ' LEFT JOIN t_sales_classification_price_master e on e.code_type_customer=b.code_type '+
                ' and c.item_code=e.code_item '+
                ' where '+
  //                  "trans_no"='+QuotedStr(edNomorTrans.Text)+'  '+
                ' "trans_no"='+QuotedStr(FNew_Penjualan.edNomorTrans.Text)+' '+
                ' -- Baca Detail Penjualan ';
      Open;
    end;
  end else begin
    with query2 do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT a."trans_no", a."id_master", a."code_item" as kd_brg, a."name_item", '+
                ' "group_name", d."group_id",a."amount", a."code_unit", a."name_unit", a."unit_price", a."sub_total", '+
                ' b.code_selling_type as type_cust,b.code_type as jns_cust, d.code as group_item  '+
                ' FROM "public"."t_selling_temp" a '+
                ' LEFT JOIN (SELECT customer_code, code_type, code_selling_type from t_customer where deleted_at is null) b '+
                ' on a.cust_code=b.customer_code  '+
                ' LEFT JOIN t_item c on a.code_item=c.item_code '+
                ' LEFT JOIN t_item_group d on c.group_id=d.group_id  '+
                ' LEFT JOIN t_sales_classification_price_master e on e.code_type_customer=b.code_type '+
                ' and c.item_code=e.code_item '+
                ' where '+
  //                  "trans_no"='+QuotedStr(edNomorTrans.Text)+'  '+
                 ' "id_master"='+QuotedStr(get_uuid)+' '+
                ' -- Baca Detail Penjualan ';
      Open;
    end;
  end;

  if query2.RecordCount=0 then  //looping detail order
  begin
    ShowMessage('Tidak Ditemukan Data, Silakan Proses Hitung Potongan...');
    MemMasterData.EmptyTable;
    Exit;
  end;

  if query2.RecordCount<>0 then  //looping detail order
  begin
    kd_cust:=edKode_Pelanggan.Text;
    kd_JenisOutlet:=query2.fieldbyname('jns_cust').Value;
    type_jual:=query2.fieldbyname('type_cust').Value;
    stat_fp:=1;
    stat_bayar:=1;
    stat_promo:=0;
    jumlah_item:=0;
    MemMasterData.active:=false;
    MemMasterData.active:=true;
    MemMasterData.EmptyTable;
    query2.first;
    while not query2.Eof do
    begin
      if query2.fieldbyname('amount').Value<>0 then
      begin
        kd_item:=query2.fieldbyname('kd_brg').Value;
        satuan:=query2.fieldbyname('code_unit').Value;
        kd_Kategori:=query2.fieldbyname('group_id').Value;
        jumlah_item:=query2.fieldbyname('amount').Value;

        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.add(' select d.group_id from t_selling_temp a '+
                  ' LEFT JOIN (SELECT customer_code, code_type from t_customer where deleted_at is null) b '+
                  ' on a.cust_code=b.customer_code '+
                  ' LEFT JOIN t_item c on a.code_item=c.item_code '+
                  ' LEFT JOIN t_item_group d on c.group_id=d.group_id  '+
                  ' LEFT JOIN t_sales_classification_price_master e on e.code_type_customer=b.code_type '+
                  ' and c.item_code=e.code_item '+
                  ' ');
          sql.add(' where d.group_id='+QuotedStr(query2.fieldbyname('group_id').value)+' '+
                  ' GROUP BY d.group_id '+
                  ' -- Baca group kategori ');
          open;
          first;
        end;

        if FNew_Penjualan.edNomorTrans.Text<>'' then
        begin
          with dm.Qtemp do
          begin
            close;
            sql.clear;
            sql.add(' select group_name,  '+
                    ' sum(e."unit_price"*a.amount) as total_value, sum(a.amount) as total_qty '+
                    ' from t_selling_temp a '+
                    ' LEFT JOIN (SELECT customer_code, code_type from t_customer where deleted_at is null) b '+
                    ' on a.cust_code=b.customer_code '+
                    ' LEFT JOIN t_item c on a.code_item=c.item_code '+
                    ' LEFT JOIN t_item_group d on c.group_id=d.group_id  '+
                    ' LEFT JOIN t_sales_classification_price_master e on e.code_type_customer=b.code_type '+
                    ' and c.item_code=e.code_item '+
                    ' ');
            sql.add(' where group_name='+QuotedStr(query2.fieldbyname('group_name').value)+' AND '+
                    'a.trans_no='+QuotedStr(FNew_Penjualan.edNomorTrans.Text)+' '+
                    ' GROUP BY group_name ');
            open;
            first;
          end;

          with dm.Qtemp1 do
          begin
            close;
            sql.clear;
            sql.add(' select a.code_item, sum(e."unit_price"*a.amount) as value_per_item '+
                    ' from t_selling_temp a '+
                    ' LEFT JOIN (SELECT customer_code, code_type from t_customer where deleted_at is null) b '+
                    ' on a.cust_code=b.customer_code '+
                    ' LEFT JOIN t_item c on a.code_item=c.item_code '+
                    ' LEFT JOIN t_item_group d on c.group_id=d.group_id  '+
                    ' LEFT JOIN t_sales_classification_price_master e on e.code_type_customer=b.code_type '+
                    ' and c.item_code=e.code_item '+
                    'WHERE a.trans_no='+QuotedStr(FNew_Penjualan.edNomorTrans.Text)+' '+
                    ' GROUP BY a.code_item, e."unit_price", a.amount '+
                    ' -- Baca qty dalam group barang');
            open;
            first;
          end;
        end else begin
          with dm.Qtemp do
          begin
            close;
            sql.clear;
            sql.add(' select group_name,  '+
                    ' sum(e."unit_price"*a.amount) as total_value, sum(a.amount) as total_qty '+
                    ' from t_selling_temp a '+
                    ' LEFT JOIN (SELECT customer_code, code_type from t_customer where deleted_at is null) b '+
                    ' on a.cust_code=b.customer_code '+
                    ' LEFT JOIN t_item c on a.code_item=c.item_code '+
                    ' LEFT JOIN t_item_group d on c.group_id=d.group_id  '+
                    ' LEFT JOIN t_sales_classification_price_master e on e.code_type_customer=b.code_type '+
                    ' and c.item_code=e.code_item '+
                    ' ');
            sql.add(' where group_name='+QuotedStr(query2.fieldbyname('group_name').value)+' AND '+
                    'a.id_master='+QuotedStr(get_uuid)+' '+
                    ' GROUP BY group_name ');
            open;
            first;
          end;

          with dm.Qtemp1 do
          begin
            close;
            sql.clear;
            sql.add(' select a.code_item, sum(e."unit_price"*a.amount) as value_per_item '+
                    ' from t_selling_temp a '+
                    ' LEFT JOIN (SELECT customer_code, code_type from t_customer where deleted_at is null) b '+
                    ' on a.cust_code=b.customer_code '+
                    ' LEFT JOIN t_item c on a.code_item=c.item_code '+
                    ' LEFT JOIN t_item_group d on c.group_id=d.group_id  '+
                    ' LEFT JOIN t_sales_classification_price_master e on e.code_type_customer=b.code_type '+
                    ' and c.item_code=e.code_item '+
                    ' WHERE a.id_master='+QuotedStr(get_uuid)+' '+
                    ' GROUP BY a.code_item, e."unit_price", a.amount '+
                    ' -- Baca qty dalam group barang');
            open;
            first;
          end;
        end;

        AmbilDataKlasifikasi; //Cek Data Klasifikasi Umum/Grouping
        //Masukin kegrid
        //showmessage('Klasifikasi');
        if dm.Qtemp.RecordCount=0 then
        begin
          if dm.Qtemp3.RecordCount=0 then
          begin
            Messagedlg('Data Klasifikasi Untuk '+QuotedSTR(query2.fieldbyname('name_item').asstring)+' Tidak Ditemukan, Silakan Hubungi IT...',MtInformation,[Mbok],0);
            exit;
          end;
        end;
        //insert ke memtable
        with FRincianPot_Penjualan do
        begin
          MemMasterData.insert;
          MemMasterData['kd_brg']:=kd_item;
          MemMasterData['nm_brg']:=query2.fieldbyname('name_item').asstring;
          MemMasterData['jumlah']:=qty;
          MemMasterData['harga_satuan']:=bruto;
          MemMasterData['nilai_ppn']:=nppn_cortex;
          MemMasterData['nilai_ppn_cortex']:=nppn;
          MemMasterData['satuan']:=satuan;
          MemMasterData['pot_value_1']:=disc1;
          MemMasterData['pot_value_2']:=disc2;
          MemMasterData['pot_value_3']:=disc3;
          MemMasterData['pot_value_4']:=disc4;
          MemMasterData['pot_persen_1']:=0;
          MemMasterData['pot_persen_2']:=0;
          MemMasterData['pot_persen_3']:=0;
          MemMasterData['pot_persen_4']:=0;
          MemMasterData['dpp']:=dpp_cortex;
          MemMasterData['total']:=netto_cortex;
//          MemMasterData['total']:=dpp+nppn-disc1-disc2-disc3-disc4;
          MemMasterData.post;
        end;
      end;
      query2.Next;
    end;
  end;
end;

procedure TFRincianPot_Penjualan.AmbilDataKlasifikasi;
var strWhereGroupIncludePPN,strWhereNonGroupIncludePPN : String;
begin
  strStatusIncludePPN:=Selectrow('select value_parameter from t_parameter where key_parameter=''klasifikasi_include_ppn'' ');

  strWhereGroupIncludePPN:=' AND b.status_tax='+strStatusIncludePPN+' ';

  with Dm.Qtemp3 do //Cek Data Klasifikasi Grouping / Per Pelanggan
  begin
    close;
    sql.clear;
    sql.add(' Select * from t_sales_classification_group a '+
            ' left JOIN t_sales_classification b on a.id_master=b.id::VARCHAR '+
            ' left JOIN t_sales_classification_det c on a.id_master_det=c.id::VARCHAR '+
            ' where a.code_cust='+QuotedSTR(kd_cust)+' and '+
            ' a.code_item='+QuotedSTR(kd_item)+' and '+
            ' code_customer_selling_type= '+QuotedSTR(type_jual)+' and '+
            ' code_sell_type= '+QuotedSTR(jenis_jual)+' and '+
            ' c.code_unit='+QuotedSTR(satuan)+' and b.status_approval=1 '+strWhereGroupIncludePPN+'');
    open;
  end;

  if Dm.Qtemp3.RecordCount<>0 then  //Pakai Harga Klasifikasi Grouping / Per Pelanggan
  begin

    with Dm.Qtemp2 do
    begin
      close;
      sql.clear;
      sql.add(' SELECT code_type_count as perhitungan, e."unit_price" as hargamaster '+
              ' FROM t_sales_classification a '+
              ' LEFT JOIN t_customer_type b on b.code=a.code_type_customer '+
              ' LEFT JOIN t_item_group c on c.code=a.code_item_category '+
              ' LEFT JOIN t_sales_classification_det d on d.id_master::VARCHAR=a.id::VARCHAR '+
              ' LEFT JOIN t_sales_classification_price_master e on '+
              ' e.code_type_customer=a.code_type_customer and d.code_item=e.code_item  '+
              ' where a.code_type_customer = '+QuotedSTR(kd_JenisOutlet)+' and '+
              ' a.code_item_category = '+QuotedSTR(kd_Kategori)+' and '+
              ' status_payment = '+IntToStr(stat_bayar)+' and '+
              ' status_promo ='+IntToStr(stat_promo)+' and '+
              ' status_grouping= 0 and '+
              ' code_customer_selling_type='+QuotedSTR(type_jual)+'  and '+
              ' code_sell_type='+QuotedSTR(jenis_jual)+' and '+
              ' d.code_item='+QuotedSTR(kd_item)+' and '+
              ' d.code_unit='+QuotedSTR(satuan)+' and a.status_approval=1 '+strWhereNonGroupIncludePPN+' LIMIT 1');
      open;
    end;

    strWhereGroupIncludePPN:=' AND a.status_tax='+strStatusIncludePPN+' ';
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
              ' code_customer_selling_type= '+QuotedSTR(type_jual)+' and '+
              ' code_sell_type= '+QuotedSTR(jenis_jual)+' and '+
              ' b.code_item='+QuotedSTR(kd_item)+' and a.status_grouping=1 and '+
              ' b.code_unit='+QuotedSTR(satuan)+' and a.status_approval=1'+strWhereGroupIncludePPN+' ');
      if Dm.Qtemp2.FieldByName('perhitungan').value= 'T001' then  //TOTAL VALUE
      begin

        batastTotalValue:=Dm.Qtemp.fieldbyname('total_value').value;
//        ShowMessage(IntToStr(batastTotalValue));
        sql.add(' and b.limit1 <= '+QuotedSTR(IntToStr(batastTotalValue))+' and '+
                ' b.limit2 >= '+QuotedSTR(IntToStr(batastTotalValue))+'  LIMIT 1 ');
      end;

      if Dm.Qtemp2.FieldByName('perhitungan').value= 'T002' then  //TOTAL QTY
      begin

        batasTotalQty:=Dm.Qtemp.fieldbyname('total_qty').value;
        sql.add(' and b.limit1 <= '+QuotedSTR(IntToStr(batasTotalQty))+' and '+
                ' b.limit2 >= '+QuotedSTR(IntToStr(batasTotalQty))+'  LIMIT 1 ');
      end;

      if Dm.Qtemp2.FieldByName('perhitungan').value= 'T003' then  //VALUE PER ITEM
      begin
        batasValuePerItem:=Dm.Qtemp1.fieldbyname('value_per_item').value;
        sql.add(' and b.limit1 <= '+QuotedSTR(IntToStr(batasValuePerItem))+' and '+
                ' b.limit2 >= '+QuotedSTR(IntToStr(batasValuePerItem))+'  LIMIT 1 ');
      end;

      if Dm.Qtemp2.FieldByName('perhitungan').value= 'T004' then  //QTY PER ITEM
      begin
        batasQtyPerItem:=jumlah_item;
        sql.add(' and b.limit1 <= '+QuotedSTR(IntToStr(batasQtyPerItem))+' and '+
                ' b.limit2 >= '+QuotedSTR(IntToStr(batasQtyPerItem))+'  LIMIT 1 ');
      end;

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
  else if Dm.Qtemp3.RecordCount=0 then //Klasifikasi Umum/Non Grouping Cek Type Perhitungan
  begin
    LabelInformasi.Caption:= 'Harga yang dipakai adalah Klasifikasi Non Grouping';
    strWhereNonGroupIncludePPN:=' AND a.status_tax='+strStatusIncludePPN+' ';
    with Dm.Qtemp2 do
    begin
      close;
      sql.clear;
      sql.add(' SELECT code_type_count as perhitungan, e."unit_price" as hargamaster '+
              ' FROM t_sales_classification a '+
              ' LEFT JOIN t_customer_type b on b.code=a.code_type_customer '+
              ' LEFT JOIN t_item_group c on c.code=a.code_item_category '+
              ' LEFT JOIN t_sales_classification_det d on d.id_master::VARCHAR=a.id::VARCHAR '+
              ' LEFT JOIN t_sales_classification_price_master e on '+
              ' e.code_type_customer=a.code_type_customer and d.code_item=e.code_item  '+
              ' where a.code_type_customer = '+QuotedSTR(kd_JenisOutlet)+' and '+
              ' a.code_item_category = '+QuotedSTR(kd_Kategori)+' and '+
              ' status_payment = '+IntToStr(stat_bayar)+' and '+
              ' status_promo ='+IntToStr(stat_promo)+' and '+
              ' status_grouping= 0 and '+
              ' code_customer_selling_type='+QuotedSTR(type_jual)+'  and '+
              ' code_sell_type='+QuotedSTR(jenis_jual)+' and '+
              ' d.code_item='+QuotedSTR(kd_item)+' and '+
              ' d.code_unit='+QuotedSTR(satuan)+' and a.status_approval=1 '+strWhereNonGroupIncludePPN+' LIMIT 1');
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
      sql.add(' SELECT d.unit_price as HARGAJUAL, disc, code_type_count as perhitungan, '+
              ' e.unit_price as hargamaster, disc, disc1, disc2, disc3, disc4,status_disc as '+
              ' stat_potongan,1 as stat_klasifikasi '+
              ' FROM t_sales_classification a '+
              ' LEFT JOIN t_customer_type b on b.code=a.code_type_customer '+
              ' LEFT JOIN t_item_group c on c.code=a.code_item_category '+
              ' LEFT JOIN t_sales_classification_det d on d.id_master::VARCHAR=a.id::VARCHAR  '+
              ' LEFT JOIN t_sales_classification_price_master e on '+
              ' e.code_type_customer=a.code_type_customer and d.code_item=e.code_item '+
              ' where a.code_type_customer = '+QuotedSTR(kd_JenisOutlet)+' and '+
              ' a.code_item_category = '+QuotedSTR(kd_Kategori)+' and '+
              ' status_payment = '+IntToStr(stat_bayar)+' and '+
              ' status_promo ='+IntToStr(stat_promo)+' and '+
              ' status_grouping= 0 and '+
              ' code_customer_selling_type= '+QuotedSTR(type_jual)+' and '+
              ' code_sell_type= '+QuotedSTR(jenis_jual)+' and '+
              ' d.code_item='+QuotedSTR(kd_item)+' and '+
              ' d.code_unit='+QuotedSTR(satuan)+' and a.status_approval=1'+strWhereNonGroupIncludePPN+'  ');

      if Dm.Qtemp2.FieldByName('perhitungan').value= 'T001' then  //TOTAL VALUE
      begin

        batastTotalValue:=Dm.Qtemp.fieldbyname('total_value').value;
//        ShowMessage(IntToStr(batastTotalValue));
        sql.add(' and d.limit1 <= '+QuotedSTR(IntToStr(batastTotalValue))+' and '+
                ' d.limit2 >= '+QuotedSTR(IntToStr(batastTotalValue))+'  LIMIT 1 ');
      end;

      if Dm.Qtemp2.FieldByName('perhitungan').value= 'T002' then  //TOTAL QTY
      begin

        batasTotalQty:=Dm.Qtemp.fieldbyname('total_qty').value;
        sql.add(' and d.limit1 <= '+QuotedSTR(IntToStr(batasTotalQty))+' and '+
                ' d.limit2 >= '+QuotedSTR(IntToStr(batasTotalQty))+'  LIMIT 1 ');
      end;

      if Dm.Qtemp2.FieldByName('perhitungan').value= 'T003' then  //VALUE PER ITEM
      begin
        batasValuePerItem:=Dm.Qtemp1.fieldbyname('value_per_item').value;
        sql.add(' and d.limit1 <= '+QuotedSTR(IntToStr(batasValuePerItem))+' and '+
                ' d.limit2 >= '+QuotedSTR(IntToStr(batasValuePerItem))+'  LIMIT 1 ');
      end;

      if Dm.Qtemp2.FieldByName('perhitungan').value= 'T004' then  //QTY PER ITEM
      begin
        batasQtyPerItem:=jumlah_item;
        sql.add(' and d.limit1 <= '+QuotedSTR(IntToStr(batasQtyPerItem))+' and '+
                ' d.limit2 >= '+QuotedSTR(IntToStr(batasQtyPerItem))+'  LIMIT 1 ');
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
      else if Dm.Qtemp3.fieldbyname('stat_potongan').value=1 then     //Jika Potongan Rupiah
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

    ppn:=StrToFloat(Selectrow('select value_parameter from t_parameter where key_parameter=''persen_pajak_jual'' '));

    if strStatusIncludePPN='1' then
    begin
      dpp:=RoundTo(((hjual-(ndisc/qty))/1.11)*qty,-2);
    end else begin
      dpp:=(hjual*qty)-ndisc;
    end;

//    dpp:=round((hjual/1.11)*qty);

    nppn:=dpp*(ppn/100);
//    nppn:=Round(dpp*(ppn/100));
    //nppn:=StrToFloat(parsing_koma(FloatToStr(nppn)));
    //nppn:=ROUND(nppn);
    ndisc:=round(ndisc);
    netto:=dpp+nppn;
    total:=dpp+nppn;

    if strStatusIncludePPN='1' then
    begin
      hsatuan_cortex:=RoundTo((((netto)/1.11)/qty),-2);
      dpp_cortex:= hsatuan_cortex*qty;
      nppn_cortex:= Round(dpp_cortex*(ppn/100));
      netto_cortex:= dpp_cortex+nppn;
    end else begin
//      hsatuan_cortex:=RoundTo(((netto)/qty),-2);
      dpp_cortex:= dpp;
      nppn_cortex:= Round(dpp*(ppn/100));
      netto_cortex:= dpp_cortex+nppn;
    end;

//    dpp_cortex:= hsatuan_cortex*qty;
//    nppn_cortex:= Round(dpp_cortex*(ppn/100));
//    netto_cortex:= dpp_cortex+nppn;

  end
  else
  begin
    bruto:=hjual*qty;
    //ndisc:=diskon*qty;
    if stat_klasifikasi=0 then
    begin
      ndisc:=diskon*qty;
    end;
    dpp:=RoundTo(((hjual-(diskon/qty)))*qty,-2);
    //   dpp:=round(hjual*qty);

    ppn:=0;
    nppn:=0;
    ndisc:=round(ndisc);
    netto:=dpp+nppn;
    total:=dpp+nppn;
    dpp_cortex:= dpp;
    nppn_cortex:=0;
    netto_cortex:= netto;
  end;
  //ndisc:=strtofloat(parsing_koma(floattostr(ndisc)));


  //ShowMessage(FloatToStr(dpp+ppn));
end;

procedure TFRincianPot_Penjualan.BBatalClick(Sender: TObject);
begin
  MemMasterData.EmptyTable;
  Close;
end;

procedure TFRincianPot_Penjualan.BSaveClick(Sender: TObject);
begin
  MemMasterData.first;
  while not MemMasterData.Eof do
  begin
    if MemMasterData['harga_satuan']=0 then
    begin
      MessageDlg('Harga Satuan tidak boleh 0 ..!!',mtInformation,[mbRetry],0);
      FNew_Penjualan.StatusCekKasifikasi:=0;
      EXIT;
    end else
    begin
      with FNew_Penjualan do
      begin
        MemDetail.first;
        while not MemDetail.Eof do
        begin
          if MemDetail['KD_ITEM']=MemMasterData['kd_brg'] then
          begin
            MemDetail.Edit;
            MemDetail['HARGA_SATUAN']:=MemMasterData['harga_satuan']/MemMasterData['jumlah'];
            MemDetail['JUMLAH_HARGA']:=MemMasterData['harga_satuan'];
            MemDetail['PPN_NILAI']:=MemMasterData['nilai_ppn'];
            MemDetail['PPN_NILAI_CORTEX']:=MemMasterData['nilai_ppn_cortex'];
            MemDetail['POTONGAN_NILAI']:=MemMasterData['pot_value_1']+MemMasterData['pot_value_2']+MemMasterData['pot_value_3']+MemMasterData['pot_value_4'];
            MemDetail['POTONGAN1']:=MemMasterData['pot_value_1'];
            MemDetail['POTONGAN2']:=MemMasterData['pot_value_2'];
            MemDetail['POTONGAN3']:=MemMasterData['pot_value_3'];
            MemDetail['POTONGAN4']:=MemMasterData['pot_value_4'];
            MemDetail['SUB_TOTAL']:=MemMasterData['dpp'];
            MemDetail['GRAND_TOTAL']:=MemMasterData['total'];
            MemDetail.Post;
//            HitungGrid;
          end;
          MemDetail.Next;
        end;
      end;
      FNew_Penjualan.StatusCekKasifikasi:=1;
    end;
    MemMasterData.Next;
  end;
  FNew_Penjualan.HitungDetail;
  Close;
end;

procedure TFRincianPot_Penjualan.FormShow(Sender: TObject);
begin
strStatusIncludePPN:=Selectrow('select value_parameter from t_parameter where key_parameter=''klasifikasi_include_ppn'' ');
if strStatusIncludePPN='0' then
begin
  DBGridCustomer.Columns[9].Visible:=False;
  DBGridCustomer.Columns[10].Visible:=False;
  DBGridCustomer.Columns[15].Visible:=False;
end else begin
  DBGridCustomer.Columns[9].Visible:=True;
  DBGridCustomer.Columns[10].Visible:=True;
  DBGridCustomer.Columns[15].Visible:=True;
end;

end;

end.
