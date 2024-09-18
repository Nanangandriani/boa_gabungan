unit UDataReturPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, Vcl.StdCtrls,
  MemTableEh, RzButton, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs,
  Vcl.ComCtrls, RzDTP, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFDataReturPenjualan = class(TForm)
    Panel1: TPanel;
    Label39: TLabel;
    Label38: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    btMasterJenisRetur: TSpeedButton;
    edKode_Pelanggan: TRzButtonEdit;
    edNama_Pelanggan: TEdit;
    edNamaJenis: TRzButtonEdit;
    edKodeJenis: TEdit;
    dtTanggal: TRzDateTimePicker;
    edNoTrans: TEdit;
    RzPageControl1: TRzPageControl;
    TabSDetailPel: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    DSDetail: TDataSource;
    MemDetail: TMemTableEh;
    MemDetailKD_ITEM: TStringField;
    MemDetailNM_ITEM: TStringField;
    MemDetailJUMLAH: TFloatField;
    MemDetailKD_SATUAN: TStringField;
    MemDetailSUB_TOTAL: TCurrencyField;
    MemDetailPPN_PERSEN: TFloatField;
    MemDetailPPN_NILAI: TCurrencyField;
    MemDetailPPH_AKUN: TStringField;
    MemDetailNAMA_PPH: TStringField;
    MemDetailPPH_PERSEN: TFloatField;
    MemDetailPPH_NILAI: TCurrencyField;
    MemDetailGRAND_TOTAL: TCurrencyField;
    MemDetailPPN_AKUN: TStringField;
    MemDetailHARGA_SATUAN: TCurrencyField;
    MemDetailNM_SATUAN: TStringField;
    MemKeterangan: TMemo;
    MemDetailJUMLAH_JUAL: TCurrencyField;
    MemDetailHARGA_SATUAN_JUAL: TFloatField;
    MemDetailNO_JUAL: TStringField;
    procedure btMasterJenisReturClick(Sender: TObject);
    procedure edNamaJenisButtonClick(Sender: TObject);
    procedure edKode_PelangganButtonClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure DBGridDetailCellClick(Column: TColumnEh);
    procedure DBGridDetailColEnter(Sender: TObject);
    procedure DBGridDetailColExit(Sender: TObject);
    procedure DBGridDetailEnter(Sender: TObject);
    procedure DBGridDetailExit(Sender: TObject);
    procedure DBGridDetailMouseEnter(Sender: TObject);
    procedure DBGridDetailColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  tot_dpp, tot_ppn, tot_pph, tot_grand : real;
  public
    { Public declarations }
    strtgl, strbulan, strtahun: string;
    Year, Month, Day: Word;
    Status: Integer;
    procedure Clear;
    procedure Autonumber;
    procedure HitungGrid;
    procedure Save;
    procedure Update;
    procedure InsertDetailRet;
    procedure RefreshGrid;
  end;

var
  FDataReturPenjualan: TFDataReturPenjualan;

implementation

{$R *.dfm}

uses UListReturPenjualan, UMy_Function, USetMasterPenjulan, UMasterData,
  Ubrowse_pelanggan, UReturPenjualan_Sumber, UDataModule, UHomeLogin;

