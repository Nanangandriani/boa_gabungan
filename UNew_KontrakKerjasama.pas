unit UNew_KontrakKerjasama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, RzButton,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzEdit, Vcl.Samples.Spin,
  RzBtnEdt, Vcl.StdCtrls, RzCmboBx, Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFNewKontrak_ks = class(TForm)
    pninput: TPanel;
    Label1: TLabel;
    qty: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EdNo_kontrak: TEdit;
    EdKd_supp: TEdit;
    Edtempo: TEdit;
    DtKontrak: TRzDateTimeEdit;
    DtSelesai: TRzDateTimeEdit;
    EdNo: TEdit;
    DtBln: TRzDateTimeEdit;
    EdKet: TMemo;
    EdCurr: TRzComboBox;
    DtPengiriman: TRzDateTimeEdit;
    CbKategori: TComboBox;
    EdNm_supp: TRzButtonEdit;
    CbJenis: TComboBox;
    CB_kirim: TComboBox;
    EdTh_kirim: TSpinEdit;
    EdnilaiCurr: TRzNumericEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    BitBtn1: TBitBtn;
    DtHr: TRzDateTimeEdit;
    DtTahun: TRzDateTimeEdit;
    DataSource1: TDataSource;
    MemMaterial: TMemTableEh;
    DBGridEh2: TDBGridEh;
    procedure BBatalClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    //procedure BSimpanClick(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure DBGridEh2ColEnter(Sender: TObject);
    procedure DBGridEh2Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure DtKontrakChange(Sender: TObject);
    procedure EdCurrSelect(Sender: TObject);
    procedure EdnilaiCurrKeyPress(Sender: TObject; var Key: Char);
    procedure EdNm_suppButtonClick(Sender: TObject);
    //procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtempoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure EdKd_suppChange(Sender: TObject);
    procedure CbJenisSelect(Sender: TObject);
    procedure EdCurrChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Autonumber;

  end;

Function FNewKontrak_ks: TFNewKontrak_ks;
 var Status2,status_App:String;

implementation

{$R *.dfm}

uses USearch_Supplier, UDataModule, UKontrakKerjasama, UMainMenu, UMy_Function,
  Ulist_materialstok;

var
  RealFNewKontrak_ks: TFNewKontrak_ks;
// implementasi function
function FNewKontrak_ks: TFNewKontrak_ks;
begin
  if RealFNewKontrak_ks <> nil then
    FNewKontrak_ks:= RealFNewKontrak_ks
  else
    Application.CreateForm(TFNewKontrak_ks, Result);
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

procedure TFNewKontrak_ks.Autonumber;
begin
   with dm.Qtemp do
   begin
      close;
      sql.clear;
      sql.Text:='Select * from t_menu_sub where link=''FKontrakkerjasama'' ';
      ExecSQL;
   end;
    idmenu:=dm.Qtemp['submenu_code'];
   //idmenu:='M11001';
   strday2:=Dtkontrak.Date;
   //EdNo_kontrak.Text:=getNourutBlnPrshthn_kode(strday2,'t_coop_contract','');
   EdNo_kontrak.Text:=getNourut(strday2,'t_coop_contract','');
   EdNo.Text:=Order_no;
end;


procedure TFNewKontrak_ks.BBatalClick(Sender: TObject);
begin
//   FKontrakkerjasama.ActROExecute(sender);
   Close;
end;


