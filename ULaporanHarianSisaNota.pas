unit ULaporanHarianSisaNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, cxSpinEdit, cxLabel, cxDropDownEdit, cxProgressBar, cxButtonEdit,
  cxCalendar, cxRadioGroup, cxCheckGroup, frxCross, Data.DB, MemDS, DBAccess,
  Uni, frxClass, frxDBSet, dxBarExtItems, cxBarEditItem, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, Vcl.StdCtrls, RzLabel,
  MemTableDataEh, MemTableEh, DataDriverEh;

type
  TFLaporanHarianSisaNota = class(TForm)
    RzLabel1: TRzLabel;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid: TDBGridEh;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar3: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeNew: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxBarCombo1: TdxBarCombo;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    ActSearch: TdxBarLargeButton;
    cxBarEditItem3: TcxBarEditItem;
    dxBarCombo2: TdxBarCombo;
    cbBulan: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    cxBarEditItem6: TcxBarEditItem;
    edWilayah: TcxBarEditItem;
    cxBarEditItem7: TcxBarEditItem;
    edArea: TcxBarEditItem;
    cxBarEditItem9: TcxBarEditItem;
    cxBarEditItem10: TcxBarEditItem;
    edKaresidenan: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    cxBarEditItem8: TcxBarEditItem;
    dtTanggal1: TdxBarDateCombo;
    dtTanggal2: TdxBarDateCombo;
    dxBarLargeButton2: TdxBarLargeButton;
    cxBarEditItem11: TcxBarEditItem;
    cbKaresidenan: TcxBarEditItem;
    cbKabupaten: TcxBarEditItem;
    cbKecamatan: TcxBarEditItem;
    cbKelompok: TcxBarEditItem;
    cbBulan1: TdxBarCombo;
    edTahun1: TdxBarSpinEdit;
    cbBulan2: TdxBarCombo;
    edTahun2: TdxBarSpinEdit;
    cxBarEditItem16: TcxBarEditItem;
    cxBarEditItem17: TcxBarEditItem;
    cxBarEditItem18: TcxBarEditItem;
    dxBarLargeButton3: TdxBarLargeButton;
    cxBarEditItem19: TcxBarEditItem;
    cxBarEditItem20: TcxBarEditItem;
    cxBarEditItem22: TcxBarEditItem;
    cxBarEditItem23: TcxBarEditItem;
    cxBarEditItem24: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    cbJenisUsaha: TdxBarCombo;
    dxBarLargeButton5: TdxBarLargeButton;
    cbVolume: TdxBarCombo;
    cbPaperSize: TdxBarCombo;
    dxBarLargeButton6: TdxBarLargeButton;
    DsRekapPenjualanperCustomer: TDataSource;
    Report: TfrxReport;
    frxDBDatasetLapHarianSisaNota: TfrxDBDataset;
    QLaporanHarianSisaNota: TUniQuery;
    Qreport: TUniQuery;
    dtTanggal: TdxBarDateCombo;
    MemTableEh1: TMemTableEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbKaresidenanChange(Sender: TObject);
    procedure cbKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbKabupatenChange(Sender: TObject);
    procedure cbKecamatanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    strKaresidenanID,strKabupatenID,strKecamatanID :String;
  end;

  function FLaporanHarianSisaNota: TFLaporanHarianSisaNota;

//var
//  FLaporanHarianSisaNota: TFLaporanHarianSisaNota;

implementation

{$R *.dfm}

uses UMasterData, UMy_Function, UHomeLogin;

var
  laporanhariansisanota : TFLaporanHarianSisaNota;

function FLaporanHarianSisaNota: TFLaporanHarianSisaNota;
begin
  if laporanhariansisanota <> nil then
    FLaporanHarianSisaNota:= laporanhariansisanota
  else
    Application.CreateForm(TFLaporanHarianSisaNota, Result);
end;

procedure TFLaporanHarianSisaNota.cbKabupatenChange(Sender: TObject);
begin
  if cbKabupaten.EditValue='' then
  begin
    cbKecamatan.EditValue:='';
    strKecamatanID:='';
  end;
end;

procedure TFLaporanHarianSisaNota.cbKabupatenPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if cbKaresidenan.EditValue='' then
  begin
    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    FMasterData.Caption:='Master Data Kabupaten';
    FMasterData.vcall:='laporanhariansisanotakab';
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(strKaresidenanID)+'');
    FMasterData.ShowModal;
  end;
