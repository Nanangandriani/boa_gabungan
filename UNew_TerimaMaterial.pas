unit UNew_TerimaMaterial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, MemDS,
  DBAccess, Uni, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  RzEdit, RzBtnEdt, Vcl.Mask, RzCmboBx, Vcl.ExtCtrls, RzButton, Vcl.Buttons,
  RzTabs, RzPanel;

type
  TFNew_TerimaMaterial = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    EdNoSPB: TRzComboBox;
    EdNo: TEdit;
    Dtterima: TRzDateTimeEdit;
    EdKet: TMemo;
    EdSJ: TEdit;
    Edno_Faktur: TEdit;
    DtFaktur: TRzDateTimeEdit;
    Edjatuhtempo: TEdit;
    Edkd_supp: TRzEdit;
    EdNm_supp: TRzButtonEdit;
    Edjenis: TRzComboBox;
    EdValas: TRzEdit;
    EdNilai_Valas: TRzEdit;
    Edkd_akun: TRzEdit;
    EdNm_akun: TRzButtonEdit;
    Edjenispo: TRzComboBox;
    Edsbu: TComboBox;
    EdPIB: TEdit;
    dtfaktur2: TRzDateTimeEdit;
    Edkd_akunum: TRzEdit;
    EdNilai_um: TRzNumericEdit;
    EdSisaHutang: TRzNumericEdit;
    Button1: TButton;
    edum: TRzNumericEdit;
    Button2: TButton;
    QMaterial1: TUniQuery;
    DsTerimadet: TDataSource;
    DsMaterial: TDataSource;
    MemterimaDet: TMemTableEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    Edurut: TEdit;
    BitBtn1: TBitBtn;
    Edbln: TEdit;
    Edth: TEdit;
    Edhari: TEdit;
    RzPanel1: TRzPanel;
    DBGridDetailpo: TDBGridEh;
    procedure DtterimaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdjenisSelect(Sender: TObject);
    procedure EdNoSPBSelect(Sender: TObject);
    procedure EdNm_suppButtonClick(Sender: TObject);
    procedure DBGridDetailpoColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BBatalClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridDetailpoCellClick(Column: TColumnEh);
    procedure DBGridDetailpoColExit(Sender: TObject);
    procedure BEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Load;
    Procedure Load2; // cr ds 20-01-2025 loadpo
    Procedure LoadPO;
    //Procedure Loaditem;
    procedure Clear;
    Procedure SimpanStok;
    Procedure Posting;
    procedure loadtype;
    procedure Autonumber;
  end;

var
  FNew_TerimaMaterial: TFNew_TerimaMaterial;
   thn,bln,statustrans,nopo,gudang:string;
   grandtotal:real;

implementation

{$R *.dfm}

uses UMainMenu, UTerima_Material, UDataModule, UMy_Function, USupp_Pembelian,
  Usearch_MatTerima;


procedure TFNew_TerimaMaterial.Autonumber;
begin
  with dm.Qtemp do
  begin
      close;
      sql.clear;
      sql.Text:='Select * from t_menu_sub where link=''FTerima_Material'' ';
      ExecSQL;
  end;
  idmenu:=dm.Qtemp['submenu_code'];
  //idmenu:='M11008';
  strday2:=Dtterima.Date;
  //EdNo.Text:=getNourutBlnPrshthn_kode(strday2,'t_item_receive','');
  EdNo.Text:=getNourut(strday2,'t_item_receive','');
  Edurut.Text:=order_no;
end;

procedure TFNew_TerimaMaterial.loadtype;
begin
   with dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:='SELECT DISTINCT "type"  from t_item_type ';
       open;
   end;
   edjenis.items.clear;
   dm.Qtemp.First;
   while not dm.Qtemp.Eof do
   begin
     edjenis.Items.Add(dm.Qtemp['type']);
     dm.Qtemp.Next;
   end;
end;

procedure TFNew_TerimaMaterial.Posting;
begin
  grandtotal:=DBGridDetailpo.Columns[20].Footer.SumValue;
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:=' insert into t_utang(kode_supplier,tgl_utang,no_faktur,debit,kredit,saldo, '+
              ' jenis,keterangan,pic)values(:parkode_supplier,:partgl_utang,:parno_faktur,'+
              ' :pardebit,:parkredit,:parsaldo,:parjenis,:parketerangan,:parpic)';
              ParamByName('parkode_supplier').Value:=edkd_supp.Text;
              ParamByName('Partgl_utang').Value:=FormatDateTime('yyy-mm-dd',DtFaktur.date);
              ParamByName('parno_faktur').Value:=Edno_Faktur.Text;
              ParamByName('pardebit').Value:=0;
              ParamByName('parkredit').Value:=FloatToStr(grandtotal);
              ParamByName('parsaldo').Value:=0;
              ParamByName('parjenis').Value:='Pembelian';
              ParamByName('parketerangan').Value:='Pembelian';
              ParamByName('parpic').Value:=Nm;
    ExecSQL;
  end;

