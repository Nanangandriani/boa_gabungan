unit UBHPenjualan;

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
  DynVarsEh, cxCalendar, cxButtonEdit, cxTextEdit, dxBar, cxBarEditItem,
  Data.DB, MemDS, DBAccess, Uni, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon, dxBarExtItems, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzBtnEdt, frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF,
  frxExportXLSX, frxExportXLS, ShellAPI;

type
  TFBHPenjualan = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
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
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    btExportExcel: TdxBarLargeButton;
    btExportPDF: TdxBarLargeButton;
    QBHPenjualan: TUniQuery;
    DsBHPenjualan: TDataSource;
    dtAwal: TcxBarEditItem;
    dtAkhir: TcxBarEditItem;
    edKaresidenan: TcxBarEditItem;
    btPreview: TdxBarLargeButton;
    btSearch: TdxBarLargeButton;
    edKabupaten: TcxBarEditItem;
    QCetak: TUniQuery;
    frxDBDBHPenjualan: TfrxDBDataset;
    Report: TfrxReport;
    QCetakdetailDebit: TUniQuery;
    frxDBDBHPenj_Debit: TfrxDBDataset;
    dsCetak: TDataSource;
    dsCetakdetailDebit: TDataSource;
    dxBarLargeButton1: TdxBarLargeButton;
    QCetakRincianBarang: TUniQuery;
    frxDBDRincianBarang: TfrxDBDataset;
    dsCetakRincianBarang: TDataSource;
    QCetakdetailDebittrans_no: TStringField;
    QCetakdetailDebitaccount_code: TStringField;
    QCetakdetailDebitaccount_name: TMemoField;
    QCetakdetailDebitstatus_dk: TStringField;
    QCetakdetailDebitdb: TFloatField;
    QCetaktrans_no: TMemoField;
    QCetakno_inv_tax: TMemoField;
    QCetaktrans_date: TDateField;
    QCetakcode_cust: TMemoField;
    QCetakname_cust: TMemoField;
    QCetakdetailKredit: TUniQuery;
    frxDBDBHPenj_Kredit: TfrxDBDataset;
    dsCetakdetailKredit: TDataSource;
    QCetakdetailKredittrans_no: TStringField;
    QCetakdetailKreditaccount_code: TStringField;
    QCetakdetailKreditaccount_name: TMemoField;
    QCetakdetailKreditstatus_dk: TStringField;
    QCetakdetailKreditkd: TFloatField;
    cbSBU: TdxBarCombo;
    QCetak2: TUniQuery;
    QCetakRincianBarang2: TUniQuery;
    Report2: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    QCetak2trans_no: TStringField;
    QCetak2trans_date: TDateField;
    QCetak2code_cust: TStringField;
    QCetak2name_cust: TStringField;
    QCetak2code_region: TStringField;
    QCetak2name_region: TStringField;
    QCetak2tot_piutang: TFloatField;
    QCetak2tot_pejualan: TFloatField;
    QCetak2tot_ppn: TFloatField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid: TDBGridEh;
    DBGridEh1: TDBGridEh;
    QDetailBarang: TUniQuery;
    DSDetailBarang: TDataSource;
    dxBarLargeButton2: TdxBarLargeButton;
    frxPDFExport1: TfrxPDFExport;
    dxBarLargeButton3: TdxBarLargeButton;
    frxXLSXExport1: TfrxXLSXExport;
    frxXLSExport1: TfrxXLSExport;
    frxDBDBHExport: TfrxDBDataset;
    QCetakExport: TUniQuery;
    ExportBH: TfrxReport;
    frxDBDBHPenjualanExport: TfrxDBDataset;
    DSBHPenjualanExport: TDataSource;
    QBHPenjualanExport: TUniQuery;
    MemoField1: TMemoField;
    MemoField2: TMemoField;
    DateField1: TDateField;
    MemoField3: TMemoField;
    MemoField4: TMemoField;
    frxDBDataset3: TfrxDBDataset;
    DSBHPenjualanExportBarang: TDataSource;
    QBHPenjualanExportBarang: TUniQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    StringField4: TStringField;
    QCetakRincianBarangtrans_no: TStringField;
    QCetakRincianBarangcode_item: TStringField;
    QCetakRincianBarangname_item: TStringField;
    QCetakRincianBarangamount: TFloatField;
    QCetakRincianBarangname_unit: TMemoField;
    edTP: TcxBarEditItem;
    frxDBDBHPenjualanExportDebit: TfrxDBDataset;
    DSBHPenjualanExportDebit: TDataSource;
    QBHPenjualanExportDebit: TUniQuery;
    QBHPenjualanExportDebittrans_no: TStringField;
    QBHPenjualanExportDebitaccount_code: TStringField;
    QBHPenjualanExportDebitaccount_name: TMemoField;
    QBHPenjualanExportDebitstatus_dk: TStringField;
    QBHPenjualanExportDebitdb: TFloatField;
    frxDBBHQBHPenjualanExportDebitPiutang: TfrxDBDataset;
    DSBHQBHPenjualanExportDebitPiutang: TDataSource;
    QBHPenjualanExportDebitPiutang: TUniQuery;
    QBHPenjualanExportDebitPiutangtrans_no: TStringField;
    QBHPenjualanExportDebitPiutangakun_piutang: TStringField;
    QBHPenjualanExportDebitPiutangakun_piutang_name: TMemoField;
    QBHPenjualanExportDebitPiutangamount_piutang: TFloatField;
    frxDBDBHPenjualanExportKreditPenjualan: TfrxDBDataset;
    DSBHPenjualanExportKreditPenjualan: TDataSource;
    QBHPenjualanExportKreditPenjualan: TUniQuery;
    QBHPenjualanExportKredit: TUniQuery;
    DSQBHPenjualanExportKredit: TDataSource;
    frxDBDBHPenjualanExportKredit: TfrxDBDataset;
    QBHPenjualanExportKreditPenjualantrans_no: TStringField;
    QBHPenjualanExportKreditPenjualanakun_penjualan: TStringField;
    QBHPenjualanExportKreditPenjualanakun_penjualan_name: TMemoField;
    QBHPenjualanExportKreditPenjualankd: TFloatField;
    QBHPenjualanExportKredittrans_no: TStringField;
    QBHPenjualanExportKreditaccount_code: TStringField;
    QBHPenjualanExportKreditaccount_name: TMemoField;
    QBHPenjualanExportKreditstatus_dk: TStringField;
    QBHPenjualanExportKreditkd: TFloatField;
    frxDBDBHPenjualanExportTotal: TfrxDBDataset;
    QBHPenjualanExportTotal: TUniQuery;
    QBHPenjualanExportakun_piutang: TStringField;
    QBHPenjualanExportakun_piutang_name: TMemoField;
    QBHPenjualanExportamount_piutang: TFloatField;
    QBHPenjualanExportakun_penjualan: TStringField;
    QBHPenjualanExportakun_penjualan_name: TMemoField;
    QBHPenjualanExportamount_penjualan: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure QBHPenjualanakn_debet_lainGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QBHPenjualannm_debit_lainGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btPreviewClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure edTPPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_kares, vkd_kab, vkd_tp : String ;
    procedure ExportToExcel;
  end;

