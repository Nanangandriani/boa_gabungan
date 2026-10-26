unit UListKasKecil;

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
  DynVarsEh, Data.DB, MemDS, DBAccess, Uni, dxBar, cxClasses, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, frxClass, frxDBSet, RzButton,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel;

type
  TFListKasKecil = class(TForm)
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
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
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
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    QKasKecil: TUniQuery;
    QKasKecilvoucher_no: TStringField;
    QKasKeciltrans_date: TDateField;
    QKasKecilactors_code: TStringField;
    QKasKecilactors_name: TStringField;
    QKasKecilamount: TFloatField;
    QKasKecildescription: TStringField;
    DsKasKecil: TDataSource;
    UniQuery1: TUniQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QRKasKecil: TUniQuery;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Cari: TRzBitBtn;
    QKasKecildeleted_at: TDateTimeField;
    dxBarLargeButton4: TdxBarLargeButton;
    QSelisih_kas_harmoni: TUniQuery;
    frxDBSelisih_KasKecil: TfrxDBDataset;
    QSelisih_kas_harmoniemployee_nik: TStringField;
    QSelisih_kas_harmonistart_date: TDateField;
    QSelisih_kas_harmoniend_date: TDateField;
    QSelisih_kas_harmonijum_android: TFloatField;
    QSelisih_kas_harmonikas_kecil: TFloatField;
    QSelisih_kas_harmonipotongan: TFloatField;
    QSelisih_kas_harmoniketerangan: TMemoField;
    QSelisih_kas_harmoniemployee_name: TStringField;
    dxBarLargeButton5: TdxBarLargeButton;
    QSelisih_realisasi_kasbon: TUniQuery;
    frxDBSelisih_realisasi_kasbon: TfrxDBDataset;
    QSelisih_realisasi_kasbonvoucher_bon: TStringField;
    QSelisih_realisasi_kasbonjumlah_bon: TFloatField;
    QSelisih_realisasi_kasbonjumlah_kas: TFloatField;
    QSelisih_realisasi_kasbonkepada: TStringField;
    QSelisih_realisasi_kasbontanggal: TDateField;
    QSelisih_realisasi_kasbonremark: TStringField;
    QSelisih_realisasi_kasbonamount: TFloatField;
    QSelisih_realisasi_kasbonactors_name: TStringField;
    QSelisih_realisasi_kasboncreated_at: TDateTimeField;
    QSelisih_realisasi_kasbonactors_code: TStringField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure ActPrintExecute(Sender: TObject);
    procedure CariClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridAdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
      AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure DBGridSortMarkingChanged(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListKasKecil: TFListKasKecil;

implementation

{$R *.dfm}

uses UDataKasKecil, UDataModule, UHomeLogin, UMy_Function, UKoreksi;

procedure TFListKasKecil.ActBaruExecute(Sender: TObject);
begin
  FDataKasKecil.Clear;
  FDataKasKecil.Status:=0;
  FDataKasKecil.edNoTrans.Enabled:=true;
  FDataKasKecil.isCancel:=0;
  FDataKasKecil.BCorrection.Visible:=False;
  FDataKasKecil.ShowModal;
end;

procedure TFListKasKecil.ActDelExecute(Sender: TObject);
begin
  if CheckJurnalPosting(QKasKecil.FieldByName('voucher_no').AsString)>0 then
  begin
    MessageDlg('Transaksi sudah approve jurnal tidak bisa melakukan hapus..!!',mtInformation,[mbRetry],0);
    exit;
  end;

  with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:=' SELECT * from t_correction_trans WHERE is_delete =true and '+
              ' no_transaksi='+QuotedStr(QKasKecil.FieldByName('voucher_no').AsString)+' '+
              ' and status=0 and deleted_at is null ';
    open;
  end;

  if dm.Qtemp2.RecordCount>0 then
  begin
    MessageDlg('Nota ada pengajuan koreksi atau pengajuan hapus..!!',mtInformation,[mbRetry],0);
  end else if CheckJurnalPosting(QKasKecil.FieldByName('voucher_no').AsString)>0 then
  begin
    MessageDlg('Nota sudah approve jurnal tidak bisa melakukan pembatalan..!!',mtInformation,[mbRetry],0);
  end else begin
    if MessageDlg('Apakah Anda Yakin Ingin Membatalkan Transaksi ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      FKoreksi.vcall:=SelectRow('select Upper(submenu) menu from t_menu_sub '+
                      'where link='+QuotedStr('FListKasKecil'));
      FKoreksi.Status:=0;
      FKoreksi.AksiTipe:='DELETE';
      FKoreksi.vnotransaksi:=QKasKecil.FieldByName('voucher_no').AsString;
      FKoreksi.ShowModal;
    end;
  end;
end;

procedure TFListKasKecil.ActPrintExecute(Sender: TObject);
begin
  if QKasKecil.RecordCount=0 then
  begin
    ShowMessage('Tidak Ditemukan Data !!!');
    Exit;
  end;
    with QRKasKecil do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM '+
                ' (SELECT a.* ,b.code_account,b.name_account,b."position",b.paid_amount, '+
                ' b.description,b.code_account_header,b.code_group_cost,b.name_group_cost '+
                ' FROM t_petty_cash a INNER JOIN t_petty_cash_det b on a.voucher_no=b.voucher_no )a '+
                'where a.position=''D'' and a.voucher_no='+QuotedStr(DBGrid.Fields[0].AsString)+' ';
      open;
    end;
    cLocation := ExtractFilePath(Application.ExeName);
    frxReport1.LoadFromFile(cLocation +'report/Bukti_Kas_Kecil'+'.fr3');
    SetMemo(frxReport1,'nama_pt','PT. ' +FHomeLogin.vKodePRSH);
    SetMemo(frxReport1,'kota_tanggal',FHomeLogin.vKotaPRSH+', '+formatdatetime('dd mmmm yyyy',NOW()));
    //SetMemo(frxReport1,'memo_terbilang',UraikanAngka(floattostr(QRKasKecil.FieldByName('paid_amount').AsFloat)));
    SetMemo(frxReport1,'memo_terbilang1',UraikanAngka(FormatFloat('0.##',(QRKasKecil.FieldByName('paid_amount').AsFloat))));
    frxReport1.ShowReport();
end;

procedure TFListKasKecil.ActROExecute(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QKasKecil do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_petty_cash"   '+
                 //' where deleted_at is null '+
                 ' order by trans_date asc ';
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListKasKecil.ActUpdateExecute(Sender: TObject);
begin
   FDataKasKecil.Clear;
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_petty_cash"  a '+
                 ' WHERE "voucher_no"='+QuotedSTr(QKasKecil.FieldByName('voucher_no').AsString)+' '+
                 ' AND deleted_at is null order by created_at Desc ';
       open;
   end;
  if not QKasKecil.FieldByName('deleted_at').IsNull  then
  begin
    ShowMessage('Data Tidak Dapat Diproses Karena Sudah Dihapus!!!');
    exit;
  end;

  with FDataKasKecil do
  begin
    IntStatusKoreksi:=Dm.Qtemp.FieldValues['status_correction'];

    if (Dm.Qtemp.FindField('deleted_at') <> nil) and (not Dm.Qtemp.FieldByName('deleted_at').IsNull) then
    begin
      isCancel := 1;
    end else begin
      isCancel := 0;
    end;
    // baca status koreksi

    if Dm.Qtemp.FieldByName('is_no_replacement').AsBoolean=True then chkNomorPengganti.Checked:=True
      else chkNomorPengganti.Checked:=False;
  end;



  if Dm.Qtemp.RecordCount=0 then
  begin
    ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
    exit;
  end;
  if Dm.Qtemp.RecordCount<>0 then
  begin
  with FDataKasKecil do
  begin
    //Master
    edNoTrans.Text:=Dm.Qtemp.FieldByName('voucher_no').AsString;
    dtTrans.date:=Dm.Qtemp.FieldByName('trans_date').AsDateTime;
    edKodeKepada.Text:=Dm.Qtemp.FieldByName('actors_code').AsString;
    edNamaKepada.Text:=Dm.Qtemp.FieldByName('actors_name').AsString;
    edKodeSumberKas.Text:=Dm.Qtemp.FieldByName('source_code').AsString;
    edNamaSumberKas.Text:=Dm.Qtemp.FieldByName('source_name').AsString;
    MemKeterangan.Text:=Dm.Qtemp.FieldByName('description').AsString;
    stat_bon:=Dm.Qtemp.FieldByName('stat_receipt').Value;
      {if stat_bon=1 then
      begin
        edNomorKasBon.Text:=Dm.Qtemp.FieldByName('voucher_no_receipt').AsString;
        edJumlah.Value:=Dm.Qtemp.FieldByName('amount_receipt').Value;
        gbDataBON.Visible:=True;
        BtnAmbil_Data.Visible:=false;
        GbHutang.Visible:=false;
      end;
      if stat_bon=0 then
      begin
        edNomorKasBon.Clear;
        edJumlah.Value:=0.00;
        gbDataBON.Visible:=False;
        BtnAmbil_Data.Visible:=false;
        GbHutang.Visible:=false;
      end;
      if stat_bon=2 then
      begin
        BtnAmbil_Data.Visible:=true;
        gbDataBON.Visible:=false;
        GbHutang.Visible:=true;
      end;}
    FDataKasKecil.RefreshForm;
    order_no:=Dm.Qtemp.FieldByName('order_no').AsString;
    strtgl:=Dm.Qtemp.FieldByName('trans_day').AsString;
    strbulan:=Dm.Qtemp.FieldByName('trans_month').AsString;
    strtahun:=Dm.Qtemp.FieldByName('trans_year').AsString;

    //detailakun
    with Dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * from ('+
              ' SELECT * from "public"."t_petty_cash_det"'+
              ' WHERE "voucher_no"='+QuotedStr(QKasKecil.FieldByName('voucher_no').AsString)+' ) a '+
              ' Order By position asc');
      open;
    end;

    MemDetailAkun.EmptyTable;
    Dm.Qtemp1.First;
    while not Dm.Qtemp1.Eof do
    begin
        FDataKasKecil.MemDetailAkun.Insert;
        FDataKasKecil.MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('code_account').AsString;
        FDataKasKecil.MemDetailAkun['nm_akun']:=Dm.Qtemp1.fieldbyname('name_account').AsString;
        if Dm.Qtemp1.fieldbyname('position').AsString='D' then
        begin
          FDataKasKecil.MemDetailAkun['kredit']:=0;
          FDataKasKecil.MemDetailAkun['debit']:=Dm.Qtemp1.fieldbyname('paid_amount').Value;
        end;
        if Dm.Qtemp1.fieldbyname('position').AsString='K' then
        begin
          FDataKasKecil.MemDetailAkun['kredit']:=Dm.Qtemp1.fieldbyname('paid_amount').Value;
          FDataKasKecil.MemDetailAkun['debit']:=0;
        end;
        FDataKasKecil.MemDetailAkun['keterangan']:=Dm.Qtemp1.fieldbyname('description').AsString;
        FDataKasKecil.MemDetailAkun['kd_header_akun']:=Dm.Qtemp1.fieldbyname('code_account_header').AsString;
        FDataKasKecil.MemDetailAkun['kd_group_biaya']:=Dm.Qtemp1.fieldbyname('code_group_cost').AsString;
        FDataKasKecil.MemDetailAkun['nm_group_biaya']:=Dm.Qtemp1.fieldbyname('name_group_cost').AsString;
        FDataKasKecil.MemDetailAkun.post;
    Dm.Qtemp1.Next;
    end;

    //detail rincian harmoni
    with Dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * from ('+
              ' SELECT * from "public"."t_petty_cash_harmoni"'+
              ' WHERE "voucher_no"='+QuotedStr(QKasKecil.FieldByName('voucher_no').AsString)+' ) a');
      open;
    end;

    if Dm.Qtemp1.RecordCount<>0 then
    begin
      MemRincian.EmptyTable;
      Dm.Qtemp1.First;
      while not Dm.Qtemp1.Eof do
      begin
        with FDataKasKecil do
        begin
          MemRincian.insert;
          MemRincian['component_id']:=Dm.Qtemp1.fieldbyname('component_id').Value;
          MemRincian['cost']:=Dm.Qtemp1.fieldbyname('cost').Value;
          MemRincian['component']:=Dm.Qtemp1.fieldbyname('component').Value;
          MemRincian['id']:=Dm.Qtemp1.fieldbyname('id_harmoni').Value;
          MemRincian.Post;
        end;
      Dm.Qtemp1.Next;
      end;
      edtravel_id.Text:=Dm.Qtemp1.fieldbyname('official_travel_id').Value;
      edno_doc.Text:=Dm.Qtemp1.fieldbyname('document_number').Value;
      dtawal.Date:= Dm.Qtemp1.fieldbyname('start_date').Value;
      dtakhir.Date:= Dm.Qtemp1.fieldbyname('end_date').Value;
      edJumlah.Value:=DBGridAkun.Columns[2].Footer.SumValue;
      edNomorKasBon.Text:=SelectRow(' SELECT voucher_no_receipt from t_petty_cash_receipt_history '+
                                    ' where voucher_no_realization='+QuotedStr(edNoTrans.Text)+' ');
    end;

  end;
  end;
  FDataKasKecil.edNoTrans.Enabled:=false;
  FDataKasKecil.Status := 1;
  FDataKasKecil.Show;
end;

procedure TFListKasKecil.CariClick(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QKasKecil do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_petty_cash"   '+
                 //' where deleted_at is null and '+
                 ' where trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.DateTime))+' '+
                 ' and '+ QuotedStr(formatdatetime('yyyy-mm-dd',DTP2.DateTime))+' '+
                 ' order by trans_date asc ';
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListKasKecil.DBGridAdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
  AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
  var Params: TColCellParamsEh; var Processed: Boolean);
var
  DS: TDataSet;
  F: TField;
begin
  if (Column = nil) or (Column.Field = nil) then Exit;

  DS := Column.Field.DataSet;

  if (DS = nil) or (not DS.Active) or DS.IsEmpty then Exit;

  F := DS.FindField('deleted_at');
  if F = nil then Exit;
  if not F.IsNull then
    Params.Font.Color := clRed;

end;

procedure TFListKasKecil.DBGridSortMarkingChanged(Sender: TObject);
var
  I: Integer;
  FieldSorting: string;
begin
  FieldSorting := '';

  // Membaca kolom yang ditandai untuk sorting
  for I := 0 to DBGrid.SortMarkedColumns.Count - 1 do
  begin
    if FieldSorting <> '' then
      FieldSorting := FieldSorting + ', '; // Gunakan KOMA (,) bukan titik koma (;)

    FieldSorting := FieldSorting + DBGrid.SortMarkedColumns[I].FieldName;

    // Gunakan kata ASC atau DESC untuk UniDAC
    if DBGrid.SortMarkedColumns[I].Title.SortMarker = smDownEh then
      FieldSorting := FieldSorting + ' DESC'
    else
      FieldSorting := FieldSorting + ' ASC';
  end;

  // Terapkan ke UniQuery
  try
    QKasKecil.IndexFieldNames := FieldSorting;
  except
    on E: Exception do
      ShowMessage('Gagal melakukan sorting: ' + E.Message);
  end;
end;

procedure TFListKasKecil.dxBarLargeButton1Click(Sender: TObject);
begin
    with QRKasKecil do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM '+
                '(SELECT a.* ,b.code_account,b.name_account,b."position",b.paid_amount,b.description,b.code_account_header,b.code_group_cost,b.name_group_cost FROM t_petty_cash a INNER JOIN t_petty_cash_det b on a.voucher_no=b.voucher_no )a '+
                ' WHERE a.position=''D'' and a.voucher_no='+QuotedStr(DBGrid.Fields[0].AsString)+'';

      open;
    end;
    cLocation := ExtractFilePath(Application.ExeName);
    frxReport1.LoadFromFile(cLocation +'report/Bukti_Kas_Kecil'+'.fr3');
    SetMemo(frxReport1,'nama_pt',FHomeLogin.vKodePRSH);
    SetMemo(frxReport1,'kota_tanggal',FHomeLogin.vKotaPRSH+', '+formatdatetime('dd mmmm yyyy',NOW()));
    SetMemo(frxReport1,'memo_terbilang',UraikanAngka(floattostr(QRKasKecil.FieldByName('paid_amount').AsFloat)));
    frxReport1.ShowReport();
end;

procedure TFListKasKecil.dxBarLargeButton4Click(Sender: TObject);
begin
  with QSelisih_kas_harmoni do
  begin
    close;
    sql.Clear;
    sql.Text:=' SELECT * from v_selisih_kaskecil_harmoni '+
              '	where start_date='+ QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.DateTime))+' '+
              ' and end_date='+ QuotedStr(formatdatetime('yyyy-mm-dd',DTP2.DateTime))+' ';
      open;
    end;
  if QSelisih_kas_harmoni.RecordCount=0 then
  begin
    ShowMessage('Tidak Ditemukan Data !!!');
    Exit;
  end;
    cLocation := ExtractFilePath(Application.ExeName);
    frxReport1.LoadFromFile(cLocation +'report/Selisih_Kas_Kecil_Harmoni'+'.fr3');
    SetMemo(frxReport1,'nama_PT',FHomeLogin.vNamaPRSH);
    SetMemo(frxReport1,'periode',formatdatetime('dd mmmm yyyy',DTP1.DateTime)+' s/d '+formatdatetime('dd mmmm yyyy',DTP2.DateTime));
    frxReport1.ShowReport();
