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
    Label1: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    btMasterJenisRetur: TSpeedButton;
    edKode_Pelanggan: TRzButtonEdit;
    edNama_Pelanggan: TEdit;
    edNamaJenis: TRzButtonEdit;
    edKodeJenis: TEdit;
    dtTanggal: TRzDateTimePicker;
    edNoTrans: TEdit;
    edNoPenjualan: TRzButtonEdit;
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
    procedure FormShow(Sender: TObject);
    procedure edNoPenjualanButtonClick(Sender: TObject);
    procedure DBGridDetailCellClick(Column: TColumnEh);
    procedure DBGridDetailColEnter(Sender: TObject);
    procedure DBGridDetailColExit(Sender: TObject);
    procedure DBGridDetailEnter(Sender: TObject);
    procedure DBGridDetailExit(Sender: TObject);
    procedure DBGridDetailMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strtgl, strbulan, strtahun: string;
    Year, Month, Day: Word;
    Status: Integer;
    procedure Clear;
    procedure Autonumber;
    procedure HitungGrid;
  end;

var
  FDataReturPenjualan: TFDataReturPenjualan;

implementation

{$R *.dfm}

uses UListReturPenjualan, UMy_Function, USetMasterPenjulan, UMasterData,
  Ubrowse_pelanggan, UReturPenjualan_Sumber;

procedure TFDataReturPenjualan.HitungGrid;
begin
   try
      begin
      {if MemDetail['JUMLAH']>MemDetail['JUMLAH_JUAL'] then
      begin
        ShowMessage('Jumlah Quantum Retur Melebihi Jumlah Penjualan...!!!');
        exit;
      end;
      if MemDetail['HARGA_SATUAN']>MemDetail['HARGA_SATUAN'] then
      begin
        ShowMessage('Harga Satuan Retur Melebihi Harga Satuan Penjualan...!!!');
        exit;
      end;}
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
   {DecodeDate(dtTanggal.Date, Year, Month, Day);
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
      end; }
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
  edNoPenjualan.Clear;
  edKodeJenis.Clear;
  edNamaJenis.Clear;
  MemKeterangan.Clear;
  MemDetail.EmptyTable;
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

procedure TFDataReturPenjualan.edNoPenjualanButtonClick(Sender: TObject);
begin
    FReturPenjualan_Sumber.ShowModal;
end;

procedure TFDataReturPenjualan.FormShow(Sender: TObject);
begin
  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')<> 'dev' then
  begin
    btMasterJenisRetur.Visible:=false;
  end else begin
    btMasterJenisRetur.Visible:=true;
  end;
end;

procedure TFDataReturPenjualan.Autonumber;
begin
   {idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FListReturPenjualan.Name)+'');
   strday2:=dtTanggal.Date;
   edNoTrans.Text:=getNourut(strday2,'sale.t_sales_returns','0');}
end;

end.
