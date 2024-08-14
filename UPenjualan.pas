unit UPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxRibbonCustomizationForm,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh,
  Data.DB, frxClass, frxDBSet, DataDriverEh, MemTableEh, MemDS, DBAccess, Uni,
  dxBar, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, cxClasses, dxRibbon,
  Vcl.StdCtrls, dxBarExtItems, cxMaskEdit, cxLabel,
  cxRadioGroup, cxCheckGroup, dxColorEdit, cxSpinEdit, cxImage, cxBarEditItem,
  dxRibbonGallery, dxSkinChooserGallery, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, dxSkinBasic,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxCore//,// scExcelExport,
  //frxExportBaseDialog, frxExportXLSX
  , frxExportBaseDialog{, dxSkinBasic, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxCore};

type
  TFlist_penjualan = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridEh1: TDBGridEh;
    DBGridEh3: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBRefresh: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBuBaru: TdxBarLargeButton;
    dxBprint: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    QPenjualan: TUniQuery;
    DsPenjualan: TDataSource;
    MemPenjualan: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    DsDetailPenjualan: TDataSource;
    frxDBData_srt_jalan: TfrxDBDataset;
    Qreport: TUniQuery;
    frxReport_srt_jalan: TfrxReport;
    Qpenjualan_detail: TUniQuery;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    frxReport_invoice: TfrxReport;
    frxDBData_invoice: TfrxDBDataset;
    Qreport_invoice: TUniQuery;
    dxBarLargeButton4: TdxBarLargeButton;
    frxDBData_rekap_penjualan: TfrxDBDataset;
    Qrekap_penjualan: TUniQuery;
    frxReport_rekap_penjualan: TfrxReport;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    frxReport_kartu_piutang: TfrxReport;
    frxDBData_kartu_piutang: TfrxDBDataset;
    Qreport_kartu_piutang: TUniQuery;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarColorCombo1: TdxBarColorCombo;
    dxBarListItem1: TdxBarListItem;
    dxBarTreeViewCombo1: TdxBarTreeViewCombo;
    dxBarProgressItem1: TdxBarProgressItem;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    Label1: TLabel;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    cxBarEditItem6: TcxBarEditItem;
    dxBarListItem2: TdxBarListItem;
    cxBarEditItem7: TcxBarEditItem;
    cxBarEditItem8: TcxBarEditItem;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    cxBarEditItem9: TcxBarEditItem;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    Qtemp: TUniQuery;
    Qsum_qty_srt_jln: TUniQuery;
    frxDBDataset_qty: TfrxDBDataset;
    Qkartu_piutang_dolar: TUniQuery;
    frxDBDataset_kartu_piutang_dolar: TfrxDBDataset;
    frxReport_kartu_piutang_dolar: TfrxReport;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton9: TdxBarLargeButton;
    Qreport_kartu_piutang_data_pelanggan: TUniQuery;
    frxDBData_kartu_piutang_pel: TfrxDBDataset;
    frxDBData_kartu_piutang2: TfrxDBDataset;
    Qreport_kartu_piutang2: TUniQuery;
    frxDBData_pindahan: TfrxDBDataset;
    Qpindahan: TUniQuery;
    frxReport_buku_harian_penjualan: TfrxReport;
    frxDBData_buku_harian_penjualan: TfrxDBDataset;
    Qreport_buku_harian_penjualan: TUniQuery;
    procedure dxBRefreshClick(Sender: TObject);
    procedure dxBuBaruClick(Sender: TObject);
    procedure dxBprintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBUpdateClick(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure frxReport_invoiceGetValue(const VarName: string;
      var Value: Variant);
    procedure frxReport_kartu_piutangGetValue(const VarName: string;
      var Value: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure DBGridEh1AdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
      AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure dxBDeleteClick(Sender: TObject);
    procedure frxReport_srt_jalanGetValue(const VarName: string;
      var Value: Variant);
    procedure frxReport_kartu_piutang_dolarGetValue(const VarName: string;
      var Value: Variant);
    procedure frxReport_rekap_penjualanGetValue(const VarName: string;
      var Value: Variant);
    procedure frxReport_buku_harian_penjualanGetValue(const VarName: string;
      var Value: Variant);
    procedure dxBarLargeButton9Click(Sender: TObject);
    procedure frxReport_kartu_piutangBeforePrint(Sender: TfrxReportComponent);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
  end;

Function Flist_penjualan: TFlist_penjualan;
var  status_pakai_terbilang: Integer ;

implementation

{$R *.dfm}

uses UNew_Penjualan{, Udate_buku_harian_penjualan, Udate_rekap_penjualan,
  Udate_export_penjualan, Udate_kartu_piutang, UList_DO_penjualan}, UDataModule;
//  UList_DO_penjualan
var
  RealFlist_penjualan: TFlist_penjualan;
function Flist_penjualan: TFlist_penjualan;
begin
  if RealFlist_penjualan <> nil then
    Flist_penjualan:= RealFlist_penjualan
  else
    Application.CreateForm(TFlist_penjualan, Result);
end;

function terbilang(sValue: string):string;
const
Angka : array [1..20] of string =
('', 'Satu', 'Dua', 'Tiga', 'Empat',
'Lima', 'Enam', 'Tujuh', 'Delapan',
'Sembilan', 'Sepuluh', 'Sebelas',
'Dua Belas', 'Tiga Belas', 'Empat Belas',
'Lima Belas', 'Enam Belas', 'Tujuh Belas',
'Delapan Belas', 'Sembilan Belas');
sPattern: string = '000000000000000';

var
S,Rupiah : string;
Satu, Dua, Tiga, Belas, Gabung: string;
Sen, Sen1, Sen2: string;
Hitung : integer;
one, two, three: integer;
begin
  One := 4;
  Two := 5;
  Three := 6;
  Hitung := 1;
  Rupiah := '';
  S := copy(sPattern, 1, length(sPattern) - length(trim(sValue))) + sValue;
  Sen1 := Copy(S, 14, 1);
  Sen2 := Copy(S, 15, 1);
  Sen := Sen1 + Sen2;
  while Hitung < 5 do
  begin
    Satu := Copy(S, One, 1);
    Dua := Copy(S, Two, 1);
    Tiga := Copy(S, Three, 1);
    Gabung := Satu + Dua + Tiga;

    if StrToInt(Satu) = 1 then
    Rupiah := Rupiah + 'Seratus '
    else
    if StrToInt(Satu) > 1 Then
    Rupiah := Rupiah + Angka[StrToInt(satu)+1] + ' Ratus ';

    if StrToInt(Dua) = 1 then
    begin
      Belas := Dua + Tiga;
      Rupiah := Rupiah + Angka[StrToInt(Belas)+1];
    end
    else
    if StrToInt(Dua) > 1 Then
    Rupiah := Rupiah + Angka[StrToInt(Dua)+1] + ' Puluh ' +
    Angka[StrToInt(Tiga)+1]
    else
    if (StrToInt(Dua) = 0) and (StrToInt(Tiga) > 0) Then
    begin
      if ((Hitung = 3) and (Gabung = '001')) or
      ((Hitung = 3) and (Gabung = ' 1')) then
      Rupiah := Rupiah + 'Seribu '
      else
      Rupiah := Rupiah + Angka[StrToInt(Tiga)+1];
    end;

    if (hitung = 1) and (StrToInt(Gabung) > 0) then
    Rupiah := Rupiah + ' Milyar '
    else
    if (Hitung = 2) and (StrToInt(Gabung) > 0) then
    Rupiah := Rupiah + ' Juta '
    else
    if (Hitung = 3) and (StrToInt(Gabung) > 0) then
    begin
      if (Gabung = '001') or (Gabung = ' 1') then
      Rupiah := Rupiah + ''
      else
      Rupiah := Rupiah + ' Ribu ';
    end;
    Hitung := Hitung + 1;
    One := One + 3;
    Two := Two + 3;
    Three := Three + 3;
  end;
  if status_pakai_terbilang=1 then
  begin
    if length(Rupiah) > 1 then Rupiah := Rupiah + ' Rupiah ';
  end
  else if status_pakai_terbilang = 2 then
  begin
    if length(Rupiah) > 1 then Rupiah := Rupiah ;
  end;
  Result := Rupiah;
end;

procedure TFlist_penjualan.DBGridEh1AdvDrawDataCell(Sender: TCustomDBGridEh;
  Cell, AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
  var Params: TColCellParamsEh; var Processed: Boolean);
var
status_posting: String;
begin
  status_posting := Column.Field.DataSet.FieldByName('status_post').AsString;
  if (status_posting ='1') then
  begin
    Params.Background := $0091FFFF;
  end;
end;

procedure TFlist_penjualan.DBGridEh1DblClick(Sender: TObject);
begin
  dxBUpdateClick(sender);
end;

procedure TFlist_penjualan.dxBarLargeButton2Click(Sender: TObject);
begin
  //Fdate_buku_harian_penjualan.ShowModal;
end;

procedure TFlist_penjualan.dxBarLargeButton3Click(Sender: TObject);
begin
  if DBGridEh1.Fields[0].AsString='' then
  begin
    MessageDlg('Tidak ada invoice yang dipilih..!!',mtInformation,[mbRetry],0);
  end
  else
  begin
    with Qreport_invoice do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='select b.produk,sum(a.piutang_dagang) piutang_dagang,sum(b.harga) harga, '+
                'sum(total_harga) total_harga,sum(b.qty) qty,sum(b.lain2) lain2,'+
                'd.nama_pelanggan,a.no_invoice,d.alamat alamat_pelanggan,b.satuan,'+
                'a.ppn_ribuan,a.ppn_persen,a.piutang_dagang,a.tgl_invoice from t_penjualan a '+
                'left join t_penjualan_detail b on a.no_invoice = b.no_invoice '+
                'left join t_pelanggan d on d.kode_pelanggan=a.pelanggan '+
//                'left join t_produk e on b.produk=e.kd_produk '+
                'where a.no_invoice='+QuotedStr(DBGridEh1.Fields[0].AsString)+' GROUP BY b.produk,d.nama_pelanggan,'+
                'a.no_invoice,d.alamat,b.satuan,a.ppn_ribuan,a.ppn_persen,a.piutang_dagang,a.tgl_invoice';
      Open;
    end;
    frxReport_invoice.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report2\invoice_penjualan.Fr3');
    frxReport_invoice.ShowReport();
  end;
end;

procedure TFlist_penjualan.dxBarLargeButton4Click(Sender: TObject);
begin
  //Fdate_rekap_penjualan.ShowModal;
end;

procedure TFlist_penjualan.dxBarLargeButton5Click(Sender: TObject);
begin
//  Fdate_export_penjualan.ShowModal;
end;

procedure TFlist_penjualan.dxBarLargeButton6Click(Sender: TObject);
begin
//  Fdate_kartu_piutang.ShowModal;
end;

procedure TFlist_penjualan.dxBarLargeButton7Click(Sender: TObject);
var
saldo1 :Currency;
deskripsi: String;
begin
  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='select status_post from t_penjualan where no_invoice='+QuotedStr(DBGridEh1.Fields[0].AsString);
    Open;
  end;
  if dm.Qtemp.FieldByName('status_post').AsString='0' then
  begin
    if MessageDlg('Apakah anda yakin ingin POSTING invoice '+DBGridEh1.Fields[0].AsString+' ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      if not dm.Koneksi.InTransaction then
      dm.Koneksi.StartTransaction;
      try

      with dm.Qtemp2 do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT a.saldo,a.kode_pelanggan FROM t_piutang a '+
                  'left join t_pelanggan b on a.kode_pelanggan=b.kode_pelanggan '+
                  'where b.nama_pelanggan= '+QuotedStr(MemPenjualan.FieldByName('nama_pelanggan').AsString) +' '+
                  'order by id DESC LIMIT 1';
        open;
      end;

      saldo1:= dm.Qtemp2.FieldByName('saldo').AsCurrency + (DBGridEh1.Fields[5].AsFloat);

      with dm.Qtemp3 do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT array_to_string( ARRAY(SELECT concat(produk,'' '',qty,'' '',satuan,'' '') || '' '' FROM t_penjualan_detail '+
                  'where no_invoice= c.no_invoice), '','') deskripsi from t_penjualan c '+
                  'where tgl_invoice = '''+FormatDateTime('YYYY-MM-DD',DBGridEh1.Fields[2].AsDateTime)+'''' ;
        Open;
      end;

      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Insert Into t_piutang(no_faktur,kode_pelanggan,tgl,debet,kredit,saldo,jenis,keterangan) '+
        'Values (:parno_faktur,:parkode_pelanggan,:partgl,:pardebet,:parkredit,:parsaldo,:parjenis,:parketerangan)';
        parambyname('parno_faktur').Value:=DBGridEh1.Fields[1].AsString;
        parambyname('parkode_pelanggan').Value:=MemPenjualan.FieldByName('pelanggan').AsString;
        parambyname('partgl').Value:=DBGridEh1.Fields[2].AsString;
        parambyname('pardebet').Value:=DBGridEh1.Fields[5].Asstring;
        parambyname('parkredit').Value:=0;
        parambyname('parsaldo').Value:= saldo1;
        parambyname('parjenis').Value:= 'Penjualan';
        parambyname('parketerangan').Value:='Penjualan'+dm.Qtemp3.FieldByName('deskripsi').AsString;
        execsql;
      end;

      with Dm.Qtemp do
      begin
        close;
        Sql.Clear;
        Sql.Text:= 'update t_penjualan set status_post=:parstatus_post '+
                   'where no_invoice=:pano_invoice';
        parambyname('parstatus_post').Value:='1';
        parambyname('pano_invoice').Value:=DBGridEh1.Fields[0].AsString;
        ExecSql;
      end;

      //JURNAL (PIUTANG DAGANG)
//      if MemPenjualan.FieldByName('pelanggan').AsString='MAB' then
//      begin
//        deskripsi:='3';
//      end
//      else if MemPenjualan.FieldByName('pelanggan').AsString='MNB' then
//      begin
//        deskripsi:='4';
//      end
//      else if MemPenjualan.FieldByName('pelanggan').AsString='HKJ' then
//      begin
//        deskripsi:='5';
//      end
//      else if MemPenjualan.FieldByName('pelanggan').AsString='NPA' then
//      begin
//        deskripsi:='6';
//      end;

      deskripsi:='12';

      with dm.Qtemp3 do
      begin
        Close;
        Sql.Clear;
        Sql.Text:='select a.kd_akun,b.balance from t_master_akun a '+
                  'left join t_daftar_perkiraan b on a.kd_akun=b.kode where a.kode='+QuotedStr(deskripsi);
        Open;
      end;

      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Insert Into t_jurnal_umum(no_trans,modul,kd_akun_perkiraan,debet,kredit,tgl_trans,Status) '+
        'Values (:parno_trans,:parmodul,:parkd_akun_perkiraan,:pardebet,:parkredit,:partgl_trans,:parStatus)';
        parambyname('parno_trans').Value:=DBGridEh1.Fields[0].AsString;
        parambyname('parmodul').Value:='PENJUALAN';
        parambyname('parkd_akun_perkiraan').Value:=dm.Qtemp3.FieldByName('kd_akun').Asstring;
        parambyname('pardebet').Value:=DBGridEh1.Fields[5].Asstring;
        parambyname('parkredit').Value:=0;
        parambyname('partgl_trans').Value:= DBGridEh1.Fields[2].Asstring;
        parambyname('parStatus').Value:=0;
        execsql;
      end;

//      with dm.Qtemp do
//      begin
//        close;
//        Sql.Clear;
//        Sql.Text:= 'update t_daftar_perkiraan set balance=:parbalance '+
//                   'where kode=:parkode';
//        parambyname('parbalance').Value:=dm.Qtemp3.FieldByName('balance').AsFloat + DBGridEh1.Fields[5].AsFloat;
//        parambyname('parkode').Value:=dm.Qtemp3.FieldByName('kd_akun').AsString;
//        ExecSql;
//      end;

      //JURNAL (PPN)
      with dm.Qtemp3 do
      begin
        Close;
        Sql.Clear;
        Sql.Text:='select kd_akun from t_master_akun where kode=''2'' ';
        Open;
      end;

      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Insert Into t_jurnal_umum(no_trans,modul,kd_akun_perkiraan,debet,kredit,tgl_trans,Status) '+
        'Values (:parno_trans,:parmodul,:parkd_akun_perkiraan,:pardebet,:parkredit,:partgl_trans,:parStatus)';
        parambyname('parno_trans').Value:=DBGridEh1.Fields[0].AsString;
        parambyname('parmodul').Value:='PENJUALAN';
        parambyname('parkd_akun_perkiraan').Value:=dm.Qtemp3.FieldByName('kd_akun').Asstring;
        parambyname('pardebet').Value:=0;
        parambyname('parkredit').Value:=DBGridEh1.Fields[8].Asstring;
        parambyname('partgl_trans').Value:= DBGridEh1.Fields[2].Asstring;
        parambyname('parStatus').Value:=0;
        execsql;
      end;

      //JURAL DPP
      with dm.Qtemp3 do
      begin
        Close;
        Sql.Clear;
        Sql.Text:='select kd_akun from t_master_akun where kode=''10'' ';
        Open;
      end;
      with Qtemp do
      begin
        Close;
        Sql.Clear;
        Sql.Text:='select kd_akun from t_master_akun where kode=''11'' ';
        Open;
      end;
      Qpenjualan_detail.First;
      while not Qpenjualan_detail.Eof do
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='Insert Into t_jurnal_umum(no_trans,modul,kd_akun_perkiraan,debet,kredit,tgl_trans,Status) '+
          'Values (:parno_trans,:parmodul,:parkd_akun_perkiraan,:pardebet,:parkredit,:partgl_trans,:parStatus)';
          parambyname('parno_trans').Value:=DBGridEh1.Fields[0].AsString;
          if Qpenjualan_detail.FieldByName('produk').AsString='ON KKJB' then
          begin
            parambyname('parmodul').Value:='PENJUALAN';
            parambyname('parkd_akun_perkiraan').Value:=dm.Qtemp3.FieldByName('kd_akun').Asstring;
          end
          else if Qpenjualan_detail.FieldByName('produk').AsString='ON KKSP' then
          begin
            parambyname('parmodul').Value:='PENJUALAN';
            parambyname('parkd_akun_perkiraan').Value:=Qtemp.FieldByName('kd_akun').Asstring;
          end;

          parambyname('pardebet').Value:=0;
          if (Qpenjualan_detail.FieldByName('total_harga').Asstring='') or (Qpenjualan_detail.FieldByName('total_harga').Asstring=NULL) then
          begin
            parambyname('parkredit').Value:=0;
          end
          else
          begin
            parambyname('parkredit').Value:=Qpenjualan_detail.FieldByName('total_harga').Asstring;
          end;
          parambyname('partgl_trans').Value:= DBGridEh1.Fields[2].Asstring;
          parambyname('parStatus').Value:=0;
          execsql;
        end;
        Qpenjualan_detail.Next;
      end;

      MessageDlg('Posting berhasil..!!',mtInformation,[MBOK],0);
      Refresh;
      Dm.Koneksi.Commit;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
    end;
  end
  else if dm.Qtemp.FieldByName('status_post').AsString='1' then
  begin
    MessageDlg('No Invoice '+DBGridEh1.Fields[0].AsString+' sudah di posting!!',mtWarning,[mbCancel],0);
  end;
end;

procedure TFlist_penjualan.dxBarLargeButton8Click(Sender: TObject);
begin
  Finput_penjualan.Clear;
  With MemPenjualan do
  begin
    Finput_penjualan.EdNoInvoice.Text := FieldByName('no_invoice').AsString;
    Finput_penjualan.DTtgl_invoice.Text := FieldByName('tgl_invoice').AsString;
    Finput_penjualan.EdFaktur.Text := FieldByName('no_faktur_pajak').AsString;
    Finput_penjualan.EdPelanggan.Text := FieldByName('nama_pelanggan').AsString;
    Finput_penjualan.DTtgl_jatuh_tempo.Text := FieldByName('jangka_waktu').AsString;
    Finput_penjualan.Edppn_persen.Text := FieldByName('ppn_persen').AsString;
    Finput_penjualan.Edppn.Text := FieldByName('ppn_ribuan').AsString;
    Finput_penjualan.EDGrand_total.Text := FieldByName('piutang_dagang').AsString;
  end;
  Qpenjualan_detail.First;
  while not Qpenjualan_detail.Eof do
  begin
    with Qpenjualan_detail do
    begin
      Finput_penjualan.Memdetail.Insert;
      Finput_penjualan.Memdetail['qty']:=FieldByName('qty').AsString;
      Finput_penjualan.Memdetail['satuan']:=FieldByName('satuan').AsString;
      Finput_penjualan.Memdetail['harga']:=FieldByName('harga').AsString;
      Finput_penjualan.Memdetail['total_harga']:=FieldByName('total_harga').AsString;
      Finput_penjualan.Memdetail['lain']:=FieldByName('lain2').AsString;
      Finput_penjualan.Memdetail['nm_produk']:=FieldByName('produk').AsString;
      Finput_penjualan.Memdetail['iddetailgdng']:=FieldByName('iddetailgdng').AsString;
      Finput_penjualan.Memdetail.Post;
    end;
    Qpenjualan_detail.Next;
  end;
  Finput_penjualan.BSimpan.Visible:=true;
  Status := 1;
  Finput_penjualan.Show;
end;

procedure TFlist_penjualan.dxBarLargeButton9Click(Sender: TObject);
begin
  //status_barang_penjualan:=1;
//  Fdata_do_penjualan.Show;
end;

procedure TFlist_penjualan.dxBDeleteClick(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='select status_post from t_penjualan where no_invoice='+QuotedStr(DBGridEh1.Fields[0].AsString);
    Open;
  end;
  if dm.Qtemp.FieldByName('status_post').AsInteger=1 then
  begin
    MessageDlg('Data sudah diposting, tidak dapat dihapus..!!',mtInformation,[MBretry],0);
  end
  else
  begin
    if MessageDlg('Apakah anda yakin ingin menghapus data ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      with dm.QTemp2 do
      begin
        Close;
        Sql.Clear;
        Sql.Text:='Delete from t_penjualan where no_invoice='+QuotedStr(DBGridEh1.Fields[0].AsString);
        ExecSQL;
      end;
      with dm.QTemp2 do
      begin
        Close;
        Sql.Clear;
        Sql.Text:='Delete from t_penjualan_detail where no_invoice='+QuotedStr(DBGridEh1.Fields[0].AsString);
        ExecSQL;
      end;
      MessageDlg('Hapus Berhasil..!!',mtInformation,[MBOK],0);
      Refresh;
    end;
  end;
end;

procedure TFlist_penjualan.dxBprintClick(Sender: TObject);
begin
  if DBGridEh1.Fields[0].AsString='' then
  begin
    MessageDlg('Tidak ada invoice yang dipilih..!!',mtInformation,[mbRetry],0);
  end
  else
  begin
    with Qreport do
    begin
      Close;
      Sql.Clear;
      SQL.Text:='select sum(a.qty) qty,SUBSTR(REPLACE (a.no_invoice, ''MLB/'', ''''), 5) no_invoice,b.tgl_invoice,a.satuan,d.nm_produk produk,current_date date_now,c.nama_pelanggan,c.alamat from t_penjualan_detail a  '+
                'left join t_penjualan b on a.no_invoice=b.no_invoice  '+
                'left join t_pelanggan c on b.pelanggan=c.kode_pelanggan  '+
                'left join t_produk d on a.produk=d.kd_produk '+
                'where a.no_invoice='+QuotedStr(DBGridEh1.Fields[0].AsString)+' GROUP BY d.nm_produk,'+
                'a.satuan,c.nama_pelanggan,c.alamat,a.no_invoice,b.tgl_invoice';
      Open;
    end;
    with Qsum_qty_srt_jln do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select sum(qty) tot_qty,satuan from t_penjualan_detail where no_invoice='+QuotedStr(DBGridEh1.Fields[0].AsString)+' GROUP BY no_invoice,satuan';
      Open;
    end;
    frxReport_srt_jalan.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report2\surat_kirim_penjualan.Fr3');
    frxReport_srt_jalan.ShowReport();
  end;
end;

procedure TFlist_penjualan.dxBRefreshClick(Sender: TObject);
begin
  Refresh;
end;

procedure TFlist_penjualan.dxBuBaruClick(Sender: TObject);
begin
  Finput_penjualan.Show;
  Finput_penjualan.Clear;
  Finput_penjualan.DTtgl_invoice.Text:=datetostr(now);
  Finput_penjualan.DTtgl_jatuh_tempo.Text:=datetostr(now);
  Finput_penjualan.BSimpan.Visible:=true;
  Status:=0;
//  Finput_penjualan.Autocode;
end;

procedure TFlist_penjualan.dxBUpdateClick(Sender: TObject);
begin
  Finput_penjualan.Show;
  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='select * from t_penjualan where no_invoice='+QuotedStr(DBGridEh1.Fields[0].AsString);
    Open;
  end;
  if dm.Qtemp.FieldByName('status_post').AsInteger=0 then
  begin
    Finput_penjualan.Clear;
    With MemPenjualan do
    begin
      Finput_penjualan.EdNoInvoice.Text := FieldByName('no_invoice').AsString;
      Finput_penjualan.DTtgl_invoice.Text := FieldByName('tgl_invoice').AsString;
      Finput_penjualan.EdFaktur.Text := FieldByName('no_faktur_pajak').AsString;
      Finput_penjualan.EdPelanggan.Text := FieldByName('nama_pelanggan').AsString;
      Finput_penjualan.DTtgl_jatuh_tempo.Text := FieldByName('jangka_waktu').AsString;
      Finput_penjualan.Edppn_persen.Text := FieldByName('ppn_persen').AsString;
      Finput_penjualan.Edppn.Text := FieldByName('ppn_ribuan').AsString;
      Finput_penjualan.EDGrand_total.Text := FieldByName('piutang_dagang').AsString;
      Finput_penjualan.CBmata_uang.Text := FieldByName('mata_uang').AsString;
      Finput_penjualan.ednilai_valas.Text := FieldByName('kurs_rupiah').AsString;
      Finput_penjualan.CBstatus_do.Text := FieldByName('status_do').AsString;
      Total := FieldByName('dpp').AsCurrency;
      if FieldByName('kategori_penjualan').AsInteger=1 then
      begin
        Finput_penjualan.CBkategori.ItemIndex:=0;
      end
      else
      begin
        Finput_penjualan.CBkategori.ItemIndex:=1;
      end;
    end;
    Qpenjualan_detail.First;
    while not Qpenjualan_detail.Eof do
    begin
      with Qpenjualan_detail do
      begin
        Finput_penjualan.Memdetail.Insert;
        Finput_penjualan.Memdetail['qty']:=FieldByName('qty').AsString;
        Finput_penjualan.Memdetail['satuan']:=FieldByName('satuan').AsString;
        Finput_penjualan.Memdetail['harga']:=FieldByName('harga').AsString;
        Finput_penjualan.Memdetail['total_harga']:=FieldByName('total_harga').AsString;
        Finput_penjualan.Memdetail['lain']:=FieldByName('lain2').AsString;
        Finput_penjualan.Memdetail['nm_produk']:=FieldByName('produk').AsString;
       // Finput_penjualan.Memdetail['iddetailgdng']:=FieldByName('iddetailgdng').AsString;
        Finput_penjualan.Memdetail['no_sp_muat']:=FieldByName('no_sp_muat').AsString;
        Finput_penjualan.Memdetail.Post;
      end;
      Qpenjualan_detail.Next;
    end;
    Status:=1;
  //  Finput_penjualan.Show;
  end
  else if (dm.Qtemp.FieldByName('status_post').AsInteger=1) and (dm.Qtemp.FieldByName('status_koreksi').AsInteger=1) then
  begin
    Finput_penjualan.Clear;
    With MemPenjualan do
    begin
      Finput_penjualan.EdNoInvoice.Text := FieldByName('no_invoice').AsString;
      Finput_penjualan.DTtgl_invoice.Text := FieldByName('tgl_invoice').AsString;
      Finput_penjualan.EdFaktur.Text := FieldByName('no_faktur_pajak').AsString;
      Finput_penjualan.EdPelanggan.Text := FieldByName('nama_pelanggan').AsString;
      Finput_penjualan.DTtgl_jatuh_tempo.Text := FieldByName('jangka_waktu').AsString;
      Finput_penjualan.Edppn_persen.Text := FieldByName('ppn_persen').AsString;
      Finput_penjualan.Edppn.Text := FieldByName('ppn_ribuan').AsString;
      Finput_penjualan.EDGrand_total.Text := FieldByName('piutang_dagang').AsString;
      Finput_penjualan.CBmata_uang.Text := FieldByName('mata_uang').AsString;
      Finput_penjualan.ednilai_valas.Text := FieldByName('kurs_rupiah').AsString;
      Finput_penjualan.CBstatus_do.Text := FieldByName('status_do').AsString;
      Total := FieldByName('dpp').AsCurrency;
      if FieldByName('kategori_penjualan').AsInteger=1 then
      begin
        Finput_penjualan.CBkategori.ItemIndex:=0;
      end
      else
      begin
        Finput_penjualan.CBkategori.ItemIndex:=1;
      end;
    end;
    Qpenjualan_detail.First;
    while not Qpenjualan_detail.Eof do
    begin
      with Qpenjualan_detail do
      begin
        Finput_penjualan.Memdetail.Insert;
        Finput_penjualan.Memdetail['qty']:=FieldByName('qty').AsString;
        Finput_penjualan.Memdetail['satuan']:=FieldByName('satuan').AsString;
        Finput_penjualan.Memdetail['harga']:=FieldByName('harga').AsString;
        Finput_penjualan.Memdetail['total_harga']:=FieldByName('total_harga').AsString;
        Finput_penjualan.Memdetail['lain']:=FieldByName('lain2').AsString;
        Finput_penjualan.Memdetail['nm_produk']:=FieldByName('produk').AsString;
       // Finput_penjualan.Memdetail['iddetailgdng']:=FieldByName('iddetailgdng').AsString;
        Finput_penjualan.Memdetail['no_sp_muat']:=FieldByName('no_sp_muat').AsString;
        Finput_penjualan.Memdetail.Post;
      end;
      Qpenjualan_detail.Next;
    end;
    Status:=2;
//    Finput_penjualan.Show;
  end
  else
  begin
    MessageDlg('Maaf Invoice '+DBGridEh1.Fields[0].AsString+' belum ada approval koreksi, tidak dapat diubah..!!',mtInformation,[MBOK],0);
  end;
end;

procedure TFlist_penjualan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QPenjualan.Close;
  MemPenjualan.Close;
  Qpenjualan_detail.Close;
  Action:=cafree;
end;

procedure TFlist_penjualan.FormCreate(Sender: TObject);
begin
  RealFlist_penjualan:=self;
end;

procedure TFlist_penjualan.FormDestroy(Sender: TObject);
begin
   RealFlist_penjualan:=nil;
end;

procedure TFlist_penjualan.FormShow(Sender: TObject);
begin
  QPenjualan.Close;
  QPenjualan.Open;
  MemPenjualan.Close;
  MemPenjualan.Open;
  Qpenjualan_detail.Close;
  Qpenjualan_detail.Open;
end;

procedure TFlist_penjualan.frxReport_buku_harian_penjualanGetValue(
  const VarName: string; var Value: Variant);
var
  tgl,bulan1,bulan,tahun: STRING;
begin
//  tgl:=FormatDateTime('DD', Fdate_buku_harian_penjualan.DTtgl.DateTime);
 // bulan1:=FormatDateTime('MM', Fdate_buku_harian_penjualan.DTtgl.DateTime);
//  tahun:=FormatDateTime('YYYY', Fdate_buku_harian_penjualan.DTtgl.DateTime);

{  if bulan1= '01' then
  bulan:='Januari'
  else if bulan1= '02' then
  bulan:='Februari'
  else if bulan1= '03' then
  bulan:='Maret'
  else if bulan1= '04' then
  bulan:='April'
  else if bulan1= '05' then
  bulan:='Mei'
  else if bulan1= '06' then
  bulan:='Juni'
  else if bulan1= '07' then
  bulan:='Juli'
  else if bulan1= '08' then
  bulan:='Agustus'
  else if bulan1= '09' then
  bulan:='September'
  else if bulan1= '10' then
  bulan:='Oktober'
  else if bulan1= '11' then
  bulan:='November'
  else if bulan1= '12' then
  bulan:='Desember';


  if CompareText(VarName, 'parTgl') = 0 then
  begin
    Value := tgl+' '+bulan+' '+tahun ;
  end;

  if CompareText(VarName, 'parSBU') = 0 then
  Value := dm.Qperusahaan.FieldByName('nama_perusahaan').AsString;
  if CompareText(VarName, 'parKab_kot') = 0 then
  Value := dm.Qperusahaan.FieldByName('kab_kota').AsString; }
end;

procedure TFlist_penjualan.frxReport_invoiceGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'vTerbilang') = 0 then
  begin
    status_pakai_terbilang:= 1;
    Value := terbilang(Qreport_invoice.FieldByName('piutang_dagang').Asstring);
  end;
{  if CompareText(VarName, 'parSBU') = 0 then
  Value := dm.Qperusahaan.FieldByName('nama_perusahaan').AsString;
  if CompareText(VarName, 'parKab_kot') = 0 then
  Value := dm.Qperusahaan.FieldByName('kab_kota').AsString;
  if CompareText(VarName, 'parAlamat') = 0 then
  Value := dm.Qperusahaan.FieldByName('alamat').AsString;
  if CompareText(VarName, 'parTelp') = 0 then
  Value := dm.Qperusahaan.FieldByName('no_telpon').AsString;    }
end;

procedure TFlist_penjualan.frxReport_kartu_piutangBeforePrint(
  Sender: TfrxReportComponent);
begin
  if Qreport_kartu_piutang2.RecordCount>0 then
  begin
    frxReport_kartu_piutang.Pages [2].Visible:=true;
  end
  else
  begin
    frxReport_kartu_piutang.Pages [2].Visible:=false;
  end;
end;

procedure TFlist_penjualan.frxReport_kartu_piutangGetValue(
  const VarName: string; var Value: Variant);
var
bulan :string;
begin
{  if CompareText(VarName, 'parSBU') = 0 then
  Value := dm.Qperusahaan.FieldByName('nama_perusahaan').AsString;
  if CompareText(VarName, 'parKab_kot') = 0 then
  begin
   Value := UpperCase(dm.Qperusahaan.FieldByName('kab_kota').AsString);
  end;

  if copy(Fdate_kartu_piutang.DTdari.Text,0,2)='01' then
  begin
    TfrxMemoView(frxReport_kartu_piutang.FindObject('Memo32')).Text:= 'Saldo Awal';
  end
  else
  begin
    TfrxMemoView(frxReport_kartu_piutang.FindObject('Memo32')).Text:= 'Saldo Pindahan';
  end;

  if Trim(Copy(Fdate_kartu_piutang.DTdari.text,4,2))='01' then
  begin
    bulan:='Januari';
  end
  else if Trim(Copy(Fdate_kartu_piutang.DTdari.text,4,2))='02' then
  begin
    bulan:='Februari';
  end
  else if Trim(Copy(Fdate_kartu_piutang.DTdari.text,4,2))='03' then
  begin
    bulan:='Maret';
  end
  else if Trim(Copy(Fdate_kartu_piutang.DTdari.text,4,2))='04' then
  begin
    bulan:='April';
  end
  else if Trim(Copy(Fdate_kartu_piutang.DTdari.text,4,2))='05' then
  begin
    bulan:='Mei';
  end
  else if Trim(Copy(Fdate_kartu_piutang.DTdari.text,4,2))='06' then
  begin
    bulan:='Juni';
  end
  else if Trim(Copy(Fdate_kartu_piutang.DTdari.text,4,2))='07' then
  begin
    bulan:='Juli';
  end
  else if Trim(Copy(Fdate_kartu_piutang.DTdari.text,4,2))='08' then
  begin
    bulan:='Agustus';
  end
  else if Trim(Copy(Fdate_kartu_piutang.DTdari.text,4,2))='09' then
  begin
    bulan:='September';
  end
  else if Trim(Copy(Fdate_kartu_piutang.DTdari.text,4,2))='10' then
  begin
    bulan:='Oktober';
  end
  else if Trim(Copy(Fdate_kartu_piutang.DTdari.text,4,2))='11' then
  begin
    bulan:='November';
  end
  else if Trim(Copy(Fdate_kartu_piutang.DTdari.text,4,2))='12' then
  begin
    bulan:='Desember';
  end;

  if CompareText(VarName, 'vBulan') = 0 then
  Value := bulan;
  if CompareText(VarName, 'vTahun') = 0 then
  Value := Trim(Copy(Fdate_kartu_piutang.DTdari.text,7,4));
  if CompareText(VarName, 'vbulan_tahun') = 0 then
  Value := Trim(Copy(bulan,0,3))+''''+Trim(Copy(Fdate_kartu_piutang.DTdari.text,9,2));  }
end;

procedure TFlist_penjualan.frxReport_kartu_piutang_dolarGetValue(
  const VarName: string; var Value: Variant);
begin
{  if CompareText(VarName, 'parSBU') = 0 then
  Value := dm.Qperusahaan.FieldByName('nama_perusahaan').AsString;
  if CompareText(VarName, 'parKab_kot') = 0 then
  begin
   Value := UpperCase(dm.Qperusahaan.FieldByName('kab_kota').AsString);
  end;     } //10-10-2023
//  if CompareText(VarName, 'vBulan') = 0 then
//  Value := Trim(Copy(Fdate_kartu_piutang.CBbulan.text,5));
//  if CompareText(VarName, 'vTahun') = 0 then
//  Value := Fdate_kartu_piutang.CBtahun.text;
//  if CompareText(VarName, 'vbulan_tahun') = 0 then
//  Value := Trim(Copy(Fdate_kartu_piutang.CBbulan.text,5,3))+''''+Trim(Copy(Fdate_kartu_piutang.CBtahun.text,3,2));
end;

procedure TFlist_penjualan.frxReport_rekap_penjualanGetValue(
  const VarName: string; var Value: Variant);
var
  tgl,bulan1,bulan,tahun, tgl2,bulan3,bulan2,tahun2: STRING;
begin
 { tgl:=FormatDateTime('DD', Fdate_rekap_penjualan.DTdari.DateTime);
  bulan1:=FormatDateTime('MM', Fdate_rekap_penjualan.DTdari.DateTime);
  tahun:=FormatDateTime('YYYY', Fdate_rekap_penjualan.DTdari.DateTime);

  if bulan1= '01' then
  bulan:='Januari'
  else if bulan1= '02' then
  bulan:='Februari'
  else if bulan1= '03' then
  bulan:='Maret'
  else if bulan1= '04' then
  bulan:='April'
  else if bulan1= '05' then
  bulan:='Mei'
  else if bulan1= '06' then
  bulan:='Juni'
  else if bulan1= '07' then
  bulan:='Juli'
  else if bulan1= '08' then
  bulan:='Agustus'
  else if bulan1= '09' then
  bulan:='September'
  else if bulan1= '10' then
  bulan:='Oktober'
  else if bulan1= '11' then
  bulan:='November'
  else if bulan1= '12' then
  bulan:='Desember';

  tgl2:=FormatDateTime('DD', Fdate_rekap_penjualan.DTsampai.DateTime);
  bulan3:=FormatDateTime('MM', Fdate_rekap_penjualan.DTsampai.DateTime);
  tahun2:=FormatDateTime('YYYY', Fdate_rekap_penjualan.DTsampai.DateTime);

  if bulan3= '01' then
  bulan2:='Januari'
  else if bulan3= '02' then
  bulan2:='Februari'
  else if bulan3= '03' then
  bulan2:='Maret'
  else if bulan3= '04' then
  bulan2:='April'
  else if bulan3= '05' then
  bulan2:='Mei'
  else if bulan3= '06' then
  bulan2:='Juni'
  else if bulan3= '07' then
  bulan2:='Juli'
  else if bulan3= '08' then
  bulan2:='Agustus'
  else if bulan3= '09' then
  bulan2:='September'
  else if bulan3= '10' then
  bulan2:='Oktober'
  else if bulan3= '11' then
  bulan2:='November'
  else if bulan3= '12' then
  bulan2:='Desember';


  if CompareText(VarName, 'parTgl') = 0 then
  begin
    Value := tgl+' '+bulan+' '+tahun+'  S/D  '+tgl2+' '+bulan2+' '+tahun2;
  end;
  if CompareText(VarName, 'parSBU') = 0 then
  Value := dm.Qperusahaan.FieldByName('nama_perusahaan').AsString;  } //10-10-2023
end;

procedure TFlist_penjualan.frxReport_srt_jalanGetValue(const VarName: string;
  var Value: Variant);
var
  tgl,bulan1,bulan,tahun: STRING;
begin
  tgl:=FormatDateTime('DD', Qreport.FieldByName('tgl_invoice').AsDateTime);
  bulan1:=FormatDateTime('MM', Qreport.FieldByName('tgl_invoice').AsDateTime);
  tahun:=FormatDateTime('YYYY', Qreport.FieldByName('tgl_invoice').AsDateTime);

  if bulan1= '01' then
  bulan:='Januari'
  else if bulan1= '02' then
  bulan:='Februari'
  else if bulan1= '03' then
  bulan:='Maret'
  else if bulan1= '04' then
  bulan:='April'
  else if bulan1= '05' then
  bulan:='Mei'
  else if bulan1= '06' then
  bulan:='Juni'
  else if bulan1= '07' then
  bulan:='Juli'
  else if bulan1= '08' then
  bulan:='Agustus'
  else if bulan1= '09' then
  bulan:='September'
  else if bulan1= '10' then
  bulan:='Oktober'
  else if bulan1= '11' then
  bulan:='November'
  else if bulan1= '12' then
  bulan:='Desember';

  if CompareText(VarName, 'parTgl') = 0 then
  begin
    Value := tgl+' '+bulan+' '+tahun ;
  end;

 { if CompareText(VarName, 'parSBU') = 0 then
  begin
    Value := dm.Qperusahaan.FieldByName('nama_perusahaan').AsString;
  end;
  if CompareText(VarName, 'parKab_kot') = 0 then
  begin
   Value := dm.Qperusahaan.FieldByName('kab_kota').AsString;
  end;
  if CompareText(VarName, 'vTerbilang_qty') = 0 then
  begin
    status_pakai_terbilang:= 2;
    Value := '(  '+terbilang(Qreport.FieldByName('qty').Asstring)+'  )  '+ Qreport.FieldByName('satuan').Asstring;
  end;
  } //10-10-2023
end;

procedure TFlist_penjualan.Refresh;
begin
  DBGridEh1.StartLoadingStatus();
  try
    QPenjualan.Close;
    QPenjualan.Open;
    MemPenjualan.Close;
    MemPenjualan.Open;
    Qpenjualan_detail.Close;
    Qpenjualan_detail.Open;
  finally
  DBGridEh1.FinishLoadingStatus();
  end;
end;

initialization
RegisterClass(TFlist_penjualan);
end.