end;

procedure TFListKasKecil.dxBarLargeButton5Click(Sender: TObject);
begin
  with QSelisih_realisasi_kasbon do
  begin
    close;
    sql.Clear;
    sql.Text:=' select DISTINCT a.voucher_no_receipt as voucher_bon,  '+
              ' a.amount_receipt jumlah_bon,  COALESCE(b.jumlah_kas,0) as jumlah_kas, '+
              ' c.needs kepada,  c.trans_date tanggal,  c.description remark, '+
              ' a.amount_receipt-COALESCE(b.jumlah_kas,0) as amount,  c.actors_name, '+
              ' c.created_at, c.actors_code from (select * from t_petty_cash_receipt_history '+
              ' where amount_receipt  <>0 and approve_at is null )a '+
              ' left join (SELECT voucher_no_receipt bon_no,  sum(amount) jumlah_kas '+
              ' from t_petty_cash where deleted_at is null and  '+
              ' trans_date<='+ QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.DateTime))+' '+
              ' GROUP BY voucher_no_receipt )b   on a.voucher_no_receipt=b.bon_no  '+
              ' LEFT JOIN (SELECT * from t_petty_cash_receipt  where deleted_at is null and '+
              ' trans_date<='+ QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.DateTime))+') c '+
              ' on a.voucher_no_receipt=c.voucher_no  where c.voucher_no is not null and '+
              //' a.amount_receipt-COALESCE(b.jumlah_kas,0)<>0  and  '+
              ' c.trans_date<='+ QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.DateTime))+''+
              ' order by a.voucher_no_receipt';
      open;
    end;
  if QSelisih_realisasi_kasbon.RecordCount=0 then
  begin
    ShowMessage('Tidak Ditemukan Data !!!');
    Exit;
  end;
    cLocation := ExtractFilePath(Application.ExeName);
    frxReport1.LoadFromFile(cLocation +'report/Selisih_Kas_Kecil_Kasbon'+'.fr3');
    SetMemo(frxReport1,'nama_PT',FHomeLogin.vNamaPRSH);
    SetMemo(frxReport1,'periode',formatdatetime('dd mmmm yyyy',DTP1.DateTime)+' s/d '+formatdatetime('dd mmmm yyyy',DTP2.DateTime));
    frxReport1.ShowReport();
end;

procedure TFListKasKecil.FormShow(Sender: TObject);
begin
  DTP1.date:=now;
  DTP2.date:=now;
end;

Initialization
  RegisterClasses([TFListKasKecil]);


end.