// Insert ke T-Jurnal umum untuk kredit
  with dm.Qtemp do
  begin
      close;
      sql.Clear;
      sql.Text:='insert into t_jurnal_umum(no_trans,modul,kd_akun_perkiraan,debet,kredit,tgl_trans)'+
                'values(:parno_trans,:parmodul,:parkd_akun_perkiraan,:pardebet,:parkredit,:partgl_trans)';
                ParamByName('parno_trans').Value:=EdNo.Text;
                ParamByName('parmodul').Value:='PEMBELIAN';
                ParamByName('parkd_akun_perkiraan').Value:=Edkd_akun.Text;
                ParamByName('pardebet').Value:=0;
                ParamByName('parkredit').Value:=FloatToStr(grandtotal);
                ParamByName('partgl_trans').Value:=FormatDateTime('yyy-mm-dd',Dtterima.Date);
      ExecSQL;
  end;

  // Insert ke T-Jurnal umum untuk debit
  MemterimaDet.First;
  while not MemterimaDet.Eof do
  begin
    with Dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='insert into t_jurnal_umum(no_trans,modul,kd_akun_perkiraan,debet,kredit,tgl_trans)'+
              'values(:parno_trans,:parmodul,:parkd_akun_perkiraan,:pardebet,:parkredit,:partgl_trans)';
              ParamByName('parno_trans').Value:=EdNo.Text;
              ParamByName('parmodul').Value:='PEMBELIAN';
              ParamByName('parkd_akun_perkiraan').Value:=MemterimaDet['kd_akun'];
              ParamByName('pardebet').Value:=MemterimaDet['subtotal'];
              ParamByName('parkredit').Value:=0;
              ParamByName('partgl_trans').Value:=FormatDateTime('yyy-mm-dd',Dtterima.Date);
       ExecSQL;
    end;

   // Input PPn  ke T-Jurnalumum untuk debit
    if MemterimaDet['ppn_rp']<>0 then
    begin
      with dm.Qtemp2 do
      begin
        Close;
        sql.Clear;
        sql.Text:='select kd_akun from t_master_akun where kode=''1''';
        ExecSQL;
      end;
      with Dm.Qtemp do
      begin
        Close;
        sql.Clear;
        sql.Text:='insert into t_jurnal_umum(no_trans,modul,kd_akun_perkiraan,debet,kredit,tgl_trans)'+
                'values(:parno_trans,:parmodul,:parkd_akun_perkiraan,:pardebet,:parkredit,:partgl_trans)';
                ParamByName('parno_trans').Value:=EdNo.Text;
                ParamByName('parmodul').Value:='PEMBELIAN';
                ParamByName('parkd_akun_perkiraan').Value:=dm.QTemp2['kd_akun'];
                ParamByName('pardebet').Value:=MemterimaDet['ppn_rp'];
                ParamByName('parkredit').Value:=0;
                ParamByName('partgl_trans').Value:=FormatDateTime('yyy-mm-dd',Dtterima.Date);
        ExecSQL;
      end;
    end;
  MemterimaDet.Next;
  end;

  if Edjenispo.Text='LOKAL' then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='update t_daftar_perkiraan set balance=balance+:parbalance where kode=:parkode';
                ParamByName('parbalance').Value:=MemterimaDet['grandtotal'];
                ParamByName('parkode').Value:=MemterimaDet['kd_akun'];
                ExecSQL;
    end;
  end;
end;

procedure TFNew_TerimaMaterial.SimpanStok;
begin
    MemterimaDet.First;
    while not MemterimaDet.Eof do
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from t_item_stock_det where ' +
                  'item_stock_code='+QuotedStr(MemterimaDet['item_stock_code'])+''+
                  'and stock_code='+QuotedStr(MemterimaDet['kd_stok']);
        Execute;
      end;
      if dm.Qtemp.RecordCount > 0 then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='	Update t_item_stock_det set qty=qty +:parqty,"outstanding"=(qty +:parqty)- qtyout,unit=:parsatuan'+
                    ' ,remaining_sp=(qty +:parsisasp)- qtyout,price=:parharga where item_stock_code=:parkd_material_stok and stock_code=:parkd_stok';
                    ParamByName('parqty').Value:=MemterimaDet['qty'];
                    ParamByName('parsatuan').Value:=MemterimaDet['satuan'];
                    ParamByName('parkd_material_stok').Value:=MemterimaDet['item_stock_code'];
                    ParamByName('parkd_stok').Value:=MemterimaDet['kd_stok'];
                    ParamByName('parsisasp').Value:=MemterimaDet['qty'];
                    ParamByName('parharga').Value:=MemterimaDet['grandtotal']*StrToFloat(EdNilai_Valas.Text);
          Execute;
        end;
      end
      else
      if dm.Qtemp.RecordCount=0 then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='	INSERT INTO t_item_stock_det(item_stock_code,stock_code,qty,'+
                    ' unit,qtyout,outstanding,wh_code,qtysp,remaining_sp,price,reciving_date)VALUES(:parkd_material_stok,:parkd_stok,'+
                    ' :parqty,:parsatuan,:parqtyout,:parOut,:pargudang,:parqtysp,:parsisasp,:parharga,:partgl)';
                    ParamByName('parkd_material_stok').Value:=MemterimaDet['item_stock_code'];
                    ParamByName('parkd_stok').Value:=MemterimaDet['kd_stok'];
                    ParamByName('parqty').Value:=MemterimaDet['qty'];
                    ParamByName('parsatuan').Value:=MemterimaDet['satuan'];
                    ParamByName('parqtyout').Value:=0;
                    ParamByName('parout').Value:=MemterimaDet['qty'];
                    ParamByName('pargudang').Value:=MemterimaDet['wh_code'];
                    ParamByName('parqtysp').Value:=0;
                    ParamByName('parsisasp').Value:=MemterimaDet['qty'];
                    ParamByName('parharga').Value:=MemterimaDet['grandtotal']*StrToFloat(EdNilai_Valas.Text);
                    ParamByName('partgl').Value:=FormatDateTime('yyy-mm-dd',Dtterima.Date);
          Execute;
        end;
      end;
      MemterimaDet.Next;
    end;
end;

procedure TFNew_TerimaMaterial.BBatalClick(Sender: TObject);
begin
   Close;
end;