end;

procedure TFLaporanHarianSisaNota.cbKaresidenanChange(Sender: TObject);
begin
  if cbKaresidenan.EditValue='' then
  begin
    cbKabupaten.EditValue:='';
    strKabupatenID:='';
    cbKecamatan.EditValue:='';
    strKecamatanID:='';
    strKaresidenanID:='';
  end;
end;

procedure TFLaporanHarianSisaNota.cbKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='laporanhariansisanotakares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal
end;

procedure TFLaporanHarianSisaNota.cbKecamatanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if cbKabupaten.EditValue='' then
  begin
    MessageDlg('Kabupaten wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    FMasterData.Caption:='Master Data Kecamatan';
    FMasterData.vcall:='laporanhariansisanotakec';
    FMasterData.update_grid('code','name','description','t_region_subdistrict','WHERE	deleted_at IS NULL and code_regency='+QuotedStr(strKabupatenID)+' ');
    FMasterData.ShowModal;
  end;
end;

procedure TFLaporanHarianSisaNota.dxBarLargeButton5Click(Sender: TObject);
var strReportName: String;
begin
  if cbKecamatan.EditValue='' then
  begin
    MessageDlg('Kecamatan wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    with Qreport do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM get_lhsn('+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal.Date))+',NULL'+
                ','+QuotedStr(cbKaresidenan.EditValue)+','+QuotedStr(cbKabupaten.EditValue)+','+QuotedStr(cbKecamatan.EditValue)+')';
      Open;
    end;
    if Qreport.RecordCount=0 then
    begin
      MessageDlg('Tidak ada data..!!',mtInformation,[mbRetry],0);
    end else begin

      strReportName:='rpt_laporanhariansisanota';

      cLocation := ExtractFilePath(Application.ExeName);
      Report.LoadFromFile(cLocation +'report/'+strReportName+''+ '.fr3');
      Report.ShowReport();
    end;
  end;
end;

procedure TFLaporanHarianSisaNota.dxBarLargeButton6Click(Sender: TObject);
var previous: String;
begin
  if cbKecamatan.EditValue='' then
  begin
    MessageDlg('Kecamatan wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    with QLaporanHarianSisaNota do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM get_lhsn('+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal.Date))+',NULL'+
                ','+QuotedStr(cbKaresidenan.EditValue)+','+QuotedStr(cbKabupaten.EditValue)+','+QuotedStr(cbKecamatan.EditValue)+')';
      Open;
    end;
    previous:='';
