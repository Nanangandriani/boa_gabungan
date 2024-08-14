unit UListSPmuat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxRibbonCustomizationForm,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh,
  Data.DB, frxClass, frxDBSet, DataDriverEh, MemTableEh, MemDS, DBAccess, Uni,
  dxBar, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, cxClasses, dxRibbon,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxSkinsdxBarPainter,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  dxSkinBasic, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxCore;

type
  TFlist_sp_muat = class(TForm)
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
    QSPMuat: TUniQuery;
    DsSPMuat: TDataSource;
    Memsp_muat: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    DsDetailSpMuat: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    Qreport: TUniQuery;
    frxReport1: TfrxReport;
    QdetailSPMuat: TUniQuery;
    dxBarLargeButton1: TdxBarLargeButton;
    Memsp_muatno_sp_muat: TStringField;
    Memsp_muattgl_sp_muat: TDateField;
    Memsp_muattgl_pengiriman: TDateField;
    Memsp_muatno_kend: TStringField;
    Memsp_muattujuan: TStringField;
    Memsp_muatket: TMemoField;
    Memsp_muatstatus: TSmallintField;
    Memsp_muatnama_pelanggan: TStringField;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    Action6: TAction;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure dxBprintClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBDeleteClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
  end;

Function Flist_sp_muat: TFlist_sp_muat;

implementation

{$R *.dfm}

uses UDatamodule, UNewSPMuat;
var
  RealFlist_sp_muat: TFlist_sp_muat;
function Flist_sp_muat: TFlist_sp_muat;
begin
  if RealFlist_sp_muat <> nil then
    Flist_sp_muat:= RealFlist_sp_muat
  else
    Application.CreateForm(TFlist_sp_muat, Result);
end;

procedure TFlist_sp_muat.ActBaruExecute(Sender: TObject);
begin
//  Finput_sp_muat.Autocode;
  Status:=0;
 // Finput_sp_muat.RzPanel1.Visible:=true;
  Finput_sp_muat.Btn_show_produk.Visible:=true;
  Finput_sp_muat.BSimpan.Visible:=true;
  Finput_sp_muat.DTtgl_sp_muat.Enabled:=true;
  Finput_sp_muat.DTtgl_pengiriman.Enabled:=true;
  Finput_sp_muat.ed_no_kendaraan.Enabled:=true;
  Finput_sp_muat.MemoKet.Enabled:=true;
 // Finput_sp_muat.DBGridnewspmuat.Enabled:=true;
 { Finput_sp_muat.Qtemp_spmuat_detail.Close;
  Finput_sp_muat.Qtemp_spmuat_detail.Open;   }
  Finput_sp_muat.Memdetail.Close;
  Finput_sp_muat.Memdetail.Open;
  Finput_sp_muat.Clear;
  Finput_sp_muat.Show;
end;


