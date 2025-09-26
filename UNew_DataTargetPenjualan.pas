unit UNew_DataTargetPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.Samples.Spin, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.Buttons,
  Vcl.ExtCtrls, RzCmboBx, RzSpnEdt, DateUtils, MemDS, DBAccess, Uni,
  DataDriverEh;

type
  TFNew_DataTargetPenjualan = class(TForm)
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edNamaPelanggan: TRzButtonEdit;
    RzPageControl1: TRzPageControl;
    TabSDetailPel: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    MemDetail: TMemTableEh;
    DSDetail: TDataSource;
    cbJenisBarang: TRzComboBox;
    cbBulan: TRzComboBox;
    edTahun: TRzSpinEdit;
    edKodePelanggan: TRzEdit;
    cbKelompokBarang: TRzComboBox;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    btAddDetail: TRzBitBtn;
    cbKategori: TRzComboBox;
    Label4: TLabel;
    Label5: TLabel;
    procedure edNamaPelangganButtonClick(Sender: TObject);
    procedure cbJenisBarangSelect(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure btAddDetailClick(Sender: TObject);
    procedure cbKelompokBarangChange(Sender: TObject);
    procedure cbBulanChange(Sender: TObject);
    procedure edTahunChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edNamaPelangganChange(Sender: TObject);
    procedure cbBulanExit(Sender: TObject);
    procedure cbKategoriChange(Sender: TObject);
  private
    { Private declarations }
    procedure Save;
    procedure Update;
    procedure InsertDetail;
    procedure RefreshJenis;
    procedure RefreshKategori;
    procedure RefreshKelompok;
  public
    { Public declarations }
    procedure Clear;
    procedure GetTargetPenjualan;
    procedure GetDetail;
  end;

var
  FNew_DataTargetPenjualan: TFNew_DataTargetPenjualan;
  Status,IdCustomerSalesTarget: integer;
  vFormSumber,StrKategori,StrJenis: string;
  AClass: TPersistentClass;
  AFormClass: TFormClass;
  AForm: TForm;
  AForm1: TForm;

implementation

{$R *.dfm}

uses Ubrowse_pelanggan, UDataModule, UHomeLogin, UTemplate_Temp, UMy_Function,
  UListTargetPenjualan, UMainMenu, UTambah_Barang;

procedure TFNew_DataTargetPenjualan.GetTargetPenjualan;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.text:='SELECT * from t_customer_sales_target_det'+
              ' WHERE id_customer_sales_target='+IntToStr(IdCustomerSalesTarget)+
              ' ORDER BY id_customer_sales_target ASC';
    open;
  end;
  if Dm.Qtemp.RecordCount>0 then
  begin
    edNamaPelanggan.Text:=Dm.Qtemp.FieldByName('code_trans').AsString;
    edNamaPelanggan.Text:=Dm.Qtemp.FieldByName('code_trans').AsString;
    edNamaPelanggan.Text:=Dm.Qtemp.FieldByName('code_trans').AsString;
    edNamaPelanggan.Text:=Dm.Qtemp.FieldByName('code_trans').AsString;
  end;
end;

procedure TFNew_DataTargetPenjualan.GetDetail;
var month: integer;
begin
  if (edNamaPelanggan.Text<>'') AND (cbKelompokBarang.Text<>'') AND
  (edTahun.Value<>0) AND (cbBulan.Text<>'')  then
  begin
    month:=cbBulan.ItemIndex+1;
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:='SELECT * FROM get_customer_sales_target_det'+
                '('+QuotedStr(edKodePelanggan.Text)+','+edTahun.Text+','+
                ''+IntToStr(month)+','+QuotedStr(cbKelompokBarang.Text)+')';
//      sql.text:='SELECT b.item_name,a.item_code,a.qty,a.value,a.id_customer_sales_target,b.category_id '+
//                'FROM t_customer_sales_target_det a '+
//                'LEFT JOIN t_item b on b.item_code=a.item_code '+
//                'LEFT JOIN t_item_category c on c.category_id=b.category_id '+
//                'LEFT JOIN t_customer_sales_target d on d.id_customer_sales_target=a.id_customer_sales_target and d.status=true '+
//                'WHERE d.customer_code='+QuotedStr(edKodePelanggan.Text)+' and '+
//                'd.year='+edTahun.Text+' and d.month='+IntToStr(cbBulan.ItemIndex+1)+' and '+
//                'c.category='+QuotedStr(cbKategoriBarang.Text)+' ANd a.status=true ORDER BY b.item_name asc;';
      open;
    end;
    if Dm.Qtemp.RecordCount>0 then
    begin
      MemDetail.active:=false;
      MemDetail.active:=true;
      MemDetail.EmptyTable;
      dm.Qtemp.First;
      while not dm.Qtemp.Eof do
      begin
        Memdetail.Insert;
        Memdetail['item_code']:=dm.Qtemp.FieldByName('item_code').AsString;
        Memdetail['item_name']:=dm.Qtemp.FieldByName('item_name').AsString;
        Memdetail['qty']:=dm.Qtemp.FieldByName('qty').AsString;
        Memdetail['value']:=dm.Qtemp.FieldByName('value').AsString;
        Memdetail.Post;
        dm.Qtemp.Next;
      end;
    end else begin
      Memdetail.EmptyTable;
    end;
    dm.Qtemp.Close;
  end;
end;

procedure TFNew_DataTargetPenjualan.RefreshJenis;
begin
  cbJenisBarang.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select type from t_item_type where deleted_at isnull';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbJenisBarang.Items.Add(Dm.Qtemp['type']);
    Dm.Qtemp.Next;
  end;
end;

procedure TFNew_DataTargetPenjualan.RefreshKategori;
begin
  cbKategori.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.category_id,a.category from t_item_category a '+
              'left join t_item_type b on '+
              'b.type_id=a.type_id where b.type=''DAGANG'' order by a.category asc';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbKategori.Items.Add(Dm.Qtemp['category']);
    Dm.Qtemp.Next;
  end;
end;

procedure TFNew_DataTargetPenjualan.RefreshKelompok;
begin
  cbKelompokBarang.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.group_id,a.group_name from t_item_group a '+
              'LEFT JOIN t_item_category b on b.category_id=a.category_id '+
              'where b.category='+QuotedStr(cbKategori.Text)+' order by a.group_name asc';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbKelompokBarang.Items.Add(Dm.Qtemp['group_name']);
    Dm.Qtemp.Next;
  end;
end;

procedure TFNew_DataTargetPenjualan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNew_DataTargetPenjualan.BSaveClick(Sender: TObject);
begin
  if edNamaPelanggan.Text='' then
  begin
    MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    edNamaPelanggan.SetFocus;
  end
  else if cbKategori.Text='' then
  begin
    MessageDlg('Kategori Barang Wajib Diisi..!!',mtInformation,[mbRetry],0);
    cbJenisBarang.SetFocus;
  end
  else if cbKelompokBarang.Text='' then
  begin
    MessageDlg('Kelompok Barang Wajib Diisi..!!',mtInformation,[mbRetry],0);
    cbKelompokBarang.SetFocus;
  end
  else if cbBulan.Text='' then
  begin
    MessageDlg('Bulan Barang Wajib Diisi..!!',mtInformation,[mbRetry],0);
    cbBulan.SetFocus;
  end
  else if edTahun.Value=0 then
  begin
    MessageDlg('Tahun Wajib Diisi..!!',mtInformation,[mbRetry],0);
    edTahun.SetFocus;
  end
  else
  begin
    if not dm.Koneksi.InTransaction then
    dm.Koneksi.StartTransaction;
    try
    begin
      if Status=0 then
      begin
        Save;
        Dm.Koneksi.Commit;
      end
      else if Status = 1 then
      begin
        if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
        begin
          Update;
          Dm.Koneksi.Commit;
        end;
      end;
    end;
    Except on E :Exception do
      begin
        MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
        Dm.koneksi.Rollback ;
      end;
    end;
  end;
end;

procedure TFNew_DataTargetPenjualan.btAddDetailClick(Sender: TObject);
begin
  if edNamaPelanggan.Text='' then
  begin
    MessageDlg('Nama Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    cbJenisBarang.SetFocus;
  end else
  if cbKelompokBarang.Text='' then
  begin
    MessageDlg('Kategori Wajib Diisi..!!',mtInformation,[mbRetry],0);
    cbKelompokBarang.SetFocus;
  end else
  begin
//    AClass := FindClass('TFTambah_Barang');
//    AFormClass := TFormClass(AClass);
//    AForm := AFormClass.Create(Application.MainForm);
//    AForm.Parent:=FTemplate_Temp.PanelParent;
//    AForm.Align:=Alclient;
//    AForm.BorderStyle:=BsNone;
//    FTemplate_Temp.Height:=AForm.Height;
//    FTemplate_Temp.Width:=AForm.Width;
//
//    AForm.Show;
//    FTemplate_Temp.Caption:='';
//    FTemplate_Temp.TabForm.Caption:=AForm.Caption;
    vStatusTrans:='targetpenjualan';
    StrJenis:=cbJenisBarang.Text;
    StrKategori:=cbKelompokBarang.Text;

//    FTemplate_Temp.ShowModal;
    FTambah_Barang.clear;
    FTambah_Barang.edValue.Text:='';
    FTambah_Barang.ShowModal

  end;
end;

procedure TFNew_DataTargetPenjualan.cbBulanChange(Sender: TObject);
begin
  GetDetail;
end;

procedure TFNew_DataTargetPenjualan.cbBulanExit(Sender: TObject);
begin
  GetDetail;
end;

procedure TFNew_DataTargetPenjualan.cbJenisBarangSelect(Sender: TObject);
begin
  RefreshKelompok;
end;

procedure TFNew_DataTargetPenjualan.cbKategoriChange(Sender: TObject);
begin
  RefreshKelompok;
  GetDetail;
end;

procedure TFNew_DataTargetPenjualan.cbKelompokBarangChange(Sender: TObject);
begin
  GetDetail;
end;

procedure TFNew_DataTargetPenjualan.Clear;
var month,year: String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edNamaPelanggan.Text:='';
  cbKategori.Clear;
  cbKelompokBarang.Clear;
  edTahun.Value:=StrToInt(year);
//  RefreshJenis;
  RefreshKategori;
  MemDetail.active:=false;
  MemDetail.active:=true;
  MemDetail.EmptyTable;
  cbBulan.ItemIndex:=StrToInt(month)-1;
end;

procedure TFNew_DataTargetPenjualan.InsertDetail;
begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
//  sql.Text:='DELETE FROM  t_customer_sales_target_det '+
//            'WHERE id_customer_sales_target='+IntToStr(IdCustomerSalesTarget)+' AND '+
//            'item_code in ( '+
//            'SELECT a.item_code FROM t_customer_sales_target_det a '+
//            'LEFT JOIN t_item b on b.item_code=a.item_code '+
//            'LEFT JOIN t_item_category c on c.category_id=b.category_id '+
//            'WHERE a.id_customer_sales_target='+IntToStr(IdCustomerSalesTarget)+' AND '+
//            'c.category='+QuotedStr(cbKategoriBarang.Text)+');';
  sql.Text:='UPDATE t_customer_sales_target_det SET status=false '+
            'WHERE id_customer_sales_target='+IntToStr(IdCustomerSalesTarget)+' AND '+
            'item_code in ( '+
            'SELECT a.item_code FROM t_customer_sales_target_det a '+
            'LEFT JOIN t_item b on b.item_code=a.item_code '+
            'LEFT JOIN t_item_group c on c.group_id=b.group_id '+
            'WHERE a.id_customer_sales_target='+IntToStr(IdCustomerSalesTarget)+' AND '+
            'c.group_name='+QuotedStr(cbKelompokBarang.Text)+');';
  ExecSQL;
  end;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:='Insert into t_customer_sales_target_det (id_customer_sales_target, item_code, qty, value) '+
            ' VALUES ( '+
            ' '+IntToStr(IdCustomerSalesTarget)+', '+
            ' '+QuotedStr(MemDetail['item_code'])+', '+
            ' '+QuotedStr(MemDetail['qty'])+', '+
            ' '+QuotedStr(MemDetail['value'])+' );';
    ExecSQL;
    end;
  MemDetail.Next;
  end;

end;

procedure TFNew_DataTargetPenjualan.Save;
var mm: Integer;
begin
  mm:=cbBulan.ItemIndex+1;
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.text:='SELECT * from t_customer_sales_target '+
              'WHERE customer_code='+QuotedStr(edKodePelanggan.Text)+' and year='+QuotedStr(edTahun.Text)+
              ' AND month='+QuotedStr(IntToStr(mm))+' ;';
    open;
  end;

  if dm.Qtemp.RecordCount=0 then
  begin

    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.text:=' Insert into t_customer_sales_target (customer_code, month, year, created_by, created_at) '+
              ' VALUES ( '+
              ' '+QuotedStr(edKodePelanggan.Text)+', '+
              ' '+QuotedStr(IntToStr(mm))+', '+
              ' '+QuotedStr(edTahun.Text)+', '+
              ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
              ' NOW()  );';
      ExecSQL;
    end;
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.text:='SELECT id_customer_sales_target FROM t_customer_sales_target '+
                'ORDER BY id_customer_sales_target DESC LIMIT 1 ;';
      open;
    end;
    IdCustomerSalesTarget:=Dm.Qtemp.FieldByName('id_customer_sales_target').AsInteger;
  end else
  begin
    IdCustomerSalesTarget:=Dm.Qtemp.FieldByName('id_customer_sales_target').AsInteger;
  end;

  InsertDetail;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
//  FListTargetPenjualan.Refresh;
  Close;
  FMainMenu.TampilTabForm2;

end;

procedure TFNew_DataTargetPenjualan.Update;
var mm: Integer;
begin

  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT * FROM t_sales_order';
    open;
  end;

  mm:=cbBulan.ItemIndex+1;

  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' Update t_customer_sales_target set month=:parmonth,year=:paryear,updated_at=now(),updated_by=:updated_by '+
              ' where id_customer_sales_target=:parid_customer_sales_target';
    parambyname('parmonth').AsString:=IntToStr(mm);
    parambyname('paryear').AsString:=edTahun.Text;
    parambyname('updated_by').AsString:='Admin';
    parambyname('parid_customer_sales_target').AsString:=IntToStr(IdCustomerSalesTarget);
    ExecSQL;
  end;

  InsertDetail;
  MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
//  FListTargetPenjualan.Refresh;
  Close;
  FMainMenu.TampilTabForm2;
end;


procedure TFNew_DataTargetPenjualan.edNamaPelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='targetpenjualan';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFNew_DataTargetPenjualan.edNamaPelangganChange(Sender: TObject);
begin
  GetDetail;
end;

procedure TFNew_DataTargetPenjualan.edTahunChange(Sender: TObject);
begin
  GetDetail;
end;

procedure TFNew_DataTargetPenjualan.FormShow(Sender: TObject);
begin
  if Status=0 then
  begin
    edNamaPelanggan.Enabled :=True;
    cbJenisBarang.Enabled:=True;
    cbKategori.Enabled:=True;
    cbKelompokBarang.Enabled:=True;
  end else
  begin
    edNamaPelanggan.Enabled :=False;
    cbJenisBarang.Enabled:=False;
    cbKategori.Enabled:=False;
    cbKelompokBarang.Enabled:=False;
  end;
end;

Initialization
  RegisterClasses([TFNew_DataTargetPenjualan]);

end.
