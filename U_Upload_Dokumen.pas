unit U_Upload_Dokumen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, cxGraphics, cxControls, cxLookAndFeels,
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
  dxRibbonCustomizationForm, MemTableDataEh, Data.DB, cxCalendar, cxButtonEdit,
  cxCheckBox, cxLabel, dxBar, cxBarEditItem, cxClasses, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, DataDriverEh,
  MemTableEh, MemDS, DBAccess, Uni, dxRibbon, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh;

type
  TFUpload_Dokumen = class(TForm)
    DBGrid: TDBGridEh;
    DBGridEh1: TDBGridEh;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dsUpload_Doc: TDataSource;
    QUpload_Doc: TUniQuery;
    MemUpload_Doc: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
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
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    datetimepicker1: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    DateTimePicker2: TcxBarEditItem;
    nama_tp: TcxBarEditItem;
    sumber_data: TdxBarCombo;
    Cb_Valas: TdxBarCombo;
    dtp1: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    dtp2: TcxBarEditItem;
    dxRefresh: TdxBarLargeButton;
    ed_code_supp: TcxBarEditItem;
    dxBarEdit1: TdxBarEdit;
    supp_name: TdxBarEdit;
    dxBarLargeButton5: TdxBarLargeButton;
    CbRencana: TdxBarCombo;
    dxBarEdit3: TdxBarEdit;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    Cb_semua: TcxBarEditItem;
    group_biaya: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    cxBarEditItem6: TcxBarEditItem;
    QUpload_Docnotrans: TMemoField;
    QUpload_Doctanggal: TDateField;
    QUpload_Docjumlah: TFloatField;
    QUpload_Docketerangan: TMemoField;
    QUpload_Docstatus: TMemoField;
    QUpload_Docnorut: TIntegerField;
    QUpload_Docaksi: TMemoField;
    MemUpload_Docnotrans: TMemoField;
    MemUpload_Doctanggal: TDateField;
    MemUpload_Docjumlah: TFloatField;
    MemUpload_Docketerangan: TMemoField;
    MemUpload_Docstatus: TMemoField;
    MemUpload_Docnorut: TIntegerField;
    MemUpload_Docaksi: TMemoField;
    procedure dxRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridColumns6CellButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUpload_Dokumen: TFUpload_Dokumen;

implementation

{$R *.dfm}

uses UMainMenu, UAdd_Dokumen;

function GetDxBarComboText(BarCombo: TdxBarCombo): string;
begin
  Result := '';
  if BarCombo = nil then Exit;
  // 1. Ambil dari ItemIndex jika item dipilih dari daftar pilihan
  if BarCombo.ItemIndex >= 0 then
    Result := Trim(BarCombo.Items[BarCombo.ItemIndex]);
  // 2. Ambil dari Text bawaan TdxBarCombo
  if Result = '' then
    Result := Trim(BarCombo.Text);
  // 3. Ambil dari ItemLinks jika terhubung ke Ribbon/Toolbar
  if (Result = '') and (BarCombo.LinkCount > 0) then
  begin
    if BarCombo.Links[0] <> nil then
      Result := Trim(BarCombo.Links[0].Caption);
  end;
end;

procedure TFUpload_Dokumen.DBGridColumns6CellButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  if sumber_data.ItemIndex=0 then
  begin
    ShowMessage('Silakan Pilih Modul Untuk Menambahkan Data !!!');
    exit;
  end;

  if sumber_data.ItemIndex<>0 then
  begin
  // Ambil nilai dari TdxBarCombo
  FAdd_Dokumen.vSumberModul := GetDxBarComboText(sumber_data);

  // Jika user belum memilih item/masih kosong, berikan nama folder default
  if FAdd_Dokumen.vSumberModul = '' then
    FAdd_Dokumen.vSumberModul := 'Umum'; // Atau nama folder default sesuai kebutuhan Anda

  //ShowMessage('Sumber Data Terdeteksi: ' + FAdd_Dokumen.vSumberModul);

  // Set data transaksi ke Form Add
  FAdd_Dokumen.edNoTrans.Text := MemUpload_Doc['notrans'];
  FAdd_Dokumen.dtTrans.Date   := MemUpload_Doc['tanggal'];
  FAdd_Dokumen.LoadDokumenUpload(MemUpload_Doc['notrans']);
  FAdd_Dokumen.ShowModal;

  Handled := True;
  end;
end;

procedure TFUpload_Dokumen.dxRefreshClick(Sender: TObject);
begin

  DBGrid.StartLoadingStatus();
  with QUpload_Doc do
  begin
    close;
    sql.Clear;
    sql.add('	SELECT "notrans", "tanggal", "jumlah", "keterangan", "status", '+
            ' "norut", '''' as "aksi" FROM "vList_Upload_Doc" '+
            '	where tanggal between'+QuotedStr(formatdatetime('yyyy-mm-dd',dtp1.EditValue))+' and '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtp2.EditValue))+' ');

    if (sumber_data.ItemIndex<>0) then
    begin
      sql.add(' and norut='+IntToStr(sumber_data.ItemIndex)+'');
    end;
    Open;
  end;

  QUpload_Doc.Close;
  QUpload_Doc.Open;
  MemUpload_Doc.close;
  MemUpload_Doc.Open;
  DBGrid.FinishLoadingStatus();
end;

procedure TFUpload_Dokumen.FormShow(Sender: TObject);
begin
    DTP1.EditValue:=date();
    DTP2.EditValue:=date();
    //sumber_data.ItemIndex:=0;
end;

initialization
  RegisterClass(TFUpload_Dokumen);

end.
