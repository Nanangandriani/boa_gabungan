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
  RzEdit, RzBtnEdt, frxClass, frxDBSet;

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
    QCetakRincianBarangtrans_no: TStringField;
    QCetakRincianBarangcode_item: TStringField;
    QCetakRincianBarangname_item: TStringField;
    QCetakRincianBarangamount: TFloatField;
    QCetakRincianBarangname_unit: TStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_kares, vkd_kab : String ;
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
var strKab: String;
begin
  if edKaresidenan.EditValue='' then
  begin
    MessageDlg('TP wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    strKab:='';
    if edKabupaten.EditValue<>'' then
    strKab:=' AND b.kabupaten='+QuotedStr(edKabupaten.EditValue)+' ';

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
            'LEFT JOIN vcustomer b ON b.customer_code=a.code_cust '+
            'WHERE a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
            ''+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+' AND b.karesidenan='+QuotedStr(edKaresidenan.EditValue)+' '+
            ''+strKab+'order by a.trans_date,trans_no asc';

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
        sql.Text:='select trans_no,code_item,name_item,amount,name_unit from t_selling_det';
        open;
      end;

      with QCetakdetailDebit do
      begin
        close;
        sql.Text:='SELECT trans_no,account_code,account_name,status_dk,db FROM "public"."VTrans_Journal"  where status_dk=''D'' ';
        open;
      end;

      with QCetakdetailKredit do
      begin
        close;
        sql.Text:='SELECT trans_no,account_code,account_name,status_dk,kd FROM "public"."VTrans_Journal"  where status_dk=''K'' ';
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
  end;

end;

procedure TFBHPenjualan.btSearchClick(Sender: TObject);
var strKaresidenan,strKabupaten :String;
begin
  strKaresidenan:='';
  strKabupaten:='';
  if edKaresidenan.EditValue<>'' then
  begin
    strKaresidenan:=' AND karesidenan='+QuotedStr(edKaresidenan.EditValue)+' ';
  end;
  if edKabupaten.EditValue<>'' then
  begin
    strKabupaten:=' AND kabupaten='+QuotedStr(edKabupaten.EditValue)+' ';
  end;


  DBGrid.StartLoadingStatus();
  try
   with QBHPenjualan do
   begin
       close;
       sql.Clear;
       SQL.Text:='SELECT a.*,b.karesidenan,b.kabupaten,b.kecamatan from get_selling(False) a '+
                 'LEFT JOIN vcustomer b on b.customer_code=a.code_cust '+
                 'WHERE (trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
                 ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+') '+strKaresidenan+strKabupaten+' Order by a.trans_date,a.trans_no ASC' ;
       open;
   end;

   QDetailBarang.Close;
   QDetailBarang.Open;

  finally
  DBGrid.FinishLoadingStatus();
  end;
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
  vkd_kares:='';
  vkd_kab:='';
end;

procedure TFBHPenjualan.edKabupatenPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='bhpenjualan_kab';
  FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(vkd_kares)+'');
  FMasterData.ShowModal;
end;

procedure TFBHPenjualan.edKaresidenanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='bhpenjualan_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
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
  edKabupaten.EditValue := '';
  vkd_kares:='';
  vkd_kab:='';

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


  if CompareText(VarName, 'KARESIDENAN') = 0 then
  Value := 'TP : '+edKaresidenan.EditValue;

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
