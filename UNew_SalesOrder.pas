unit UNew_SalesOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, MemTableEh, Vcl.StdCtrls, RzButton,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.Samples.Spin,
  Vcl.ComCtrls, RzDTP;

type
  TFNew_SalesOrder = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    DSDetail: TDataSource;
    MemDetail: TMemTableEh;
    RzPageControl1: TRzPageControl;
    TabSDetailPel: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    MemDetailKD_ITEM: TStringField;
    MemDetailNM_ITEM: TStringField;
    MemDetailJUMLAH: TFloatField;
    MemDetailKD_SATUAN: TStringField;
    MemDetailNM_SATUAN: TStringField;
    MemDetailKD_GUDANG: TStringField;
    MemDetailNM_GUDANG: TStringField;
    MemDetailKD_SUPPLIER: TStringField;
    MemDetailNM_SUPPLIER: TStringField;
    LabelPelanggan: TLabel;
    edKodeOrder: TEdit;
    Label3: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    edNama_Pelanggan: TRzButtonEdit;
    edKode_Pelanggan: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edNama_Sales: TRzButtonEdit;
    edKode_Sales: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    spJatuhTempo: TSpinEdit;
    Label14: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edNoReff: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    edNamaSumber: TRzButtonEdit;
    edKodeSumber: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    dtTanggal_Kirim: TRzDateTimePicker;
    btAddDetail: TRzBitBtn;
    Label12: TLabel;
    Label13: TLabel;
    dtTanggal_Pesan: TRzDateTimePicker;
    btMasterSumber: TSpeedButton;
    btMasterSales: TSpeedButton;
    procedure BBatalClick(Sender: TObject);
    procedure edNamaSumberButtonClick(Sender: TObject);
    procedure edNama_PelangganButtonClick(Sender: TObject);
    procedure edNama_SalesButtonClick(Sender: TObject);
    procedure btAddDetailClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btMasterSumberClick(Sender: TObject);
    procedure dtTanggal_PesanChange(Sender: TObject);
    procedure btMasterSalesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vFormSumber, vFormSumber1, kd_kares: string;
    strtgl, strbulan, strtahun: string;
    Year, Month, Day: Word;
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure InsertDetailSO;
    Procedure Autonumber;
    procedure RefreshGrid;
  end;

var
  FNew_SalesOrder: TFNew_SalesOrder;
  status: integer;
  AClass: TPersistentClass;
  AFormClass: TFormClass;
  AForm: TForm;
  AForm1: TForm;

implementation

{$R *.dfm}

uses UTambah_Barang, UMasterData, Ubrowse_pelanggan, UMasterSales, UMy_Function,
  UDataModule, UTemplate_Temp, UListOrderTelemarketing, UListKontrakJasa,
  UHomeLogin, UListSales_Order, USetMasterPenjulan, USetMasterPelanggan;
//uses UDataModule, UMy_Function;

procedure TFNew_SalesOrder.Autonumber;
begin
   idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FSalesOrder.Name)+'');
   strday2:=dtTanggal_Pesan.Date;
   //EdNo_kontrak.Text:=getNourutBlnPrshthn_kode(strday2,'purchase.t_coop_contract','');
   edKodeOrder.Text:=getNourut(strday2,'public.t_sales_order',kd_kares);
   //EdNo.Text:=Order_no;
end;

procedure TFNew_SalesOrder.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "notrans", "code_item", '+
            ' "name_item", "amount", "code_unit", "name_unit", "code_wh", '+
            ' "name_wh", "code_supp", "name_supp", "source" FROM  "public"."t_sales_order_det" '+
            ' WHERE deleted_at IS NULL ) a '+
            ' WHERE notrans='+QuotedStr(edKodeOrder.Text)+' '+
            ' Order By notrans, code_item desc');
    open;
  end;

    FNew_SalesOrder.MemDetail.active:=false;
    FNew_SalesOrder.MemDetail.active:=true;
    FNew_SalesOrder.MemDetail.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FNew_SalesOrder.MemDetail.active:=false;
      FNew_SalesOrder.MemDetail.active:=true;
      FNew_SalesOrder.MemDetail.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FNew_SalesOrder.MemDetail.insert;
     FNew_SalesOrder.MemDetail['KD_ITEM']:=Dm.Qtemp.fieldbyname('code_item').value;
     FNew_SalesOrder.MemDetail['NM_ITEM']:=Dm.Qtemp.fieldbyname('name_item').value;
     FNew_SalesOrder.MemDetail['JUMLAH']:=Dm.Qtemp.fieldbyname('amount').value;
     FNew_SalesOrder.MemDetail['KD_SATUAN']:=Dm.Qtemp.fieldbyname('code_unit').value;
     FNew_SalesOrder.MemDetail['NM_ SATUAN']:=Dm.Qtemp.fieldbyname('name_unit').value;
     FNew_SalesOrder.MemDetail['KD_GUDANG']:=Dm.Qtemp.fieldbyname('code_wh').value;
     FNew_SalesOrder.MemDetail['NM_GUDANG']:=Dm.Qtemp.fieldbyname('name_wh').value;
     FNew_SalesOrder.MemDetail['KD_SUPPLIER']:=Dm.Qtemp.fieldbyname('code_supp').value;
     FNew_SalesOrder.MemDetail['NM_SUPPLIER']:=Dm.Qtemp.fieldbyname('name_supp').value;
     FNew_SalesOrder.MemDetail.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFNew_SalesOrder.InsertDetailSO;
begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "public"."t_sales_order_det" '+
            ' WHERE "notrans"='+QuotedStr(edKodeOrder.Text)+';';
  ExecSQL;
  end;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "public"."t_sales_order_det" ("notrans", "code_item", '+
              ' "name_item", "amount", "code_unit", "name_unit", "code_wh", '+
              ' "name_wh", "code_supp", "name_supp", "source" ) '+
              ' Values( '+
              ' '+QuotedStr(edKodeOrder.Text)+', '+
              ' '+QuotedStr(MemDetail['KD_ITEM'])+', '+
              ' '+QuotedStr(MemDetail['NM_ITEM'])+', '+
              ' '+QuotedStr(MemDetail['JUMLAH'])+', '+
              ' '+QuotedStr(MemDetail['KD_SATUAN'])+', '+
              ' '+QuotedStr(MemDetail['NM_ SATUAN'])+', '+
              ' '+QuotedStr(MemDetail['KD_GUDANG'])+', '+
              ' '+QuotedStr(MemDetail['NM_GUDANG'])+', '+
              ' '+QuotedStr(MemDetail['KD_SUPPLIER'])+', '+
              ' '+QuotedStr(MemDetail['NM_SUPPLIER'])+', '+
              ' '+QuotedStr(edKodeSumber.Text)+' );';
    ExecSQL;
    end;
  MemDetail.Next;
  end;

end;


procedure TFNew_SalesOrder.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNew_SalesOrder.BSaveClick(Sender: TObject);
begin
  DecodeDate(dtTanggal_Pesan.Date, Year, Month, Day);
   strtgl:=IntToStr(Day);
   strbulan:=inttostr(Month);
   strtahun:=inttostr(Year);
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode_Pelanggan.Text='' then
      begin
        MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_Pelanggan.SetFocus;
        exit;
      end
      else if edKode_Sales.Text='' then
      begin
        MessageDlg('Data Sales Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_Sales.SetFocus;
        exit;
      end
      else if spJatuhTempo.Value=0 then
      begin
        MessageDlg('Jumlah Tempo Tidak Boleh Kosong..!!',mtInformation,[mbRetry],0);
        spJatuhTempo.SetFocus;
        exit;
      end
      else if (edNoReff.Text='') or (edNoReff.Text='0' )then
      begin
        //MessageDlg('Nama Kabupaten Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNoReff.Text:='-';
        exit;
      end
      else if Status = 0 then
      begin
      FNew_SalesOrder.Autonumber;
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Order No. '+edKodeOrder.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        Save;
        Dm.Koneksi.Commit;
      end;
      end
      else if Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        Update;
        Dm.Koneksi.Commit;
      end;
      end;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
end;

procedure TFNew_SalesOrder.btAddDetailClick(Sender: TObject);
begin
  if (vFormSumber='0') OR (vFormSumber='')  then
  begin
    ShowMessage('Silakan Setting Form Target Sumber..');
    exit;
  end;
  if (vFormSumber<>'0') AND (vFormSumber<>'') then
  begin
        AClass := FindClass('T'+vFormSumber);
        AFormClass := TFormClass(AClass);
        AForm := AFormClass.Create(Application.MainForm);
        AForm.Parent:=FTemplate_Temp.PanelParent;
        AForm.Align:=Alclient;
        AForm.BorderStyle:=BsNone;
        FTemplate_Temp.Height:=AForm.Height;
        FTemplate_Temp.Width:=AForm.Width;

        AForm.Show;
        FTemplate_Temp.Caption:='';
        FTemplate_Temp.TabForm.Caption:=AForm.Caption;
        vStatusTrans:='salesorder';
        FTemplate_Temp.ShowModal;
        //FTambah_Barang.ShowModal;
  end;
end;

procedure TFNew_SalesOrder.btMasterSalesClick(Sender: TObject);
begin
  FMasterSales.ShowModal;
  FMasterSales.RefreshGrid;
end;

procedure TFNew_SalesOrder.btMasterSumberClick(Sender: TObject);
begin
  FSetMasterPenjulan.TabSetJenisReturJual.TabVisible:=false;
  FSetMasterPenjulan.TabSetSumberOrder.TabVisible:=true;
  FSetMasterPenjulan.TabSetSumberJual.TabVisible:=false;
  FSetMasterPenjulan.TabParameter.TabVisible:=false;
  FSetMasterPenjulan.QSumberOrder.Close;
  FSetMasterPenjulan.QSumberOrder.Open;
  FSetMasterPenjulan.RzPageControl1.ActivePage:=FSetMasterPenjulan.TabSetSumberOrder;
  FSetMasterPenjulan.ShowModal;
end;

procedure TFNew_SalesOrder.Clear;
begin
  edKodeOrder.Clear;
  dtTanggal_Kirim.Date:=Now();
  dtTanggal_Pesan.Date:=Now();
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  edKode_Sales.Clear;
  edNama_Sales.Clear;
  edKodeSumber.Clear;
  edNamaSumber.Clear;
  spJatuhTempo.Value:=0;
  edNoReff.Text:='-';
  vFormSumber:='0';
  kd_kares:='0';
  MemDetail.EmptyTable;
end;

procedure TFNew_SalesOrder.dtTanggal_PesanChange(Sender: TObject);
begin
  DecodeDate(dtTanggal_Pesan.Date, Year, Month, Day);
   strtgl:=IntToStr(Day);
   strbulan:=inttostr(Month);
   strtahun:=inttostr(Year);
   FNew_SalesOrder.Autonumber;
end;

procedure TFNew_SalesOrder.edNamaSumberButtonClick(Sender: TObject);
begin
  vFormSumber:='0';
  FMasterData.Caption:='Master Data Sumber Order';
  FMasterData.vcall:='sumber_order';
  FMasterData.update_grid('code','name','description','t_order_source','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
end;

procedure TFNew_SalesOrder.edNama_PelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='sumber_order';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFNew_SalesOrder.edNama_SalesButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Sales';
  FMasterData.vcall:='m_sales';
  FMasterData.update_grid('code','name','name_region','t_sales','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
  //FMasterSales.Showmodal;
end;

procedure TFNew_SalesOrder.FormShow(Sender: TObject);
begin
  //Clear;
  RefreshGrid;
  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')<> 'dev' then
  begin
    btMasterSales.Visible:=false;
    btMasterSumber.Visible:=false;
  end else begin
    btMasterSales.Visible:=true;
    btMasterSumber.Visible:=true;
  end;
end;

procedure TFNew_SalesOrder.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_sales_order" ("created_at", "created_by", "notrans", '+
            ' "order_date", "sent_date", "code_cust", "name_cust", "code_sales", '+
            ' "name_sales", "payment_term", "no_reference", "code_source", "name_source", '+
            ' "order_no", "additional_code", "trans_day", "trans_month", "trans_year") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+QuotedStr(edKodeOrder.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal_Pesan.Date))+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal_Kirim.Date))+', '+
            ' '+QuotedStr(edKode_Pelanggan.Text)+', '+
            ' '+QuotedStr(edNama_Pelanggan.Text)+', '+
            ' '+QuotedStr(edKode_Sales.Text)+', '+
            ' '+QuotedStr(edNama_Sales.Text)+', '+
            ' '+QuotedStr(spJatuhTempo.Text)+', '+
            ' '+QuotedStr(edNoReff.Text)+', '+
            ' '+QuotedStr(edKodeSumber.Text)+', '+
            ' '+QuotedStr(edNamaSumber.Text)+', '+
            ' '+QuotedStr(order_no)+', '+
            ' '+QuotedStr(kd_kares)+', '+
            ' '+QuotedStr(strtgl)+', '+
            ' '+QuotedStr(strbulan)+', '+
            ' '+QuotedStr(strtahun)+'  );');
    ExecSQL;
  end;
  InsertDetailSO;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FSalesOrder.Refresh;
end;

procedure TFNew_SalesOrder.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_sales_order" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' order_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal_Pesan.Date))+','+
              ' sent_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal_Kirim.Date))+','+
              ' code_cust='+QuotedStr(edKode_Pelanggan.Text)+','+
              ' name_cust='+QuotedStr(edNama_Pelanggan.Text)+','+
              ' code_sales='+QuotedStr(edKode_Sales.Text)+','+
              ' name_sales='+QuotedStr(edNama_Sales.Text)+','+
              ' payment_term='+QuotedStr(spJatuhTempo.Text)+','+
              ' no_reference='+QuotedStr(edNoReff.Text)+','+
              ' code_source='+QuotedStr(edKodeSumber.Text)+','+
              ' name_source='+QuotedStr(edNamaSumber.Text)+','+
              ' order_no='+QuotedStr(order_no)+','+
              ' additional_code='+QuotedStr(kd_kares)+','+
              ' trans_day='+QuotedStr(strtgl)+','+
              ' trans_month='+QuotedStr(strbulan)+','+
              ' trans_year='+QuotedStr(strtahun)+' '+
              ' Where notrans='+QuotedStr(edKodeOrder.Text)+'');
      ExecSQL;
    end;
    InsertDetailSO;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
    FSalesOrder.Refresh;
end;

Initialization
  RegisterClasses([TFTambah_Barang,TFListOrderTelemarketing,TFListKontrakJasa]);
{initialization
  RegisterClass(TFNew_SalesOrder);}
end.