procedure TFNew_TerimaMaterial.BEditClick(Sender: TObject);
begin
    if EdNilai_um.Value<>edum.Value then
    begin
      MessageDlg('Maaf Uang Muka Belum Lunas',MtWarning,[MbOk],0);
      Exit;
    end;
 //   Autonumber;
    if messageDlg ('Anda Yakin Simpan Penerimaan No. '+EdNo.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
	  begin
        MemterimaDet.First;
        while not MemterimaDet.Eof do
        begin
          DBGridDetailpoColExit(sender);
          MemterimaDet.Next;
        end;
        EdSisaHutang.Value:=DBGridDetailpo.Columns[20].Footer.sumvalue-EdNilai_um.Value;
        MemterimaDet.First;
        while not MemterimaDet.Eof do
        begin
         if DBGridDetailpo.Fields[0].AsString='' then
          begin
          MemterimaDet.Delete;
          end;
          MemterimaDet.Next;
        end;
        if Edjenis.Text='' then
        begin
          MessageDlg('Jenis Pembelian Tidak boleh Kosong ',MtWarning,[MbOk],0);
          Edjenis.SetFocus;
          Exit;
        end;
        if EdNo.Text='' then
        begin
          MessageDlg('No. Terima Tidak boleh Kosong ',MtWarning,[MbOk],0);
          EdNo.SetFocus;
          Exit;
        end;
        if EdNoSPB.Text='' then
        begin
          MessageDlg('No. SP Tidak boleh Kosong ',MtWarning,[MbOk],0);
          EdNoSPB.SetFocus;
          Exit;
        end;
        if  Dtterima.Text='' then
        begin
          MessageDlg('Tanggal Tidak boleh Kosong ',MtWarning,[MbOk],0);
          Dtterima.SetFocus;
          Exit;
        end;

        if not dm.koneksi.InTransaction then
        dm.koneksi.StartTransaction;
        try
        begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='update t_item_receive set receive_date=:partgl_terima,remark=:parket,spb_no=:parnospb,sj_no=:parnosj,faktur_no=:parnofaktur,'+
          ' supplier_code=:parkd_supplier,faktur_date=:partgl_faktur,due_date=:parjatuh_tempo,purchase_type=:parjenis_pembelian,debt_amount=:parjmlh_hutang,'+
          ' payment_amount=:parjmlh_bayar,debt_remaining=:parsisa_hutang,ppn_rp=:parppn_rp,pic=:parpic,status=:parstatus,valas=:parvalas,'+
          ' valas_value=:parnilai_valas,account_code=:parkd_akun,trans_month=:parbln,trans_year=:parthn,import_duty=:parbea,'+
          ' pph_rp=:parpph_rp,sbu_code=:parsbu,pib_no=:parpib,po_type=:parjenispo,faktur2_date=:partgl_faktur2,account_um_code=:parkd_akunum,'+
          ' um_value=:parum,trans_day=:partgl_no,pic2=:parpic2'+
          ' where receive_no=:parno_terima';
                 ParamByName('parno_terima').Value:=EdNo.Text;
                  ParamByName('partgl_terima').Value:=FormatDateTime('yyyy-mm-dd',Dtterima.Date);
                  ParamByName('parket').Value:=EdKet.Text;
                  ParamByName('parnospb').Value:=EdNoSPB.Text;
                  ParamByName('parnosj').Value:=EdSJ.Text;
                  ParamByName('parnofaktur').Value:=Edno_Faktur.Text;
                  ParamByName('parkd_supplier').Value:=Edkd_supp.Text;
                  ParamByName('partgl_faktur').Value:=FormatDateTime('yyyy-mm-dd',DtFaktur.Date);
                  ParamByName('partgl_faktur2').Value:=FormatDateTime('yyyy-mm-dd',DtFaktur2.Date);
                  ParamByName('parjatuh_tempo').Value:=Edjatuhtempo.Text;
                  ParamByName('parjenis_pembelian').Value:=Edjenis.Text;
                  ParamByName('parjmlh_hutang').Value:=DBGridDetailpo.Columns[20].Footer.sumvalue;
                  ParamByName('parjmlh_bayar').Value:=0;
                  ParamByName('parsisa_hutang').Value:=EdSisaHutang.Value;
                  ParamByName('parppn_rp').Value:=DBGridDetailpo.Columns[17].Footer.SumValue;
                  ParamByName('parpic').Value:=Nm;
                  ParamByName('parstatus').Value:='Created';
                  ParamByName('parvalas').Value:=EdValas.Text;
                  ParamByName('parnilai_valas').Value:=EdNilai_Valas.Text;
                  ParamByName('parkd_akun').Value:=Edkd_akun.Text;
                  ParamByName('parsbu').Value:=Edsbu.Text;
                  ParamByName('parbln').Value:=Edbln.Text;
                  ParamByName('parthn').Value:=Edth.text;
                  ParamByName('parjenispo').Value:=Edjenispo.Text;
                  ParamByName('parpib').Value:=EdPIB.Text;
                  ParamByName('parkd_akunum').Value:=Edkd_akunum.Text;
                  ParamByName('parum').Value:=EdNilai_um.Value;
                  ParamByName('partgl_no').Value:=Edhari.Text;
                  ParamByName('parpic2').Value:=Nm;
               //   ParamByName('parorder_no').Value:=Edurut.text;
              ExecSQL;
            end;
            with dm.Qtemp do
            begin
              close;
              sql.Clear;
              sql.Text:='delete from t_item_receive_det where receive_no='+QuotedStr(EdNo.Text);
              Execute;
            end;

            MemterimaDet.First;
            while not MemterimaDet.Eof do
            begin
              DBGridDetailpoColExit(sender);
              with dm.Qtemp2 do
              begin
                Close;
                sql.Clear;
                sql.Text:=' insert into t_item_receive_det(item_stock_code,stock_code,qty,unit,wh_code,'+
                          ' trans_year,po_no,receive_no,qty_po,unit_po,qty_difference,qty_per_conversion,qty_conversion,'+
                          ' unit_conversion,subtotal,ppn,ppn_rp,pph,pph_rp,grandtotal,price,account_code,'+
                          ' trans_status,account_pph_code,duty_account_code,import_duty,subtotalrp,order_no,'+
                          ' id_pengajuan_asset,no_pengajuan_asset,id_detail_asset,spesifikasi_asset,item_code)values'+
                          '(:parkd_material_stok,:parkd_stok,:parqty,:parsatuan,:pargudang,'+
                          ' :parTahun,:parnopo,:parno_terima,:parqtypo,:parsatuanpo,:parqtyselisih,:parqtyperkonversi,'+
                          ' :parqtykonversi,:parsatuankonversi,:parsubtotal,:parppn,:parppn_rp,:parpph,'+
                          ' :parpph_rp,:pargrandtotal,:parharga,:parkd_akun,:parstatustrans,'+
                          ' :parkd_akpph,:parkd_akbea,:parbea,:parsubtotalrp,:parnourut,'+
                          ' :id_pengajuan_asset,:no_pengajuan_asset,:id_detail_asset,:spesifikasi_asset,:paritem_code)';

                    ParamByName('parkd_material_stok').Value:=MemterimaDet['item_stock_code'];
                    ParamByName('parkd_stok').Value:=MemterimaDet['kd_stok'];
                    ParamByName('parqty').Value:=MemterimaDet['qty'];
                    ParamByName('parsatuan').Value:=MemterimaDet['satuan'];
                    ParamByName('pargudang').Value:=MemterimaDet['wh_code'];
                    ParamByName('partahun').Value:=MemterimaDet['tahun'];
                    ParamByName('parnopo').Value:=MemterimaDet['nopo'];
                    ParamByName('parno_terima').Value:=EdNo.Text;
                    ParamByName('parqtypo').Value:=MemterimaDet['qtypo'];
                    ParamByName('parsatuanpo').Value:=MemterimaDet['satuanpo'];
                    ParamByName('parqtyselisih').Value:=MemterimaDet['qtyselisih'];
                    ParamByName('parqtyperkonversi').Value:=0;
                    ParamByName('parqtykonversi').Value:=0;
                    ParamByName('parsatuankonversi').Value:=0;
                    ParamByName('parppn').Value:=MemterimaDet['ppn'];
                    ParamByName('parpph').Value:=MemterimaDet['pph'];
                    ParamByName('parppn_rp').Value:=MemterimaDet['ppn_rp'];
                    ParamByName('parpph_rp').Value:=MemterimaDet['pph_rp'];
                    ParamByName('id_pengajuan_asset').Value:=MemterimaDet['id_pengajuan_asset'];
                    ParamByName('no_pengajuan_asset').Value:=MemterimaDet['no_pengajuan_asset'];
                    ParamByName('id_detail_asset').Value:=MemterimaDet['id_detail_asset'];
                    ParamByName('spesifikasi_asset').Value:=MemterimaDet['spesifikasi_asset'];
                    ParamByName('parharga').Value:=MemterimaDet['harga'];
                    ParamByName('parkd_akun').Value:=MemterimaDet['kd_akun'];
                    ParamByName('parsubtotal').Value:=MemterimaDet['subtotal'];
                    ParamByName('parsubtotalrp').Value:=MemterimaDet['subtotal'];
                    ParamByName('pargrandtotal').Value:=MemterimaDet['grandtotal'];
                    ParamByName('parstatustrans').Value:=0;
                    ParamByName('parbea').Value:=0;
                    ParamByName('parnourut').Value:=MemterimaDet['nourut'];
                    ParamByName('paritem_code').Value:=MemterimaDet['kd_material'];
                    ExecSQL;
                MemterimaDet.Next;
              end;
              with dm.Qtemp do
              begin
                close;
                sql.Clear;
                sql.Text:='Update t_spb set status=''Selesai'' where spb_no='+QuotedStr(EdNoSPB.Text);
                ExecSQL;
              end;
            end;
          //  SimpanStok;
            dm.koneksi.Commit;
            Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
            BBatalClick(sender);
        end;
        Except
          on E :Exception do
          begin
            MessageDlg(E.Message,mtError,[MBok],0);
            dm.koneksi.Rollback;
          end;
        end;
    end;
end;

procedure TFNew_TerimaMaterial.BitBtn1Click(Sender: TObject);
begin
  Autonumber;
end;

procedure TFNew_TerimaMaterial.BSimpanClick(Sender: TObject);
begin
    if EdNilai_um.Value<>edum.Value then
    begin
      MessageDlg('Maaf Uang Muka Belum Lunas',MtWarning,[MbOk],0);
      Exit;
    end;
    Autonumber;
    if messageDlg ('Anda Yakin Simpan Penerimaan No. '+EdNo.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
	  begin
        MemterimaDet.First;
        while not MemterimaDet.Eof do
        begin
          DBGridDetailpoColExit(sender);
          MemterimaDet.Next;
        end;
        EdSisaHutang.Value:=DBGridDetailpo.Columns[20].Footer.sumvalue-EdNilai_um.Value;
        MemterimaDet.First;
        while not MemterimaDet.Eof do
        begin
         if DBGridDetailpo.Fields[0].AsString='' then
          begin
          MemterimaDet.Delete;
          end;
          MemterimaDet.Next;
        end;
        if Edjenis.Text='' then
        begin
          MessageDlg('Jenis Pembelian Tidak boleh Kosong ',MtWarning,[MbOk],0);
          Edjenis.SetFocus;
          Exit;
        end;
        if EdNo.Text='' then
        begin
          MessageDlg('No. Terima Tidak boleh Kosong ',MtWarning,[MbOk],0);
          EdNo.SetFocus;
          Exit;
        end;
        if EdNoSPB.Text='' then
        begin
          MessageDlg('No. SP Tidak boleh Kosong ',MtWarning,[MbOk],0);
          EdNoSPB.SetFocus;
          Exit;
        end;
        if  Dtterima.Text='' then
        begin
          MessageDlg('Tanggal Tidak boleh Kosong ',MtWarning,[MbOk],0);
          Dtterima.SetFocus;
          Exit;
        end;

        if not dm.koneksi.InTransaction then
        dm.koneksi.StartTransaction;
        try
        begin
            with dm.Qtemp do
            begin
              close;
              sql.Clear;
              sql.Text:='select * from t_item_receive ';
              ExecSQL;
            end;
            with dm.Qtemp do
            begin
              close;
              sql.Clear;
              sql.Text:=' insert into t_item_receive(receive_no,receive_date,remark,spb_no,sj_no,faktur_no,'+
                        ' supplier_code,faktur_date,due_date,purchase_type,debt_amount,payment_amount,'+
                        ' debt_remaining,ppn_rp,pic,status,valas,valas_value,account_code,trans_month,trans_year,import_duty,'+
                        ' pph_rp,sbu_code,pib_no,po_type,faktur2_date,account_um_code,um_value,trans_day,pic2,order_no)values(:parno_terima,'+
                        ' :partgl_terima,:parket,:parnospb,:parnosj,:parnofaktur,:parkd_supplier,'+
                        ' :partgl_faktur,:parjatuh_tempo,:parjenis_pembelian,:parjmlh_hutang,:parjmlh_bayar,'+
                        ' :parsisa_hutang,:parppn_rp,:parpic,:parstatus,:parvalas,:parnilai_valas,:parkd_akun,:parbln,'+
                        ' :parthn,:parbea,:parpph,:parsbu,:parpib,:parjenispo,:partgl_faktur2,:parkd_akunum,:parum,:partgl_no,:parpic2,:parorder_no)';
                  ParamByName('parno_terima').Value:=EdNo.Text;
                  ParamByName('partgl_terima').Value:=FormatDateTime('yyyy-mm-dd',Dtterima.Date);
                  ParamByName('parket').Value:=EdKet.Text;
                  ParamByName('parnospb').Value:=EdNoSPB.Text;
                  ParamByName('parnosj').Value:=EdSJ.Text;
                  ParamByName('parnofaktur').Value:=Edno_Faktur.Text;
                  ParamByName('parkd_supplier').Value:=Edkd_supp.Text;
                  ParamByName('partgl_faktur').Value:=FormatDateTime('yyyy-mm-dd',DtFaktur.Date);
                  ParamByName('partgl_faktur2').Value:=FormatDateTime('yyyy-mm-dd',DtFaktur2.Date);
                  ParamByName('parjatuh_tempo').Value:=Edjatuhtempo.Text;
                  ParamByName('parjenis_pembelian').Value:=Edjenis.Text;
                  ParamByName('parjmlh_hutang').Value:=DBGridDetailpo.Columns[20].Footer.sumvalue;
                  ParamByName('parjmlh_bayar').Value:=0;
                  ParamByName('parsisa_hutang').Value:=EdSisaHutang.Value;
                  ParamByName('parppn_rp').Value:=DBGridDetailpo.Columns[17].Footer.SumValue;
                  ParamByName('parpic').Value:=Nm;
                  ParamByName('parstatus').Value:='Created';
                  ParamByName('parvalas').Value:=EdValas.Text;
                  ParamByName('parnilai_valas').Value:=EdNilai_Valas.Text;
                  ParamByName('parkd_akun').Value:=Edkd_akun.Text;
                  ParamByName('parsbu').Value:=Edsbu.Text;
                  ParamByName('parbln').Value:=Edbln.Text;
                  ParamByName('parthn').Value:=Edth.text;
                  ParamByName('parjenispo').Value:=Edjenispo.Text;
                  ParamByName('parpib').Value:=EdPIB.Text;
                  ParamByName('parkd_akunum').Value:=Edkd_akunum.Text;
                  ParamByName('parum').Value:=EdNilai_um.Value;
                  ParamByName('partgl_no').Value:=Edhari.Text;
                  ParamByName('parpic2').Value:=Nm;
                  ParamByName('parorder_no').Value:=Edurut.text;
              ExecSQL;
            end;

            MemterimaDet.First;
            while not MemterimaDet.Eof do
            begin
              DBGridDetailpoColExit(sender);
              with dm.Qtemp2 do
              begin
                Close;
                sql.Clear;
                sql.Text:=' insert into t_item_receive_det(item_stock_code,stock_code,qty,unit,wh_code,'+
                          ' trans_year,po_no,receive_no,qty_po,unit_po,qty_difference,qty_per_conversion,qty_conversion,'+
                          ' unit_conversion,subtotal,ppn,ppn_rp,pph,pph_rp,grandtotal,price,account_code,'+
                          //' trans_status,ppn_pembulatan,account_pph_code,duty_account_code,import_duty,subtotalrp,order_no)values(:parkd_material_stok,:parkd_stok,:parqty,:parsatuan,:pargudang,'+
                          ' trans_status,account_pph_code,duty_account_code,import_duty,subtotalrp,order_no,'+
                          ' id_pengajuan_asset,no_pengajuan_asset,id_detail_asset,spesifikasi_asset,item_code)values'+
                          '(:parkd_material_stok,:parkd_stok,:parqty,:parsatuan,:pargudang,'+
                          ' :parTahun,:parnopo,:parno_terima,:parqtypo,:parsatuanpo,:parqtyselisih,:parqtyperkonversi,'+
                          ' :parqtykonversi,:parsatuankonversi,:parsubtotal,:parppn,:parppn_rp,:parpph,'+
                          //' :parpph_rp,:pargrandtotal,:parharga,:parkd_akun,:parstatustrans,:parppn_pembulatan,'+
                          ' :parpph_rp,:pargrandtotal,:parharga,:parkd_akun,:parstatustrans,'+
                          ' :parkd_akpph,:parkd_akbea,:parbea,:parsubtotalrp,:parnourut,'+
                          ' :id_pengajuan_asset,:no_pengajuan_asset,:id_detail_asset,:spesifikasi_asset,:paritem_code)';

                    ParamByName('parkd_material_stok').Value:=MemterimaDet['item_stock_code'];
                    ParamByName('parkd_stok').Value:=MemterimaDet['kd_stok'];
                    ParamByName('parqty').Value:=MemterimaDet['qty'];
                    ParamByName('parsatuan').Value:=MemterimaDet['satuan'];
                    ParamByName('pargudang').Value:=MemterimaDet['wh_code'];
                    ParamByName('partahun').Value:=MemterimaDet['tahun'];
                    ParamByName('parnopo').Value:=MemterimaDet['nopo'];
                    ParamByName('parno_terima').Value:=EdNo.Text;
                    ParamByName('parqtypo').Value:=MemterimaDet['qtypo'];
                    ParamByName('parsatuanpo').Value:=MemterimaDet['satuanpo'];
                    ParamByName('parqtyselisih').Value:=MemterimaDet['qtyselisih'];
                    ParamByName('parqtyperkonversi').Value:=0;
                    ParamByName('parqtykonversi').Value:=0;
                    ParamByName('parsatuankonversi').Value:=0;
                    ParamByName('parppn').Value:=MemterimaDet['ppn'];
                    ParamByName('parpph').Value:=MemterimaDet['pph'];
                    ParamByName('parppn_rp').Value:=MemterimaDet['ppn_rp'];
                    ParamByName('parpph_rp').Value:=MemterimaDet['pph_rp'];
                    ParamByName('id_pengajuan_asset').Value:=MemterimaDet['id_pengajuan_asset'];
                    ParamByName('no_pengajuan_asset').Value:=MemterimaDet['no_pengajuan_asset'];
                    ParamByName('id_detail_asset').Value:=MemterimaDet['id_detail_asset'];
                    ParamByName('spesifikasi_asset').Value:=MemterimaDet['spesifikasi_asset'];
                    {if MemterimaDet['ppn_rp'] = null then parambyname('parppn_rp').Value:='0'
                      else ParamByName('parppn_rp').Value:=MemterimaDet['ppn_rp'];
                    if MemterimaDet['pph_rp'] = null then parambyname('parpph_rp').Value:='0'
                      else ParamByName('parpph_rp').Value:=MemterimaDet['pph_rp'];
                    if MemterimaDet['ppn_rp_pembulatan'] = null then parambyname('parppn_pembulatan').Value:='0'
                      else ParamByName('parppn_pembulatan').Value:=MemterimaDet['ppn_rp_pembulatan'];
                    if MemterimaDet['bea_masuk'] = null then parambyname('parbea').Value:='0'
                      else ParamByName('parbea').Value:=MemterimaDet['bea_masuk'];}
                    //ParamByName('parkd_akpph').Value:=MemterimaDet['kd_akunpph'];
                    //ParamByName('parkd_akbea').Value:=MemterimaDet['kd_akunbea'];
                    ParamByName('parharga').Value:=MemterimaDet['harga'];
                    ParamByName('parkd_akun').Value:=MemterimaDet['kd_akun'];
                    ParamByName('parsubtotal').Value:=MemterimaDet['subtotal'];
                    ParamByName('parsubtotalrp').Value:=MemterimaDet['subtotal'];
                    ParamByName('pargrandtotal').Value:=MemterimaDet['grandtotal'];
                    ParamByName('parstatustrans').Value:=0;
                    ParamByName('parbea').Value:=0;
                    ParamByName('parnourut').Value:=MemterimaDet['nourut'];
                    ParamByName('paritem_code').Value:=MemterimaDet['kd_material'];
                    ExecSQL;
                MemterimaDet.Next;
              end;
              with dm.Qtemp do
              begin
                close;
                sql.Clear;
                sql.Text:='Update t_spb set status=''Selesai'' where spb_no='+QuotedStr(EdNoSPB.Text);
                ExecSQL;
              end;
            end;
            SimpanStok;
            dm.koneksi.Commit;
            Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
            BBatalClick(sender);
        end;
        Except
          on E :Exception do
          begin
            MessageDlg(E.Message,mtError,[MBok],0);
            dm.koneksi.Rollback;
          end;
        end;
    end;
end;

procedure TFNew_TerimaMaterial.Button2Click(Sender: TObject);
begin
   if EdNilai_um.Value<>edum.Value then
   begin
      ShowMessage('Maaf Uang Muka Belum Lunas, Silahkan di lunasin terlebih dahulu');
   end;
end;

procedure TFNew_TerimaMaterial.Clear;
begin
    MemterimaDet.Close;
    MemterimaDet.Open;
    EdPIB.Text:='0';
    EdNoSPB.Clear;
    EdNo.Clear;
    EdKet.Clear;
    EdSJ.Clear;
    Edjenis.Text:='';
    EdNo.Text:='';
    Edkd_supp.Text:='';
    EdNm_supp.Text:='';
    Edjenispo.Clear;
    Dtterima.Date:=Now;
    DtFaktur.Date:=Now;
    Edsbu.Text:='';
    MemterimaDet.EmptyTable;
end;

procedure TFNew_TerimaMaterial.DBGridDetailpoCellClick(Column: TColumnEh);
begin
    MemterimaDet.Edit;
    MemterimaDet['qtyselisih']:=MemterimaDet['qtypo']-MemterimaDet['qty'];
    MemterimaDet['Subtotal']:=MemterimaDet['Harga']*MemterimaDet['qty'];
    MemterimaDet['ppn_rp']:=(MemterimaDet['subtotal']/100)*MemterimaDet['ppn'];
    MemterimaDet['pph_rp']:=(MemterimaDet['subtotal']/100)*MemterimaDet['pph'];
    MemterimaDet['grandtotal']:=MemterimaDet['subtotal']+MemterimaDet['ppn_rp'];//-MemterimaDet['pph_rp'];
    MemterimaDet.Post;

end;

procedure TFNew_TerimaMaterial.DBGridDetailpoColExit(Sender: TObject);
begin
    MemterimaDet.Edit;
    MemterimaDet['qtyselisih']:=MemterimaDet['qtypo']-MemterimaDet['qty'];
    MemterimaDet['Subtotal']:=MemterimaDet['Harga']*MemterimaDet['qty'];
    MemterimaDet['ppn_rp']:=(MemterimaDet['subtotal']/100)*MemterimaDet['ppn'];
    MemterimaDet['pph_rp']:=(MemterimaDet['subtotal']/100)*MemterimaDet['pph'];
    MemterimaDet['grandtotal']:=MemterimaDet['subtotal']+MemterimaDet['ppn_rp'];//-MemterimaDet['pph_rp'];
    MemterimaDet.Post;
end;

procedure TFNew_TerimaMaterial.DBGridDetailpoColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
   if EdNoSPB.Text='0' then
   begin
      with FSearch_Matterima.QMaterial do
      begin
        Close;
        SQL.Clear;
        SQL.Text:=' select a.item_stock_code,a.item_code, b.item_name, a.order_no,b.price,b.remaining_qty as qty,'+
        ' b.unit,b.wh_code,f.wh_name,b.ppn,b.pph,b.po_no,c.supplier_code,e.account_code,c.due_date,c.valas,'+
        ' c.valas_value,f.wh_code,c."type",b.pemb_dpp,c.approval_status,b.id_pengajuan_asset,b.no_pengajuan_asset,b.id_detail_asset,'+
        ' b.spesifikasi_asset from t_item_stock a inner join t_podetail b '+
        ' on a.item_stock_code=b.item_stock_code inner join t_po c on b.po_no=c.po_no inner join t_item e on a.item_code=e.item_code inner join t_wh f on c.wh_code=f.wh_code '+
        //' where c.supplier_code='+QuotedStr(Edkd_supp.Text)+' and b.remaining_qty > 0'+
        ' where c.supplier_code='+QuotedStr(Edkd_supp.Text)+' and c.approval_status=1 and b.remaining_qty > 0'+
        ' GROUP BY a.item_stock_code,a.item_code,b.item_name,a.order_no,b.price,b.remaining_qty,b.unit,b.wh_code,f.wh_name,b.ppn,b.pph,b.po_no,c.supplier_code,e.account_code,'+
        ' c.due_date,c.valas,c.valas_value,f.wh_code,c."type",b.pemb_dpp,c.approval_status '+
        ',b.id_pengajuan_asset,b.no_pengajuan_asset,b.id_detail_asset,b.spesifikasi_asset '+
        'ORDER BY b.po_no Desc';
        ExecSQL;
      end;
   end
   else
   with FSearch_Matterima.QMaterial do
   begin
    Close;
    SQL.Clear;
    SQL.Text:='select a.item_stock_code,a.item_code,a.item_name, a.order_no,b.price,d.qty, '+
              ' b.unit,b.wh_code,f.wh_name,b.ppn,b.pph,b.po_no, c.supplier_code, d.spb_no,e.account_code'+
              ' , c.due_date ,c.valas,c.valas_value,f.wh_code,c."type",b.pemb_dpp,c.id_pengajuan_asset '+
              ',c.no_pengajuan_asset,c.id_detail_asset,c.spesifikasi_asset from t_item_stock a '+
              ' inner join t_podetail b on a.item_stock_code=b.item_stock_code '+
              ' inner join t_po c on b.po_no=c.po_no '+
              ' left join t_spb_det d on b.po_no=d.po_no and d.item_stock_code=b.item_stock_code '+
              ' inner join t_item e on a.item_code=e.item_code '+
              ' inner join t_wh f on c.wh_code=f.wh_code'+
              ' where c.supplier_code='+QuotedStr(Edkd_supp.Text)+'and d.spb_no='+QuotedStr(EdNoSPB.Text)+''+
              ' and and b.po_no in  (select po_no from t_po EXCEPT select po_no from t_item_receive_det) '+
              ' GROUP BY a.item_stock_code,a.item_code,a.item_name, a.order_no,b.price,d.qty,'+
              ' b.unit,b.wh_code,f.wh_name,b.ppn,b.pph,b.po_no, c.supplier_code, d.spb_no,e.account_code, c.due_date '+
              ' ,c.valas,c.valas_value,f.wh_code,c."type",b.pemb_dpp,c.id_pengajuan_asset '+
              ',c.no_pengajuan_asset,c.id_detail_asset,c.spesifikasi_asset '+
              ' ORDER BY b.po_no Desc';
    ExecSQL;
   end;
   FSearch_Matterima.Show;
   FSearch_Matterima.QMaterial.open;
end;

procedure TFNew_TerimaMaterial.DtterimaChange(Sender: TObject);
var
    SelectedDate: TRzDateTimeEdit;
    year, month, day: word;
begin
  //thn:=FormatDateTime('yyy',Dtterima.Date);
  //bln:=FormatDateTime('MM',Dtterima.Date);
  with dm.Qtemp2 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtterima.Date))+' :: DATE, ''dd'') hari ';
     Open;
   end;
   Edhari.Text:=dm.Qtemp2.FieldByName('hari').AsString;

   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtterima.Date))+' :: DATE, ''yyyy'') tahun ';
     Open;
   end;
   Edth.Text:=dm.Qtemp.FieldByName('tahun').AsString;

   with dm.Qtemp1 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtterima.Date))+' :: DATE, ''mm'') bulan ';
     Open;
   end;
   Edbln.Text:=dm.Qtemp1.FieldByName('bulan').AsString;