//    MemTableEh1.EmptyTable;
    MemTableEh1.EmptyTable;
    if QLaporanHarianSisaNota.RecordCount>0 then
    begin
      QLaporanHarianSisaNota.First;

      while not QLaporanHarianSisaNota.Eof do
      begin
        MemTableEh1.Insert;
        if previous=QLaporanHarianSisaNota.FieldValues['code_cust'] then
        begin
          MemTableEh1['customer_name']:='';
        end else begin
          MemTableEh1['customer_name']:=QLaporanHarianSisaNota.FieldValues['customer_name'];
          previous:=QLaporanHarianSisaNota.FieldValues['code_cust'];
        end;
        MemTableEh1['code_cust']:=QLaporanHarianSisaNota.FieldValues['code_cust'];
        MemTableEh1['amount_nota_awal']:=QLaporanHarianSisaNota.FieldValues['amount_nota_awal'];
        MemTableEh1['trans_date']:=QLaporanHarianSisaNota.FieldValues['trans_date'];
        MemTableEh1['trans_no']:=QLaporanHarianSisaNota.FieldValues['trans_no'];
        MemTableEh1['amount_penjualan']:=QLaporanHarianSisaNota.FieldValues['amount_penjualan'];
        MemTableEh1['tgl_nota_penjualan']:=QLaporanHarianSisaNota.FieldValues['tgl_nota_penjualan'];
        MemTableEh1['no_nota_penjualan']:=QLaporanHarianSisaNota.FieldValues['no_nota_penjualan'];
        MemTableEh1['amount_bayar']:=QLaporanHarianSisaNota.FieldValues['amount_bayar'];
        MemTableEh1['tgl_nota_saldo_nota']:=QLaporanHarianSisaNota.FieldValues['tgl_nota_saldo_nota'];
        MemTableEh1['no_nota_saldo_nota']:=QLaporanHarianSisaNota.FieldValues['no_nota_saldo_nota'];
        MemTableEh1['amount_saldo_nota']:=QLaporanHarianSisaNota.FieldValues['amount_saldo_nota'];

        if (QLaporanHarianSisaNota.FieldValues['amount_returns']=0) AND (QLaporanHarianSisaNota.FieldValues['amount_bayar']>0) then
        begin //pelunasan
          MemTableEh1['amount_bayar2']:= FormatFloat('#,#0.00;(#,#0.00);#,#0',QLaporanHarianSisaNota.FieldValues['amount_bayar']);
          MemTableEh1['trans_date_bayar2']:=FormatDateTime('dd/mm/yyyy', QLaporanHarianSisaNota.FieldValues['trans_date_bayar']);
        end else if (QLaporanHarianSisaNota.FieldValues['amount_returns']>0) AND (QLaporanHarianSisaNota.FieldValues['amount_bayar']=0) then
        begin  //retur
          MemTableEh1['amount_bayar2']:=FormatFloat('#,#0.00;(#,#0.00);#,#0',QLaporanHarianSisaNota.FieldValues['amount_returns']);
          MemTableEh1['trans_date_bayar2']:=FormatDateTime('dd/mm/yyyy', QLaporanHarianSisaNota.FieldValues['trans_date_returns']);
        end else if (QLaporanHarianSisaNota.FieldValues['amount_jurnal_memorial']>0) AND (QLaporanHarianSisaNota.FieldValues['amount_bayar']=0) AND (QLaporanHarianSisaNota.FieldValues['amount_returns']=0) then
        begin   //jurnal memorial
          MemTableEh1['amount_bayar2']:=FormatFloat('#,#0.00;(#,#0.00);#,#0',QLaporanHarianSisaNota.FieldValues['amount_jurnal_memorial']) ;
          MemTableEh1['trans_date_bayar2']:=FormatDateTime('dd/mm/yyyy', QLaporanHarianSisaNota.FieldValues['trans_date_jurnal_memorial']);
        end else if (QLaporanHarianSisaNota.FieldValues['amount_returns']>0) AND (QLaporanHarianSisaNota.FieldValues['amount_bayar']>0) AND (QLaporanHarianSisaNota.FieldValues['amount_jurnal_memorial']=0) then
        begin  //pelunasan+retur
          MemTableEh1['amount_bayar2']:=FormatFloat('#,#0.00;(#,#0.00);#,#0',QLaporanHarianSisaNota.FieldValues['amount_bayar']) +sLineBreak+ FormatFloat('#,#0.00;(#,#0.00);#,#0',QLaporanHarianSisaNota.FieldValues['amount_returns']);
          MemTableEh1['trans_date_bayar2']:=FormatDateTime('dd/mm/yyyy', QLaporanHarianSisaNota.FieldValues['trans_date_returns']) +sLineBreak+ FormatDateTime('dd/mm/yyyy', QLaporanHarianSisaNota.FieldValues['trans_date_returns']);
        end else if (QLaporanHarianSisaNota.FieldValues['amount_returns']=0) AND (QLaporanHarianSisaNota.FieldValues['amount_bayar']>0) AND (QLaporanHarianSisaNota.FieldValues['amount_jurnal_memorial']>0) then
        begin  //pelunasan+jurnal
          MemTableEh1['amount_bayar2']:=FormatFloat('#,#0.00;(#,#0.00);#,#0',QLaporanHarianSisaNota.FieldValues['amount_bayar']) +sLineBreak+ FormatFloat('#,#0.00;(#,#0.00);#,#0',QLaporanHarianSisaNota.FieldValues['amount_jurnal_memorial']);
          MemTableEh1['trans_date_bayar2']:=FormatDateTime('dd/mm/yyyy', QLaporanHarianSisaNota.FieldValues['trans_date_bayar']) +sLineBreak+ FormatDateTime('dd/mm/yyyy', QLaporanHarianSisaNota.FieldValues['trans_date_jurnal_memorial']);
        end else if (QLaporanHarianSisaNota.FieldValues['amount_returns']>0) AND (QLaporanHarianSisaNota.FieldValues['amount_bayar']=0) AND (QLaporanHarianSisaNota.FieldValues['amount_jurnal_memorial']>0) then
        begin  //retur+jurnal
          MemTableEh1['amount_bayar2']:=FormatFloat('#,#0.00;(#,#0.00);#,#0',QLaporanHarianSisaNota.FieldValues['amount_returns']) +sLineBreak+ FormatFloat('#,#0.00;(#,#0.00);#,#0',QLaporanHarianSisaNota.FieldValues['amount_jurnal_memorial']);
          MemTableEh1['trans_date_bayar2']:=FormatDateTime('dd/mm/yyyy', QLaporanHarianSisaNota.FieldValues['trans_date_returns']) +sLineBreak+ FormatDateTime('dd/mm/yyyy', QLaporanHarianSisaNota.FieldValues['trans_date_jurnal_memorial']);
        end  else if (QLaporanHarianSisaNota.FieldValues['amount_returns']>0) AND (QLaporanHarianSisaNota.FieldValues['amount_bayar']>0) AND (QLaporanHarianSisaNota.FieldValues['amount_jurnal_memorial']>0) then
        begin  //pelunasan+retur+jurnal
          MemTableEh1['amount_bayar2']:=FormatFloat('#,#0.00;(#,#0.00);#,#0',QLaporanHarianSisaNota.FieldValues['amount_bayar']) +sLineBreak+ FormatFloat('#,#0.00;(#,#0.00);#,#0',QLaporanHarianSisaNota.FieldValues['amount_returns']) +sLineBreak+ FormatFloat('#,#0.00;(#,#0.00);#,#0',QLaporanHarianSisaNota.FieldValues['amount_jurnal_memorial']);
          MemTableEh1['trans_date_bayar2']:=FormatDateTime('dd/mm/yyyy', QLaporanHarianSisaNota.FieldValues['trans_date_returns']) +sLineBreak+ FormatDateTime('dd/mm/yyyy', QLaporanHarianSisaNota.FieldValues['trans_date_returns'])+sLineBreak+ FormatDateTime('dd/mm/yyyy', QLaporanHarianSisaNota.FieldValues['trans_date_jurnal_memorial']);
        end else begin
          MemTableEh1['amount_bayar2']:='';
          MemTableEh1['trans_date_bayar2']:='';
        end;

        MemTableEh1.Post;

        QLaporanHarianSisaNota.Next;
      end;
    end;
  end;