procedure TFNewKontrak_ks.BEditClick(Sender: TObject);
begin
      MemMaterial.First;
      while not MemMaterial.Eof do
      begin
        DBGridEh2ColEnter(sender);
        MemMaterial.Next;
      end;
      if EdCurr.Text='IDR' then
      begin
      if EdNm_supp.Text='' then
      begin
        MessageDlg('Nama Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
        EdNm_supp.SetFocus;
        Exit;
      end;
      if DtKontrak.Text='' then
      begin
        MessageDlg('Tanggal Mulai Kontrak Tidak boleh Kosong ',MtWarning,[MbOk],0);
        DtKontrak.SetFocus;
        Exit;
      end;
      if DtSelesai.Text='' then
      begin
        MessageDlg('Tanggal Selesai Kontrak Tidak boleh Kosong ',MtWarning,[MbOk],0);
        DtSelesai.SetFocus;
        Exit;
      end;
      if Edtempo.Text='' then
      begin
        MessageDlg('Jatuh Tempo Tidak boleh Kosong ',MtWarning,[MbOk],0);
        Edtempo.SetFocus;
        Exit;
      end;
      if DBGridEh2.Fields[6].AsString='' then
      begin
        MessageDlg('Kuantum Tidak boleh Kosong ',MtWarning,[MbOk],0);
        Exit;
      end;
      if DBGridEh2.Fields[14].AsString='' then
      begin
        MessageDlg('Harga Tidak boleh Kosong ',MtWarning,[MbOk],0);
        Exit;
      end;
      if DBGridEh2.Fields[15].AsString='' then
      begin
        MessageDlg('Total Harga Tidak boleh Kosong ',MtWarning,[MbOk],0);
        Exit;
      end;
      if not Dm.Koneksi.InTransaction then
      dm.koneksi.StartTransaction;
      try
      begin
          with dm.Qtemp2 do
          begin
            close;
            sql.clear;
            sql.Text:='Select * from t_coop_contract';
            ExecSQL;
          end;
          with dm.Qtemp2 do
          begin
            close;
            sql.clear;
            sql.Text:='update t_coop_contract set supplier_code=:parkd_supplier,contract_date=:partgl_kontrak,'+
                      ' finish_date=:partgl_selesai,due_date=:parjatuh_tempo,type=:parjenis, '+
                      ' order_no=:parno_urut,remarks=:parketerangan,currency=:parcurrency,'+
                      ' currency_value=:parnilaicurrency,delivery_month=:parbln_kirim, category=:parkategori '+
                      ' , delivery_year=:parth_kirim, PIC=:parpic where contract_no=:parno_kontrak';
                      ParamByName('parno_kontrak').Value:=EdNo_kontrak.Text;
                      ParamByName('parkd_supplier').Value:=EdKd_supp.Text;
                      ParamByName('partgl_kontrak').Value:=FormatDateTime('yyy-mm-dd',DtKontrak.Date);
                      ParamByName('partgl_selesai').Value:=FormatDateTime('yyy-mm-dd',DtSelesai.Date);
                      ParamByName('parjatuh_tempo').Value:=Edtempo.Text;
                      ParamByName('parno_urut').Value:=EdNo.Text;
                      //ParamByName('partahun').Value:=DtTahun.Text;
                      ParamByName('parketerangan').Value:=EdKet.Text;
                      //ParamByName('parstatus').Value:=Status2;
                      ParamByName('parcurrency').Value:=EdCurr.Text;
                      ParamByName('parnilaicurrency').Value:=EdnilaiCurr.Text;
                      ParamByName('parjenis').Value:=CbJenis.Text;
                      ParamByName('parbln_kirim').Value:=CB_kirim.Text;
                      ParamByName('parth_kirim').Value:=EdTh_kirim.Text;
                      ParamByName('parkategori').Value:=CbKategori.Text;
                      ParamByName('parpic').Value:=Nm;
            ExecSQL;
          end;
          with dm.Qtemp do
          begin
            close;
            sql.clear;
            sql.Text:='Delete from t_coop_contract_det where contract_no='+QuotedStr(EdNo_kontrak.Text);
            ExecSQL;
          end;
          MemMaterial.First;
          while not MemMaterial.Eof do
          begin
              with dm.Qtemp do
              begin
                close;
                sql.clear;
                sql.Text:='Select * from t_coop_contract_det';
                ExecSQL;
              end;
              with dm.Qtemp do
              begin
                close;
                sql.clear;
                sql.Text:='insert into t_coop_contract_det(contract_no,item_stock_code,qty,price,unit,'+
                          ' total_price, totalpo, remaining_qty, status,ppn,ppn_rp,"specification",'+
                          ' subtotal_rp,grandtotal,price2,pemb_ppn,pph,pph_rp,pemb_dpp)values(:parno_kontrak,'+
                          ' :parkd_material_stok,:parqty,:parharga,:parsatuan,:partotal_harga,:partotalpo,'+
                          ' :parsisaqty,:parstatus,:parppn,:parppn_rp,:parSpesifikasi,'+
                          ' :parsubtotal_rp,:pargrandtotal,:parharga2,:parpemb,:parpph,:parpph_rp,:parpemb_dpp)';
                          ParamByName('parno_kontrak').Value:=EdNo_kontrak.Text;
                          ParamByName('parkd_material_stok').Value:=MemMaterial['kd_material_supp'];
                          ParamByName('parqty').Value:=MemMaterial['qty'];
                          ParamByName('parharga').Value:=MemMaterial['harga2'];
                          ParamByName('parsatuan').Value:=MemMaterial['satuan'];
                          ParamByName('partotal_harga').Value:=MemMaterial['subtotal_rp'];
                          ParamByName('partotalpo').Value:='0';
                          ParamByName('parsisaqty').Value:=MemMaterial['sisaqty'];
                          ParamByName('parstatus').Value:='CREATED';
                          ParamByName('parppn').Value:=MemMaterial['ppn'];
                          ParamByName('parppn_rp').Value:=MemMaterial['ppn_rp'];
                          //ParamByName('pargrandtotal').Value:=MemMaterial['grandtotal'];
                          ParamByName('parSpesifikasi').Value:=MemMaterial['Spesifikasi'];
                          ParamByName('pargrandtotal').Value:=MemMaterial['grandtotal_rp'];
                          ParamByName('parsubtotal_rp').Value:=MemMaterial['subtotal_rp']+MemMaterial['pemb_dpp'];
                          ParamByName('parpemb_dpp').Value:=MemMaterial['pemb_dpp'];
                          ParamByName('parharga2').Value:=MemMaterial['harga2'];
                          ParamByName('parpemb').Value:=MemMaterial['pemb_ppn'];
                          ParamByName('parpph').Value:=MemMaterial['pph'];
                          ParamByName('parpph_rp').Value:=MemMaterial['pph_rp'];
                ExecSQL;
              end;
              MemMaterial.Next;
          end;
          Dm.Koneksi.Commit;
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
      if EdCurr.Text<>'IDR' then
      begin
      if EdNm_supp.Text='' then
      begin
        MessageDlg('Nama Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
        EdNm_supp.SetFocus;
        Exit;
      end;
      if DtKontrak.Text='' then
      begin
        MessageDlg('Tanggal Mulai Kontrak Tidak boleh Kosong ',MtWarning,[MbOk],0);
        DtKontrak.SetFocus;
        Exit;
      end;
      if DtSelesai.Text='' then
      begin
        MessageDlg('Tanggal Selesai Kontrak Tidak boleh Kosong ',MtWarning,[MbOk],0);
        DtSelesai.SetFocus;
        Exit;
      end;
      if Edtempo.Text='' then
      begin
        MessageDlg('Jatuh Tempo Tidak boleh Kosong ',MtWarning,[MbOk],0);
        Edtempo.SetFocus;
        Exit;
      end;
      if DBGridEh2.Fields[6].AsString='' then
      begin
        MessageDlg('Kuantum Tidak boleh Kosong ',MtWarning,[MbOk],0);
        Exit;
      end;
      if DBGridEh2.Fields[8].AsString='' then
      begin
        MessageDlg('Harga Tidak boleh Kosong ',MtWarning,[MbOk],0);
        Exit;
      end;
      if DBGridEh2.Fields[9].AsString='' then
      begin
        MessageDlg('Total Harga Tidak boleh Kosong ',MtWarning,[MbOk],0);
        Exit;
      end;
      if not Dm.Koneksi.InTransaction then
      dm.koneksi.StartTransaction;
      try
      begin
        with dm.Qtemp2 do
        begin
          close;
          sql.clear;
          sql.Text:='Select * from t_coop_contract';
          ExecSQL;
        end;
        with dm.Qtemp2 do
        begin
            close;
            sql.clear;
            sql.Text:='update t_coop_contract set supplier_code=:parkd_supplier,contract_date=:partgl_kontrak,'+
                      ' finish_date=:partgl_selesai,due_date=:parjatuh_tempo,type=:parjenis, '+
                      ' order_no=:parno_urut,remarks=:parketerangan,currency=:parcurrency,'+
                      ' currency_value=:parnilaicurrency,delivery_month=:parbln_kirim, category=:parkategori '+
                      ' , delivery_year=:parth_kirim, PIC=:parpic where contract_no=:parno_kontrak';
                      ParamByName('parno_kontrak').Value:=EdNo_kontrak.Text;
                      ParamByName('parkd_supplier').Value:=EdKd_supp.Text;
                      ParamByName('partgl_kontrak').Value:=FormatDateTime('yyy-mm-dd',DtKontrak.Date);
                      ParamByName('partgl_selesai').Value:=FormatDateTime('yyy-mm-dd',DtSelesai.Date);
                      ParamByName('parjatuh_tempo').Value:=Edtempo.Text;
                      ParamByName('parno_urut').Value:=EdNo.Text;
                      //ParamByName('partahun').Value:=DtTh.Text;
                      ParamByName('parketerangan').Value:=EdKet.Text;
                      //ParamByName('parstatus').Value:=Status2;
                      ParamByName('parcurrency').Value:=EdCurr.Text;
                      ParamByName('parnilaicurrency').Value:=EdnilaiCurr.Text;
                      ParamByName('parjenis').Value:=CbJenis.Text;
                      ParamByName('parbln_kirim').Value:=CB_kirim.Text;
                      ParamByName('parth_kirim').Value:=EdTh_kirim.Text;
                      ParamByName('parkategori').Value:=CbKategori.Text;
                      ParamByName('parpic').Value:=Nm;
            ExecSQL;
        end;
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:='Delete from t_coop_contract_det where contract_no='+QuotedStr(EdNo_kontrak.Text);
          ExecSQL;
        end;
        MemMaterial.First;
        while not MemMaterial.Eof do
        begin
            with dm.Qtemp do
            begin
              close;
              sql.clear;
              sql.Text:='Select * from t_coop_contract_det';
              ExecSQL;
            end;
            with dm.Qtemp do
            begin
              close;
              sql.clear;
              sql.Text:='insert into t_coop_contract_det(contract_no,item_stock_code,qty,price,unit,'+
                        ' total_price, totalpo, remaining_aqty, status,ppn,ppn_rp,"specification",'+
                        ' subtotal_rp,grandtotal,pemb_ppn)values(:parno_kontrak,:parkd_material_stok,:parqty,'+
                        ' :parharga,:parsatuan,:partotal_harga,:partotalpo,:parsisaqty,:parstatus,'+
                        ' :parppn,:parppn_rp,:parSpesifikasi,:parsubtotal_rp,:pargrandtotal,:parpemb)';
                        ParamByName('parno_kontrak').Value:=EdNo_kontrak.Text;
                        ParamByName('parkd_material_stok').Value:=MemMaterial['kd_material_supp'];
                        ParamByName('parqty').Value:=MemMaterial['qty'];
                        ParamByName('parharga').Value:=MemMaterial['harga2'];
                        ParamByName('parsatuan').Value:=MemMaterial['satuan'];
                        ParamByName('partotal_harga').Value:=MemMaterial['total_harga'];
                        ParamByName('partotalpo').Value:='0';
                        ParamByName('parsisaqty').Value:=MemMaterial['sisaqty'];
                        ParamByName('parstatus').Value:='CREATED';
                        ParamByName('parppn').Value:=MemMaterial['ppn'];
                        ParamByName('parppn_rp').Value:=MemMaterial['ppn_rp'];
                        //ParamByName('pargrandtotal').Value:=MemMaterial['grandtotal'];
                        ParamByName('parSpesifikasi').Value:=MemMaterial['Spesifikasi'];
                        ParamByName('pargrandtotal').Value:=MemMaterial['grandtotal'];
                        ParamByName('parsubtotal_rp').Value:=MemMaterial['subtotal_rp'];
                        ParamByName('parpemb').Value:=MemMaterial['pemb_ppn_us'];
              ExecSQL;
            end;
            MemMaterial.Next;
        end;
        Dm.Koneksi.Commit;
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

procedure TFNewKontrak_ks.BitBtn1Click(Sender: TObject);
begin
  Autonumber;
end;

procedure TFNewKontrak_ks.BSimpanClick(Sender: TObject);
begin
    Autonumber;
    if messageDlg ('Anda Yakin Disimpan Kontrak No.'+EdNo_kontrak.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
    begin
      MemMaterial.First;
      while not MemMaterial.Eof do
      begin
        DBGridEh2ColEnter(sender);
        MemMaterial.Next;
      end;
      if EdCurr.Text='IDR' then
      begin
        MemMaterial.First;
        while not MemMaterial.Eof do
        begin
          if DBGridEh2.Fields[0].AsString='' then
          begin
            MemMaterial.Delete;
          end;
          MemMaterial.Next;
        end;
        if EdNm_supp.Text='' then
        begin
          MessageDlg('Nama Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
          EdNm_supp.SetFocus;
          Exit;
        end;
        if DtKontrak.Text='' then
        begin
          MessageDlg('Tanggal Mulai Kontrak Tidak boleh Kosong ',MtWarning,[MbOk],0);
          DtKontrak.SetFocus;
          Exit;
        end;
        if DtSelesai.Text='' then
        begin
          MessageDlg('Tanggal Selesai Kontrak Tidak boleh Kosong ',MtWarning,[MbOk],0);
          DtSelesai.SetFocus;
          Exit;
        end;
        if Edtempo.Text='' then
        begin
          MessageDlg('Jatuh Tempo Tidak boleh Kosong ',MtWarning,[MbOk],0);
          Edtempo.SetFocus;
          Exit;
        end;
        if DBGridEh2.Fields[6].AsString='' then
        begin
          MessageDlg('Quantum Tidak boleh Kosong ',MtWarning,[MbOk],0);
          Exit;
        end;
        if DBGridEh2.Fields[12].AsString='' then
        begin
          MessageDlg('Harga Tidak boleh Kosong ',MtWarning,[MbOk],0);
          Exit;
        end;
        if DBGridEh2.Fields[15].AsString='' then
        begin
          MessageDlg('Total Harga Tidak boleh Kosong ',MtWarning,[MbOk],0);
          Exit;
        end;
      if not dm.koneksi.InTransaction then
      dm.koneksi.StartTransaction;
      try
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:='Select * from t_coop_contract';
          ExecSQL;
        end;
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' insert into t_coop_contract(contract_no,supplier_code,contract_date,finish_date,'+
                    ' due_date, order_no, trans_year, remarks, status,currency,currency_value,'+
                    ' type,"approval_status",category,delivery_month,delivery_year,pic,trans_month,trans_day,input_date)'+
                    ' values(:parno_kontrak,:parkd_supplier,:partgl_kontrak,:partgl_selesai, '+
                    ' :parjatuh_tempo,:parno_urut,:partahun,:parketerangan,:parstatus,:parcurrency,:parnilaicurrency,:parjenis,'+
                    ' :parStatus_Approval,:parkategori,:parbln_kirim,:parth_kirim,:parpic,:parbulan,:partgl,now())';
                    ParamByName('parno_kontrak').Value:=EdNo_kontrak.Text;
                    ParamByName('parkd_supplier').Value:=EdKd_supp.Text;
                    ParamByName('partgl_kontrak').Value:=FormatDateTime('yyy-mm-dd',DtKontrak.Date);
                    ParamByName('partgl_selesai').Value:=FormatDateTime('yyy-mm-dd',DtSelesai.Date);
                    ParamByName('parjatuh_tempo').Value:=Edtempo.Text;
                    ParamByName('parno_urut').Value:=EdNo.Text;
                    ParamByName('partahun').Value:=DtTahun.Text;
                    ParamByName('parketerangan').Value:=EdKet.Text;
                    ParamByName('parstatus').AsString:='1';
                    ParamByName('parcurrency').Value:=EdCurr.Text;
                    ParamByName('parnilaicurrency').Value:=EdnilaiCurr.Value;
                    ParamByName('parbln_kirim').Value:=CB_kirim.Text;
                    ParamByName('parth_kirim').Value:=EdTh_kirim.Value;
                    ParamByName('parjenis').Value:=CbJenis.Text;
                    ParamByName('parStatus_Approval').Value:=0;
                    ParamByName('parkategori').Value:=CbKategori.Text;
                    ParamByName('parpic').Value:=Nm;
                    ParamByName('parbulan').Value:=DtBln.Text;
                    ParamByName('partgl').Value:=DtHr.Text;
                 //   ParamByName('parinput_date').AsDateTime:=Now;

          ExecSQL;
        end;
        MemMaterial.First;
        while not MemMaterial.Eof do
        begin
          with dm.Qtemp do
          begin
            close;
            sql.clear;
            sql.Text:='Select * from t_coop_contract_det';
            ExecSQL;
          end;
          with dm.Qtemp do
          begin
            close;
            sql.clear;
            sql.Text:='insert into t_coop_contract_det(contract_no,item_stock_code,qty,price,unit,'+
                      ' total_price, totalpo, remaining_qty, status,ppn,ppn_rp,"specification",'+
                      ' subtotal_rp,grandtotal,price2,pemb_ppn,pph,pph_rp,pemb_dpp)values(:parno_kontrak,'+
                      ' :parkd_material_stok,:parqty,:parharga,:parsatuan,:partotal_harga,:partotalpo,'+
                      ' :parsisaqty,:parstatus,:parppn,:parppn_rp,:parSpesifikasi,'+
                      ' :parsubtotal_rp,:pargrandtotal,:parharga2,:parpemb,:parpph,:parpph_rp,:parpemb_dpp)';
                      ParamByName('parno_kontrak').Value:=EdNo_kontrak.Text;
                      ParamByName('parkd_material_stok').Value:=MemMaterial['kd_material_supp'];
                      ParamByName('parqty').Value:=MemMaterial['qty'];
                      ParamByName('parharga').Value:=MemMaterial['harga2'];
                      ParamByName('parsatuan').Value:=MemMaterial['satuan'];
                      ParamByName('partotal_harga').Value:=MemMaterial['subtotal_rp'];
                      ParamByName('partotalpo').Value:='0';
                      ParamByName('parsisaqty').Value:=MemMaterial['sisaqty'];
                      ParamByName('parstatus').Value:='CREATED';
                      ParamByName('parppn').Value:=MemMaterial['ppn'];
                      ParamByName('parppn_rp').Value:=MemMaterial['ppn_rp'];
                      ParamByName('parSpesifikasi').Value:=MemMaterial['Spesifikasi'];
                      ParamByName('pargrandtotal').Value:=MemMaterial['grandtotal_rp'];
                      ParamByName('parsubtotal_rp').Value:=MemMaterial['subtotal_rp']+MemMaterial['pemb_dpp'];
                      ParamByName('parpemb_dpp').Value:=MemMaterial['pemb_dpp'];
                      ParamByName('parharga2').Value:=MemMaterial['harga2'];
                      ParamByName('parpemb').Value:=MemMaterial['pemb_ppn'];
                      ParamByName('parpph').Value:=MemMaterial['pph'];
                      ParamByName('parpph_rp').Value:=MemMaterial['pph_rp'];
            ExecSQL;
          end;
        MemMaterial.Next;
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
      if EdCurr.Text<>'IDR' then
      begin
          MemMaterial.First;
          while not MemMaterial.Eof do
          begin
            if DBGridEh2.Fields[0].AsString='' then
            begin
              MemMaterial.Delete;
            end;
            MemMaterial.Next;
          end;
          if EdNm_supp.Text='' then
          begin
            MessageDlg('Nama Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
            EdNm_supp.SetFocus;
            Exit;
          end;
          if DtKontrak.Text='' then
          begin
            MessageDlg('Tanggal Mulai Kontrak Tidak boleh Kosong ',MtWarning,[MbOk],0);
            DtKontrak.SetFocus;
            Exit;
          end;
          if DtSelesai.Text='' then
          begin
            MessageDlg('Tanggal Selesai Kontrak Tidak boleh Kosong ',MtWarning,[MbOk],0);
            DtSelesai.SetFocus;
            Exit;
          end;
          if Edtempo.Text='' then
          begin
            MessageDlg('Jatuh Tempo Tidak boleh Kosong ',MtWarning,[MbOk],0);
            Edtempo.SetFocus;
            Exit;
          end;
          if DBGridEh2.Fields[6].AsString='' then
          begin
            MessageDlg('Quantum Tidak boleh Kosong ',MtWarning,[MbOk],0);
            Exit;
          end;
          if DBGridEh2.Fields[8].AsString='' then
          begin
            MessageDlg('Harga Tidak boleh Kosong ',MtWarning,[MbOk],0);
            Exit;
          end;
          if DBGridEh2.Fields[9].AsString='' then
          begin
            MessageDlg('Total Harga Tidak boleh Kosong ',MtWarning,[MbOk],0);
            Exit;
          end;
          if not dm.koneksi.InTransaction then
          dm.koneksi.StartTransaction;
          try
          begin
            with dm.Qtemp do
            begin
              close;
              sql.clear;
              sql.Text:='Select * from t_coop_contract';
              ExecSQL;
            end;
            with dm.Qtemp do
            begin
              close;
              sql.clear;
              sql.Text:='insert into t_coop_contract(contract_no,supplier_code,contract_date,finish_date,'+
                        ' due_date, order_no, trans_year, remarks, status,currency,currency_value,'+
                        ' type,"approval_status",category,delivery_month,delivery_year,pic,trans_month,trans_day)'+
                        ' values(:parno_kontrak,:parkd_supplier,:partgl_kontrak,:partgl_selesai, '+
                        ' :parjatuh_tempo,:parno_urut,:partahun,:parketerangan,:parstatus,:parcurrency,'+
                        ' :parnilaicurrency,:parjenis,:parStatus_Approval,:parkategori,:parbln_kirim,:parth_kirim,'+
                        ' :parpic,:parbulan,:partgl)';
                        ParamByName('parno_kontrak').Value:=EdNo_kontrak.Text;
                        ParamByName('parkd_supplier').Value:=EdKd_supp.Text;
                        ParamByName('partgl_kontrak').Value:=FormatDateTime('yyy-mm-dd',DtKontrak.Date);
                        ParamByName('partgl_selesai').Value:=FormatDateTime('yyy-mm-dd',DtSelesai.Date);
                        ParamByName('parjatuh_tempo').Value:=Edtempo.Text;
                        ParamByName('parno_urut').Value:=EdNo.Text;
                        ParamByName('partahun').Value:=DtTahun.Text;
                        ParamByName('parketerangan').Value:=EdKet.Text;
                        ParamByName('parstatus').AsString:='1';
                        ParamByName('parcurrency').Value:=EdCurr.Text;
                        ParamByName('parnilaicurrency').Value:=EdnilaiCurr.Value;
                        ParamByName('parbln_kirim').Value:=CB_kirim.Text;
                        ParamByName('parth_kirim').Value:=EdTh_kirim.Value;
                        ParamByName('parjenis').Value:=CbJenis.Text;
                        ParamByName('parStatus_Approval').Value:=0;
                        ParamByName('parkategori').Value:=CbKategori.Text;
                        ParamByName('parpic').Value:=Nm;
                        ParamByName('parbulan').Value:=DtBln.Text;
                        ParamByName('partgl').Value:=DtHr.Text;

              ExecSQL;
            end;
            MemMaterial.First;
            while not MemMaterial.Eof do
            begin
              with dm.Qtemp do
              begin
                close;
                sql.clear;
                sql.Text:='Select * from t_coop_contract_det';
                ExecSQL;
              end;
              with dm.Qtemp do
              begin
                close;
                sql.clear;
                sql.Text:='insert into t_coop_contract_det(contract_no,item_stock_code,qty,price,unit,'+
                          ' total_price, totalpo, remaining_qty, status,ppn,ppn_rp,"specification",'+
                          ' subtotal_rp,grandtotal,price2,pemb_ppn)values(:parno_kontrak,'+
                          ' :parkd_material_stok,:parqty,:parharga,:parsatuan,:partotal_harga,:partotalpo,'+
                          ' :parsisaqty,:parstatus,:parppn,:parppn_rp,:parSpesifikasi,'+
                          ' :parsubtotal_rp,:pargrandtotal,:parharga2,:parpemb)';
                          ParamByName('parno_kontrak').Value:=EdNo_kontrak.Text;
                          ParamByName('parkd_material_stok').Value:=MemMaterial['kd_material_supp'];
                          ParamByName('parqty').Value:=MemMaterial['qty'];
                          ParamByName('parharga').Value:=MemMaterial['harga'];
                          ParamByName('parsatuan').Value:=MemMaterial['satuan'];
                          ParamByName('partotal_harga').Value:=MemMaterial['total_harga'];
                          ParamByName('partotalpo').Value:='0';
                          ParamByName('parsisaqty').Value:=MemMaterial['sisaqty'];
                          ParamByName('parstatus').Value:='CREATED';
                          ParamByName('parppn').Value:=MemMaterial['ppn'];
                          ParamByName('parppn_rp').Value:=MemMaterial['ppn_rp'];
                          ParamByName('parSpesifikasi').Value:=MemMaterial['Spesifikasi'];
                          ParamByName('pargrandtotal').Value:=MemMaterial['grandtotal'];
                          ParamByName('parsubtotal_rp').Value:=MemMaterial['subtotal_rp'];
                          ParamByName('parharga2').Value:=MemMaterial['harga2'];
                          ParamByName('parpemb').Value:=MemMaterial['pemb_ppn_us'];
                ExecSQL;
              end;
            MemMaterial.Next;
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
end;

procedure TFNewKontrak_ks.CbJenisSelect(Sender: TObject);
begin
    CbJenis.Text:='lokal';
    if CbJenis.Text='LOKAL' then
    begin
      EdCurr.Text:='IDR';
      EdCurrChange(sender);
    end;
end;

procedure TFNewKontrak_ks.DBGridEh2CellClick(Column: TColumnEh);
begin
    try
      begin
        if EdCurr.Text<>'IDR' then
        begin
          MemMaterial.Edit;
          MemMaterial['total_harga']:=MemMaterial['Qty']*MemMaterial['Harga'];
          MemMaterial['sisaqty']:=MemMaterial['qty'];
          //MemMaterial['subtotal_rp']:=MemMaterial['total_harga']*StrToFloat(EdnilaiCurr.Text);
          MemMaterial['totalpo']:=0;
          MemMaterial['ppn_rp']:=(MemMaterial['subtotal_rp']/100)*MemMaterial['ppn'];
          MemMaterial['harga2']:=((MemMaterial['harga'])*EdnilaiCurr.Text);
          MemMaterial['subtotal_rp']:=MemMaterial['harga']*MemMaterial['Qty'];
          MemMaterial['grandtotal']:=MemMaterial['total_harga']+MemMaterial['ppn_us'];
          //MemMaterial['grandtotal']:=MemMaterial['total_harga'];//+MemMaterial['ppn_rp'];
          MemMaterial['pph_rp']:=int((MemMaterial['subtotal_rp']/100)*MemMaterial['pph']);
          MemMaterial['grandtotal_rp']:=MemMaterial['subtotal_rp']+(MemMaterial['ppn_rp']+MemMaterial['pemb_ppn_us']);
          MemMaterial.Post;
        end
        else
        if EdCurr.Text='IDR' then
        begin
          MemMaterial.Edit;
          MemMaterial['subtotal_rp']:=MemMaterial['Qty']*MemMaterial['Harga2'];
          MemMaterial['sisaqty']:=MemMaterial['qty'];
          //MemMaterial['subtotal_rp']:=MemMaterial['total_harga']*StrToFloat(EdnilaiCurr.Text);
          MemMaterial['totalpo']:=0;
          MemMaterial['ppn_rp']:=int((MemMaterial['subtotal_rp']/100)*MemMaterial['ppn']);
          MemMaterial['pph_rp']:=int((MemMaterial['subtotal_rp']/100)*MemMaterial['pph']);
          //MemMaterial['harga2']:=(Trunc((MemMaterial['harga'])*EdnilaiCurr.value)div 10)*10;
          //MemMaterial['subtotal_rp']:=MemMaterial['harga']*MemMaterial['Qty'];
          //MemMaterial['grandtotal']:=MemMaterial['total_harga'];//+MemMaterial['ppn_rp'];
          //MemMaterial['grandtotal']:=MemMaterial['total_harga'];//+MemMaterial['ppn_rp'];                      //penambahan ds 09-09-2022
          MemMaterial['grandtotal_rp']:=MemMaterial['subtotal_rp']+MemMaterial['ppn_rp']+MemMaterial['pemb_ppn']+MemMaterial['pemb_dpp'];//-MemMaterial['pph_rp'];
          MemMaterial.Post;
        end;
      end;
    except;
    end;
end;

procedure TFNewKontrak_ks.DBGridEh2ColEnter(Sender: TObject);
begin
   try
      begin
      if EdCurr.Text<>'IDR' then
      begin
      MemMaterial.Edit;
      MemMaterial['total_harga']:=MemMaterial['Qty']*MemMaterial['Harga'];
      MemMaterial['sisaqty']:=MemMaterial['qty'];
      //MemMaterial['subtotal_rp']:=MemMaterial['total_harga']*StrToFloat(EdnilaiCurr.Text);
      MemMaterial['totalpo']:=0;
      MemMaterial['ppn_us']:=(MemMaterial['total_harga']/100)*MemMaterial['ppn'];
      MemMaterial['ppn_rp']:=(MemMaterial['subtotal_rp']/100)*MemMaterial['ppn'];
      MemMaterial['pph_rp']:=int((MemMaterial['subtotal_rp']/100)*MemMaterial['pph']);
      MemMaterial['harga2']:=((MemMaterial['harga'])*EdnilaiCurr.Text);
      MemMaterial['subtotal_rp']:=MemMaterial['harga']*MemMaterial['Qty'];
      MemMaterial['grandtotal']:=MemMaterial['total_harga']+MemMaterial['ppn_us'];//+MemMaterial['ppn_rp'];
      MemMaterial['grandtotal_rp']:=MemMaterial['subtotal_rp']+MemMaterial['ppn_rp']+MemMaterial['pemb_ppn_us'];
      MemMaterial.Post;
      end else
      if EdCurr.Text='IDR' then
      begin
      MemMaterial.Edit;
      MemMaterial['subtotal_rp']:=MemMaterial['Qty']*MemMaterial['Harga2'];
      MemMaterial['sisaqty']:=MemMaterial['qty'];
      //MemMaterial['subtotal_rp']:=MemMaterial['total_harga']*StrToFloat(EdnilaiCurr.Text);
      MemMaterial['totalpo']:=0;
      MemMaterial['ppn_rp']:=int((MemMaterial['subtotal_rp']/100)*MemMaterial['ppn']);
      MemMaterial['pph_rp']:=int((MemMaterial['subtotal_rp']/100)*MemMaterial['pph']);
      //MemMaterial['harga2']:=(Trunc((MemMaterial['harga'])*EdnilaiCurr.value)div 10)*10;
      //MemMaterial['subtotal_rp']:=MemMaterial['harga']*MemMaterial['Qty'];
      //MemMaterial['grandtotal']:=MemMaterial['total_harga'];//+MemMaterial['ppn_rp'];                      //penambahan ds 09-09-2022
      MemMaterial['grandtotal_rp']:=MemMaterial['subtotal_rp']+MemMaterial['ppn_rp']+MemMaterial['pemb_ppn']+MemMaterial['pemb_dpp'];//-MemMaterial['pph_rp'];
      MemMaterial.Post;
      end;
      end;
        Except;
   end;
end;

procedure TFNewKontrak_ks.DBGridEh2Columns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
    with Flistmaterialstok do
    begin
      Show;
      with QMaterial_stok do
      begin
        close;
        sql.Clear;
        sql.Text:='select a.item_name,b.supplier_code,b.supplier_name,a.item_code,a.item_stock_code,a.order_no, a.qty,a.unit,a.merk,  '+
                  'd.qty_unit,d.unit,d.qty_conv,d.unit_conv,c.buy, '+
                  'e.category,f."type",g.group_name '+

                  'from t_item_stock a  '+
                  'inner join t_supplier b on a.supplier_code=b.supplier_code '+
                  'inner join t_item c on a.item_code=c.item_code  '+
                  'inner join t_item_conversion d on a.item_code=d.item_code '+
                  'inner join t_item_category e on c.category_id=e.category_id '+
                  'inner join t_item_type f on e.type_id=f.type_id '+
                  'inner join t_item_group g on c.category_id=g.group_id '+
                  'where b.supplier_code='+QuotedStr(EdKd_supp.Text)+' and f.type='+QuotedStr(CbKategori.Text)+' '+

                  'group by a.item_code,b.supplier_code,b.supplier_name,a.item_stock_code,a.order_no,a.qty,a.unit,a.merk,a.item_name,d.unit,d.qty_unit,d.qty_conv, '+
                  'd.unit_conv,c.buy,a.item_name,e.category,g.group_name,f."type" '+
                  'order by item_stock_code Desc';
        ExecSQL;
      end;
      QMaterial_stok.Open;
      if CbKategori.Text<>'PERSEDIAAN' then
      begin
         DBGridMaterial.IndicatorOptions:=[gioShowRowselCheckboxesEh];
      end
      else
         DBGridMaterial.IndicatorOptions:=[];
      if CbKategori.Text<>'PERSEDIAAN' then
      begin
         Panel1.Visible:=True;
      end
      else
         Panel1.Visible:=False;
    end;
end;

procedure TFNewKontrak_ks.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
begin
    if Key =#27 then Close;
    Key := UpCase(Key);
end;

procedure TFNewKontrak_ks.DtKontrakChange(Sender: TObject);
begin
   DtBln.Date:=DtKontrak.Date;
   DtTahun.Date:=DtKontrak.Date;
   Dthr.Date:=DtKontrak.Date;
end;

procedure TFNewKontrak_ks.EdCurrChange(Sender: TObject);
begin
    if EdCurr.Text='USD' then
       EdnilaiCurr.Visible:=True
       else
       EdnilaiCurr.Visible:=False;
    if EdCurr.Text='IDR' then
    begin
      DBGridEh2.Columns[8].Visible:=false;
      DBGridEh2.Columns[9].Visible:=false;
      DBGridEh2.Columns[10].Visible:=false;
      DBGridEh2.Columns[11].Visible:=false;
      DBGridEh2.Columns[12].Visible:=false;
      DBGridEh2.Columns[13].Visible:=false;
      DBGridEh2.Columns[14].Visible:=True;
      DBGridEh2.Columns[15].Visible:=True;
      DBGridEh2.Columns[16].Visible:=True;
      DBGridEh2.Columns[17].Visible:=True;
      DBGridEh2.Columns[18].Visible:=True;
      DBGridEh2.Columns[19].Visible:=True;
      DBGridEh2.Columns[20].Visible:=True;
      DBGridEh2.Columns[21].Visible:=True;
      DBGridEh2.Columns[22].Visible:=True;
    end;
    if EdCurr.Text<>'IDR' then
    begin
      DBGridEh2.Columns[8].Visible:=True;
      DBGridEh2.Columns[9].Visible:=True;
      DBGridEh2.Columns[10].Visible:=True;
      DBGridEh2.Columns[11].Visible:=True;
      DBGridEh2.Columns[12].Visible:=True;
      DBGridEh2.Columns[13].Visible:=true;
      DBGridEh2.Columns[14].Visible:=False;
      DBGridEh2.Columns[15].Visible:=False;
      DBGridEh2.Columns[16].Visible:=False;
      DBGridEh2.Columns[17].Visible:=False;
      DBGridEh2.Columns[18].Visible:=false;
      DBGridEh2.Columns[19].Visible:=false;
      DBGridEh2.Columns[20].Visible:=false;
      DBGridEh2.Columns[21].Visible:=false;
      DBGridEh2.Columns[22].Visible:=True;
    end;
end;

procedure TFNewKontrak_ks.EdCurrSelect(Sender: TObject);
begin
    if EdCurr.Text='USD' then
       EdnilaiCurr.Visible:=True
       else
       EdnilaiCurr.Visible:=False;
    if EdCurr.Text='IDR' then
    begin
      DBGridEh2.Columns[8].Visible:=false;
      DBGridEh2.Columns[9].Visible:=false;
      DBGridEh2.Columns[10].Visible:=false;
      DBGridEh2.Columns[11].Visible:=false;
      DBGridEh2.Columns[12].Visible:=false;
      DBGridEh2.Columns[13].Visible:=false;
      DBGridEh2.Columns[14].Visible:=True;
      DBGridEh2.Columns[15].Visible:=True;
      DBGridEh2.Columns[16].Visible:=True;
      DBGridEh2.Columns[17].Visible:=True;
      DBGridEh2.Columns[18].Visible:=True;
      DBGridEh2.Columns[19].Visible:=True;
      DBGridEh2.Columns[20].Visible:=True;
      DBGridEh2.Columns[21].Visible:=True;
      DBGridEh2.Columns[22].Visible:=True;
    end;
    if EdCurr.Text<>'IDR' then
    begin
      DBGridEh2.Columns[8].Visible:=True;
      DBGridEh2.Columns[9].Visible:=True;
      DBGridEh2.Columns[10].Visible:=True;
      DBGridEh2.Columns[11].Visible:=True;
      DBGridEh2.Columns[12].Visible:=True;
      DBGridEh2.Columns[13].Visible:=true;
      DBGridEh2.Columns[14].Visible:=False;
      DBGridEh2.Columns[15].Visible:=False;
      DBGridEh2.Columns[16].Visible:=False;
      DBGridEh2.Columns[17].Visible:=False;
      DBGridEh2.Columns[18].Visible:=false;
      DBGridEh2.Columns[19].Visible:=false;
      DBGridEh2.Columns[20].Visible:=false;
      DBGridEh2.Columns[21].Visible:=false;
      DBGridEh2.Columns[22].Visible:=True;
    end;
end;

procedure TFNewKontrak_ks.EdKd_suppChange(Sender: TObject);
begin
  //MemMaterial.EmptyTable;
end;

procedure TFNewKontrak_ks.EdnilaiCurrKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in['0'..'9',#8,#13,#32]) then
    begin
      Key:=#0;
      ShowMessage('Inputan hanya angka saja');
    end;
    end;

procedure TFNewKontrak_ks.EdNm_suppButtonClick(Sender: TObject);
begin
    with FSearch_Supplier do
    begin
      Show;
      QSupplier.Close;
      QSupplier.Open;
    end;
end;

procedure TFNewKontrak_ks.EdtempoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8,#13,#32]) then
  begin
    Key:=#0;
    ShowMessage('Inputan hanya angka saja');
  end;
end;

procedure TFNewKontrak_ks.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNewKontrak_ks.FormCreate(Sender: TObject);
begin
  RealFNewKontrak_ks:=self;
end;

procedure TFNewKontrak_ks.FormDestroy(Sender: TObject);
begin
  RealFNewKontrak_ks:=nil;
end;

procedure TFNewKontrak_ks.FormShow(Sender: TObject);
begin
  CbJenis.Text:='LOKAL';
  EdCurr.Text:='IDR';
  EdCurrChange(SENDER);
  EdnilaiCurr.Visible:=False;
  MemMaterial.Open;
  EdTh_kirim.Text:=FormatDateTime('yyyy',now);
end;

end.
