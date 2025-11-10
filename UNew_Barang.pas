unit UNew_Barang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  RzCmboBx, Data.DB, MemDS, DBAccess, Uni, RzBtnEdt, Vcl.Mask, RzEdit,
  Vcl.Buttons, RzTabs, Vcl.ComCtrls;

type
  TFNew_Barang = class(TForm)
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    Bkonversi: TRzBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    EdDesk: TEdit;
    EdSatuan: TRzButtonEdit;
    Cbkdtr: TComboBox;
    Edjenis: TRzComboBox;
    EdMerk: TRzComboBox;
    EdCategory: TRzComboBox;
    Edno: TEdit;
    Edno1: TEdit;
    EdKd: TEdit;
    EdNm: TEdit;
    Label16: TLabel;
    Btn_Satuan: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label13: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    TabSheet3: TRzTabSheet;
    Label19: TLabel;
    Edkd_akun: TRzEdit;
    EdNm_akun: TRzButtonEdit;
    Label22: TLabel;
    Edkd_akunPemb: TRzEdit;
    EdNm_akunPemb: TRzButtonEdit;
    Label24: TLabel;
    Edkd_akunrt_Pemb: TRzEdit;
    EdNm_akunRt_Pemb: TRzButtonEdit;
    Label26: TLabel;
    Edkd_akunPenj: TRzEdit;
    EdNm_akunPenj: TRzButtonEdit;
    Label28: TLabel;
    Edkd_akunRt_Penj: TRzEdit;
    EdNm_akunRt_Penj: TRzButtonEdit;
    Label30: TLabel;
    Edkd_akunPot_Pemb: TRzEdit;
    EdNm_akunPot_Pemb: TRzButtonEdit;
    GroupBox1: TGroupBox;
    Label20: TLabel;
    edharga_pemb: TRzNumericEdit;
    eddisc_pemb: TRzNumericEdit;
    Label17: TLabel;
    GroupBox2: TGroupBox;
    Label23: TLabel;
    Label25: TLabel;
    edharga_penj: TRzNumericEdit;
    eddisc_penj: TRzNumericEdit;
    Label4: TLabel;
    Cbkelompok: TRzComboBox;
    SpKelompok: TSpeedButton;
    Edkd_display: TEdit;
    StatusBar1: TStatusBar;
    ck_st_penjualan: TCheckBox;
    Label6: TLabel;
    Label8: TLabel;
    Ck_NoUrut: TCheckBox;
    Button1: TButton;
    Labelsbu: TLabel;
    Cb_sbu: TComboBox;
    Ed_serial: TEdit;
    procedure BBatalClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure EdCategorySelect(Sender: TObject);
    procedure EdjenisSelect(Sender: TObject);
    procedure EdNm_akunButtonClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Btn_SatuanClick(Sender: TObject);
    procedure EdSatuanButtonClick(Sender: TObject);
    procedure BkonversiClick(Sender: TObject);
    procedure EdNm_akunPembButtonClick(Sender: TObject);
    procedure EdNm_akunRt_PembButtonClick(Sender: TObject);
    procedure EdNm_akunPot_PembButtonClick(Sender: TObject);
    procedure EdNm_akunPenjButtonClick(Sender: TObject);
    procedure EdNm_akunRt_PenjButtonClick(Sender: TObject);
    procedure SpKelompokClick(Sender: TObject);
    procedure CbkelompokSelect(Sender: TObject);
    procedure ck_st_penjualanClick(Sender: TObject);
    procedure Ck_NoUrutClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Cb_sbuSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id_ct,idmaterial,no_urut,kode,group_id,st_penjualan,st_nourut,KodeHeaderPerkiraan:string;
    status_tr:integer;
    Procedure Load;
    Procedure clear;
    procedure Autocode_perkiraan;
  end;

Function FNew_Barang: TFNew_Barang;

implementation

{$R *.dfm}

uses  umainmenu, UDataModule, UAkun_Perkiraan_TerimaMat, UKategori_Barang,
  UListBarang, UNew_KategoriBarang, UItem_Type, UNew_ItemType, UCari_DaftarPerk,
  UNew_Satuan, UKonversi_Barang, UNew_KonvBarang, UNew_KelompokBarang,
  UMy_Function, UHomeLogin;