procedure TFDataReturPenjualan.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "no_return", "code_item", "name_item", "amount", "amount_sale", "code_unit", '+
            ' "name_unit", "unit_price", "unit_price_sale", "sub_total", "ppn_account", "ppn_percent", '+
            ' "ppn_value", "pph_account", "pph_value", "pph_name", "pph_percent", "grand_tot" '+
            ' FROM  "sale"."t_sales_returns_det") a '+
            ' WHERE no_return='+QuotedStr(edNoTrans.Text)+' '+
            ' Order By no_return, code_item desc');
    open;
  end;

    FDataReturPenjualan.MemDetail.active:=false;
    FDataReturPenjualan.MemDetail.active:=true;
    FDataReturPenjualan.MemDetail.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FDataReturPenjualan.MemDetail.active:=false;
      FDataReturPenjualan.MemDetail.active:=true;
      FDataReturPenjualan.MemDetail.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FDataReturPenjualan.MemDetail.insert;
     FDataReturPenjualan.MemDetail['NO_JUAL']:=Dm.Qtemp.FieldByName('no_return').AsString;
     FDataReturPenjualan.MemDetail['KD_ITEM']:=Dm.Qtemp.FieldByName('code_item').AsString;
     FDataReturPenjualan.MemDetail['NM_ITEM']:=Dm.Qtemp.FieldByName('name_item').AsString;
     FDataReturPenjualan.MemDetail['JUMLAH']:=Dm.Qtemp.FieldByName('amount').AsFloat;
     FDataReturPenjualan.MemDetail['JUMLAH_JUAL']:=Dm.Qtemp.FieldByName('amount_sale').AsFloat;
     FDataReturPenjualan.MemDetail['HARGA_SATUAN']:=Dm.Qtemp.FieldByName('unit_price').AsFloat;
     FDataReturPenjualan.MemDetail['HARGA_SATUAN_JUAL']:=Dm.Qtemp.FieldByName('unit_price_sale').AsFloat;
     FDataReturPenjualan.MemDetail['KD_SATUAN']:=Dm.Qtemp.FieldByName('code_unit').AsString;
     FDataReturPenjualan.MemDetail['NM_SATUAN']:=Dm.Qtemp.FieldByName('name_unit').AsString;
     FDataReturPenjualan.MemDetail['SUB_TOTAL']:= Dm.Qtemp.FieldByName('sub_total').AsFloat*Dm.Qtemp.FieldByName('unit_price').AsFloat;
     FDataReturPenjualan.MemDetail['PPN_AKUN']:=Dm.Qtemp.fieldbyname('ppn_account').value;
     FDataReturPenjualan.MemDetail['PPN_PERSEN']:=Dm.Qtemp.fieldbyname('ppn_percent').value;
     FDataReturPenjualan.MemDetail['PPN_NILAI']:=Dm.Qtemp.fieldbyname('ppn_value').value;
     FDataReturPenjualan.MemDetail['PPH_AKUN']:=Dm.Qtemp.fieldbyname('pph_account').value;
     FDataReturPenjualan.MemDetail['NAMA_PPH']:=Dm.Qtemp.fieldbyname('pph_name').value;
     FDataReturPenjualan.MemDetail['PPH_PERSEN']:=Dm.Qtemp.fieldbyname('pph_percent').value;
     FDataReturPenjualan.MemDetail['PPH_NILAI']:=Dm.Qtemp.fieldbyname('pph_value').value;
     FDataReturPenjualan.MemDetail['GRAND_TOTAL']:=Dm.Qtemp.fieldbyname('grand_tot').value;
     FDataReturPenjualan.MemDetail.post;
     FDataReturPenjualan.HitungGrid;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFDataReturPenjualan.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "sale"."t_sales_returns" ("created_at", "created_by", '+
            ' "no_return", "date_trans", "code_cust", "name_cust", "code_type_return", '+
            ' "name_type_return", "description", "order_no", "additional_code", '+
            ' "trans_day", "trans_month", "trans_year", "sub_total", "ppn_value", '+
            ' "pph_value", "grand_tot") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+QuotedStr(edNoTrans.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal.Date))+', '+
            ' '+QuotedStr(edKode_Pelanggan.Text)+', '+
            ' '+QuotedStr(edNama_Pelanggan.Text)+', '+
            ' '+QuotedStr(edKodeJenis.Text)+', '+
            ' '+QuotedStr(edNamaJenis.Text)+', '+
            ' '+QuotedStr(MemKeterangan.Text)+', '+
            ' '+QuotedStr(order_no)+', '+
            ' '+QuotedStr('0')+', '+
            ' '+QuotedStr(strtgl)+', '+
            ' '+QuotedStr(strbulan)+', '+
            ' '+QuotedStr(strtahun)+', '+
            ' '+QuotedStr(FloatToStr(tot_dpp))+', '+
            ' '+QuotedStr(FloatToStr(tot_ppn))+', '+
            ' '+QuotedStr(FloatToStr(tot_pph))+', '+
            ' '+QuotedStr(FloatToStr(tot_grand))+'  );');
    ExecSQL;
  end;
  InsertDetailRet;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FDataReturPenjualan.Refresh;
end;

procedure TFDataReturPenjualan.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "sale"."t_sales_returns" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' date_trans='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal.Date))+','+
              ' code_cust='+QuotedStr(edKode_Pelanggan.Text)+','+
              ' name_cust='+QuotedStr(edNama_Pelanggan.Text)+','+
              ' code_type_return='+QuotedStr(edKodeJenis.Text)+','+
              ' name_type_return='+QuotedStr(edNamaJenis.Text)+','+
              ' description='+QuotedStr(MemKeterangan.Text)+','+
              ' sub_total='+QuotedStr(FloatToStr(tot_dpp))+', '+
              ' ppn_value='+QuotedStr(FloatToStr(tot_ppn))+', '+
              ' pph_value='+QuotedStr(FloatToStr(tot_pph))+', '+
              ' grand_tot='+QuotedStr(FloatToStr(tot_grand))+', '+
              ' order_no='+QuotedStr(order_no)+','+
              ' additional_code='+QuotedStr('0')+','+
              ' trans_day='+QuotedStr(strtgl)+','+
              ' trans_month='+QuotedStr(strbulan)+','+
              ' trans_year='+QuotedStr(strtahun)+' '+
              ' Where no_return='+QuotedStr(edNoTrans.Text)+'');
      ExecSQL;
    end;
    InsertDetailRet;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    FDataReturPenjualan.Refresh;