function FBHPenjualan: TFBHPenjualan;
//var
//  FBHPenjualan: TFBHPenjualan;

implementation

{$R *.dfm}

uses UMasterWilayah, UMasterData, UMy_Function, UHomeLogin, UDataModule;
var
  realfbhp : TFBHPenjualan;
// implementasi function
function FBHPenjualan: TFBHPenjualan;
begin
  if realfbhp <> nil then
    FBHPenjualan:= realfbhp
  else
    Application.CreateForm(TFBHPenjualan, Result);
end;

procedure TFBHPenjualan.btPreviewClick(Sender: TObject);
var strKab,strTP,strKaresidenan: String;
begin
//  if edKaresidenan.EditValue='' then
//  begin
//    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
//  end else begin
    strKaresidenan:='';
    strKab:='';
    strTP:='';
    if edKabupaten.EditValue<>'' then
    strKab:=' AND a.code_kabupaten='+QuotedStr(vkd_kab)+' ';

    if edKaresidenan.EditValue<>'' then strKaresidenan:='AND a.code_karesidenan='+QuotedStr(vkd_kares);

    if edTp.EditValue<>'' then strTP:='AND a.code_tp='+QuotedStr(vkd_tp);


    with QCetak do
    begin
      close;
      sql.Clear;
//       sql.add(' SELECT a.trans_no, a.trans_date, a.code_cust, CASE WHEN d.customer_name_pkp '+
//               ' IS NULL THEN a.name_cust ELSE d.customer_name_pkp END AS name_cust, d.code_region, '+
//               ' d.name_region, grand_tot as tot_piutang, sub_total as tot_pejualan, ppn_value as tot_ppn '+
//               ' FROM t_selling a '+
//               ' LEFT JOIN ( SELECT t_customer.customer_code, t_customer.customer_name_pkp, '+
//               ' t_customer.code_region, t_customer.name_region FROM t_customer) d ON a.code_cust::text = d.customer_code::text  '+
//               ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
//               ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
//               ' ON "left"(code_region, 4)=b.code_kab '+
//               ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
//               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' ');