var RealFNew_barang: TFNew_barang;
function FNew_Barang: TFNew_Barang;
begin
  if RealFNew_barang <> nil then FNew_barang:= RealFNew_barang
  else  Application.CreateForm(TFNew_Barang, Result);
end;

procedure TFNew_barang.Autocode_perkiraan;
var
  kode : String;
  Urut : Integer;
begin
    with dm.Qtemp do
    begin
      Close;
      SQL.Clear;
      Sql.Text :=' SELECT * FROM t_ak_account '+
                 ' WHERE code='+Quotedstr(KodeHeaderPerkiraan)+'  ';
      open;
    end;

    if Dm.Qtemp.RecordCount = 0 then urut := 1 else
    if Dm.Qtemp.RecordCount > 0 then
    begin
        With Dm.Qtemp do
        begin
          Close;
          Sql.Clear;
          Sql.Text :=' select count(code) as hasil '+
                     ' from  t_ak_account where code='+QuotedSTR(KodeHeaderPerkiraan)+'  ';
          Open;
        end;
        Urut := dm.Qtemp.FieldByName('hasil').AsInteger + 1;
    end;
    Edkd_akun.Clear;
    kode := inttostr(urut);

    if Length(kode)=1 then
    begin
      kode := '00'+kode;
    end
    else
    if Length(kode)=2 then
    begin
      kode := '0'+kode;
    end
    else
    if Length(kode)=3 then
    begin
      kode := kode;
    end;
//    edKodePerkiraan.Text := KodeHeaderPerkiraan+'.'+kode;  of sementara ds 13/01/2025
    Edkd_akun.Text := KodeHeaderPerkiraan+'.'+edkd.Text;
end;

Procedure TFNew_Barang.Load;
begin
  Edjenis.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' select DISTINCT type from t_item_type '+
              ' where deleted_at isnull ';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    Edjenis.Items.Add(Dm.Qtemp['type']);
    Dm.Qtemp.Next;
  end;
end;

Procedure TFNew_Barang.clear;
begin
  Edjenis.Clear;
  EdCategory.Clear;
  Cbkelompok.Clear;
  EdKd.Clear;
  Edkd_display.Clear;
  EdDesk.Clear;
  EdNm.Clear;
  EdSatuan.Clear;
  EdMerk.Clear;
  st_penjualan:='False';
  st_nourut:='False';
  ck_st_penjualan.Checked:=false;
  Ck_NoUrut.Checked:=false;
end;

procedure TFNew_Barang.EdNm_akunPembButtonClick(Sender: TObject);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='Pemb_barang';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:='SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                'left join t_ak_header c on b.header_code=c.header_code';
      Execute;
    end;
  end;
end;

procedure TFNew_Barang.EdNm_akunPenjButtonClick(Sender: TObject);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='Penj_barang';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:='SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                'left join t_ak_header c on b.header_code=c.header_code';
      Execute;
    end;
  end;
end;

procedure TFNew_Barang.EdNm_akunPot_PembButtonClick(Sender: TObject);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='PotPemb_barang';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:='SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                'left join t_ak_header c on b.header_code=c.header_code';
      Execute;
    end;
  end;
end;

procedure TFNew_Barang.EdNm_akunRt_PembButtonClick(Sender: TObject);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='RTPemb_barang';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:='SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                'left join t_ak_header c on b.header_code=c.header_code';
      Execute;
    end;
  end;
end;

procedure TFNew_Barang.EdNm_akunRt_PenjButtonClick(Sender: TObject);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='RtPenj_barang';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:='SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                'left join t_ak_header c on b.header_code=c.header_code';
      Execute;
    end;
  end;
end;

procedure TFNew_Barang.SpeedButton1Click(Sender: TObject);
begin
  FNew_KategoriBarang.Show;
  FNew_KategoriBarang.statustr:=0;
end;

procedure TFNew_Barang.SpeedButton2Click(Sender: TObject);
begin
  FNew_ItemType.Show;
  FNew_ItemType.statustr:=0;