end;

procedure TFNew_TerimaMaterial.EdjenisSelect(Sender: TObject);
begin
   load;
   EdNoSPB.Text:='0';
end;

procedure TFNew_TerimaMaterial.EdNm_suppButtonClick(Sender: TObject);
begin
    with FSupp_Pembelian do
    begin
      jenis_tr:='tr_pemb';
      Show;
      if Qsupplier.Active=False then
      Qsupplier.Active:=True;
    end;
end;

procedure TFNew_TerimaMaterial.EdNoSPBSelect(Sender: TObject);
begin
    with Dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT c.wh_code,c.sbu_code,a.spb_no,a.supplier_code,b.supplier_name, c.valas,c.valas_value,c."type",c.due_date,d.account_code,d.um ,d.account_name,avg(c.um_value) umpo'+
      ' FROM t_spb a inner join t_supplier b on a.supplier_code=b.supplier_code '+
      ' Left join (select a.*,b.spb_no from t_po A INNER JOIN t_spb_det b on a.po_no=b.po_no ) c on a.spb_no=c.spb_no '+
      ' Left join (SELECT AVG(a.pay)as um ,a.account_code,a.voucher_no,b.account_name FROM t_payment_detail_real a inner join'+
      ' t_ak_account b on a.account_code=b.code GROUP BY a.account_code,a.voucher_no,b.account_name) as d on a.po_no=d.voucher_no '+
      ' where a.spb_no='+QuotedStr(EdNoSPB.Text)+''+
      ' GROUP BY c.wh_code,c.sbu_code,a.spb_no,a.supplier_code,b.supplier_name, c.valas,c.valas_value,c."type",c.due_date,d.account_code,d.um ,d.account_name';
      ExecSQL;
    end;
    gudang:=dm.Qtemp['wh_code'];
    Edkd_supp.Text:=Dm.Qtemp.FieldByName('supplier_code').AsString;
    EdNm_supp.Text:=Dm.Qtemp.FieldByName('supplier_name').AsString;
    EdValas.Text:=Dm.Qtemp.FieldByName('valas').AsString;
    EdNilai_Valas.Text:=Dm.Qtemp.FieldByName('valas_value').Value;
    Edjenispo.Text:=Dm.Qtemp.FieldByName('type').AsString;
    Edjatuhtempo.Text:=Dm.Qtemp.FieldByName('due_date').AsString;
   // nopo:=Dm.Qtemp.FieldByName('po_no').AsString;

    if Dm.Qtemp.FieldByName('um').Asfloat > 0 then
       EdNilai_um.Value:=Dm.Qtemp.FieldByName('um').value
    else
       EdNilai_um.Value:=0;
    if Dm.Qtemp.FieldByName('umpo').Asfloat > 0 then
       Edum.Value:=Dm.Qtemp.FieldByName('umpo').value
    else
       Edum.Value:=0;
    if Dm.Qtemp['account_code']= null then
       Edkd_akunum.Text:=''
    else
       Edkd_akunum.Text:=Dm.Qtemp['account_code'];
       Edsbu.Text:=DM.Qtemp['sbu_code'];