//       if edKaresidenan.EditValue<>'' then
//       begin
//        sql.add(' AND code_karesidenan='+QuotedStr(vkd_kares)+' ');
//       end;
//       if edKabupaten.EditValue<>'' then
//       begin
//        sql.add(' AND code_kab='+QuotedStr(vkd_kab)+' ');
//       end;
//       sql.add(' ORDER BY trans_date, trans_no');
//       open;
      Sql.Text:= 'SELECT trans_no,no_inv_tax,trans_date,code_cust,a.customer_name_pkp name_cust from get_selling(FALSE) a '+
//            'LEFT JOIN vcustomer b ON b.customer_code=a.code_cust '+
            'WHERE a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
            ''+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' AND a.deleted_at IS NULL '+strTP+strKaresidenan+' '+
            ''+strKab+'order by a.trans_date asc,trans_no asc';

      Open;
    end;


    if QCetak.RecordCount=0 then
    begin
      showmessage('Tidak ada data yang bisa dicetak !');
      exit;
    end;

    if QCetak.RecordCount<>0 then
    begin
    //       with QCetakdetail do
    //       begin
    //           close;
    //           sql.Clear;
    //           sql.add(' SELECT a.*,code_karesidenan,code_kab,name_kab from "public"."vbhpenjualan" a  '+
    //                   ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
    //                   ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
    //                   ' ON "left"(code_region, 4)=b.code_kab '+
    //                   ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
    //                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' ');
    //             if edKaresidenan.EditValue<>'' then
    //             begin
    //              sql.add(' AND code_karesidenan='+QuotedStr(vkd_kares)+' ');
    //             end;
    //             if edKabupaten.EditValue<>'' then
    //             begin
    //              sql.add(' AND code_kab='+QuotedStr(vkd_kab)+' ');
    //             end;
    //           sql.add(' ORDER BY trans_no, code_item');
    //           open;
      with QCetakRincianBarang do
      begin
        close;
        sql.Text:='select trans_no,code_item,name_item,amount,Upper(name_unit) name_unit from t_selling_det order by name_item ';
        open;
      end;

      with QCetakdetailDebit do
      begin
        close;
        sql.Text:='SELECT trans_no, account_code, account_name, status_dk, db '+
                  'FROM "public"."VTrans_Journal" '+
                  'WHERE status_dk = ''D'' '+
//                     AND db > 0
                  'AND NOT (account_name LIKE  ''%Uang Muka%'' AND db = 0 ) ORDER BY account_name ASC;';
        open;
      end;

      with QCetakdetailKredit do
      begin
        close;
        sql.Text:='SELECT trans_no,account_code,account_name,status_dk,kd '+
                  'FROM "public"."VTrans_Journal"  where status_dk=''K'' ORDER BY account_name ASC; ';
        open;
      end;

      cLocation := ExtractFilePath(Application.ExeName);

       //ShowMessage(cLocation);
//       Report.LoadFromFile(cLocation +'report/rpt_bh_penjualan'+ '.fr3');
      Report.LoadFromFile(cLocation +'report/rpt_BukuHarianPenjualan2'+ '.fr3');
      SetMemo(Report,'kodeprsh',FHomeLogin.vKodePRSH);
//       SetMemo(Report,'periode','Periode '+formatdatetime('dd mmmm yyyy',dtAwal.EditValue)+' s/d '+formatdatetime('dd mmmm yyyy',dtAkhir.EditValue));
//        if edKaresidenan.EditValue='' then
//        begin
//          SetMemo(Report,'wilayah','Wilayah : Semua Wilayah');
//        end;
//        if edKaresidenan.EditValue<>'' then
//        begin
//          SetMemo(Report,'wilayah','Wilayah :'+edKaresidenan.EditValue);
//        end;
//        if edKabupaten.EditValue<>'' then
//        begin
//          SetMemo(Report,'wilayah','Wilayah : '+edKaresidenan.EditValue+'-'+edKabupaten.EditValue);
//        end;
    //  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')= 'dev' then
    //  begin
    //   Report.DesignReport();
    //  end else
    //  begin
      Report.ShowReport();
    //  end;