end;

procedure TFNew_Barang.SpKelompokClick(Sender: TObject);
begin
  FNew_KelompokBarang.Show;
  statustr:='0';
  FNew_KelompokBarang.Caption:='Form Kelompok Barang';
end;

procedure TFNew_Barang.BBatalClick(Sender: TObject);
begin
  FlistBarang.Show;
  FlistBarang.ActRoExecute(sender);
  Close;
end;

procedure TFNew_Barang.BkonversiClick(Sender: TObject);
begin
{  with FKonversi_Barang do
  begin
    show;
     with QKonversiM do
     begin
      close;
      sql.Clear;
      sql.Text:='SELECT	b.qty_unit,b.unit,"a".item_name,"a".item_code,b.qty_conv,b.unit_conv,"c".category,b."id"'+
      ' FROM t_item AS "a" INNER JOIN t_item_conversion AS b ON	"a".item_code = b.item_code INNER JOIN   '+
      '	t_item_category AS "c" ON "a".category_id="c"."id" where a.item_code='+QuotedStr(EdKd.Text);
      open;
    end;
  end;  }
  with FNew_KonvBarang do
  begin
    Show;
    Clear;
  //  Self.Autonumber;
    FNew_KonvBarang.Edcategory.Text:=FNew_Barang.Edcategory.Text;
    FNew_KonvBarang.Edkd.Text:=FNew_Barang.Edkd.Text;
    FNew_KonvBarang.kd_barang:=FNew_Barang.Edkd.Text;
    FNew_KonvBarang.EdNm.Text:=FNew_Barang.EdNm.Text;
    FNew_KonvBarang.Edsatuan.Text:=FNew_Barang.EdSatuan.Text;
    FNew_KonvBarang.Edqty.Text:='1';
    caption:='New Konversi Barang';
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:=' Select * from t_item_conversion '+
                ' where item_code='+QuotedStr(FNew_KonvBarang.Edkd.Text)+'';
      ExecSQL;
    end;

    if dm.Qtemp.RecordCount=0 then
    begin
     Status:=0;
    end;
    if dm.Qtemp.RecordCount>0 then
    begin
     Status:=1;
    end;
//    PnlNew.Visible:=false;
  end;
end;