procedure TFlist_sp_muat.ActDelExecute(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='Select * from t_penjualan where no_sp_muat='+QuotedStr(DBGridEh1.Fields[0].AsString);
    Open;
  end;
  if dm.Qtemp.RecordCount=0 then
  begin
    if MessageDlg('Apakah anda yakin ingin menghapus data ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      with dm.QTemp2 do
      begin
        Close;
        Sql.Clear;
        Sql.Text:='Delete from t_sp_muat where no_sp_muat='+QuotedStr(DBGridEh1.Fields[0].AsString);
        ExecSQL;
      end;
      with dm.QTemp2 do
      begin
        Close;
        Sql.Clear;
        Sql.Text:='Delete from t_sp_muat_detail where no_sp_muat='+QuotedStr(DBGridEh1.Fields[0].AsString);
        ExecSQL;
      end;
      Refresh;
    end;
  end
  else
  begin
    MessageDlg('Data tidak dapat dihapus sudah diinput dipenjualan..!!',mtInformation,[MBOK],0);
  end;
end;

procedure TFlist_sp_muat.ActRoExecute(Sender: TObject);
begin
  Refresh;
end;

procedure TFlist_sp_muat.ActUpdateExecute(Sender: TObject);
begin
  Finput_sp_muat.Clear;
  With Memsp_muat do
  begin
    Finput_sp_muat.Ed_no_sp_muat.Text := FieldByName('no_sp_muat').AsString;
    Finput_sp_muat.DTtgl_sp_muat.Text := FieldByName('tgl_sp_muat').AsString;
    Finput_sp_muat.ed_no_kendaraan.Text := FieldByName('no_kend').AsString;
    Finput_sp_muat.DTtgl_pengiriman.Text := FieldByName('tgl_pengiriman').AsString;
    Finput_sp_muat.MemoKet.Text := FieldByName('ket').AsString;
    Finput_sp_muat.edpelanggan.Text := FieldByName('nama_pelanggan').AsString;
  end;

//  with dm.QTemp do
//  begin
//    close;
//    sql.Clear;
//    sql.Text:='Insert Into t_sp_muat_detail_temp(no_po_pelanggan,gudang,produk,qty,satuan,iddetailgdng) '+
//              'select no_po_pelanggan,gudang,produk,qty,satuan,iddetailgdng from t_sp_muat_detail '+
//              'where no_sp_muat='+QuotedStr(DBGridEh1.Fields[0].AsString);
//    Execsql;
//  end;
//
//   Finput_sp_muat.Qtemp_spmuat_detail.Close;
//   Finput_sp_muat.Qtemp_spmuat_detail.Open;
//   Finput_sp_muat.Memdetail.Close;
//   Finput_sp_muat.Memdetail.Open;

//  with Finput_sp_muat do
//  begin
//    Qtemp_spmuat_detail.Close;
//    Qtemp_spmuat_detail.Open;
//    Memdetail.Close;
//    Memdetail.Open;
//  end;
//
  QdetailSPMuat.First;
  while not QdetailSPMuat.Eof do
  begin
    with QdetailSPMuat do
    begin
      Finput_sp_muat.Memdetail.Insert;
      Finput_sp_muat.Memdetail['no_po_pelanggan']:=FieldByName('no_po_pelanggan').AsString;
      Finput_sp_muat.Memdetail['iddetailgdng']:=FieldByName('iddetailgdng').AsString;
      Finput_sp_muat.Memdetail['nm_produk']:=FieldByName('nm_produk').AsString;
      Finput_sp_muat.Memdetail['produk']:=FieldByName('produk').AsString;

      if (FieldByName('qty').AsString='') or (FieldByName('qty').AsString= 'NULL') then
      begin
        Finput_sp_muat.Memdetail['qty']:=0;
      end
      else
      begin
        Finput_sp_muat.Memdetail['qty']:=FieldByName('qty').AsString;
      end;

      Finput_sp_muat.Memdetail['satuan']:=FieldByName('satuan').AsString;
      Finput_sp_muat.Memdetail['gudang']:=FieldByName('gudang').AsString;
      Finput_sp_muat.Memdetail.Post;
    end;
    QdetailSPMuat.Next;
  end;
  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='Select * from t_penjualan where no_sp_muat='+QuotedStr(DBGridEh1.Fields[0].AsString);
    Open;
  end;
  Status := 1;
  if dm.Qtemp.RecordCount=0 then
  begin
    Finput_sp_muat.RzPanel1.Visible:=true;
    Finput_sp_muat.Btn_show_produk.Visible:=true;
    Finput_sp_muat.BSimpan.Visible:=true;
    Finput_sp_muat.DTtgl_sp_muat.Enabled:=true;
    Finput_sp_muat.DTtgl_pengiriman.Enabled:=true;
    Finput_sp_muat.ed_no_kendaraan.Enabled:=true;
    Finput_sp_muat.MemoKet.Enabled:=true;
    Finput_sp_muat.DBGridnewspmuat.Enabled:=true;
    Finput_sp_muat.Show;
  end
  else
  begin
    Finput_sp_muat.RzPanel1.Visible:=false;
    Finput_sp_muat.Btn_show_produk.Visible:=false;
    Finput_sp_muat.BSimpan.Visible:=false;
    Finput_sp_muat.DTtgl_sp_muat.Enabled:=false;
    Finput_sp_muat.DTtgl_pengiriman.Enabled:=false;
    Finput_sp_muat.ed_no_kendaraan.Enabled:=false;
    Finput_sp_muat.MemoKet.Enabled:=false;
    Finput_sp_muat.DBGridnewspmuat.Enabled:=false;
    Finput_sp_muat.Show;
  end;
end;

Procedure TFlist_sp_muat.DBGridEh1DblClick(Sender: TObject);
begin
 // dxBUpdateClick(sender);
end;

procedure TFlist_sp_muat.dxBarLargeButton1Click(Sender: TObject);
begin
  with Dm.Qtemp do
  begin
    close;
    Sql.Clear;
    Sql.Text:='update t_sp_muat set status=:parstatus '+
              'where no_sp_muat=:parno_sp_muat';
    ParamByName('parno_sp_muat').Value := DBGridEh1.Fields[0].AsString;
    ParambyName('parstatus').Value := 'Selesai';
    ExecSql;
  end;
  MessageDlg('No SP Muat '+ DBGridEh1.Fields[0].AsString+ ' Selesai Dimuat..!!',mtInformation,[MBOK],0);
  Refresh;
end;

procedure TFlist_sp_muat.dxBDeleteClick(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='Select * from t_penjualan where no_sp_muat='+QuotedStr(DBGridEh1.Fields[0].AsString);
    Open;
  end;
  if dm.Qtemp.RecordCount=0 then
  begin
    if MessageDlg('Apakah anda yakin ingin menghapus data ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      with dm.QTemp2 do
      begin
        Close;
        Sql.Clear;
        Sql.Text:='Delete from t_sp_muat where no_sp_muat='+QuotedStr(DBGridEh1.Fields[0].AsString);
        ExecSQL;
      end;
      with dm.QTemp2 do
      begin
        Close;
        Sql.Clear;
        Sql.Text:='Delete from t_sp_muat_detail where no_sp_muat='+QuotedStr(DBGridEh1.Fields[0].AsString);
        ExecSQL;
      end;
      Refresh;
    end;
  end
  else
  begin
    MessageDlg('Data tidak dapat dihapus sudah diinput dipenjualan..!!',mtInformation,[MBOK],0);
  end;
end;

procedure TFlist_sp_muat.dxBprintClick(Sender: TObject);
begin
  if DBGridEh1.Fields[0].AsString='' then
  begin
    MessageDlg('Tidak ada surat perintah muat yang dipilih..!!',mtInformation,[mbRetry],0);
  end
  else
  begin
    with Qreport do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select concat(''PT'','' '',c.nama_pelanggan) pelanggan,SUBSTR(REPLACE (a.no_sp_muat, ''MLB/'', ''''), 5) no_sp_muat, a.*,g.nm_produk produk,b.*, '+
                'array_to_string(ARRAY(SELECT concat(d.nm_produk,'' = '',sum(d.qty),'' '',d.satuan,'' '') || '' '' '+
                'FROM (select r.*,f.nm_produk from t_sp_muat_detail r left join t_produk f on r.produk=f.kd_produk ) d where d.no_sp_muat=a.no_sp_muat GROUP BY d.nm_produk,d.satuan), '', '') produk_banyak, '+
                'array_to_string(ARRAY(SELECT gudang|| '' '' '+
                'FROM t_sp_muat_detail where no_sp_muat=a.no_sp_muat group by gudang), '', '') gudang, '+
                'array_to_string(ARRAY(SELECT d.nm_produk || '' '' '+
                'FROM (select r.*,f.nm_produk from t_sp_muat_detail r left join t_produk f on r.produk=f.kd_produk ) d where d.no_sp_muat=a.no_sp_muat GROUP BY d.nm_produk), '', '') deskripsi '+
                'from t_sp_muat as a '+
                'left join t_sp_muat_detail as b on a.no_sp_muat = b.no_sp_muat '+
                'left join t_pelanggan as c on a.pelanggan = c.kode_pelanggan '+
                'left join t_produk g on b.produk=g.kd_produk '+
                'where a.no_sp_muat = '+QuotedStr(DBGridEh1.Fields[0].AsString) +' limit 1';
      Open;
    end;
    FrxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report2\sp_muat.Fr3');
    frxReport1.ShowReport();
  end;
end;

procedure TFlist_sp_muat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QSPMuat.Close;
  Memsp_muat.Close;
  QdetailSPMuat.Close;
  Action:=caFree;
end;

procedure TFlist_sp_muat.FormCreate(Sender: TObject);
begin
  RealFlist_sp_muat:=Self;
end;

procedure TFlist_sp_muat.FormDestroy(Sender: TObject);
begin
  RealFlist_sp_muat:=nil;
end;

procedure TFlist_sp_muat.FormShow(Sender: TObject);
begin
  QSPMuat.Close;
  QSPMuat.Open;
  Memsp_muat.Close;
  Memsp_muat.Open;
  QdetailSPMuat.Close;
  QdetailSPMuat.Open;
end;

procedure TFlist_sp_muat.frxReport1GetValue(const VarName: string;
  var Value: Variant);
  var
  tgl,bulan1,bulan,tahun: STRING;
begin
  tgl:=FormatDateTime('DD', Qreport.FieldByName('tgl_sp_muat').AsDateTime);
  bulan1:=FormatDateTime('MM', Qreport.FieldByName('tgl_sp_muat').AsDateTime);
  tahun:=FormatDateTime('YYYY', Qreport.FieldByName('tgl_sp_muat').AsDateTime);

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
end;

procedure Tflist_sp_muat.Refresh;
begin
  DBGridEh1.StartLoadingStatus();
  try
    QSPMuat.Close;
    QSPMuat.Open;
    Memsp_muat.Close;
    Memsp_muat.Open;
    QdetailSPMuat.Close;
    QdetailSPMuat.Open;
  finally
  DBGridEh1.FinishLoadingStatus();
  end;
end;

initialization
RegisterClass(TFlist_sp_muat);

end.