end;

procedure TFLaporanHarianSisaNota.FormCreate(Sender: TObject);
begin
  laporanhariansisanota:=Self;
end;

procedure TFLaporanHarianSisaNota.FormDestroy(Sender: TObject);
begin
  laporanhariansisanota:=nil;
end;

procedure TFLaporanHarianSisaNota.FormShow(Sender: TObject);
begin
  strKaresidenanID:='';
  strKabupatenID:='';
  strKecamatanID:='';
  cbKaresidenan.EditValue:='';
  cbKabupaten.EditValue:='';
  cbKecamatan.EditValue:='';
  dtTanggal.Date:=NOW;
  Qreport.Close;
  QLaporanHarianSisaNota.Close;
  MemTableEh1.Active:=True;
end;

procedure TFLaporanHarianSisaNota.ReportGetValue(const VarName: string;
  var Value: Variant);
var
  tgl1,bulan1,tahun1,tgl2,bulan2,tahun2,strKaresidenan: STRING;
begin
  tgl1:=FormatDateTime('DD', dtTanggal.Date);
  bulan1:=convbulanInd(StrToInt(FormatDateTime('M', dtTanggal.Date)));
  tahun1:=FormatDateTime('YYYY', dtTanggal.Date);


  if CompareText(VarName, 'SBU') = 0 then
  Value := 'PT. '+FHomeLogin.vKodePRSH;
  if CompareText(VarName, 'TP') = 0 then
  Value := cbKaresidenan.EditValue;
  if CompareText(VarName, 'KABUPATEN') = 0 then
  Value := cbKabupaten.EditValue ;
  if CompareText(VarName, 'KECAMATAN') = 0 then
  Value := cbKecamatan.EditValue ;
  if CompareText(VarName, 'TANGGAL') = 0 then
  Value := UpperCase(tgl1+' '+bulan1+' '+tahun1);
end;

initialization
  RegisterClass(TFLaporanHarianSisaNota);

end.