end;

procedure TFDataReturPenjualan.InsertDetailRet;
begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "sale"."t_sales_returns_det" '+
            ' WHERE "no_return"='+QuotedStr(edNoTrans.Text)+';';
  ExecSQL;
  end;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "sale"."t_sales_returns_det" ("no_return", "no_trans_sale", "code_item", '+
              ' "name_item", "amount", "code_unit", "name_unit", "unit_price", '+
              ' "sub_total", "ppn_account", "ppn_percent", "ppn_value", "pph_account", '+
              ' "pph_value", "pph_name", "pph_percent", "amount_sale", "unit_price_sale", "grand_tot") '+
              ' Values( '+
              ' '+QuotedStr(edNoTrans.Text)+', '+
              ' '+QuotedStr(MemDetail['NO_JUAL'])+', '+
              ' '+QuotedStr(MemDetail['KD_ITEM'])+', '+
              ' '+QuotedStr(MemDetail['NM_ITEM'])+', '+
              ' '+QuotedStr(MemDetail['JUMLAH'])+', '+
              ' '+QuotedStr(MemDetail['KD_SATUAN'])+', '+
              ' '+QuotedStr(MemDetail['NM_SATUAN'])+', '+
              ' '+QuotedStr(MemDetail['HARGA_SATUAN'])+', '+
              ' '+QuotedStr(MemDetail['SUB_TOTAL'])+', '+
              ' '+QuotedStr(MemDetail['PPN_AKUN'])+', '+
              ' '+QuotedStr(MemDetail['PPN_PERSEN'])+', '+
              ' '+QuotedStr(MemDetail['PPN_NILAI'])+', '+
              ' '+QuotedStr(MemDetail['PPH_AKUN'])+', '+
              ' '+QuotedStr(MemDetail['PPH_NILAI'])+', '+
              ' '+QuotedStr(MemDetail['NAMA_PPH'])+', '+
              ' '+QuotedStr(MemDetail['PPH_PERSEN'])+', '+
              ' '+QuotedStr(MemDetail['JUMLAH_JUAL'])+', '+
              ' '+QuotedStr(MemDetail['HARGA_SATUAN_JUAL'])+', '+
              ' '+QuotedStr(MemDetail['GRAND_TOTAL'])+' );';
    ExecSQL;
    end;
  MemDetail.Next;
  end;
end;

procedure TFDataReturPenjualan.HitungGrid;
begin
   try
      begin
      if MemDetail['JUMLAH']>MemDetail['JUMLAH_JUAL'] then
      begin
        ShowMessage('Jumlah Quantum Retur Melebihi Jumlah Penjualan...!!!');
        MemDetail.Edit;
        MemDetail['JUMLAH']:=MemDetail['JUMLAH_JUAL'];
        MemDetail.Post;
        exit;
      end;
      if MemDetail['HARGA_SATUAN']>MemDetail['HARGA_SATUAN_JUAL'] then
      begin
        ShowMessage('Harga Satuan Retur Melebihi Harga Satuan Penjualan...!!!');
        MemDetail.Edit;
        MemDetail['HARGA_SATUAN']:=MemDetail['HARGA_SATUAN_JUAL'];
        MemDetail.Post;
        exit;
      end;
      if MemDetail['KD_ITEM']<>'0' then
      begin
        MemDetail.Edit;
        MemDetail['SUB_TOTAL']:=MemDetail['JUMLAH']*MemDetail['HARGA_SATUAN'];
        //Validasi PPN
        if MemDetail['PPN_PERSEN']=0 then
        begin
          MemDetail['PPN_NILAI']:=0;
          MemDetail['PPN_AKUN']:=0;
          MemDetail['PPN_PERSEN']:=0;
        end;
        if MemDetail['PPN_PERSEN']<>0 then
        begin
          MemDetail['PPN_NILAI']:=MemDetail['SUB_TOTAL']*(MemDetail['PPN_PERSEN']/100);
        end;
        //Validasi PPH
        if (MemDetail['NAMA_PPH']='0') AND (MemDetail['PPH_PERSEN']=0) then
        begin
          MemDetail['PPH_NILAI']:=0;
          MemDetail['PPH_AKUN']:=0;
          MemDetail['NAMA_PPH']:=0;
          MemDetail['PPH_PERSEN']:=0;
        end;
        if (MemDetail['PPH_PERSEN']<>0)  OR (MemDetail['PPH_PERSEN']<>'0')  then
        begin
          MemDetail['PPH_NILAI']:=(MemDetail['SUB_TOTAL']+MemDetail['PPN_NILAI'])*(MemDetail['PPH_PERSEN']/100);
        end;
        MemDetail['GRAND_TOTAL']:=MemDetail['SUB_TOTAL']+MemDetail['PPN_NILAI']-MemDetail['PPH_NILAI']-MemDetail['POTONGAN_NILAI'];

        MemDetail.Post;
      end;
      end;
        Except;
   end;
end;

procedure TFDataReturPenjualan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataReturPenjualan.BSaveClick(Sender: TObject);
begin
   DecodeDate(dtTanggal.Date, Year, Month, Day);
   strtgl:=IntToStr(Day);
   strbulan:=inttostr(Month);
   strtahun:=inttostr(Year);
  //refresh grid
  tot_dpp:=0;
  tot_ppn:=0;
  tot_pph:=0;
  tot_grand:=0;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    HitungGrid;
      tot_dpp:=tot_dpp+MemDetail['SUB_TOTAL'];
      tot_ppn:=tot_ppn+MemDetail['PPN_NILAI'];
      tot_pph:=tot_pph+MemDetail['PPH_NILAI'];
      tot_grand:=tot_grand+MemDetail['GRAND_TOTAL'];
    MemDetail.Next;
  end;

      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode_Pelanggan.Text='' then
      begin
        MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_Pelanggan.SetFocus;
      end
      else if edNoTrans.Text='' then
      begin
        MessageDlg('Data Penjualan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNoTrans.SetFocus;
      end
      else if edKodeJenis.Text='' then
      begin
        MessageDlg('Data Jenis Retur Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeJenis.SetFocus;
      end
      else if Status = 0 then
      begin
      FDataReturPenjualan.Autonumber;
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Order No. '+edNoTrans.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
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

procedure TFDataReturPenjualan.btMasterJenisReturClick(Sender: TObject);
begin
  FSetMasterPenjulan.TabSetJenisReturJual.TabVisible:=true;
  FSetMasterPenjulan.TabSetSumberOrder.TabVisible:=false;
  FSetMasterPenjulan.TabSetSumberJual.TabVisible:=false;
  FSetMasterPenjulan.TabParameter.TabVisible:=false;
  FSetMasterPenjulan.QJenisRetur.Close;
  FSetMasterPenjulan.QJenisRetur.Open;
  FSetMasterPenjulan.RzPageControl1.ActivePage:=FSetMasterPenjulan.TabSetJenisReturJual;
  FSetMasterPenjulan.ShowModal;
end;

procedure TFDataReturPenjualan.Clear;
begin
  edNoTrans.Clear;
  dtTanggal.Date:=Now();
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  edKodeJenis.Clear;
  edNamaJenis.Clear;
  MemKeterangan.Clear;
  MemDetail.EmptyTable;
  MemDetail.active:=false;
  MemDetail.active:=true;
end;

procedure TFDataReturPenjualan.DBGridDetailCellClick(Column: TColumnEh);
begin
  HitungGrid;
end;

procedure TFDataReturPenjualan.DBGridDetailColEnter(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFDataReturPenjualan.DBGridDetailColExit(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFDataReturPenjualan.DBGridDetailColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
    FReturPenjualan_Sumber.ShowModal;
end;

procedure TFDataReturPenjualan.DBGridDetailEnter(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFDataReturPenjualan.DBGridDetailExit(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFDataReturPenjualan.DBGridDetailMouseEnter(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFDataReturPenjualan.edKode_PelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='retur_penjualan';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFDataReturPenjualan.edNamaJenisButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Retur';
  FMasterData.vcall:='jenis_retur';
  FMasterData.update_grid('code','name','description','t_type_sales_return','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.ShowModal;
end;

procedure TFDataReturPenjualan.Autonumber;
begin
   idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FListReturPenjualan.Name)+'');
   strday2:=dtTanggal.Date;
   edNoTrans.Text:=getNourut(strday2,'sale.t_sales_returns','0');
end;

end.