end;

procedure TFNew_TerimaMaterial.FormShow(Sender: TObject);
begin
    loadtype;
    MemterimaDet.Close;
    if MemterimaDet.Active=false then MemterimaDet.Active:=true;
    Edsbu.Clear;
    with Dm.Qtemp do
      begin
       close;
       sql.Text:=' select * from t_sbu';
       ExecSQL;
      end;
      Dm.Qtemp.First;
      while not dm.Qtemp.Eof do
       begin
        Edsbu.Items.Add(Dm.Qtemp.FieldByName('sbu_code').AsString);
        Dm.Qtemp.Next;
       end;
       EdNoSPB.Enabled:=false;

end;

procedure TFNew_TerimaMaterial.Load;
begin
      EdNoSPB.Clear;
      if loksbu='' then
      begin
          with Dm.Qtemp do
          begin
           close;
           sql.Text:=' select a.*,b.supplier_name from t_spb a left join t_supplier b on '+
                     ' a.supplier_code=b.supplier_code WHERE a.spb_no in (select spb_no from t_spb'+
                     ' EXCEPT select spb_no from t_item_receive) and "approval_status"=''1'' '+
                     ' and trans_category='+QuotedStr(Edjenis.Text)+''+
                     ' order by spb_no asc';
            ExecSQL;
          end;
          Dm.Qtemp.First;
          while not dm.Qtemp.Eof do
          begin
            EdNoSPB.Items.Add(Dm.Qtemp.FieldByName('spb_no').AsString);
            Dm.Qtemp.Next;
          end;
          edsbu.Clear;
          with Dm.Qtemp do
          begin
            close;
            sql.Text:='select sbu_code from t_sbu order by sbu_code Asc';
            ExecSQL;
          end;
          Dm.Qtemp.First;
          while not dm.Qtemp.Eof do
          begin
            edsbu.Items.Add(Dm.Qtemp.FieldByName('sbu_code').AsString);
            Dm.Qtemp.Next;
          end;
      end;
      if loksbu<>'' then
      begin
          with Dm.Qtemp do
          begin
            close;
            sql.Text:=' select a.*,b.supplier_name from t_spb a left join t_supplier b on '+
                     ' a.supplier_code=b.supplier_code WHERE a.spb_no in (select spb_no from t_spb'+
                     ' EXCEPT select spb_no from t_item_receive) and a."approval_status"=''1'''+
                     ' and ( sbu_code='+QuotedStr(loksbu)+' or sbu_code='''' or sbu_code=''MLB'') '+
                     ' and trans_category='+QuotedStr(Edjenis.Text)+''+
                     ' order by sbu_code asc';
            ExecSQL;
          end;
          Dm.Qtemp.First;
          while not dm.Qtemp.Eof do
          begin
            EdNoSPB.Items.Add(Dm.Qtemp.FieldByName('spb_no').AsString);
            Dm.Qtemp.Next;
          end;
          Edsbu.Text:=loksbu;
      end;

    {EdNoSPB.Clear;
    with dm.Qtemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='select user_name,password from t_user where user_name='+QuotedStr(Nm);
      ExecSQL;
    end;
    if dm.QTemp2['akses_gudang']<>'True' then
    begin
        if loksbu='' then
        begin
          with Dm.Qtemp do
          begin
            close;
            sql.Text:=' select a.*,b.nm_supplier from t_spb a left join t_supplier b on '+
                      ' a.kd_supplier=b.kd_supplier WHERE a.nospb in (select nospb from t_spb'+
                      ' EXCEPT select nospb from t_terima_material) and "Status_approval"=''1'' '+
                      ' and kategori_tr='+QuotedStr(Edjenis.Text)+''+
                      ' order by nospb asc';
            ExecSQL;
          end;
          Dm.Qtemp.First;
          while not dm.Qtemp.Eof do
            begin
              EdNoSPB.Items.Add(Dm.Qtemp.FieldByName('nospb').AsString);
              Dm.Qtemp.Next;
            end;
              edsbu.Clear;
            with Dm.Qtemp do
            begin
              close;
              sql.Text:='select kd_sbu from t_sbu order by kd_sbu Asc';
              ExecSQL;
            end;
            Dm.Qtemp.First;
            while not dm.Qtemp.Eof do
            begin
              edsbu.Items.Add(Dm.Qtemp.FieldByName('kd_sbu').AsString);
              Dm.Qtemp.Next;
            end;
        end;
        if loksbu<>'' then
        begin
          with Dm.Qtemp do
          begin
            close;
            sql.Text:=' select a.*,b.nm_supplier from t_spb a left join t_supplier b on '+
                      ' a.kd_supplier=b.kd_supplier WHERE a.nospb in (select nospb from t_spb'+
                      ' EXCEPT select nospb from t_terima_material) and a."Status_approval"=''1'''+
                      ' and (kd_sbu='+QuotedStr(loksbu)+' or kd_sbu='''' or kd_sbu=''MLB'') '+
                      ' and kategori_tr='+QuotedStr(Edjenis.Text)+''+
                      ' order by nospb asc';
            ExecSQL;
          end;
          Dm.Qtemp.First;
          while not dm.Qtemp.Eof do
          begin
            EdNoSPB.Items.Add(Dm.Qtemp.FieldByName('nospb').AsString);
            Dm.Qtemp.Next;
          end;
          Edsbu.Text:=loksbu;
        end;
    end;}
    {if DM.Qtemp2['akses_gudang']='True' then
    begin
        with Dm.Qtemp3 do
        begin
          close;
          sql.Text:=' select a.*,b.nm_supplier,c.gudang from t_spb a left join t_supplier b on '+
                    ' a.kd_supplier=b.kd_supplier INNER JOIN t_po c on a.nopo=c.nopo  WHERE a.nospb in (select nospb from t_spb'+
                    ' EXCEPT select nospb from t_terima_material) and a."Status_approval"=''1'''+
                    ' and (a.kd_sbu='+QuotedStr(loksbu)+' or a.kd_sbu='''' or a.kd_sbu=''MLB'') '+
                    ' and a.kategori_tr='+QuotedStr(Edjenis.Text)+' and c.gudang in (select nm_gudang from t_user_gudang a INNER JOIN'+
                    ' t_gudang b on a.kd_gudang=b.kode where a.nik='+QuotedStr(dm.QTemp2['nik'])+') '+
                    ' order by nospb asc';
          ExecSQL;
        end;
        Dm.Qtemp3.First;
        while not dm.Qtemp3.Eof do
        begin
          EdNoSPB.Items.Add(Dm.Qtemp3.FieldByName('nospb').AsString);
          Dm.Qtemp3.Next;
        end;
        Edsbu.Text:=loksbu;
    end;}
end;

procedure TFNew_TerimaMaterial.Load2;
begin
      EdNoSPB.Clear;
      if loksbu='' then
      begin
          with Dm.Qtemp do
          begin
           close;
           sql.Text:='select a.*,b.supplier_name from t_po a left join t_supplier b on '+
           ' a.supplier_code=b.supplier_code WHERE a.po_no in (select po_no from t_po   '+
           ' EXCEPT select spb_no from t_item_receive) and "approval_status"=''1'' '+
           ' and trans_category='+QuotedStr(Edjenis.Text)+' order by po_no asc';
            ExecSQL;
          end;
          Dm.Qtemp.First;
          while not dm.Qtemp.Eof do
          begin
            EdNoSPB.Items.Add(Dm.Qtemp.FieldByName('po_no').AsString);
            Dm.Qtemp.Next;
          end;
          edsbu.Clear;
          with Dm.Qtemp do
          begin
            close;
            sql.Text:='select sbu_code from t_sbu order by sbu_code Asc';
            ExecSQL;
          end;
          Dm.Qtemp.First;
          while not dm.Qtemp.Eof do
          begin
            edsbu.Items.Add(Dm.Qtemp.FieldByName('sbu_code').AsString);
            Dm.Qtemp.Next;
          end;
      end;
      if loksbu<>'' then
      begin
          with Dm.Qtemp do
          begin
            close;
             sql.Text:='select a.*,b.supplier_name from t_po a left join t_supplier b on '+
             ' a.supplier_code=b.supplier_code WHERE a.po_no in (select po_no from t_po   '+
             ' EXCEPT select spb_no from t_item_receive) and "approval_status"=''1'' '+
             ' and ( sbu_code='+QuotedStr(loksbu)+' or sbu_code='''' or sbu_code=''MLB'') '+
             ' and trans_category='+QuotedStr(Edjenis.Text)+' order by po_no asc';
            ExecSQL;
          end;
          Dm.Qtemp.First;
          while not dm.Qtemp.Eof do
          begin
            EdNoSPB.Items.Add(Dm.Qtemp.FieldByName('po_no').AsString);
            Dm.Qtemp.Next;
          end;
          Edsbu.Text:=loksbu;
      end;
end;

procedure TFNew_TerimaMaterial.LoadPO;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.Text:='SELECT * FROM t_po LEFT JOIN	t_spb ON t_po.nopo = t_spb.nopo where t_po.status<>''0''';// WHERE nospb is NULL';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    Dm.Qtemp.Next;
  end;
end;

end.