//    if Report.Preview <> nil then
//      Report.PreviewOptions.Zoom := 1.0;
//    end;
    end;
//  end;

end;

procedure TFBHPenjualan.btSearchClick(Sender: TObject);
var strKaresidenan,strTP,strKabupaten :String;
begin
  strKaresidenan:='';
  strKabupaten:='';
  strTP:='';
//  if edKaresidenan.EditValue='' then
//  begin
//    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
//  end else
//  begin
    if edKaresidenan.EditValue<>'' then
    begin
      strKaresidenan:=' AND a.code_karesidenan='+QuotedStr(vkd_kares)+' ';
    end;
    if edKabupaten.EditValue<>'' then
    begin
      strKabupaten:=' AND a.code_kabupaten='+QuotedStr(vkd_kab)+' ';
    end;
    if edTP.EditValue<>'' then
    begin
      strTP:=' AND a.code_tp='+QuotedStr(vkd_tp)+' ';
    end;

    DBGrid.StartLoadingStatus();
    try
     with QBHPenjualan do
     begin
         close;
         sql.Clear;
         SQL.Text:='SELECT a.*,a.karesidenan,a.kabupaten,a.kecamatan from get_selling(False) a '+
//                   'LEFT JOIN vcustomer b on b.customer_code=a.code_cust '+
                   'WHERE (a.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
                   ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+') AND a.deleted_at IS NULL '+strTP+strKaresidenan+strKabupaten+' Order by a.trans_date,a.trans_no ASC' ;
         open;
     end;

     QDetailBarang.Close;
     QDetailBarang.Open;

    finally
    DBGrid.FinishLoadingStatus();
    end;
//  end;
end;

procedure TFBHPenjualan.dxBarLargeButton1Click(Sender: TObject);
begin
  with QCetak2 do
  begin
     close;
     sql.Clear;
     sql.add(' SELECT a.trans_no, a.trans_date, a.code_cust, CASE WHEN d.customer_name_pkp '+
             ' IS NULL THEN a.name_cust ELSE d.customer_name_pkp END AS name_cust, d.code_region, '+
             ' d.name_region, grand_tot as tot_piutang, sub_total as tot_pejualan, ppn_value as tot_ppn '+
             ' FROM t_selling a '+
             ' LEFT JOIN ( SELECT t_customer.customer_code, t_customer.customer_name_pkp, '+
             ' t_customer.code_region, t_customer.name_region FROM t_customer) d ON a.code_cust::text = d.customer_code::text  '+
             ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
             ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
             ' ON "left"(code_region, 4)=b.code_kab '+
             ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
             ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' ');
       if edKaresidenan.EditValue<>'' then
       begin
        sql.add(' AND code_karesidenan='+QuotedStr(vkd_kares)+' ');
       end;
       if edKabupaten.EditValue<>'' then
       begin
        sql.add(' AND code_kab='+QuotedStr(vkd_kab)+' ');
       end;
     sql.add(' ORDER BY trans_date, trans_no');
     open;
  end;

  if QCetak2.RecordCount=0 then
  begin
    showmessage('Tidak ada data yang bisa dicetak !');
    exit;
  end;

  if QCetak2.RecordCount<>0 then
  begin
   with QCetakRincianBarang2 do
   begin
       close;
       sql.Clear;
       sql.add(' SELECT DISTINCT a.trans_no,a.trans_date,a.code_cust,a.name_cust,a.amount,a.code_item,a.name_item,a.code_unit,a.jum_ak_deb,code_karesidenan,code_kab,name_kab from "public"."vbhpenjualan" a  '+
               ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
               ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
               ' ON "left"(code_region, 4)=b.code_kab '+
               ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' '+
               ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' ');
         if edKaresidenan.EditValue<>'' then
         begin
          sql.add(' AND code_karesidenan='+QuotedStr(vkd_kares)+' ');
         end;
         if edKabupaten.EditValue<>'' then
         begin
          sql.add(' AND code_kab='+QuotedStr(vkd_kab)+' ');
         end;
       sql.add(' ORDER BY a.trans_no, a.code_item');
       open;
   end;

   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   Report2.LoadFromFile(cLocation +'report/rpt_rincian_penjualan_perbarang'+ '.fr3');
   SetMemo(Report2,'nama_pt',FHomeLogin.vNamaPRSH);
   SetMemo(Report2,'periode','Dari '+formatdatetime('dd mmm yyyy',dtAwal.EditValue)+' s/d '+formatdatetime('dd mmm yyyy',dtAkhir.EditValue));
    if edKaresidenan.EditValue='' then
    begin
      SetMemo(Report2,'wilayah','Wilayah : Semua Wilayah');
    end;
    if edKaresidenan.EditValue<>'' then
    begin
      SetMemo(Report2,'wilayah','Wilayah :'+edKaresidenan.EditValue);
    end;
    if edKabupaten.EditValue<>'' then
    begin
      SetMemo(Report2,'wilayah','Wilayah : '+edKaresidenan.EditValue+'-'+edKabupaten.EditValue);
    end;
  //  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')= 'dev' then
  //  begin
  //   Report.DesignReport();
  //  end else
  //  begin
    Report2.ShowReport();
  //  end;

  end;
