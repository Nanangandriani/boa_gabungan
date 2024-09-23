unit UNew_Pembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, RzBtnEdt, RzEdit, Vcl.Mask, RzCmboBx, RzButton, Vcl.ExtCtrls,
  MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzPanel,
  DataDriverEh;

type
  TFNew_Pembelian = class(TForm)
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    BPosting: TRzBitBtn;
    Button1: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Lblakun: TLabel;
    Label2: TLabel;
    Label7: TLabel;
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
    EdPIB: TEdit;
    GBDok: TGroupBox;
    Cksj: TCheckBox;
    CkFk: TCheckBox;
    CkInv: TCheckBox;
    Edbea: TRzNumericEdit;
    EdNilai_Valas: TRzNumericEdit;
    Edjenispo: TRzComboBox;
    Edkd_akunBea: TRzButtonEdit;
    Edsbu: TComboBox;
    dtfaktur2: TRzDateTimeEdit;
    QMaterial1: TUniQuery;
    DsTerimadet: TDataSource;
    DsMaterial: TDataSource;
    MemterimaDet: TMemTableEh;
    MemterimaDetnm_material: TStringField;
    MemterimaDetkd_material: TStringField;
    MemterimaDetkd_stok: TStringField;
    MemterimaDetqty: TFloatField;
    MemterimaDetsatuan: TStringField;
    MemterimaDetgudang: TStringField;
    MemterimaDetno_ked: TStringField;
    MemterimaDetno_material: TStringField;
    MemterimaDetqtypo: TFloatField;
    MemterimaDetsatuanpo: TStringField;
    MemterimaDetqtyselisih: TFloatField;
    MemterimaDettahun: TStringField;
    MemterimaDetqtyperkonversi: TFloatField;
    MemterimaDetqtykonversi: TFloatField;
    MemterimaDetsatuankonversi: TStringField;
    MemterimaDetppn: TFloatField;
    MemterimaDetpph: TFloatField;
    MemterimaDetsubtotal: TFloatField;
    MemterimaDetgrandtotal: TFloatField;
    MemterimaDetppn_rp: TFloatField;
    MemterimaDetppn_rp_pembulatan: TFloatField;
    MemterimaDetpph_rp: TFloatField;
    MemterimaDetHarga: TFloatField;
    MemterimaDetnopo: TStringField;
    MemterimaDetkd_akun: TStringField;
    MemterimaDetkd_akunbea: TStringField;
    MemterimaDetbea_masuk: TFloatField;
    MemterimaDetkd_akunpph: TStringField;
    MemterimaDetppnrp: TFloatField;
    MemterimaDetpphrp: TFloatField;
    MemterimaDetbeamasuk: TFloatField;
    MemterimaDetsubtotalrp: TFloatField;
    MemterimaDettotalrp: TFloatField;
    MemterimaDetnourut: TStringField;
    MemterimaDetpemb_dpp: TCurrencyField;
    Edurut: TEdit;
    Edth: TEdit;
    Edbln: TEdit;
    Edhari: TEdit;
    MemterimaDetitem_stock_code: TStringField;
    MemterimaDetwh_code: TStringField;
    Cb_Sumber: TRzComboBox;
    EdCurr: TRzComboBox;
    Label12: TLabel;
    Label14: TLabel;
    Cb_Ref: TRzComboBox;
    Label16: TLabel;
    Edkd_sumber: TEdit;
    DS_UM: TDataSource;
    QUM: TUniQuery;
    MemUm: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    MemUangMuka: TMemTableEh;
    DSUangMuka: TDataSource;
    Qterima_barang: TUniQuery;
    DSTerima_barang: TDataSource;
    MemTerima_barang: TMemTableEh;
    DataSetDriverTerima_Barang: TDataSetDriverEh;
    QPot_pemb: TUniQuery;
    DS_pot_pemb: TDataSource;
    QRetur_pemb: TUniQuery;
    DSRetur_pemb: TDataSource;
    RzPanel1: TRzPanel;
    Label26: TLabel;
    Label19: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    edum: TRzNumericEdit;
    Edkd_akunum: TRzEdit;
    Edkd_akun: TRzEdit;
    EdNm_akunum: TRzButtonEdit;
    EdNm_akun: TRzButtonEdit;
    EdNilai_um: TRzNumericEdit;
    EdSisaHutang: TRzNumericEdit;
    Button2: TButton;
    PGFaktur: TRzPageControl;
    TabBarang2: TRzTabSheet;
    DBGridDetailpo: TDBGridEh;
    Tab_UM: TRzTabSheet;
    DBGrid_UM: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Tab_Retur_Pemb: TRzTabSheet;
    DBGridReturPemb: TDBGridEh;
    Tab_Pot_Pemb: TRzTabSheet;
    DBGridPotPemb: TDBGridEh;
    Tab_Barang: TRzTabSheet;
    DBGridBarang: TDBGridEh;
    Label20: TLabel;
    RzPanel2: TRzPanel;
    Label28: TLabel;
    Label24: TLabel;
    Label22: TLabel;
    Label18: TLabel;
    EdJum_Hutang: TRzNumericEdit;
    EdJum_Um: TRzNumericEdit;
    EdJum_PotPem: TRzNumericEdit;
    EdJum_ReturPemb: TRzNumericEdit;
    EdJum_totalhut: TRzNumericEdit;
    Label29: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure EdjenisSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure EdNoSPBSelect(Sender: TObject);
    procedure DBGridDetailpoColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridDetailpoColEnter(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure DtterimaChange(Sender: TObject);
    procedure CksjClick(Sender: TObject);
    procedure CkFkClick(Sender: TObject);
    procedure CkInvClick(Sender: TObject);
    procedure DBGridDetailpoColumns22EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BEditClick(Sender: TObject);
    procedure BPostingClick(Sender: TObject);
    procedure EdNm_akunumButtonClick(Sender: TObject);
    procedure EdValasChange(Sender: TObject);
    procedure EdjenispoChange(Sender: TObject);
    procedure Edkd_akunBeaButtonClick(Sender: TObject);
    procedure EdNm_suppButtonClick(Sender: TObject);
    procedure Cb_SumberSelect(Sender: TObject);
    procedure Cb_RefSelect(Sender: TObject);
    procedure EdCurrChange(Sender: TObject);
    procedure EdNilai_ValasChange(Sender: TObject);
    procedure DBGridDetailpoCellClick(Column: TColumnEh);
    procedure DBGridDetailpoColumns24EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure EdJum_HutangChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure clear;
    Procedure SimpanStok;
    Procedure Edit;
    Procedure Posting;
    Procedure Posting2;
    Procedure Autonumber;
    Procedure Load;
    procedure loadtype;
    Procedure LoadPo;
    procedure AutonumberCome;
    procedure Load_Currency;
    procedure Load_ref_receive;
  end;

var
//function
  FNew_Pembelian: TFNew_Pembelian;
var
   thn,bln,status_pos,kd_akppn,kd_akpph,kd_akbea,Nofk,nopo,nourut,jenis_pembelian,kd_urut,tgl,statustr:String;
   status,status_sj,status_fk,status_inv,stts:Integer;
   jmlh_hutang,sisa_hutang,jmlh_bayar,ppn_rp,grandtotal:real;
   Dtdate:tdatetime;

implementation

{$R *.dfm}

uses UDataModule, UMainMenu, UMy_Function, USearch_TerimaBarang,
  UAkun_Perkiraan_TerimaMat, UPembelian,USupp_Pembelian;

//var
  //realfnew_pemb : TFNew_Pembelian;

// implementasi function
{function fNew_pembelian: TFNew_Pembelian;
begin
  if realfnew_pemb <> nil then
    fNew_pembelian:= realfnew_pemb
  else
    Application.CreateForm(TFNew_Pembelian, Result);
end;}


procedure TFNew_Pembelian.Load_ref_receive;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='SELECT * from purchase.t_ref_item_receive where status=''true'' ';
        Open;
      end;
      Dm.Qtemp.First;
      cb_sumber.Items.Clear;
      while not dm.Qtemp.Eof do
      begin
         cb_sumber.Items.Add(Dm.Qtemp.FieldByName('ref_name').AsString);
         Dm.Qtemp.Next;
      end;
end;
procedure TFNew_Pembelian.Load_Currency;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='SELECT * from t_currency where status=''true'' ';
        Open;
      end;
      Dm.Qtemp.First;
      EdCurr.Items.Clear;
      while not dm.Qtemp.Eof do
      begin
         EdCurr.Items.Add(Dm.Qtemp.FieldByName('currency_code').AsString);
         Dm.Qtemp.Next;
      end;
end;

procedure TFNew_Pembelian.BBatalClick(Sender: TObject);
begin
  Close;
  FPembelian.ActRoExecute(sender);
end;

procedure TFNew_Pembelian.AutonumberCome;
begin

end;

procedure TFNew_Pembelian.BEditClick(Sender: TObject);
begin
    MemterimaDet.First;
    while not MemterimaDet.Eof do
    begin
      DBGridDetailpoColEnter(sender);
      MemterimaDet.Next;
    end;
    EdSisaHutang.Value:=DBGridDetailpo.Columns[25].Footer.sumvalue-EdNilai_um.Value;

    if messageDlg ('Anda Yakin Simpan Pembelian No.'+EdNo.text+' '+'?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
    begin
      Dtdate:=now();
      MemterimaDet.First;
      while not MemterimaDet.Eof do
      begin
        if DBGridDetailpo.Fields[0].AsString='' then
        begin
          MemterimaDet.Delete;
        end;
        MemterimaDet.Next;
      end;

      MemterimaDet.First;
      while not MemterimaDet.Eof do
      begin
        if MemterimaDet['kd_material']='' then
        begin
          MemterimaDet.Delete;
        end;
        MemterimaDet.Next;
      end;
      //23-11-2023 menambahkan proteksi kalau sudah dibuatkan retur tidak bisa di edit
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT * FROM t_returnpembelian where no_terima='+quotedstr(EdNo.text);
        ExecSQL;
      end;
      if dm.Qtemp.RecordCount > 0 then
      begin
        MessageDlg('No. terima ini sudah dibuatkan retur,untuk melanjutkan update harus batalkan/hapus returnya terlebih dahulu',MtWarning,[MbOk],0);
        EdNo.SetFocus;
        Exit;
      end;

      //23-11-2023 menambahkan proteksi kalau sudah dibuatkan potongan tidak bisa di edit
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT * FROM t_pot_pembelian where no_terima='+quotedstr(EdNo.text);
        ExecSQL;
      end;
      if dm.Qtemp.RecordCount > 0 then
      begin
        MessageDlg('No. terima ini sudah dibuatkan potongan pembelian,untuk melanjutkan update harus batalkan/hapus potongan pembeliannya terlebih dahulu',MtWarning,[MbOk],0);
        EdNo.SetFocus;
        Exit;
      end;

      //2023 menambahkan proteksi kalau sudah dibuatkan rencana pembayaran tidak bisa di edit
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT * FROM tbl_det_lunas_hutang where nofaktur='+quotedstr(Edno_Faktur.text)+' and noinv='+QuotedStr(edno.Text);
        ExecSQL;
      end;
      if dm.Qtemp.RecordCount > 0 then
      begin
        MessageDlg('No. Faktur Sudah di Ajukan Pembayaran',MtWarning,[MbOk],0);
        EdNo.SetFocus;
        Exit;
      end;
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT * FROM t_terima_material where nofaktur='+quotedstr(edno_faktur.text)+' and no_terima<>'+QuotedStr(EdNo.Text);
        ExecSQL;
      end;
      if dm.Qtemp.RecordCount > 0 then
      begin
        MessageDlg('No. Faktur Sudah Terpakai',MtWarning,[MbOk],0);
        EdNo.SetFocus;
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
      if EdSJ.Text='' then
      begin
        MessageDlg('Surat Jalan Tidak boleh Kosong ',MtWarning,[MbOk],0);
        EdSJ.SetFocus;
        Exit;
      end;
      if Edkd_akun.Text='' then
      begin
        MessageDlg('Akun Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
        Edkd_akun.SetFocus;
        Exit;
      end;
      if not dm.koneksi.InTransaction then
      dm.koneksi.StartTransaction;
      try
      begin
          if status=1 then
          begin
            self.Edit;
          end;
          if status=2 then
          begin
            Self.Posting;
          end;
          SimpanStok;
          dm.koneksi.Commit;
          Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
          BBatalClick(sender);
      end
      Except
      on E :Exception do
      begin
       MessageDlg(E.Message,mtError,[MBok],0);
       dm.koneksi.Rollback;
      end;
      end;
    end;
end;

procedure TFNew_Pembelian.BPostingClick(Sender: TObject);
begin
    MemterimaDet.First;
    while not MemterimaDet.Eof do
    begin
      DBGridDetailpoColEnter(sender);
      MemterimaDet.Next;
    end;
    EdSisaHutang.Value:=DBGridDetailpo.Columns[25].Footer.sumvalue-EdNilai_um.Value;
    if status_pos='POSTING' then
    begin
      ShowMessage('Data Sudah Di Posting');
    end else
    if status_pos<>'POSTING' then
    begin
      Posting;
    end;
    BBatalClick(sender);
end;

procedure TFNew_Pembelian.BSimpanClick(Sender: TObject);
begin
      if EdNilai_um.Value<>edum.Value then
      begin
        MessageDlg('Maaf Uang Muka Belum Lunas',MtWarning,[MbOk],0);
        Exit;
      end;
      Autonumber;
      MemterimaDet.First;
      while not MemterimaDet.Eof do
      begin
        DBGridDetailpoColEnter(sender);
        MemterimaDet.Next;
      end;
      EdSisaHutang.Value:=DBGridDetailpo.Columns[25].Footer.sumvalue-EdNilai_um.Value;

      if messageDlg ('Anda Yakin Simpan Pembelian No.'+EdNo.text+' '+'?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='SELECT * FROM purchase.t_purchase_invoice where faktur_no='+quotedstr(Edno_Faktur.text);
          ExecSQL;
        end;
        if dm.Qtemp.RecordCount > 0 then
        begin
          MessageDlg('No. Faktur Sudah Terpakai',MtWarning,[MbOk],0);
          EdNo.SetFocus;
          Exit;
        end;
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='SELECT * FROM purchase.t_buy_pay where inv_supp_no='+quotedstr(Edno_Faktur.text);
          ExecSQL;
        end;
        if dm.Qtemp.RecordCount > 0 then
        begin
          MessageDlg('No. Faktur Sudah di Ajukan Pembayaran',MtWarning,[MbOk],0);
          EdNo.SetFocus;
          Exit;
        end;

        MemterimaDet.First;
        while not MemterimaDet.Eof do
        begin
        if DBGridDetailpo.Fields[0].AsString='' then
          begin
            MemterimaDet.Delete;
          end;
          MemterimaDet.Next;
        end;
        {if Edjenis.Text='' then
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
        end;}
        if EdSJ.Text='' then
        begin
          MessageDlg('Surat Jalan Tidak boleh Kosong ',MtWarning,[MbOk],0);
          EdSJ.SetFocus;
          Exit;
        end;

      if not dm.koneksi.InTransaction then
      dm.koneksi.StartTransaction;
        try
        begin

           //SimpanStok;
           if MemterimaDet['ppn_rp']<>0 then
           begin
              with dm.Qtemp2 do
              begin
                Close;
                sql.Clear;
                sql.Text:='select account_code from t_master_account where code=''1''';
                ExecSQL;
              end;
              kd_akppn:=DM.QTemp2['account_code'];
           end;

           if edjenis.Text='AKTIVA' then
           begin
              with dm.Qtemp do
              begin
                close;
                sql.Clear;
                sql.Text:='select * from purchase.t_purchase_invoice ';
                ExecSQL;
              end;
              with dm.Qtemp do
              begin
                  close;
                  sql.Clear;
                  sql.Text:=' insert into purchase.t_purchase_invoice(trans_no_no,trans_date,remark,spb_no,sj_no,faktur_no,'+
                            ' supplier_code,faktur_date,due_date,purchase_type,debt_amount,payment_amount,'+
                            ' debt_remaining,ppn_rp,pic,status,valas,valas_value,account_code,trans_month,trans_year,import_duty,'+
                            ' pph_rp,sbu_code,pib_no,po_type,faktur2_date,account_um_code,um_value,trans_day,pic2,order_no,ref_no)values(:parno_terima,'+
                            ' :partgl_terima,:parket,:parnospb,:parnosj,:parnofaktur,:parkd_supplier,'+
                            ' :partgl_faktur,:parjatuh_tempo,:parjenis_pembelian,:parjmlh_hutang,:parjmlh_bayar,'+
                            ' :parsisa_hutang,:parppn_rp,:parpic,:parstatus,:parvalas,:parnilai_valas,:parkd_akun,:parbln,'+
                            ' :parthn,:parbea,:parpph,:parsbu,:parpib,:parjenispo,:partgl_faktur2,:parkd_akunum,:parum,:partgl_no,:parpic2,:parorder_no,:parref_no)';
                            ParamByName('parno_terima').Value:=EdNo.Text;
                            //ParamByName('partgl_terima').Value:=FormatDateTime('yyyy-mm-dd',Dtterima.Date);
                            ParamByName('partgl_terima').Value:=FormatDateTime('yyyy-mm-dd',Dtfaktur.Date);
                            ParamByName('parket').Value:=EdKet.Text;
                            ParamByName('parnospb').Value:=EdNoSPB.Text;
                            ParamByName('parnosj').Value:=EdSJ.Text;
                            ParamByName('parnofaktur').Value:=Edno_Faktur.Text;
                            ParamByName('parkd_supplier').Value:=Edkd_supp.Text;
                            ParamByName('partgl_faktur').Value:=FormatDateTime('yyyy-mm-dd',DtFaktur.Date);
                            ParamByName('partgl_faktur2').Value:=FormatDateTime('yyyy-mm-dd',DtFaktur2.Date);
                            ParamByName('parjatuh_tempo').Value:=Edjatuhtempo.Text;
                            ParamByName('parjenis_pembelian').Value:=Edjenis.Text;
                            ParamByName('parjmlh_hutang').Value:=DBGridDetailpo.Columns[25].Footer.sumvalue;
                            ParamByName('parjmlh_bayar').Value:=0;
                            ParamByName('parsisa_hutang').Value:=EdSisaHutang.Value;
                            ParamByName('parppn_rp').Value:=DBGridDetailpo.Columns[18].Footer.SumValue;
                            ParamByName('parpic').Value:=Nm;
                            ParamByName('parstatus').Value:='Created';
                            ParamByName('parvalas').Value:=EdValas.Text;
                            ParamByName('parnilai_valas').Value:=EdNilai_Valas.Text;
                            ParamByName('parkd_akun').Value:=Edkd_akun.Text;
                            ParamByName('parbln').Value:=Edbln.Text;
                            ParamByName('parthn').Value:=Edth.text;
                            ParamByName('parbea').Value:=DBGridDetailpo.Columns[23].Footer.sumvalue;
                            ParamByName('parpph').Value:=DBGridDetailpo.Columns[21].Footer.sumvalue;
                            ParamByName('parsbu').Value:=edsbu.text;
                            ParamByName('parpib').Value:=EdPIB.text;
                            ParamByName('parjenispo').Value:=Edjenispo.Text;
                            ParamByName('parkd_akunum').Value:=Edkd_akunum.Text;
                            ParamByName('parum').Value:=EdNilai_um.Value;
                            ParamByName('partgl_no').Value:=Edhari.Text;
                            //ParamByName('partgl_no').Value:=FormatDateTime('dd',Dtterima.Date);
                            ParamByName('parpic2').Value:=Nm;
                            ParamByName('parorder_no').Value:=Edurut.text;
                            ParamByName('parref_no').Value:=Cb_Ref.text;
                  ExecSQL;
              end;
              MemterimaDet.First;
              while not MemterimaDet.Eof do
              begin
                with dm.Qtemp2 do
                begin
                      Close;
                      sql.Clear;
                      sql.Text:=' insert into purchase.t_purchase_invoice_det(item_stock_code,stock_code,qty,unit,wh_code,'+
                                ' trans_year,po_no,receive_no,qty_po,unit_po,qty_difference,qty_per_conversion,qty_conversion,'+
                                ' unit_conversion,subtotal,ppn,ppn_rp,pph,pph_rp,grandtotal,price,account_code,'+
                                ' trans_status,ppn_pembulatan,account_pph_code,duty_account_code,import_duty,subtotalrp,order_no,trans_no)values(:parkd_material_stok,:parkd_stok,:parqty,:parsatuan,:pargudang,'+
                                ' :parTahun,:parnopo,:parno_terima,:parqtypo,:parsatuanpo,:parqtyselisih,:parqtyperkonversi,'+
                                ' :parqtykonversi,:parsatuankonversi,:parsubtotal,:parppn,:parppn_rp,:parpph,'+
                                ' :parpph_rp,:pargrandtotal,:parharga,:parkd_akun,:parstatustrans,:parppn_pembulatan,'+
                                ' :parkd_akpph,:parkd_akbea,:parbea,:parsubtotalrp,:parnourut,:partrans_no)';

                                ParamByName('parkd_material_stok').Value:=MemterimaDet['item_stock_code'];
                                //ParamByName('parkd_material_stok').Value:=MemterimaDet['kd_material'];
                                ParamByName('parkd_stok').Value:=MemterimaDet['kd_stok'];
                                ParamByName('parqty').Value:=MemterimaDet['qty'];
                                ParamByName('parsatuan').Value:=MemterimaDet['satuan'];
                                //ParamByName('pargudang').Value:=MemterimaDet['gudang'];
                                ParamByName('pargudang').Value:=MemterimaDet['wh_code'];
                                ParamByName('partahun').Value:=MemterimaDet['tahun'];
                                ParamByName('parnopo').Value:=MemterimaDet['nopo'];
                                //ParamByName('parno_terima').Value:=EdNo.Text;
                                ParamByName('partrans_no').Value:=EdNo.Text;
                                ParamByName('parqtypo').Value:=MemterimaDet['qtypo'];
                                ParamByName('parsatuanpo').Value:=MemterimaDet['satuanpo'];
                                ParamByName('parqtyselisih').Value:=MemterimaDet['qtyselisih'];
                                ParamByName('parqtyperkonversi').Value:=0;
                                ParamByName('parqtykonversi').Value:=0;
                                ParamByName('parsatuankonversi').Value:=0;
                                ParamByName('parppn').Value:=MemterimaDet['ppn'];

                                ParamByName('parpph').Value:=MemterimaDet['pph'];

                                if MemterimaDet['ppn_rp'] = null then parambyname('parppn_rp').Value:='0' else ParamByName('parppn_rp').Value:=MemterimaDet['ppn_rp'];
                                if MemterimaDet['pph_rp'] = null then parambyname('parpph_rp').Value:='0' else ParamByName('parpph_rp').Value:=MemterimaDet['pph_rp'];
                                if MemterimaDet['ppn_rp_pembulatan'] = null then parambyname('parppn_pembulatan').Value:='0' else ParamByName('parppn_pembulatan').Value:=MemterimaDet['ppn_rp_pembulatan'];
                                if MemterimaDet['bea_masuk'] = null then parambyname('parbea').Value:='0' else ParamByName('parbea').Value:=MemterimaDet['bea_masuk'];
                                ParamByName('parkd_akpph').Value:=MemterimaDet['kd_akunpph'];
                                ParamByName('parkd_akbea').Value:=MemterimaDet['kd_akunbea'];
                                ParamByName('parharga').Value:=MemterimaDet['harga'];
                                ParamByName('parkd_akun').Value:=MemterimaDet['kd_akun'];
                                ParamByName('parsubtotal').Value:=MemterimaDet['subtotal'];
                                ParamByName('parsubtotalrp').Value:=MemterimaDet['subtotalrp'];
                                ParamByName('pargrandtotal').Value:=MemterimaDet['grandtotal'];
                                ParamByName('parstatustrans').Value:=0;

                                ParamByName('parnourut').Value:=MemterimaDet['nourut'];
                      ExecSQL;
                      MemterimaDet.Next;
                end;
                with dm.Qtemp do
                begin
                  close;
                  sql.Clear;
                  sql.Text:='Update purchase.t_spb set status=''SELESAI'' where spb_no='+QuotedStr(EdNoSPB.Text);
                  ExecSQL;
                end;

                with dm.Qtemp1 do
                begin
                  close;
                  sql.Clear;
                  sql.Text:='Update purchase.t_item_receive set status_on_faktur=''1'' where receive_no='+QuotedStr(Cb_ref.Text);
                  ExecSQL;
                end;
                MemterimaDet.First;
                while not MemterimaDet.Eof do
                begin
                   with dm.Qtemp2 do
                   begin
                      Close;
                      sql.Clear;
                      sql.Text:=' insert into t_asset(kd_barang,jumlah,tahun_perolehan,lokasi,tgl_perolehan,'+
                                ' kd_asset,mulai_depresiasi,selesai_depresiasi,kondisi,nilai_awal,'+
                                ' nilai_akhir,"total_depresiasi",jumlah_tahun_depresiasi,bln,tgl_no)'+
                                ' values(:parkd_barang,:parjumlah,:partahun_perolehan,:parlokasi,:partgl_perolehan,'+
                                ' :parkd_asset,:parmulai_depresiasi,:parselesai_depresiasi,:parkondisi,:parnilai_awal,'+
                                ' :parnilai_akhir,:partotal_depresiasi,:parjumlah_tahun_depresiasi,:parbln,:partgl)';
                                ParamByName('parkd_barang').Value:=MemterimaDet['kd_material'];
                                ParamByName('parjumlah').Value:=MemterimaDet['qty'];
                                ParamByName('partahun_perolehan').Value:=FormatDateTime('yyy',Dtterima.Date);
                                ParamByName('parbln').AsString:=FormatDateTime('mm',Dtterima.Date);
                                ParamByName('partgl').AsString:=FormatDateTime('dd',Dtterima.Date);
                                ParamByName('parlokasi').Value:=Kd_SBU;
                                ParamByName('partgl_perolehan').Value:=FormatDateTime('yyy-mm-dd',Dtterima.Date);
                                ParamByName('parkd_asset').Value:=MemterimaDet['kd_stok'];
                                ParamByName('parmulai_depresiasi').Value:=FormatDateTime('yyy-mm-dd',Dtterima.Date);
                                ParamByName('parselesai_depresiasi').Value:=Now();
                                ParamByName('parkondisi').Value:='';
                                ParamByName('parnilai_awal').Value:=MemterimaDet['subtotal'];
                                ParamByName('parnilai_akhir').Value:=MemterimaDet['subtotal'];
                                parambyname('partotal_depresiasi').Value:=0;
                                ParamByName('parjumlah_tahun_depresiasi').Value:=0;
                      ExecSQL;
                       MemterimaDet.Next;
                   end;
                end;
              end;
           end;

          if Edjenispo.Text='IMPORT' then
          begin
            with dm.Qtemp do
            begin
              close;
              sql.Clear;
              sql.Text:=' insert into purchase.t_item_receive2(receive_no,receive_date,remark,spb_no,sj_no,faktur_no,'+
                        ' supplier_code,faktur_date,due_date,purchase_type,debt_amount,payment_amount,'+
                        ' debt_remaining,ppn_rp,pic,status,valas,valas_value,account_code,trans_month,trans_year,import_duty,'+
                        ' duty_account_code,ppn_account_code,pph_account_code,sbu_code,pph_rp,order_no)values(:parno_terima,'+
                        ' :partgl_terima,:parket,:parnospb,:parnosj,:parnofaktur,:parkd_supplier,'+
                        ' :partgl_faktur,:parjatuh_tempo,:parjenis_pembelian,:parjmlh_hutang,:parjmlh_bayar,'+
                        ' :parsisa_hutang,:parppn_rp,:parpic,:parstatus,:parvalas,:parnilai_valas,:parkd_akun,:parbln,'+
                        ' :parthn,:parbea,:parkd_akbea,:parkd_akppn,:parkd_akpph,:parsbu,:parpph_rp,:parorder_no)';
                        ParamByName('parno_terima').Value:=EdNo.Text;
                        ParamByName('partgl_terima').Value:=FormatDateTime('yyyy-mm-dd',Dtterima.Date);
                        ParamByName('parket').Value:=EdKet.Text;
                        ParamByName('parnospb').Value:=EdNoSPB.Text;
                        ParamByName('parnosj').Value:=EdSJ.Text;
                        ParamByName('parnofaktur').Value:=Edno_Faktur.Text;
                        ParamByName('parkd_supplier').Value:=Edkd_supp.Text;
                        ParamByName('partgl_faktur').Value:=FormatDateTime('yyyy-mm-dd',DtFaktur.Date);
                        ParamByName('parjatuh_tempo').Value:=Edjatuhtempo.Text;
                        ParamByName('parjenis_pembelian').Value:=Edjenis.Text;
                        ParamByName('parjmlh_hutang').Value:=DBGridDetailpo.Columns[15].Footer.sumvalue;//*EdNilai_Valas.Value;
                        ParamByName('parjmlh_bayar').Value:=0;
                        ParamByName('parsisa_hutang').Value:=DBGridDetailpo.Columns[15].Footer.sumvalue;//*EdNilai_Valas.Value;
                        ParamByName('parppn_rp').Value:=DBGridDetailpo.Columns[18].Footer.SumValue;//*EdNilai_Valas.Value;
                        ParamByName('parpic').Value:=Nm;
                        ParamByName('parstatus').Value:='Created';
                        ParamByName('parvalas').Value:=EdValas.Text;
                        ParamByName('parnilai_valas').Value:=EdNilai_Valas.Text;
                        ParamByName('parkd_akun').Value:=Edkd_akun.Text;
                        ParamByName('parbln').Value:=Edbln.Text;
                        ParamByName('parthn').Value:=Edth.Text;
                        ParamByName('parbea').Value:=DBGridDetailpo.Columns[23].Footer.sumvalue;//*EdNilai_Valas.Value;
                        ParamByName('parkd_akbea').Value:=kd_akbea;
                        ParamByName('parkd_akppn').Value:=kd_akppn;
                        ParamByName('parkd_akpph').Value:=kd_akpph;
                        ParamByName('parsbu').Value:=edsbu.text;
                        ParamByName('parpph_rp').Value:=DBGridDetailpo.Columns[21].Footer.sumvalue;
                        ParamByName('parorder_no').Value:=Edurut.text;
                ExecSQL;
            end;
          end;

          if (edjenis.Text<>'AKTIVA') then
          begin
              with dm.Qtemp do
              begin
                close;
                sql.Clear;
                sql.Text:='select * from purchase.t_purchase_invoice';
                ExecSQL;
              end;
              with dm.Qtemp do
              begin
                close;
                sql.Clear;
                sql.Text:=' insert into purchase.t_purchase_invoice(trans_no,trans_date,remark,spb_no,sj_no,faktur_no,'+
                          ' supplier_code,faktur_date,due_date,purchase_type,debt_amount,payment_amount,'+
                          ' debt_remaining,ppn_rp,pic,status,valas,valas_value,account_code,trans_month,trans_year,import_duty,'+
                          ' sbu_code,pib_no,po_type,faktur2_date,account_um_code,um_value,trans_day,order_no,ref_no)values(:parno_terima,'+
                          ' :partgl_terima,:parket,:parnospb,:parnosj,:parnofaktur,:parkd_supplier,'+
                          ' :partgl_faktur,:parjatuh_tempo,:parjenis_pembelian,:parjmlh_hutang,:parjmlh_bayar,'+
                          ' :parsisa_hutang,:parppn_rp,:parpic,:parstatus,:parvalas,:parnilai_valas,:parkd_akun,:parbln,'+
                          ' :parthn,:parbea,:parsbu,:parpib,:parjenispo,:partgl_faktur2,:parkd_akunum,:parum,:partgl_no,:parorder_no,:parref_no)';
                          ParamByName('parno_terima').Value:=EdNo.Text;
                          //ParamByName('partgl_terima').Value:=FormatDateTime('yyyy-mm-dd',Dtterima.Date);
                          ParamByName('partgl_terima').Value:=FormatDateTime('yyyy-mm-dd',Dtfaktur.Date);
                          ParamByName('parket').Value:=EdKet.Text;
                          ParamByName('parnospb').Value:=EdNoSPB.Text;
                          ParamByName('parnosj').Value:=EdSJ.Text;
                          ParamByName('parnofaktur').Value:=Edno_Faktur.Text;
                          ParamByName('parkd_supplier').Value:=Edkd_supp.Text;
                          ParamByName('partgl_faktur').Value:=FormatDateTime('yyyy-mm-dd',DtFaktur.Date);
                          ParamByName('partgl_faktur2').Value:=FormatDateTime('yyyy-mm-dd',DtFaktur2.Date);
                          ParamByName('parjatuh_tempo').Value:=Edjatuhtempo.Text;
                          ParamByName('parjenis_pembelian').Value:=Edjenis.Text;
                          ParamByName('parjmlh_hutang').Value:=DBGridDetailpo.Columns[15].Footer.sumvalue;
                          ParamByName('parjmlh_bayar').Value:=0;
                          ParamByName('parsisa_hutang').Value:=EdSisaHutang.Value;
                          ParamByName('parppn_rp').Value:=DBGridDetailpo.Columns[18].Footer.SumValue;
                          ParamByName('parpic').Value:=Nm;
                          ParamByName('parstatus').Value:='Created';
                          ParamByName('parvalas').Value:=EdValas.Text;
                          ParamByName('parnilai_valas').Value:=EdNilai_Valas.Text;
                          ParamByName('parkd_akun').Value:=Edkd_akun.Text;
                          ParamByName('parbln').Value:=Edbln.Text;
                          ParamByName('parthn').Value:=edth.Text;
                          ParamByName('parbea').Value:=DBGridDetailpo.Columns[23].Footer.sumvalue;
                          ParamByName('parsbu').Value:=edsbu.text;
                          ParamByName('parpib').Value:=EdPIB.text;
                          ParamByName('parjenispo').Value:=Edjenispo.Text;
                          ParamByName('parkd_akunum').Value:=Edkd_akunum.Text;
                          ParamByName('parum').Value:=EdNilai_um.Value;
                          ParamByName('partgl_no').Value:=Edhari.Text;
                          //ParamByName('partgl_no').Value:=FormatDateTime('dd',Dtterima.Date);
                          ParamByName('parorder_no').Value:=Edurut.text;
                          ParamByName('parref_no').Value:=Cb_Ref.text;
                ExecSQL;
              end;
              MemterimaDet.First;
              while not MemterimaDet.Eof do
              begin
                 with dm.Qtemp2 do
                 begin
                    Close;
                    sql.Clear;
                    sql.Text:=' insert into purchase.t_purchase_invoice_det(item_stock_code,stock_code,qty,unit,wh_code,'+
                              ' trans_year,po_no,receive_no,qty_po,unit_po,qty_difference,qty_per_conversion,qty_conversion,'+
                              ' unit_conversion,subtotal,ppn,ppn_rp,pph,pph_rp,grandtotal,price,account_code,'+
                              ' trans_status,ppn_pembulatan,account_pph_code,duty_account_code,import_duty,subtotalrp,order_no,trans_no)values(:parkd_material_stok,:parkd_stok,:parqty,:parsatuan,:pargudang,'+
                              ' :parTahun,:parnopo,:parno_terima,:parqtypo,:parsatuanpo,:parqtyselisih,:parqtyperkonversi,'+
                              ' :parqtykonversi,:parsatuankonversi,:parsubtotal,:parppn,:parppn_rp,:parpph,'+
                              ' :parpph_rp,:pargrandtotal,:parharga,:parkd_akun,:parstatustrans,:parppn_pembulatan,'+
                              ' :parkd_akpph,:parkd_akbea,:parbea,:parsubtotalrp,:parnourut,:partrans_no)';
                              ParamByName('parkd_material_stok').Value:=MemterimaDet['item_stock_code'];
                              //ParamByName('parkd_material_stok').Value:=MemterimaDet['kd_material'];
                              ParamByName('parkd_stok').Value:=MemterimaDet['kd_stok'];
                              ParamByName('parqty').Value:=MemterimaDet['qty'];
                              ParamByName('parsatuan').Value:=MemterimaDet['satuan'];
                              //ParamByName('pargudang').Value:=MemterimaDet['gudang'];
                              ParamByName('pargudang').Value:=MemterimaDet['wh_code'];
                              ParamByName('partahun').Value:=MemterimaDet['tahun'];
                              ParamByName('parnopo').Value:=MemterimaDet['nopo'];
                              //ParamByName('parno_terima').Value:=EdNo.Text;
                              ParamByName('partrans_no').Value:=EdNo.Text;
                              ParamByName('parqtypo').Value:=MemterimaDet['qtypo'];
                              ParamByName('parsatuanpo').Value:=MemterimaDet['satuanpo'];
                              ParamByName('parqtyselisih').Value:=MemterimaDet['qtyselisih'];
                              ParamByName('parqtyperkonversi').Value:=0;
                              ParamByName('parqtykonversi').Value:=0;
                              ParamByName('parsatuankonversi').Value:=0;
                              ParamByName('parppn').Value:=MemterimaDet['ppn'];

                              ParamByName('parpph').Value:=MemterimaDet['pph'];

                              if MemterimaDet['ppn_rp'] = null then parambyname('parppn_rp').Value:='0' else ParamByName('parppn_rp').Value:=MemterimaDet['ppn_rp'];
                              if MemterimaDet['pph_rp'] = null then parambyname('parpph_rp').Value:='0' else ParamByName('parpph_rp').Value:=MemterimaDet['pph_rp'];
                              if MemterimaDet['ppn_rp_pembulatan'] = null then parambyname('parppn_pembulatan').Value:='0' else ParamByName('parppn_pembulatan').Value:=MemterimaDet['ppn_rp_pembulatan'];
                              if MemterimaDet['bea_masuk'] = null then parambyname('parbea').value:='0' else ParamByName('parbea').Value:=MemterimaDet['bea_masuk'];
                              ParamByName('parkd_akpph').Value:=MemterimaDet['kd_akunpph'];
                              ParamByName('parkd_akbea').Value:=MemterimaDet['kd_akunbea'];
                              ParamByName('parharga').Value:=MemterimaDet['harga'];
                              ParamByName('parkd_akun').Value:=MemterimaDet['kd_akun'];
                              ParamByName('parsubtotal').Value:=MemterimaDet['subtotal'];
                              ParamByName('parsubtotalrp').Value:=MemterimaDet['subtotalrp'];
                              ParamByName('pargrandtotal').Value:=MemterimaDet['grandtotal'];
                              ParamByName('parkd_akun').Value:=MemterimaDet['kd_akun'];
                              ParamByName('parstatustrans').Value:=0;

                              ParamByName('parkd_akpph').Value:=MemterimaDet['kd_akunpph'];
                              ParamByName('parkd_akbea').Value:=MemterimaDet['kd_akunbea'];

                              ParamByName('parnourut').Value:=MemterimaDet['nourut'];
                    ExecSQL;
                    MemterimaDet.Next;
                 end;
                 with dm.Qtemp do
                 begin
                    close;
                    sql.Clear;
                    sql.Text:='Update purchase.t_spb set status=''SELESAI'' where spb_no='+QuotedStr(EdNoSPB.Text);
                    ExecSQL;
                 end;

                 with dm.Qtemp1 do
                 begin
                    close;
                    sql.Clear;
                    sql.Text:='Update purchase.t_item_receive set status_on_faktur=''1'' where receive_no='+QuotedStr(Cb_ref.Text);
                    ExecSQL;
                 end;
              end;
          end;
          dm.koneksi.Commit;
          Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
          BBatalClick(sender);
        end
        Except
        on E :Exception do
        begin
          MessageDlg(E.Message,mtError,[MBok],0);
          dm.koneksi.Rollback;
        end;
      end;
    end;

end;

procedure TFNew_Pembelian.Button1Click(Sender: TObject);
begin
  Autonumber;
end;

procedure TFNew_Pembelian.Cb_RefSelect(Sender: TObject);
begin
     if Cb_Sumber.ItemIndex=0 then
     begin
       with dm.Qtemp do
       begin
         close;
         sql.Clear;
         sql.Text:='SELECT * FROM purchase.t_po WHERE po_no='+Quotedstr(Cb_ref.Text);
         open;
       end;
       EdCurr.text:=dm.Qtemp.FieldByName('valas').AsString;
       Edjenispo.Text:=dm.Qtemp.FieldByName('type').AsString;
     end
     else
     if Cb_Sumber.ItemIndex=1 then
     begin
       with dm.Qtemp do
       begin
         close;
         sql.Clear;
         sql.Text:='SELECT * FROM purchase.t_item_receive WHERE receive_no='+Quotedstr(Cb_ref.Text);
         open;
       end;
       EdCurr.text:=dm.Qtemp.FieldByName('valas').AsString;
       Edjenispo.Text:=dm.Qtemp.FieldByName('po_type').AsString;

       {DBGridBarang.StartLoadingStatus();
       with Qterima_barang do
       begin
         close;
         sql.Clear;
         sql.Text:=//'SELECT a.* FROM purchase.t_item_receive a inner join purchase.t_item_receive_det b '+
                   //' on a.receive_no=b.receive_no '+
                   //' WHERE a.receive_no='+Quotedstr(Cb_ref.Text);

                   'select a.item_stock_code,a.item_code, a.item_name, a.order_no,b.price,b.qty, b.unit,b.wh_code,f.wh_name,b.receive_no,b.ppn,b.pph, '+
                   'b.po_no, c.supplier_code, d.spb_no,e.account_code,b.subtotal,b.grandtotal,b.pemb_dpp,b.subtotalrp,b.ppn_rp,b.ppn_pembulatan,b.pph_rp,b.import_duty '+
                   'from warehouse.t_item_stock a '+
                   'inner join purchase.t_item_receive_det b on a.item_stock_code=b.item_stock_code '+
                   'inner join purchase.t_item_receive C on b.receive_no=c.receive_no '+
                   'inner join  purchase.t_spb_det d on d.spb_no=c.spb_no '+
                   'inner join t_item e on a.item_code=e.item_code '+
                   'inner join t_wh f on b.wh_code=f.wh_code '+
                   'where b.receive_no='+Quotedstr(Cb_ref.Text)+' '+
                   'GROUP BY a.item_stock_code,a.item_code, a.item_name, a.order_no,b.price,b.qty, b.unit,b.wh_code,f.wh_name, '+
                   'b.receive_no,b.ppn,b.pph,b.po_no, c.supplier_code, d.spb_no,e.account_code,f.wh_code,b.subtotal,b.grandtotal, '+
                   'b.pemb_dpp,b.subtotalrp,b.ppn_rp,b.ppn_pembulatan,b.pph_rp,b.import_duty ';
         ExecSQL;
       end;
       Qterima_barang.Close;
       Qterima_barang.Open;
       DBGridBarang.FinishLoadingStatus();}
     end
     else
     if Cb_Sumber.ItemIndex=2 then
     begin

     end;

end;

procedure TFNew_Pembelian.Cb_SumberSelect(Sender: TObject);
begin
  if Cb_Sumber.ItemIndex=0 then
  begin
     with dm.Qtemp do
     begin
        close;
        sql.Text:='SELECT * from purchase.t_ref_item_receive WHERE ref_name='+Quotedstr(Cb_Sumber.Text);
        Open;
     end;
     Edkd_sumber.Text:=dm.Qtemp.FieldByName('ref_code').AsString;

     with dm.Qtemp do
     begin
        close;
        sql.Text:='SELECT * from purchase.t_po WHERE supplier_code='+Quotedstr(EdKd_supp.Text)+'  Order by po_no DESC ';
        Open;
     end;
     Dm.Qtemp.First;
     Cb_Ref.Items.Clear;
     while not dm.Qtemp.Eof do
     begin
       Cb_Ref.Items.Add(Dm.Qtemp.FieldByName('po_no').AsString);
       Dm.Qtemp.Next;
     end;

  end
  else
  if Cb_Sumber.ItemIndex=1 then
  begin
     with dm.Qtemp do
     begin
        close;
        sql.Text:='SELECT * from purchase.t_ref_item_receive WHERE ref_name='+Quotedstr(Cb_Sumber.Text);
        Open;
     end;
     Edkd_sumber.Text:=dm.Qtemp.FieldByName('ref_code').AsString;

     with dm.Qtemp do
     begin
        close;
        sql.Text:='SELECT * from purchase.t_item_receive WHERE supplier_code='+Quotedstr(EdKd_supp.Text)+' and status_on_faktur=''0'' ';
        Open;
     end;
     Dm.Qtemp.First;
     Cb_Ref.Items.Clear;
     while not dm.Qtemp.Eof do
     begin
       Cb_Ref.Items.Add(Dm.Qtemp.FieldByName('receive_no').AsString);
       Dm.Qtemp.Next;
     end;
  end
  else
  if Cb_Sumber.ItemIndex=2 then
  begin

  end;


end;

procedure TFNew_Pembelian.CkFkClick(Sender: TObject);
begin
    if CkFk.Checked=True then status_fk:=1 else status_fk:=0;
    stts:=status_sj+status_fk+status_inv;
    if stts=3 then BPosting.visible:=True
       else BPosting.Visible:=False;
    if status_pos='POSTING' then
       BPosting.Enabled:=False else BPosting.Enabled:=True;
end;

procedure TFNew_Pembelian.CkInvClick(Sender: TObject);
begin
    if CkInv.Checked=True then status_inv:=1
       else status_inv:=0;
    stts:=status_sj+status_fk+status_inv;
    if stts=3 then BPosting.visible:=True
       else BPosting.Visible:=False;
    if status_pos='POSTING' then BPosting.Enabled:=False
       else BPosting.Enabled:=True;
end;

procedure TFNew_Pembelian.CksjClick(Sender: TObject);
begin
    if Cksj.Checked=True then
       status_sj:=1 else status_sj:=0;
    stts:=status_sj+status_fk+status_inv;
    if stts=3 then BPosting.visible:=True
       else BPosting.Visible:=False;
    if status_pos='POSTING' then
       BPosting.Enabled:=False
       else BPosting.Enabled:=True;
end;

procedure TFNew_Pembelian.clear;
begin
    MemterimaDet.Close;
    MemterimaDet.Open;
    EdNoSPB.Clear;
    EdNo.Clear;
    EdKet.Clear;
    EdSJ.Clear;
    Edkd_akun.Clear;
    EdNm_akun.Clear;
    Edjenis.text:='';
    Dtterima.Date:=now;
    EdPIB.Text:='0';
    EdNilai_Valas.Text:='1';
    EdValas.Text:='';
    Edkd_supp.Text:='';
    EdNm_supp.Text:='';
    MemterimaDet.EmptyTable;
    Edno_Faktur.Clear;
    Cksj.Checked:=false;
    CkFk.Checked:=false;
    CkInv.Checked:=false;
    status_sj:=0;
    status_fk:=0;
    status_inv:=0;
    Cb_Sumber.Text:='';
    Cb_Ref.Text:='';
    EdSisaHutang.Clear;
    Edjatuhtempo.Text:='';
    DtFaktur.Date:=now;
    dtfaktur2.Date:=now;
end;

procedure TFNew_Pembelian.DBGridDetailpoCellClick(Column: TColumnEh);
begin
  try
  begin
    if Edjenispo.Text<>'IMPORT' then
    BEGIN
      if MemterimaDet['pph']=0 then
      begin
        MemterimaDet.Edit;
        MemterimaDet['qtyselisih']:=MemterimaDet['qtypo']-MemterimaDet['qty'];
        MemterimaDet['Subtotal']:=MemterimaDet['Harga']*MemterimaDet['qty'];
        MemterimaDet['ppn_rp']:=int((MemterimaDet['subtotal']/100)*MemterimaDet['ppn']);
        MemterimaDet['subtotalrp']:=(MemterimaDet['subtotal']*EdNilai_Valas.Value)+MemterimaDet['pemb_dpp'];
        MemterimaDet['grandtotal']:=MemterimaDet['subtotal']+MemterimaDet['ppn_rp']+MemterimaDet['ppn_rp_pembulatan']+MemterimaDet['pemb_dpp']-MemterimaDet['pph_rp'];
        MemterimaDet.Post;
      end;
      if MemterimaDet['pph']<>0 then
      begin
        MemterimaDet.Edit;
        MemterimaDet['qtyselisih']:=MemterimaDet['qtypo']-MemterimaDet['qty'];
        MemterimaDet['Subtotal']:=MemterimaDet['Harga']*MemterimaDet['qty'];
        MemterimaDet['ppn_rp']:=int((MemterimaDet['subtotal']/100)*MemterimaDet['ppn']);
        MemterimaDet['pph_rp']:=int((MemterimaDet['subtotal']/100)*MemterimaDet['pph']);
        MemterimaDet['subtotalrp']:=strtofloat((MemterimaDet['subtotal']*EdNilai_Valas.Value))+MemterimaDet['pemb_dpp'];
        MemterimaDet['grandtotal']:=MemterimaDet['subtotal']+MemterimaDet['ppn_rp']+MemterimaDet['ppn_rp_pembulatan']+MemterimaDet['pemb_dpp']-MemterimaDet['pph_rp'];
        MemterimaDet.Post;
      end;
    END;
    if Edjenispo.Text='IMPORT' then
    BEGIN
      MemterimaDet.Edit;
      MemterimaDet['qtyselisih']:=MemterimaDet['qtypo']-MemterimaDet['qty'];
      MemterimaDet['Subtotal']:=MemterimaDet['Harga']*MemterimaDet['qty'];
      MemterimaDet['grandtotal']:=MemterimaDet['subtotal'];
      MemterimaDet.Post;
    END;
  end;
Except;
END;
end;

procedure TFNew_Pembelian.DBGridDetailpoColEnter(Sender: TObject);
begin
    try
    begin
      if Edjenispo.Text<>'IMPORT' then
      begin
        if MemterimaDet['pph']=0 then
        begin
          MemterimaDet.Edit;
          MemterimaDet['qtyselisih']:=MemterimaDet['qtypo']-MemterimaDet['qty'];
          MemterimaDet['Subtotal']:=MemterimaDet['Harga']*MemterimaDet['qty'];
          MemterimaDet['ppn_rp']:=int((MemterimaDet['subtotal']/100)*MemterimaDet['ppn']);
          MemterimaDet['subtotalrp']:=(MemterimaDet['subtotal']*EdNilai_Valas.Value)+MemterimaDet['pemb_dpp'];
          MemterimaDet['grandtotal']:=MemterimaDet['subtotal']+MemterimaDet['ppn_rp']+MemterimaDet['ppn_rp_pembulatan']+MemterimaDet['pemb_dpp']-MemterimaDet['pph_rp'];
          MemterimaDet.Post;
        end;
        if MemterimaDet['pph']<>0 then
        begin
          MemterimaDet.Edit;
          MemterimaDet['qtyselisih']:=MemterimaDet['qtypo']-MemterimaDet['qty'];
          MemterimaDet['Subtotal']:=MemterimaDet['Harga']*MemterimaDet['qty'];
          MemterimaDet['ppn_rp']:=int((MemterimaDet['subtotal']/100)*MemterimaDet['ppn']);
          MemterimaDet['pph_rp']:=int((MemterimaDet['subtotal']/100)*MemterimaDet['pph']);
          MemterimaDet['subtotalrp']:=(MemterimaDet['subtotal']*EdNilai_Valas.Value)+MemterimaDet['pemb_dpp'];
          MemterimaDet['grandtotal']:=MemterimaDet['subtotal']+MemterimaDet['ppn_rp']+MemterimaDet['ppn_rp_pembulatan']+MemterimaDet['pemb_dpp']-MemterimaDet['pph_rp'];
          MemterimaDet.Post;
        end;
      end;
      if Edjenispo.Text='IMPORT' then
      begin
        MemterimaDet.Edit;
        MemterimaDet['qtyselisih']:=MemterimaDet['qtypo']-MemterimaDet['qty'];
        MemterimaDet['Subtotal']:=MemterimaDet['Harga']*MemterimaDet['qty'];
        MemterimaDet['grandtotal']:=MemterimaDet['subtotal'];
        MemterimaDet.Post;
      end;
    end;
    Except;
    end;
end;

procedure TFNew_Pembelian.DBGridDetailpoColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
      if Cb_Sumber.Text='PO' then
      begin
         with  FSearch_TerimaBarang do
         begin
           with QMaterial do
           begin
              Close;
              SQL.Clear;
              SQL.Text:=' select a.item_stock_code,a.item_code, b.item_name, a.order_no,b.price,b.remaining_qty as qty, '+
                        ' b.unit,b.wh_code,f.wh_name,b.ppn,b.pph,b.po_no, c.supplier_code, e.account_code, c.due_date'+
                        ' ,c.valas,c.valas_value,f.wh_code,c."type",b.pemb_dpp from warehouse.t_item_stock a '+
                        ' inner join purchase.t_podetail b on a.item_stock_code=b.item_stock_code '+
                        ' inner join purchase.t_po c on b.po_no=c.po_no '+
                        ' inner join t_item e on a.item_code=e.item_code '+
                        ' inner join t_wh f on c.wh_code=f.wh_code'+
                        ' where c.supplier_code='+QuotedStr(Edkd_supp.Text)+' and b.po_no='+QuotedStr(Cb_ref.Text)+' and b.remaining_qty > 0'+
                        ' GROUP BY a.item_stock_code,a.item_code, b.item_name, a.order_no,b.price,b.remaining_qty,'+
                        ' b.unit,b.wh_code,f.wh_name,b.ppn,b.pph,b.po_no, c.supplier_code,e.account_code, c.due_date '+
                        ' ,c.valas,c.valas_value,f.wh_code,c."type",b.pemb_dpp';
              ExecSQL;
           end;
           QMaterial.open;
           jenis_pembelian:=Edjenis.Text;
           DBGridEh1.Visible:=true;
           DBGridEh2.Visible:=false;
           show;
         end;
      end;

      if Cb_Sumber.Text='Penerimaan Barang' then
      begin
         with FSearch_TerimaBarang do
         begin
           with QMaterial2 do
           begin
              Close;
              SQL.Clear;
              SQL.Text:='select a.item_stock_code,a.item_code,a.item_name, a.order_no,b.price,d.qty, '+
                        ' b.unit,b.wh_code,f.wh_name,c.receive_no,b.ppn,b.pph,b.po_no,c.supplier_code,d.spb_no,e.account_code,b.subtotal,b.grandtotal,b.pemb_dpp,b.subtotalrp, '+
                        ' b.ppn_rp,b.ppn_pembulatan,b.pph_rp,b.import_duty,c.due_date,c.valas,c.valas_value,h."type"  '+
                        ' from warehouse.t_item_stock a '+
                        ' inner join purchase.t_item_receive_det b on a.item_stock_code=b.item_stock_code '+
                        ' inner join purchase.t_item_receive C on b.receive_no=c.receive_no '+
                        ' inner join purchase.t_spb_det d on d.spb_no=c.spb_no '+
                        ' inner join purchase.t_po h on d.po_no=h.po_no '+
                        ' inner join t_item e on a.item_code=e.item_code '+
                        ' inner join t_wh f on b.wh_code=f.wh_code '+
                        ' inner join purchase.t_item_receive_det g on d.item_stock_code=g.item_stock_code '+
                        ' where c.supplier_code='+QuotedStr(Edkd_supp.Text)+' '+
                        ' and b.receive_no='+QuotedStr(Cb_Ref.Text)+' '+
                        ' GROUP BY a.item_stock_code,a.item_code,a.item_name,a.order_no,b.price,d.qty,b.unit,b.wh_code,f.wh_name, '+
                        ' c.receive_no,b.ppn,b.pph,b.po_no, c.supplier_code, d.spb_no,e.account_code,b.subtotal,b.grandtotal,b.pemb_dpp, '+
                        ' b.subtotalrp,b.ppn_rp,b.ppn_pembulatan,b.pph_rp,b.import_duty,f.wh_code,b.pemb_dpp,h."type" ';
              ExecSQL;
           end;
           QMaterial2.open;
           jenis_pembelian:=Edjenis.Text;
           DBGridEh1.Visible:=false;
           DBGridEh2.Visible:=true;
           show;
         end;
      end;


      {with QMaterial do
         begin
            Close;
            SQL.Clear;
            SQL.Text:='select a.item_stock_code,a.item_code,a.item_name, a.order_no,b.price,d.qty, '+
                      ' b.unit,b.wh_code,b.ppn,b.pph,b.po_no, c.supplier_code, d.spb_no,e.account_code'+
                      ' , c.due_date ,c.valas,c.valas_value,f.wh_name,c."type",b.pemb_dpp from warehouse.t_item_stock a '+
                      ' inner join purchase.t_podetail b on a.item_stock_code=b.item_stock_code '+
                      ' inner join purchase.t_po c on b.po_no=c.po_no '+
                      ' inner join purchase.t_spb_det d on b.po_no=d.po_no and d.item_stock_code=b.item_stock_code '+
                      ' inner join t_item e on a.item_code=e.item_code '+
                      ' inner join t_wh f on c.wh_code=f.wh_code'+
                      ' inner join purchase.t_item_receive_det g on d.item_stock_code=g.item_stock_code '+
                      ' where c.supplier_code='+QuotedStr(Edkd_supp.Text)+'and receive_no='+QuotedStr(Cb_Ref.Text)+''+
                      ' GROUP BY a.item_stock_code,a.item_code,a.item_name, a.order_no,b.price,d.qty,'+
                      ' b.unit,b.wh_code,f.wh_name,b.ppn,b.pph,b.po_no, c.supplier_code, d.spb_no,e.account_code, c.due_date '+
                      ' ,c.valas,c.valas_value,f.wh_code,c."type",b.pemb_dpp';
            ExecSQL;
         end;}


    {with FSearch_TerimaBarang do
    begin

      if Cb_Sumber.Text='PO' then
      begin
         with QMaterial do
         begin
            Close;
            SQL.Clear;
            SQL.Text:=' select a.item_stock_code,a.item_code, b.item_name, a.order_no,b.price,b.remaining_qty as qty, '+
                      ' b.unit,b.wh_code,f.wh_name,b.ppn,b.pph,b.po_no, c.supplier_code, e.account_code, c.due_date'+
                      ' ,c.valas,c.valas_value,f.wh_code,c."type",b.pemb_dpp from warehouse.t_item_stock a '+
                      ' inner join purchase.t_podetail b on a.item_stock_code=b.item_stock_code '+
                      ' inner join purchase.t_po c on b.po_no=c.po_no '+
                      ' inner join t_item e on a.item_code=e.item_code '+
                      ' inner join t_wh f on c.wh_code=f.wh_code'+
                      ' where c.supplier_code='+QuotedStr(Edkd_supp.Text)+' and b.po_no='+QuotedStr(Cb_ref.Text)+' and b.remaining_qty > 0'+
                      ' GROUP BY a.item_stock_code,a.item_code, b.item_name, a.order_no,b.price,b.remaining_qty,'+
                      ' b.unit,b.wh_code,f.wh_name,b.ppn,b.pph,b.po_no, c.supplier_code,e.account_code, c.due_date '+
                      ' ,c.valas,c.valas_value,f.wh_code,c."type",b.pemb_dpp';
            ExecSQL;
         end;
      end
      else
      if Cb_Sumber.Text='Penerimaan Barang' then
      begin
         with QMaterial do
         begin
            Close;
            SQL.Clear;
            SQL.Text:='select a.item_stock_code,a.item_code,a.item_name, a.order_no,b.price,d.qty, '+
                      ' b.unit,b.wh_code,b.ppn,b.pph,b.po_no, c.supplier_code, d.spb_no,e.account_code'+
                      ' , c.due_date ,c.valas,c.valas_value,f.wh_name,c."type",b.pemb_dpp from warehouse.t_item_stock a '+
                      ' inner join purchase.t_podetail b on a.item_stock_code=b.item_stock_code '+
                      ' inner join purchase.t_po c on b.po_no=c.po_no '+
                      ' inner join purchase.t_spb_det d on b.po_no=d.po_no and d.item_stock_code=b.item_stock_code '+
                      ' inner join t_item e on a.item_code=e.item_code '+
                      ' inner join t_wh f on c.wh_code=f.wh_code'+
                      ' inner join purchase.t_item_receive_det g on d.item_stock_code=g.item_stock_code '+
                      ' where c.supplier_code='+QuotedStr(Edkd_supp.Text)+'and receive_no='+QuotedStr(Cb_Ref.Text)+''+
                      ' GROUP BY a.item_stock_code,a.item_code,a.item_name, a.order_no,b.price,d.qty,'+
                      ' b.unit,b.wh_code,f.wh_name,b.ppn,b.pph,b.po_no, c.supplier_code, d.spb_no,e.account_code, c.due_date '+
                      ' ,c.valas,c.valas_value,f.wh_code,c."type",b.pemb_dpp';
            ExecSQL;
         end;
         with QMaterial2 do
         begin
            Close;
            SQL.Clear;
            SQL.Text:='select a.item_stock_code,a.item_code,a.item_name, a.order_no,b.price,d.qty, '+
                      ' b.unit,b.wh_code,f.wh_name,c.receive_no,b.ppn,b.pph,b.po_no,c.supplier_code,d.spb_no,e.account_code,b.subtotal,b.grandtotal,b.pemb_dpp,b.subtotalrp, '+
                      ' b.ppn_rp,b.ppn_pembulatan,b.pph_rp,b.import_duty '+
                      ' from warehouse.t_item_stock a '+
                      ' inner join purchase.t_item_receive_det b on a.item_stock_code=b.item_stock_code '+
                      ' inner join purchase.t_item_receive C on b.receive_no=c.receive_no '+
                      ' inner join purchase.t_spb_det d on d.spb_no=c.spb_no '+
                      ' inner join t_item e on a.item_code=e.item_code '+
                      ' inner join t_wh f on b.wh_code=f.wh_code '+
                      ' inner join purchase.t_item_receive_det g on d.item_stock_code=g.item_stock_code '+
                      ' where c.supplier_code=''  '+
                      ' and b.receive_no='' '+
                      ' GROUP BY a.item_stock_code,a.item_code,a.item_name,a.order_no,b.price,d.qty,b.unit,b.wh_code,f.wh_name, '+
                      ' c.receive_no,b.ppn,b.pph,b.po_no, c.supplier_code, d.spb_no,e.account_code,b.subtotal,b.grandtotal,b.pemb_dpp, '+
                      ' b.subtotalrp,b.ppn_rp,b.ppn_pembulatan,b.pph_rp,b.import_duty,f.wh_code,b.pemb_dpp ';
            ExecSQL;
         end;
      end;
      Show;
      QMaterial.open;
      jenis_pembelian:=Edjenis.Text;
    end;}
end;

procedure TFNew_Pembelian.DBGridDetailpoColumns22EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin

    with  FAkun_Perkiraan_TerimaMat do
    begin
      Show;
      statustr:='pphpemb';
      if QAkun.Active=false then QAkun.Active:=True;
    end;
end;

procedure TFNew_Pembelian.DBGridDetailpoColumns24EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
    with  FAkun_Perkiraan_TerimaMat do
    begin
      Show;
      statustr:='beapemb';
      if QAkun.Active=false then QAkun.Active:=True;
    end;
end;

procedure TFNew_Pembelian.DtterimaChange(Sender: TObject);
var
    SelectedDate: TRzDateTimeEdit;
    year, month, day: word;
begin
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

function IntToRoman(Value : Longint):String;  // fungsi
    const
    arabics: Array[1..12] of integer=(1,2,3,4,5,6,7,8,9,10,11,12);
    Romans: Array [1..12] Of string=('I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII');
    Var  i :integer;
    begin
    For i := 12 downto 1 do
    while (Value >= Arabics[i]) do
    begin
      Value := Value - Arabics[i];
      Result:= Result + Romans[i];
    end;
end;

procedure TFNew_Pembelian.Load;
begin
      EdNoSPB.Clear;
      if loksbu='' then
      begin
          with Dm.Qtemp do
          begin
           close;
           sql.Text:=' select a.*,b.supplier_name from purchase.t_spb a left join t_supplier b on '+
                     ' a.supplier_code=b.supplier_code WHERE a.spb_no in (select spb_no from purchase.t_spb'+
                     ' EXCEPT select spb_no from purchase.t_item_receive) and "approval_status"=''1'' '+
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
            sql.Text:=' select a.*,b.supplier_name from purchase.t_spb a left join t_supplier b on '+
                     ' a.supplier_code=b.supplier_code WHERE a.spb_no in (select spb_no from purchase.t_spb'+
                     ' EXCEPT select spb_no from purchase.t_item_receive) and a."approval_status"=''1'''+
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
end;

procedure TFNew_Pembelian.LoadPo;
begin
  //EdNopo.Clear;
  with Dm.Qtemp do
  begin
    close;
    sql.Text:='SELECT * FROM purchase.t_po LEFT JOIN	purchase.t_spb ON t_po.po_no = t_spb.po_no where t_po.status<>''0''';// WHERE nospb is NULL';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    //EdNopo.Items.Add(Dm.Qtemp.FieldByName('nopo').AsString);
    Dm.Qtemp.Next;
  end;
end;

procedure TFNew_Pembelian.Autonumber;
begin
  idmenu:='M11004';
  //strday2:=Dtterima.Date;
  strday2:=Dtfaktur.Date;
  EdNo.Text:=getNourutBlnPrshthn_kode(strday2,'purchase.t_purchase_invoice','');
  Edurut.Text:=order_no;
end;

procedure TFNew_Pembelian.SimpanStok;
begin
    MemterimaDet.First;
    while not MemterimaDet.Eof do
    begin
        with dm.Qtemp2 do
        begin
          close;
          sql.Clear;
          sql.Text:='select * from warehouse.t_item_stock_det where ' +
                    'item_stock_code='+QuotedStr(MemterimaDet['kd_material'])+''+
                    'and stock_code='+QuotedStr(MemterimaDet['item_stock_code']);
          Execute;
        end;
        if dm.Qtemp2.RecordCount > 0 then
        begin
          with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:='Update warehouse.t_item_stock_det set qty=:parqty,unit=:parunit'+
                      'where item_stock_code=:paritem_stock_code and stock_code=:parstock_code';
            ParamByName('parqty').Value:=DM.Qtemp2['qty']+MemterimaDet['qty'];
            ParamByName('parunit').Value:=MemterimaDet['satuan'];
            ParamByName('paritem_stock_code').Value:=MemterimaDet['kd_material'];
            ParamByName('stock_code').Value:=MemterimaDet['kd_stok'];
            Execute;
          end;
        end
        else
        if dm.Qtemp2.RecordCount=0 then
        begin
          with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:='	INSERT INTO warehouse.t_item_stock_det(item_stock_code,stock_code,qty,'+
                      ' unit,qtyout,"outstanding",wh_code,reciving_date)VALUES(:paritem_stock_code,:parstock_code,:parqty,'+
                      ' :parunit,:parqtyout,:paroutst,:parwh,:parreciving_date)';
                      //ParamByName('paritem_stock_code').Value:=MemterimaDet['kd_material'];
                      ParamByName('paritem_stock_code').Value:=MemterimaDet['item_stock_code'];
                      ParamByName('parstock_code').Value:=MemterimaDet['kd_stok'];
                      ParamByName('parqty').Value:=MemterimaDet['qty'];
                      ParamByName('parunit').Value:=MemterimaDet['satuan'];
                      ParamByName('parqtyout').Value:='0';
                      ParamByName('paroutst').value:=MemterimaDet['qty'];
                      ParamByName('parwh').Value:=MemterimaDet['wh_code'];
                      ParamByName('parreciving_date').Value:=FormatDateTime('yyy-mm-dd',Dtterima.Date);
            Execute;
          end;
        end;
        MemterimaDet.Next;
    end;
end;

procedure TFNew_Pembelian.EdCurrChange(Sender: TObject);
begin
  if EdCurr.Text<>'IDR' then
  begin
    EdNilai_Valas.Visible:=True;
    DBGridDetailpo.Columns[16].Visible:=True;
    DBGridDetailpo.Columns[15].Visible:=False;
  end;
  if EdCurr.Text='IDR' then
  begin
    EdNilai_Valas.Visible:=False;
    DBGridDetailpo.Columns[16].Visible:=False;
    DBGridDetailpo.Columns[15].Visible:=True;
  end;
end;

procedure TFNew_Pembelian.Edit;
begin
    showmessage('x');
    {if MemterimaDet['ppn_rp']<>0 then
    begin
      with dm.Qtemp2 do
      begin
        Close;
        sql.Clear;
        sql.Text:='select kd_akun from t_master_account where code=''1''';
        ExecSQL;
      end;
      kd_akppn:=DM.QTemp2['account_code'];
    end;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from purchase.t_item_receive ';
      ExecSQL;
    end;
    with dm.Qtemp do
    begin
       close;
       sql.Clear;
       sql.Text:=' update purchase.t_item_receive set receive_date=:partgl_tr,spb_no=:parnospb,remark=:parket,'+
                 ' sj_no=:parnosj,faktur_no=:parnofk,supplier_code=:parkdsp,faktur_date=:partgl_fk,'+
                 ' due_date=:parjt,purchase_type=:parjp,debt_amount=:parjh,payment_amount=:parjb,'+
                 ' debt_remaining=:parsh,ppn_rp=:parppn_rp,pic2=:parpic2,status=:parstatus,account_code=:parkd_akun,'+
                 ' valas=:parvalas,valas_value=:parnv,pic_update=:parpu,date_update=:partgl_upd,pib_no=:parno_pib,'+
                 ' sj_status=:parstatus_sj,fk_status=:parstatus_fk,invoice_status=:parstatus_inv,'+
                 ' po_type=:parjenispo,faktur2_date=:partgl_fk2,account_um_code=:parkd_akunum,um_value=:parum,'+
                 ' correction_status=:parsk where receive_no=:parno_tr';
                  ParamByName('parsk').Value:='0';
                  ParamByName('partgl_tr').Value:=FormatDateTime('yyy-mm-dd',Dtterima.Date);
                  paramByname('parnospb').Value:=EdNoSPB.Text;
                  ParamByName('parket').Value:=EdKet.Text;
                  ParamByName('parnosj').Value:=EdSJ.Text;
                  ParamByName('parnofk').Value:=Edno_Faktur.Text;
                  ParamByName('parkdsp').Value:=Edkd_supp.Text;
                  ParamByName('partgl_fk').Value:=FormatDateTime('yyy-mm-dd',DtFaktur.Date);
                  ParamByName('partgl_fk2').Value:=FormatDateTime('yyy-mm-dd',DtFaktur2.Date);
                  ParamByName('parjt').Value:=Edjatuhtempo.Text;
                  ParamByName('parjp').Value:=Edjenis.Text;
                  ParamByName('parjh').Value:=FloatToStr(jmlh_hutang);
                  ParamByName('parjb').Value:='0';
                  ParamByName('parsh').Value:=EdSisaHutang.Value;
                  ParamByName('parppn_rp').Value:=FloatToStr(ppn_rp);
                  ParamByName('parpic2').Value:=Nm;
                  ParamByName('parstatus').Value:='In-Proses';
                  ParamByName('parkd_akun').Value:=Edkd_akun.Text;
                  ParamByName('parvalas').Value:=EdValas.Text;
                  ParamByName('parnv').Value:=EdNilai_Valas.Text;
                  ParamByName('parpu').Value:=Nm;
                  ParamByName('partgl_upd').Value:=formatdatetime('yyy-mm-dd',dtdate);
                  ParamByName('parno_pib').Value:=EdPIB.Text;
                  ParamByName('parstatus_sj').Value:=IntToStr(status_sj);
                  ParamByName('parstatus_fk').Value:=IntToStr(status_fk);
                  ParamByName('parstatus_inv').Value:=IntToStr(status_inv);
                  ParamByName('parno_tr').Value:=EdNo.Text;
                  ParamByName('parjenispo').Value:=Edjenispo.Text;
                  ParamByName('parkd_akunum').Value:=Edkd_akunum.Text;
                  ParamByName('parum').Value:=EdNilai_um.Value;
        ExecSQL;
    end;
    with dm.Qtemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='delete from purchase.t_item_receive_det where receive_no='+QuotedStr(EdNo.Text);
      ExecSQL;
    end;

    MemterimaDet.First;
    while not MemterimaDet.Eof do
    begin
        with dm.Qtemp2 do
        begin
          Close;
          sql.Clear;
          sql.Text:='insert into purhase.t_item_receive_det(material_stock_code,stock_code,qty,unit,wh_code,'+
                    ' year,po_no,receive_no,qty_po,unit_po,qty_difference,qty_per_conversion,qty_conversion,'+
                    ' unit_conversion,subtotal,ppn,ppn_rp,pph,pph_rp,grandtotal,price,account_code,'+
                    ' trans_status,ppn_pembulatan,account_pph_code,duty_account_code,import_duty,subtotalrp,order_no)values(:parkd_material_stok,:parkd_stok,:parqty,:parsatuan,:pargudang,'+
                    ' :parTahun,:parnopo,:parno_terima,:parqtypo,:parsatuanpo,:parqtyselisih,:parqtyperkonversi,'+
                    ' :parqtykonversi,:parsatuankonversi,:parsubtotal,:parppn,:parppn_rp,:parpph,'+
                    ' :parpph_rp,:pargrandtotal,:parharga,:parkd_akun,:parstatustrans,:parppn_pembulatan,'+
                    ' :parkd_akpph,:parkd_akbea,:parbea,:parsubtotalrp,:parnourut)';
                    ParamByName('parkd_material_stok').Value:=MemterimaDet['kd_material'];
                    ParamByName('parkd_stok').Value:=MemterimaDet['kd_stok'];
                    ParamByName('parqty').Value:=MemterimaDet['qty'];
                    ParamByName('parsatuan').Value:=MemterimaDet['satuan'];
                    //ParamByName('pargudang').Value:=MemterimaDet['gudang'];
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
                    ParamByName('parsubtotal').Value:=MemterimaDet['subtotal'];
                    ParamByName('parppn').Value:=MemterimaDet['ppn'];
                    ParamByName('parpph').Value:=MemterimaDet['pph'];
                    ParamByName('parharga').Value:=MemterimaDet['harga'];
                    ParamByName('parkd_akun').Value:=MemterimaDet['kd_akun'];
                    ParamByName('parstatustrans').Value:=1;
                    ParamByName('parkd_akpph').Value:=MemterimaDet['kd_akunpph'];
                    ParamByName('parkd_akbea').Value:=MemterimaDet['kd_akunbea'];
                    if MemterimaDet['ppn_rp'] = null then parambyname('parppn_rp').Value:='0' else ParamByName('parppn_rp').Value:=MemterimaDet['ppn_rp'];
                    if MemterimaDet['pph_rp'] = null then parambyname('parpph_rp').Value:='0' else ParamByName('parpph_rp').Value:=MemterimaDet['pph_rp'];
                    if MemterimaDet['ppn_rp_pembulatan'] = null then parambyname('parppn_pembulatan').Value:='0' else ParamByName('parppn_pembulatan').Value:=MemterimaDet['ppn_rp_pembulatan'];
                    if MemterimaDet['bea_masuk'] = null then parambyname('parbea').Value:='0' else ParamByName('parbea').Value:=MemterimaDet['bea_masuk'];
                    ParamByName('parsubtotalrp').Value:=MemterimaDet['subtotalrp'];
                    ParamByName('pargrandtotal').Value:=MemterimaDet['grandtotal'];
                    ParamByName('parnourut').Value:=MemterimaDet['nourut'];
           ExecSQL;
           MemterimaDet.Next;
        end;
    end;

    //SimpanStok;
    if Edjenispo.Text='IMPORT' then
    begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='update purchase.t_item_receive2 set pph_rp=:parpph_rp,receive_date=:partgl_terima,remark=:parket,spb_no=:parnospb, '+
                    ' sj_no=:parnosj,faktur_no=:parnofaktur,supplier_code=:parkd_supplier,faktur_date=:partgl_faktur,due_date=:parjatuh_tempo,'+
                    ' purchase_type=:parjenis_pembelian,debt_amount=:parjmlh_hutang,payment_amount=:parjmlh_bayar,debt_remaining=:parsisa_hutang,'+
                    ' ppn_rp=:parppn_rp,pic=:parpic,status=:parstatus,valas=:parvalas,valas_value=:parnilai_valas,account_code=:parkd_akun,trans_month='+
                    ' :parbln,trans_year=:parthn,import_duty=:parbea,duty_account_code=:parkd_akbea,ppn_account_code=:parkd_akppn,pph_account_code=:parkd_akpph,sbu_code=:parsbu '+
                    ' where receive_no=:parno_terima';
                    ParamByName('parno_terima').Value:=EdNo.Text;
                    ParamByName('partgl_terima').Value:=FormatDateTime('yyyy-mm-dd',Dtterima.Date);
                    ParamByName('parket').Value:=EdKet.Text;
                    ParamByName('parnospb').Value:=EdNoSPB.Text;
                    ParamByName('parnosj').Value:=EdSJ.Text;
                    ParamByName('parnofaktur').Value:=Edno_Faktur.Text;
                    ParamByName('parkd_supplier').Value:=Edkd_supp.Text;
                    ParamByName('partgl_faktur').Value:=FormatDateTime('yyyy-mm-dd',DtFaktur.Date);
                    ParamByName('parjatuh_tempo').Value:=Edjatuhtempo.Text;
                    ParamByName('parjenis_pembelian').Value:=Edjenis.Text;
                    ParamByName('parjmlh_hutang').Value:=DBGridDetailpo.Columns[15].Footer.sumvalue;//*EdNilai_Valas.Value;
                    ParamByName('parjmlh_bayar').Value:=0;
                    ParamByName('parsisa_hutang').Value:=DBGridDetailpo.Columns[15].Footer.sumvalue;//*EdNilai_Valas.Value;
                    ParamByName('parppn_rp').Value:=DBGridDetailpo.Columns[18].Footer.SumValue;//*EdNilai_Valas.Value;
                    ParamByName('parpic').Value:=Nm;
                    ParamByName('parstatus').Value:='Created';
                    ParamByName('parvalas').Value:=EdValas.Text;
                    ParamByName('parnilai_valas').Value:=EdNilai_Valas.Text;
                    ParamByName('parkd_akun').Value:=Edkd_akun.Text;
                    ParamByName('parbln').Value:=bln;
                    ParamByName('parthn').Value:=thn;
                    ParamByName('parbea').Value:=DBGridDetailpo.Columns[23].Footer.sumvalue;//*EdNilai_Valas.Value;
                    ParamByName('parkd_akbea').Value:=kd_akbea;
                    ParamByName('parkd_akppn').Value:=kd_akppn;
                    ParamByName('parkd_akpph').Value:=kd_akpph;
                    ParamByName('parsbu').Value:=edsbu.text;
                    ParamByName('parpph_rp').Value:=DBGridDetailpo.Columns[21].Footer.sumvalue;
           ExecSQL;
        end;
    end;}
end;

procedure TFNew_Pembelian.EdjenispoChange(Sender: TObject);
begin
   if Edjenispo.Text='IMPORT' then
      DBGridDetailpo.Columns[16].Visible:=true
   else
      DBGridDetailpo.Columns[16].Visible:=False;
end;

procedure TFNew_Pembelian.EdjenisSelect(Sender: TObject);
begin
    Load;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT a.acc_code_pemb,b.account_name FROM t_item_type a '+
                'INNER JOIN t_ak_account B ON A.acc_code_pemb=b.code '+
                'where type='+QuotedStr(Edjenis.Text);
      Execute;
    end;
    Edkd_akun.Text:=DM.Qtemp['acc_code_pemb'];
    EdNm_akun.Text:=DM.Qtemp['account_name'];
end;

procedure TFNew_Pembelian.EdJum_HutangChange(Sender: TObject);
begin
   EdJum_Hutang.Value:=DBGridDetailpo.Columns[25].Footer.sumvalue;
end;

procedure TFNew_Pembelian.Edkd_akunBeaButtonClick(Sender: TObject);
begin
    with  FAkun_Perkiraan_TerimaMat do
    begin
      statustr:='pemb2';
      Show;
      if QAkun.Active=false then QAkun.Active:=True;
    end;
end;

procedure TFNew_Pembelian.EdNilai_ValasChange(Sender: TObject);
begin
  if EdNilai_Valas.Text='' then EdNilai_Valas.text:='1' else
  if EdNilai_Valas.Text > '0' then
  begin
    MemterimaDet.First;
    while not MemterimaDet.Eof do
    begin
      DBGridDetailpoColEnter(sender);
      MemterimaDet.Next;
    end;
    jmlh_hutang:=DBGridDetailpo.Columns[25].Footer.SumValue;
    jmlh_bayar:=0;
    sisa_hutang:=DBGridDetailpo.Columns[25].Footer.SumValue;
    ppn_rp:=DBGridDetailpo.Columns[18].Footer.SumValue;
    grandtotal:=DBGridDetailpo.Columns[25].Footer.SumValue;
  end;
end;

procedure TFNew_Pembelian.EdNm_akunumButtonClick(Sender: TObject);
begin
    with  FAkun_Perkiraan_TerimaMat do
    begin
      statustr:='pemb_um';
      Show;
      if QAkun.Active=false then QAkun.Active:=True;
    end;
end;

procedure TFNew_Pembelian.EdNm_suppButtonClick(Sender: TObject);
begin
    with FSupp_Pembelian do
    begin
    jenis_tr:='pemb';
      Show;
      if Qsupplier.Active=False then Qsupplier.Active:=True;
    end;
end;

procedure TFNew_Pembelian.EdNoSPBSelect(Sender: TObject);
begin
    with Dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT a.*,b.supplier_name, c.valas,c.valas_value,c."type",c.due_date,d.account_code,d.um'+
                ' ,d.account_name,c.um_value umpo FROM purchase.t_spb a inner join t_supplier b on a.supplier_code=b.supplier_code '+
                ' Left join purchase.t_po c on a.po_no=c.po_no '+
                ' Left join (SELECT AVG(a.pay)as um ,a.account_code,a.voucher_no,b.account_name FROM purchase.t_payment_detail_real a inner join'+
                ' t_ak_account b on a.account_code=b.code GROUP BY a.account_code,a.voucher_no,b.account_name) as d on a.po_no=d.voucher_no '+
                ' where spb_no='+QuotedStr(EdNoSPB.Text);
      ExecSQL;
    end;
    Edkd_supp.Text:=Dm.Qtemp.FieldByName('supplier_code').AsString;
    EdNm_supp.Text:=Dm.Qtemp.FieldByName('supplier_name').AsString;
    EdValas.Text:=Dm.Qtemp.FieldByName('valas').AsString;
    EdNilai_Valas.Text:=Dm.Qtemp.FieldByName('valas_value').Value;
    Edjenispo.Text:=Dm.Qtemp.FieldByName('type').AsString;
    Edjatuhtempo.Text:=Dm.Qtemp.FieldByName('due_date').AsString;
    nopo:=Dm.Qtemp.FieldByName('po_no').AsString;

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
       EdNm_akunum.Text:=Dm.Qtemp.FieldByName('account_name').AsString;
end;

procedure TFNew_Pembelian.EdValasChange(Sender: TObject);
begin
  if EdValas.Text<>'IDR' then
  begin
    EdNilai_Valas.Visible:=True;
    DBGridDetailpo.Columns[16].Visible:=True;
    DBGridDetailpo.Columns[15].Visible:=False;
  end;
  if EdValas.Text='IDR' then
  begin
    EdNilai_Valas.Visible:=False;
    DBGridDetailpo.Columns[16].Visible:=False;
    DBGridDetailpo.Columns[15].Visible:=True;
  end;

end;

procedure TFNew_Pembelian.FormShow(Sender: TObject);
begin
   loadtype;
   Load_ref_receive;
   if MemterimaDet.Active=False then  MemterimaDet.Active:=True;
   if Memterima_barang.Active=False then  Memterima_barang.Active:=True;
   PGFaktur.ActivePage:=TabBarang2;

   if memUM.Active=false then  memUM.Active:=true;
   if QUM.Active=false then QUM.Active:=true;

   EdJum_Hutang.Value:=0;
   EdJum_Um.Value:=0;
   EdJum_PotPem.Value:=0;
   EdJum_ReturPemb.Value:=0;
   EdJum_totalhut.Value:=0;

end;

procedure TFNew_Pembelian.Posting;
begin
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
    begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:=' update purchase.t_item_receive set receive_date=:partgl_tr,spb_no=:parnospb,remark=:parket,'+
                    ' sj_no=:parnosj,faktur_no=:parnofk,supplier_code=:parkdsp,faktur_date=:partgl_fk,'+
                    ' due_date=:parjt,purchase_type=:parjp,debt_amount=:parjh,payment_amount=:parjb,'+
                    ' debt_remaining=:parsh,ppn_rp=:parppn_rp,pic2=:parpic2,status=:parstatus,account_code=:parkd_akun,'+
                    ' valas=:parvalas,valas_value=:parnv,pic_update=:parpu,date_update=:partgl_upd,pib_no=:parno_pib,'+
                    ' sj_status=:parstatus_sj,fk_status=:parstatus_fk,invoice_status=:parstatus_inv'+
                    ' ,po_type=:parjenispo,faktur2_date=:partgl_fk2,account_um_code=:parkd_akunum,account_um_code=:parum '+
                    ' where receive_no=:parno_tr';
                    ParamByName('partgl_tr').Value:=FormatDateTime('yyy-mm-dd',Dtterima.Date);
                    paramByname('parnospb').Value:=EdNoSPB.Text;
                    ParamByName('parket').Value:=EdKet.Text;
                    ParamByName('parnosj').Value:=EdSJ.Text;
                    ParamByName('parnofk').Value:=Edno_Faktur.Text;
                    ParamByName('parkdsp').Value:=Edkd_supp.Text;
                    ParamByName('partgl_fk').Value:=FormatDateTime('yyy-mm-dd',DtFaktur.Date);
                    ParamByName('partgl_fk2').Value:=FormatDateTime('yyy-mm-dd',DtFaktur2.Date);
                    ParamByName('parjt').Value:=Edjatuhtempo.Text;
                    ParamByName('parjp').Value:=Edjenis.Text;
                    ParamByName('parjh').Value:=FloatToStr(jmlh_hutang);
                    ParamByName('parjb').Value:='0';
                    ParamByName('parsh').Value:=FloatToStr(sisa_hutang);
                    ParamByName('parppn_rp').Value:=FloatToStr(ppn_rp);
                    ParamByName('parpic2').Value:=Nm;
                    ParamByName('parstatus').Value:='In-Proses';
                    ParamByName('parkd_akun').Value:=Edkd_akun.Text;
                    ParamByName('parvalas').Value:=EdValas.Text;
                    ParamByName('parnv').Value:=EdNilai_Valas.Text;
                    ParamByName('parpu').Value:=Nm;
                    ParamByName('partgl_upd').Value:=formatdatetime('yyy-mm-dd',dtdate);
                    ParamByName('parno_pib').Value:=EdPIB.Text;
                    ParamByName('parstatus_sj').Value:=IntToStr(status_sj);
                    ParamByName('parstatus_fk').Value:=IntToStr(status_fk);
                    ParamByName('parstatus_inv').Value:=IntToStr(status_inv);
                    ParamByName('parno_tr').Value:=EdNo.Text;
                    ParamByName('parjenispo').Value:=Edjenispo.Text;
                    ParamByName('parkd_akunum').Value:=Edkd_akunum.Text;
                    ParamByName('parum').Value:=EdNilai_um.Value;
          ExecSQL;
        end;
        with dm.Qtemp2 do
        begin
          close;
          sql.Clear;
          sql.Text:='delete from purchase.t_item_receive_det where receive_no='+QuotedStr(EdNo.Text);
          ExecSQL;
        end;
        MemterimaDet.First;
        while not MemterimaDet.Eof do
        begin
        with dm.Qtemp2 do
        begin
          Close;
          sql.Clear;
          sql.Text:='insert into purchase.t_item_receive_det(item_stock_code,stock_code,qty,unit,wh_code,'+
                    ' year,po_no,receive_no,qty_po,unit_po,qty_difference,qty_per_conversion,qty_conversion,'+
                    ' unit_conversion,subtotal,ppn,ppn_rp,pph,pph_rp,grandtotal,price,account_code,'+
                    ' trans_status,ppn_pembulatan,order_no)values(:parkd_material_stok,:parkd_stok,:parqty,:parsatuan,:pargudang,'+
                    ' :parTahun,:parnopo,:parno_terima,:parqtypo,:parsatuanpo,:parqtyselisih,:parqtyperkonversi,'+
                    ' :parqtykonversi,:parsatuankonversi,:parsubtotal,:parppn,:parppn_rp,:parpph,'+
                    ' :parpph_rp,:pargrandtotal,:parharga,:parkd_akun,:parstatustrans,:parppn_pembulatan,:parnourut)';
                    ParamByName('parkd_material_stok').Value:=MemterimaDet['kd_material'];
                    ParamByName('parkd_stok').Value:=MemterimaDet['kd_stok'];
                    ParamByName('parqty').Value:=MemterimaDet['qty'];
                    ParamByName('parsatuan').Value:=MemterimaDet['satuan'];
                    ParamByName('pargudang').Value:=MemterimaDet['gudang'];
                    ParamByName('partahun').Value:=MemterimaDet['tahun'];
                    ParamByName('parnopo').Value:=MemterimaDet['nopo'];
                    ParamByName('parno_terima').Value:=EdNo.Text;
                    ParamByName('parqtypo').Value:=MemterimaDet['qtypo'];
                    ParamByName('parsatuanpo').Value:=MemterimaDet['satuanpo'];
                    ParamByName('parqtyselisih').Value:=MemterimaDet['qtyselisih'];
                    ParamByName('parqtyperkonversi').Value:=0;
                    ParamByName('parqtykonversi').Value:=0;
                    ParamByName('parsatuankonversi').Value:=0;
                    ParamByName('parsubtotal').Value:=MemterimaDet['subtotal'];
                    ParamByName('parppn').Value:=MemterimaDet['ppn'];
                    ParamByName('parppn_rp').Value:=MemterimaDet['ppn_rp'];
                    ParamByName('parpph').Value:=MemterimaDet['pph'];
                    ParamByName('parpph_rp').Value:=MemterimaDet['pph_rp'];
                    ParamByName('pargrandtotal').Value:=MemterimaDet['grandtotal'];
                    ParamByName('parharga').Value:=MemterimaDet['harga'];
                    ParamByName('parkd_akun').Value:=MemterimaDet['kd_akun'];
                    ParamByName('parstatustrans').Value:=1;
                    ParamByName('parppn_pembulatan').Value:=MemterimaDet['ppn_rp_pembulatan'];
                    ParamByName('nourut').Value:=MemterimaDet['nourut'];
          ExecSQL;
          MemterimaDet.Next;
        end;
        end;

        // grandtotal masuk ke kredit
        with dm.Qtemp do
        begin
          Close;
          sql.Clear;
          sql.Text:=' insert into purchase.t_debt(supplier_code,debt_date,faktur_no,debit,kredit,balance, '+
                    ' type,remark,pic)values(:parkode_supplier,:partgl_utang,:parno_faktur,'+
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
          sql.Text:='insert into t_general_ledger(trans_no,modul,account_code,debet,kredit,trans_date)'+
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
              sql.Text:='insert into t_general_ledger(trans_no,modul,account_code,debet,kredit,trans_date)'+
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
                  sql.Text:='select account_code from t_master_account where code=''1''';
                  ExecSQL;
              end;
              with Dm.Qtemp do
              begin
                  Close;
                  sql.Clear;
                  sql.Text:='insert into t_jurnal_umum(trans_no,modul,account_code,debet,kredit,trans_date)'+
                          'values(:parno_trans,:parmodul,:parkd_akun_perkiraan,:pardebet,:parkredit,:partgl_trans)';
                          ParamByName('parno_trans').Value:=EdNo.Text;
                          ParamByName('parmodul').Value:='PEMBELIAN';
                          ParamByName('parkd_akun_perkiraan').Value:=dm.QTemp2['account_code'];
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
            sql.Text:='update t_ak_account set balance=balance+:parbalance where code=:parkode';
                      ParamByName('parbalance').Value:=MemterimaDet['grandtotal'];
                      ParamByName('parkode').Value:=MemterimaDet['kd_akun'];
                      ExecSQL;
          end;
        end;
        if Edjenispo.Text<>'LOKAL' then
        begin
          with dm.Qtemp do
          begin
          close;
          sql.Clear;
          sql.Text:='update t_ak_account set balance=balance+:parbalance where code=:parkode';
                    ParamByName('parbalance').Value:=MemterimaDet['subtotal']+MemterimaDet['bea_masuk'];
                    ParamByName('parkode').Value:=MemterimaDet['kd_akun'];
                    ExecSQL;
          end;
        end;
       // Update Status Pembelian
        with Dm.Qtemp do
        begin
          Close;
          sql.Clear;
          sql.Text:='Update purchase.t_item_receive set status=''POSTING'' WHERE receive_no='+QuotedStr(EdNo.Text);
          ExecSQL;
        end;
    dm.koneksi.Commit;
    Messagedlg('Data Berhasil di Posting',MtInformation,[Mbok],0);
    end
    Except
    on E :Exception do
    begin
      MessageDlg(E.Message,mtError,[MBok],0);
      dm.koneksi.Rollback;
    end;
    end;
end;

procedure TFNew_Pembelian.Posting2;
begin
   grandtotal:=DBGridDetailpo.Columns[20].Footer.SumValue;
   with dm.Qtemp do
   begin
      Close;
      sql.Clear;
      sql.Text:=' insert into t_debt(supplier_code,debt_date,faktur_no,debit,kredit,balance, '+
                ' type,remark,pic)values(:parkode_supplier,:partgl_utang,:parno_faktur,'+
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
      sql.Text:='insert into t_general_ledger(trans_no,modul,account_code,debet,kredit,trans_date)'+
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
       sql.Text:='insert into t_general_ledger(trans_no,modul,account_code,debet,kredit,trans_date)'+
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
          sql.Text:='select account_code from t_master_account where code=''1''';
          ExecSQL;
        end;
        kd_akppn:=DM.QTemp2['account_code'];
        with Dm.Qtemp do
        begin
          Close;
          sql.Clear;
          sql.Text:='insert into t_general_ledger(trans_no,modul,account_code,debet,kredit,tgl_trans)'+
                  'values(:parno_trans,:parmodul,:parkd_akun_perkiraan,:pardebet,:parkredit,:partgl_trans)';
                  ParamByName('parno_trans').Value:=EdNo.Text;
                  ParamByName('parmodul').Value:='PEMBELIAN';
                  ParamByName('parkd_akun_perkiraan').Value:=dm.QTemp2['account_code'];
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
        sql.Text:='update t_ak_account set balance=balance+:parbalance where code=:parkode';
                  ParamByName('parbalance').Value:=MemterimaDet['grandtotal'];
                  ParamByName('parkode').Value:=MemterimaDet['kd_akun'];
        ExecSQL;
      end;
   end;

end;

procedure TFNew_Pembelian.loadtype;
begin
   with dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:='SELECT "type"  from t_item_type ';
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

end.