procedure TFNew_Barang.BSimpanClick(Sender: TObject);
begin
  if Edjenis.Text='' then
  begin
    MessageDlg('jenis Tidak boleh Kosong ',MtWarning,[MbOk],0);
    Edjenis.SetFocus;
    Exit;
  end;
  if EdCategory.Text='' then
  begin
    MessageDlg('Category Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdCategory.SetFocus;
    Exit;
  end;
    if Cbkelompok.Text='' then
  begin
    MessageDlg('Kelompok Tidak boleh Kosong ',MtWarning,[MbOk],0);
    Cbkelompok.SetFocus;
    Exit;
  end;
  if EdKd.Text='' then
  begin
    MessageDlg('Kode Material Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdKd.SetFocus;
    Exit;
  end;
  if EdNm.Text='' then
  begin
    MessageDlg('Nama Material Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdNm.SetFocus;
    Exit;
  end;
  if EdSatuan.Text='' then
  begin
    MessageDlg('Satuan Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdSatuan.SetFocus;
    Exit;
  end;
   Autocode_perkiraan;
   with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:='Select * from t_item';
    ExecSQL;
  end;
  if not dm.koneksi.InTransaction then
  dm.koneksi.StartTransaction;
  try
    begin
      if status_tr=0 then
      begin
       with dm.Qtemp do
       begin
       close;
       sql.clear;
       sql.Text:=' insert into t_item(order_no,item_code,item_code2,item_name,'+
                 ' category_id,unit,merk,account_code,created_by,description,group_id, '+
                 ' sell_status,"buy","disc_buy","sell","disc_sell",lot_status,header_code,sbu_code)'+
                 ' values(:order_no,:item_cd,:item_cd2,:item_nm,:id_ct,:unit,:merk,:akun_cd,'+
                 ' :pic,:desk,:group_id,:sell_status,:buy,:discount_buy,:sell,:discount_sell,'+
                 ' :lot_status,:header_code,:sbu_code)';
         ParamByName('order_no').Value:=Edno.Text;
         ParamByName('item_cd').Value:=EdKd.Text;
         ParamByName('item_cd2').Value:=Edkd_display.Text;
         ParamByName('item_nm').Value:=EdNm.Text;
         ParamByName('id_ct').Value:=id_ct;
         ParamByName('unit').Value:=EdSatuan.Text;
         ParamByName('merk').Value:=EdMerk.Text;
         ParamByName('akun_cd').Value:=edkd_akun.text;
         ParamByName('pic').Value:=Nm;
         ParamByName('desk').Value:=EdDesk.text;
         ParamByName('group_id').Value:=group_id;
         ParamByName('sell_status').Value:=st_penjualan;
         ParamByName('buy').Value:=edharga_pemb.Value;
         ParamByName('discount_buy').Value:=eddisc_pemb.Value;
         ParamByName('sell').Value:=edharga_penj.Value;
         ParamByName('discount_sell').Value:=eddisc_penj.Value;
         ParamByName('lot_status').Value:=st_nourut;
         ParamByName('header_code').Value:=KodeHeaderPerkiraan;
         ParamByName('sbu_code').Value:=Cb_sbu.Text;
       ExecSQL;
       end;
         with dm.Qtemp do
         begin
           close;
           sql.Clear;
           sql.Text:='insert into t_item_account(acc_persd,acc_pemb,acc_penj,acc_rtpemb,acc_potpemb,acc_rtpenj,item_code)'+
           ' values(:acc_persd,:acc_pemb,:acc_penj,:acc_rtpemb,:acc_potpemb,:acc_rtpenj,:item_code)';
            ParamByName('acc_persd').Value:=Edkd_akun.Text;
            ParamByName('acc_pemb').Value:=Edkd_akunPemb.Text;
            ParamByName('acc_penj').Value:=Edkd_akunPenj.text;
            ParamByName('acc_rtpemb').Value:=Edkd_akunrt_Pemb.Text;
            ParamByName('acc_potpemb').Value:=Edkd_akunPot_Pemb.text;
            ParamByName('acc_rtpenj').Value:=Edkd_akunRt_Penj.Text;
            ParamByName('item_code').Value:=EdKd.Text;
            Execute;
         end;
      end;
      if status_tr=1 then
      begin
       with dm.Qtemp do
       begin
       close;
       sql.clear;
       sql.Text:=' Update t_item set order_no=:order_no,item_code=:item_code,item_code2=:item_cd2,item_name=:item_name,'+
       ' unit=:unit,merk=:merk,account_code=:akun_code,category_id=:ct_id,updated_at=now(), '+
       ' updated_by=:pic,description=:desk,group_id=:group_id,sell_status=:sell_status,buy=:buy,'+
       ' disc_buy=:discount_buy,sell=:sell,disc_sell=:discount_sell,'+
       ' lot_status=:lot_status,header_code=:Header_code, sbu_code=:sbu_code where "id"=:id';
         ParamByName('order_no').Value:=Edno.Text;
         ParamByName('item_code').Value:=EdKd.Text;
         ParamByName('item_cd2').Value:=Edkd_display.Text;
         ParamByName('item_name').Value:=EdNm.Text;
         ParamByName('unit').Value:=EdSatuan.Text;
         ParamByName('merk').Value:=EdMerk.Text;
         ParamByName('akun_code').Value:=Edkd_akun.Text;
         ParamByName('ct_id').Value:=id_ct;
         ParamByName('id').Value:=idmaterial;
         ParamByName('pic').Value:=nm;
         ParamByName('desk').Value:=EdDesk.text;
         ParamByName('group_id').Value:=group_id;
         ParamByName('sell_status').Value:=st_penjualan;
         ParamByName('buy').Value:=edharga_pemb.Value;
         ParamByName('discount_buy').Value:=eddisc_pemb.Value;
         ParamByName('sell').Value:=edharga_penj.Value;
         ParamByName('discount_sell').Value:=eddisc_penj.Value;
         ParamByName('lot_status').Value:=st_nourut;
         ParamByName('header_code').Value:=KodeHeaderPerkiraan;
         ParamByName('sbu_code').Value:=Cb_sbu.Text;
       ExecSQL;
       end;
        with dm.Qtemp do
         begin
           close;
           sql.Clear;
           sql.Text:='update t_item_account set acc_persd=:acc_persd,acc_pemb=:acc_pemb,acc_penj=:acc_penj,acc_rtpemb=:acc_rtpemb,'+
           ' acc_potpemb=:acc_potpemb,acc_rtpenj=:acc_rtpenj where item_code=:item_code';
            ParamByName('acc_persd').Value:=Edkd_akun.Text;
            ParamByName('acc_pemb').Value:=Edkd_akunPemb.Text;
            ParamByName('acc_penj').Value:=Edkd_akunPenj.text;
            ParamByName('acc_rtpemb').Value:=Edkd_akunrt_Pemb.Text;
            ParamByName('acc_potpemb').Value:=Edkd_akunPot_Pemb.text;
            ParamByName('acc_rtpenj').Value:=Edkd_akunRt_Penj.Text;
            ParamByName('item_code').Value:=EdKd.Text;
            Execute;
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

procedure TFNew_Barang.Btn_SatuanClick(Sender: TObject);
begin
  with FNew_Satuan do
  begin
    show;
    Caption:='Form New Satuan';
    Statustr:=0;
    PnlNew.show;
    PnlAksi.show;
 //   Pnllist.sohw;
    BCari.Hide;
    BSimpan.Show;
    BBatal.Show;
    jenis_tr:='BARU';
  end;
end;

procedure TFNew_Barang.Button1Click(Sender: TObject);
begin
  Autocode_perkiraan;
end;

procedure TFNew_Barang.CbkelompokSelect(Sender: TObject);
var i:integer;
begin
 with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    SQL.Text:=' Select a.group_name,a.group_id,a.code,a.account_code,b.account_name from t_item_group a '+
    ' LEFT JOIN t_ak_account b on a.account_code=b.code where a.group_name='+QuotedStr(Cbkelompok.Text);
    ExecSQL;
  end;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    SQL.Text:=' Select a.group_name,a.group_id,max(cast(b.order_no as INTEGER)) kode from t_item_group a '+
              ' INNER join t_item b on a.group_id=b.group_id where group_name='+QuotedStr(Cbkelompok.Text)+' GROUP BY a.group_name,a.group_id';
    ExecSQL;
  end;
   group_id:=Dm.Qtemp2['group_id'];
   kode:=DM.Qtemp2['code'];
   Edkd_akun.Text:=Dm.Qtemp2['account_code'];
   KodeHeaderPerkiraan:=Dm.Qtemp2['account_code'];
   Edkd_akunPemb.Text:=Dm.Qtemp2['account_code'];
   Edkd_akunrt_Pemb.Text:=Dm.Qtemp2['account_code'];
   Edkd_akunPot_Pemb.Text:=Dm.Qtemp2['account_code'];
   Edkd_akunPenj.Text:=Dm.Qtemp2['account_code'];
   Edkd_akunRt_Penj.Text:=Dm.Qtemp2['account_code'];
   EdNm_akun.Text:=Dm.Qtemp2['account_name'];
   Ednm_akunPemb.Text:=Dm.Qtemp2['account_name'];
   Ednm_akunrt_Pemb.Text:=Dm.Qtemp2['account_name'];
   Ednm_akunPot_Pemb.Text:=Dm.Qtemp2['account_name'];
   EdNm_akunPenj.Text:=Dm.Qtemp2['account_name'];
   EdNm_akunRt_Penj.Text:=Dm.Qtemp2['account_name'];
   if dm.Qtemp.RecordCount=0 then
    begin
      //Edno.Text:=dm.Qtemp2['order_no'];
      no_urut:='00001';
    end;

  if dm.Qtemp.RecordCount>0 then
    begin
      no_urut:=IntToStr(dm.Qtemp.FieldByName('kode').AsInteger+1);
      if length(No_urut) < 5 then
      begin
        for i := length(No_urut) to 4 do
          No_urut := '0' + No_urut;
      end;
    end;
    Edno.Text:=no_urut;
    EdKd.Text:=kode + No_urut;
    Edkd_display.Text:=kode + No_urut;
end;

procedure TFNew_Barang.Cb_sbuSelect(Sender: TObject);
begin
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='SELECT company_code,company_serial FROM t_company WHERE company_code='+QuotedStr(Cb_sbu.Text)+' ';
     Open;
   end;
   ed_serial.Text:=dm.Qtemp.FieldByName('company_serial').AsString;
end;

procedure TFNew_Barang.Ck_NoUrutClick(Sender: TObject);
begin
  if Ck_NoUrut.Checked=true then st_nourut:='true' else st_nourut:='false';
end;

procedure TFNew_Barang.ck_st_penjualanClick(Sender: TObject);
begin
  if ck_st_penjualan.Checked=true then st_penjualan:='true' else st_penjualan:='false';
end;

procedure TFNew_Barang.EdCategorySelect(Sender: TObject);
var i:integer;
begin
  with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:=' select a."category_id",a.category,a.code from t_item_category a'+
              ' where a.category='+QuotedStr(EdCategory.Text);
    Execute;
  end;
  id_ct:=dm.Qtemp2['category_id'];
  Cbkelompok.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.*,b.group_name,b.group_id from t_item_category a inner join t_item_group b on a."category_id"=b.category_id where a.category='+QuotedStr(EdCategory.Text)+'order by group_name asc';
    ExecSQL;
  end;
      Dm.Qtemp.First;
      while not Dm.Qtemp.Eof do
      begin
        Cbkelompok.Items.Add(Dm.Qtemp['group_name']);
        Dm.Qtemp.Next;
      end;
end;

procedure TFNew_Barang.EdjenisSelect(Sender: TObject);
begin
  EdCategory.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.* from t_item_category a inner join t_item_type b on a.type_id=b."type_id" where b.type='+QuotedStr(Edjenis.Text)+'order by category asc';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    EdCategory.Items.Add(Dm.Qtemp['category']);
    Dm.Qtemp.Next;
  end;
end;

procedure TFNew_Barang.EdNm_akunButtonClick(Sender: TObject);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='barang';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:='SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                'left join t_ak_header c on b.header_code=c.header_code';
      Execute;
    end;
  end;
end;

procedure TFNew_Barang.EdSatuanButtonClick(Sender: TObject);
begin
  with FNew_Satuan do
  begin
    show;
    Caption:='Form List Satuan';
    jenis_tr:='Barang';
    PnlNew.Hide;
    PnlAksi.Hide;
    Pnllist.show;
    QSatuan.Close;
    QSatuan.Open;
    BCari.Show;
    BSimpan.hide;
    BBatal.hide;
  end;
end;

procedure TFNew_Barang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_Barang.FormCreate(Sender: TObject);
begin
  RealFNew_barang:=self;
end;

procedure TFNew_Barang.FormDestroy(Sender: TObject);
begin
  RealFNew_barang:=nil;
end;

procedure TFNew_Barang.FormShow(Sender: TObject);
begin
  clear;
  Load;

  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')<> 'dev' then
  begin
    SpeedButton2.Visible:=false;
    SpeedButton1.Visible:=false;
    SpKelompok.Visible:=false;
    Btn_Satuan.Visible:=false;
  end else begin
    SpeedButton2.Visible:=true;
    SpeedButton1.Visible:=true;
    SpKelompok.Visible:=true;
    Btn_Satuan.Visible:=true;
  end;


  if FHomeLogin.vStatOffice=0 then
  begin
    Cb_sbu.Visible:=True;
    Labelsbu.Visible:=True;
  end else begin
    Cb_sbu.Visible:=False;
    Labelsbu.Visible:=False;
  end;

  // Load CB SBU
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT company_code,company_serial FROM t_company WHERE company_serial<>0';
    Open;
  end;
  cb_sbu.items.clear;
  dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
     cb_sbu.Items.Add(dm.Qtemp['company_code']);
     dm.Qtemp.Next;
  end;

end;

end.