end;

procedure TFBHPenjualan.dxBarLargeButton2Click(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edKaresidenan.EditValue := '';
  edKabupaten.EditValue := '';
  edTP.EditValue:='';
  vkd_kares:='';
  vkd_kab:='';
  vkd_tp:='';
end;

procedure TFBHPenjualan.ExportToExcel;
var
  Exporter: TfrxCustomExportFilter;
  SaveDialog: TSaveDialog;
  SavePath, FormName, FileExt: string;
begin
  SaveDialog := TSaveDialog.Create(nil);
  Exporter := nil;
  try
    // Ambil nama form
    FormName := Self.Name;
    if Pos('TF', FormName) = 1 then
      FormName := Copy(FormName, 3, Length(FormName))
    else if Pos('T', FormName) = 1 then
      FormName := Copy(FormName, 2, Length(FormName));
    FormName := StringReplace(FormName, ' ', '', [rfReplaceAll]);
    // Setup Save Dialog
    SaveDialog.Title := 'Simpan Export Excel';
    SaveDialog.Filter := 'Excel 2007+ (*.xlsx)|*.xlsx|Excel 97-2003 (*.xls)|*.xls';
    SaveDialog.FilterIndex := 1;
    SaveDialog.FileName := FormName + '_' + FormatDateTime('yyyymmdd_hhnnss', Now);
    SavePath := ExtractFilePath(Application.ExeName) + 'Export\';
    if not DirectoryExists(SavePath) then
      ForceDirectories(SavePath);
    SaveDialog.InitialDir := SavePath;
    SaveDialog.Options := [ofOverwritePrompt, ofEnableSizing, ofPathMustExist];
    if SaveDialog.Execute then
    begin
      // Ambil extension
      FileExt := LowerCase(ExtractFileExt(SaveDialog.FileName));
      // Debug: tampilkan extension yang terdeteksi
      // ShowMessage('Extension: ' + FileExt); // Uncomment untuk debug
      // Buat exporter sesuai FilterIndex (lebih reliable)
      if SaveDialog.FilterIndex = 1 then
      begin
        // Excel 2007+ (.xlsx)
        Exporter := TfrxXLSXExport.Create(nil);
        TfrxXLSXExport(Exporter).Wysiwyg := True;
        TfrxXLSXExport(Exporter).EmptyLines := True;
        TfrxXLSXExport(Exporter).SuppressPageHeadersFooters := False;
        TfrxXLSXExport(Exporter).ChunkSize := 1;
        // Pastikan extension .xlsx
        if FileExt <> '.xlsx' then
          Exporter.FileName := ChangeFileExt(SaveDialog.FileName, '.xlsx')
        else
          Exporter.FileName := SaveDialog.FileName;
      end
      else if SaveDialog.FilterIndex = 2 then
      begin
        // Excel 97-2003 (.xls)
        Exporter := TfrxXLSExport.Create(nil);
        TfrxXLSExport(Exporter).Wysiwyg := True;
        TfrxXLSExport(Exporter).EmptyLines := True;
        TfrxXLSExport(Exporter).SuppressPageHeadersFooters := False;
        // Pastikan extension .xls
        if FileExt <> '.xls' then
          Exporter.FileName := ChangeFileExt(SaveDialog.FileName, '.xls')
        else
          Exporter.FileName := SaveDialog.FileName;
      end
      else
      begin
        ShowMessage('Format file tidak didukung!');
        Exit;
      end;
      try
        // Export
        Exporter.ShowDialog := False;
        Report.Export(Exporter);
        // Konfirmasi buka file
        if MessageDlg('Export berhasil!' + #13#10 +
                      'File: ' + Exporter.FileName + #13#10#13#10 +
                      'Apakah ingin membuka file sekarang?',
                      mtInformation, [mbYes, mbNo], 0) = mrYes then
        begin
          ShellExecute(0, 'open', PChar(Exporter.FileName), nil, nil, SW_SHOW);
        end;
      except
        on E: Exception do
        begin
          ShowMessage('Error saat export: ' + E.Message);
        end;
      end;
    end;
  finally
    if Assigned(Exporter) then
      Exporter.Free;
    SaveDialog.Free;
  end;
end;

procedure TFBHPenjualan.dxBarLargeButton3Click(Sender: TObject);
var strKab,strTP,strKaresidenan,
  tgl1,bulan1,tahun1,tgl2,bulan2,tahun2: STRING;
begin
  tgl1:=FormatDateTime('DD', dtAwal.EditValue);
  bulan1:=convbulanInd(StrToInt(FormatDateTime('M', dtAwal.EditValue)));
  tahun1:=FormatDateTime('YYYY', dtAwal.EditValue);

  tgl2:=FormatDateTime('DD', dtAkhir.EditValue);
  bulan2:=convbulanInd(StrToInt(FormatDateTime('M', dtAkhir.EditValue)));
  tahun2:=FormatDateTime('YYYY', dtAkhir.EditValue);
//  if edKaresidenan.EditValue='' then
//  begin
//    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
//  end else begin
    strKaresidenan:='';
    strKab:='';
    strTP:='';
    if edKabupaten.EditValue<>'' then
    strKab:=' AND a.code_kabupaten='+QuotedStr(vkd_kab)+' ';

    if edKaresidenan.EditValue<>'' then strKaresidenan:='AND a.code_karesidenan='+QuotedStr(vkd_kares);

    if edTp.EditValue<>'' then strTP:='AND a.code_tp='+QuotedStr(vkd_tp);

    with QBHPenjualanExport do
    begin
      close;
      sql.Text:='SELECT a.trans_no,a.no_inv_tax,a.trans_date,a.code_cust,a.customer_name_pkp name_cust '+
                 ',b.account_code akun_piutang, '+
                  'b.account_name akun_piutang_name,b.db amount_piutang '+
                  ',c.account_code akun_penjualan, '+
                  'c.account_name akun_penjualan_name,c.kd amount_penjualan '+
                   'from get_selling(FALSE) a '+
                  'left join public."VTrans_Journal" b ON b.trans_no=a.trans_no AND b.account_code=''1104.01'' '+
                  'left join public."VTrans_Journal" c on c.trans_no=a.trans_no AND c.account_code=''4101.01''  '+
                 'WHERE a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
            ''+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' AND a.deleted_at IS NULL '+strTP+strKaresidenan+strKab+' '+
            'order by a.trans_date asc,trans_no asc';
      Open;
    end;

//    with QBHPenjualanExport do
//    begin
//      close;
//      sql.Clear;
//      Sql.Text:= 'SELECT trans_no,no_inv_tax,trans_date,code_cust,a.customer_name_pkp name_cust from get_selling(FALSE) a '+
//            'WHERE a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
//            ''+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' AND a.karesidenan='+QuotedStr(edKaresidenan.EditValue)+' '+
//            ''+strKab+'order by a.trans_date,trans_no asc';

//      Open;
//    end;


    if QBHPenjualanExport.RecordCount=0 then
    begin
      showmessage('Tidak ada data yang bisa dicetak !');
      exit;
    end;

    if QBHPenjualanExport.RecordCount<>0 then
    begin
      with QBHPenjualanExportTotal do
      begin
        close;
        sql.Clear;
        sql.Text:='WITH detail_trans AS ( '+
                  'SELECT '+
                  'a.trans_no, '+
                  'SUM(CASE WHEN j.account_code = ''1104.01'' THEN j.db ELSE 0 END) AS piutang, '+
                  'SUM(CASE WHEN j.status_dk = ''D'' AND j.db > 0 AND j.account_code <> ''1104.01'' '+
                  'AND NOT (j.account_name LIKE ''%Uang Muka%'' AND j.db = 0) THEN j.db ELSE 0 END) AS d_lain, '+
                  'SUM(CASE WHEN j.account_code = ''4101.01'' THEN j.kd ELSE 0 END) AS penjualan, '+
                  'SUM(CASE WHEN j.status_dk = ''K'' AND j.kd > 0 AND j.account_code <> ''4101.01'' THEN j.kd ELSE 0 END) AS k_lain '+
                  'FROM get_selling(FALSE) a '+
                  'LEFT JOIN public."VTrans_Journal" j ON a.trans_no = j.trans_no  '+
                  'WHERE a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
                  ''+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' '+
                  'AND a.deleted_at IS NULL '+strTP+strKaresidenan+' '+
                  'GROUP BY a.trans_no, a.trans_date '+
                  'ORDER BY a.trans_date ASC, a.trans_no ASC '+
                  ') '+
                  'SELECT SUM(piutang) AS total_piutang, '+
                  'SUM(d_lain) AS total_debit_lain, '+
                  'SUM(penjualan) AS total_penjualan, '+
                  'SUM(k_lain) AS total_kredit_lain '+
                  'FROM detail_trans;';
        open;
      end;

      QBHPenjualanExportBarang.Close;
      QBHPenjualanExportBarang.Open;

//      QBHPenjualanExportDebitPiutang.Close;
//      QBHPenjualanExportDebitPiutang.Open;

      QBHPenjualanExportDebit.Close;
      QBHPenjualanExportDebit.Open;

      QBHPenjualanExportKredit.Close;
      QBHPenjualanExportKredit.Open;

//      QBHPenjualanExportKreditPenjualan.Close;
//      QBHPenjualanExportKreditPenjualan.Open;



//      with QBHPenjualanExportBarang do
//      begin
//        close;
//        sql.Text:='select trans_no,code_item,name_item,amount,name_unit from t_selling_det';
//        open;
//      end;

//      with QCetakdetailDebit do
//      begin
//        close;
//        sql.Text:='SELECT trans_no,account_code,account_name,status_dk,db FROM "public"."VTrans_Journal"  where status_dk=''D'' ';
//        open;
//      end;
//
//      with QCetakdetailKredit do
//      begin
//        close;
//        sql.Text:='SELECT trans_no,account_code,account_name,status_dk,kd FROM "public"."VTrans_Journal"  where status_dk=''K'' ';
//        open;
//      end;

      cLocation := ExtractFilePath(Application.ExeName);


      Report.LoadFromFile(cLocation +'report/rpt_BukuHarianPenjualanExport'+ '.fr3');
      SetMemo(Report,'kodeprsh',FHomeLogin.vKodePRSH);
      SetMemo(Report,'periode',FHomeLogin.vKodePRSH);

      SetMemo(Report,'kabupaten',FHomeLogin.vKodePRSH);



      if (edKaresidenan.EditValue<>'') AND (edTP.editValue='') then
      begin
    //    if CompareText(VarName, 'KARESIDENAN') = 0 then
    //    Value := 'Karesidenan: '+edKaresidenan.EditValue;
        SetMemo(Report,'karesidenan','Karesidenan: '+edKaresidenan.EditValue);
      end else if (edKaresidenan.EditValue='') AND (edTP.editValue<>'') then
      begin
    //    if CompareText(VarName, 'KARESIDENAN') = 0 then
    //    Value := 'TP: '+edTp.EditValue;
        SetMemo(Report,'karesidenan','TP: '+edTp.EditValue);
      end else if (edKaresidenan.EditValue='') AND (edTP.editValue='') then
      begin
    //    if CompareText(VarName, 'KARESIDENAN') = 0 then
    //    Value := 'TP/Karesidenan: Semua Wilayah';
        SetMemo(Report,'karesidenan','TP/Karesidenan: Semua Wilayah');
      end;

      if edKabupaten.EditValue<>'' then
      begin
    //    if CompareText(VarName, 'KOTA_KAB') = 0 then
    //    Value := 'Kota/Kodya : '+edKabupaten.EditValue;
        SetMemo(Report,'kabupaten','Kota/Kodya : '+edKabupaten.EditValue);
      end else begin
    //    if CompareText(VarName, 'KOTA_KAB') = 0 then
    //    Value := 'Kota/Kodya : ';
        SetMemo(Report,'kabupaten','Kota/Kodya :');
      end;

      if dtAwal.EditValue<>dtAkhir.EditValue then
      begin
    //    if CompareText(VarName, 'PERIODE') = 0 then
    //    Value := UpperCase('Periode : '+tgl1+' '+bulan1+' '+tahun1+' S/D '+tgl2+' '+bulan2+' '+tahun2);
        SetMemo(Report,'periode',UpperCase('Periode : '+tgl1+' '+bulan1+' '+tahun1+' S/D '+tgl2+' '+bulan2+' '+tahun2));
      end else begin
    //    if CompareText(VarName, 'PERIODE') = 0 then
    //    Value := UpperCase('Periode : '+tgl1+' '+bulan1+' '+tahun1);
         SetMemo(Report,'periode',UpperCase('Periode : '+tgl1+' '+bulan1+' '+tahun1));
      end;

      Report.PrepareReport(True);
      // Baru export
      ExportToExcel;

    end;
//  end;
end;

procedure TFBHPenjualan.edKabupatenPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='bhpenjualan_kab';
  if (edKaresidenan.EditValue<>'') AND (edTP.EditValue='') then
  begin
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(vkd_kares)+'');
    FMasterData.ShowModal;
  end else if (edKaresidenan.EditValue='') AND (edTP.EditValue<>'') then begin
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_tp='+QuotedStr(vkd_tp)+'');
    FMasterData.ShowModal;
  end;
end;

procedure TFBHPenjualan.edKaresidenanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='bhpenjualan_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFBHPenjualan.edTPPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='bhpenjualan_tp';
  FMasterData.update_grid('code','name','description','t_region_tp','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFBHPenjualan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QBHPenjualan.Close;
  QBHPenjualanExport.Close;
  QBHPenjualanExportBarang.Close;
  QBHPenjualanExportDebit.Close;
  QBHPenjualanExportKredit.Close;
  QCetakRincianBarang.Close;
  QCetakdetailDebit.Close;
  QCetakdetailKredit.Close;
end;

procedure TFBHPenjualan.FormCreate(Sender: TObject);
begin
  realfbhp:=self;
end;

procedure TFBHPenjualan.FormDestroy(Sender: TObject);
begin
  realfbhp:=nil;
end;

procedure TFBHPenjualan.FormShow(Sender: TObject);
begin
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  edKaresidenan.EditValue := '';
  edTP.EditValue:='';
  edKabupaten.EditValue := '';
  vkd_kares:='';
  vkd_kab:='';
  vkd_tp:='';

  FillSBUBarCombo(cbSBU);
end;

procedure TFBHPenjualan.QBHPenjualanakn_debet_lainGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
//  Text:=copy(QBHPenjualanakn_debet_lain.asstring,100);
end;

procedure TFBHPenjualan.QBHPenjualannm_debit_lainGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
//  Text:=copy(QBHPenjualannm_debit_lain.asstring,100);
end;

procedure TFBHPenjualan.ReportGetValue(const VarName: string;
  var Value: Variant);
var
  tgl1,bulan1,tahun1,tgl2,bulan2,tahun2,strKaresidenan: STRING;
begin
  tgl1:=FormatDateTime('DD', dtAwal.EditValue);
  bulan1:=convbulanInd(StrToInt(FormatDateTime('M', dtAwal.EditValue)));
  tahun1:=FormatDateTime('YYYY', dtAwal.EditValue);

  tgl2:=FormatDateTime('DD', dtAkhir.EditValue);
  bulan2:=convbulanInd(StrToInt(FormatDateTime('M', dtAkhir.EditValue)));
  tahun2:=FormatDateTime('YYYY', dtAkhir.EditValue);

  if (edKaresidenan.EditValue<>'') AND (edTP.editValue='') then
  begin
    if CompareText(VarName, 'KARESIDENAN') = 0 then
    Value := 'Karesidenan: '+edKaresidenan.EditValue;
  end else if (edKaresidenan.EditValue='') AND (edTP.editValue<>'') then
  begin
    if CompareText(VarName, 'KARESIDENAN') = 0 then
    Value := 'TP: '+edTp.EditValue;
  end else if (edKaresidenan.EditValue='') AND (edTP.editValue='') then
  begin
    if CompareText(VarName, 'KARESIDENAN') = 0 then
    Value := 'TP/Karesidenan: Semua Wilayah';
  end;

  if edKabupaten.EditValue<>'' then
  begin
    if CompareText(VarName, 'KOTA_KAB') = 0 then
    Value := 'Kota/Kodya : '+edKabupaten.EditValue;
  end else begin
    if CompareText(VarName, 'KOTA_KAB') = 0 then
    Value := 'Kota/Kodya : ';
  end;

  if dtAwal.EditValue<>dtAkhir.EditValue then
  begin
    if CompareText(VarName, 'PERIODE') = 0 then
    Value := UpperCase('Periode : '+tgl1+' '+bulan1+' '+tahun1+' S/D '+tgl2+' '+bulan2+' '+tahun2);
  end else begin
    if CompareText(VarName, 'PERIODE') = 0 then
    Value := UpperCase('Periode : '+tgl1+' '+bulan1+' '+tahun1);
  end;
end;

initialization
  RegisterClass(TFBHPenjualan);

end.
