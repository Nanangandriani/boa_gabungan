unit U_daftar_realisasi_biaya;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCalendar, cxButtonEdit, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  dxRibbon, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxBar, cxBarEditItem,
  cxClasses, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, DataDriverEh, MemTableEh, frxClass, MemDS, DBAccess, Uni,
  frxDBSet, cxCheckBox, cxLabel;

type
  TFdaftar_realisasi_biaya = class(TForm)
    DS_Lap_Realiasasi_Biaya: TDataSource;
    QLap_Realiasasi_Biaya: TUniQuery;
    Mem_Lap_Realiasasi_Biaya: TMemTableEh;
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
    DBGridLapRencLunasHutang: TDBGridEh;
    DBGridEh1: TDBGridEh;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
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
    QLap_Realiasasi_Biayavoucher_no: TStringField;
    QLap_Realiasasi_Biayatanggal: TDateField;
    QLap_Realiasasi_Biayadescription: TStringField;
    QLap_Realiasasi_Biayatp_code: TStringField;
    QLap_Realiasasi_Biayatp_name: TStringField;
    QLap_Realiasasi_Biayaamount: TFloatField;
    QLap_Realiasasi_Biayaaccount_code: TStringField;
    QLap_Realiasasi_Biayagroup_code: TStringField;
    Mem_Lap_Realiasasi_Biayavoucher_no: TStringField;
    Mem_Lap_Realiasasi_Biayatanggal: TDateField;
    Mem_Lap_Realiasasi_Biayadescription: TStringField;
    Mem_Lap_Realiasasi_Biayatp_code: TStringField;
    Mem_Lap_Realiasasi_Biayatp_name: TStringField;
    Mem_Lap_Realiasasi_Biayaamount: TFloatField;
    Mem_Lap_Realiasasi_Biayaaccount_code: TStringField;
    Mem_Lap_Realiasasi_Biayagroup_code: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxRefreshClick(Sender: TObject);
    procedure nama_tpPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure group_biayaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall, vKODEPRSH,vnamapershfull,vkd_jenis_hutang,kode_tp,kode_group_biaya:string;
    tgl_htg,l,tgl_mulai,tgl_saldobank:TDateTime;
    function conv_bulan(bulan:integer):string;
  end;

//var
function
  Fdaftar_realisasi_biaya: TFdaftar_realisasi_biaya;

implementation

{$R *.dfm}

uses UDataModule, USearch_Supplier, UMasterData;

var
 realFdaftar_realisasi_biaya: TFdaftar_realisasi_biaya;

  // implementasi function
function Fdaftar_realisasi_biaya: TFdaftar_realisasi_biaya;
begin
  if realFdaftar_realisasi_biaya <> nil then
     Fdaftar_realisasi_biaya:= realFdaftar_realisasi_biaya
  else
    Application.CreateForm(TFdaftar_realisasi_biaya, Result);
end;

procedure TFdaftar_realisasi_biaya.dxRefreshClick(Sender: TObject);
begin
  DBGridLapRencLunasHutang.StartLoadingStatus();
  with QLap_Realiasasi_Biaya do
  begin
    close;
    sql.Clear;
    sql.add('	SELECT voucher_no, c.tanggal,	a.description,	tp_code,	tp_name, '+
            ' amount, account_code, initial_code as group_code '+
            ' from t_cost_detail a '+
            '	left join (SELECT a.code, b.cost_type, b.initial_code from t_ak_account a '+
            ' LEFT JOIN t_ak_type_cost b on a.cost_st_id=b.id '+
            '	where cost_st_id>0) b on a.account_code=b.code '+
            '	left join vtransaksi_cost c on a.voucher_no=c.notrans '+
            '	where a.deleted_at is null and c.tanggal between'+QuotedStr(formatdatetime('yyyy-mm-dd',dtp1.EditValue))+' and '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtp2.EditValue))+' ');

    if (sumber_data.ItemIndex<>0) then
    begin
      sql.add(' and norut='+IntToStr(sumber_data.ItemIndex)+'');
    end;
    if (kode_tp<>'') and (kode_tp<>'*') then
    begin
      sql.add(' and tp_code='+QuotedStr(kode_tp)+'');
    end;

    if (kode_group_biaya<>'') and (kode_group_biaya<>'*') then
    begin
      sql.add(' and initial_code='+QuotedStr(kode_group_biaya)+'');
    end;

    Open;
  end;

  QLap_Realiasasi_Biaya.Close;
  QLap_Realiasasi_Biaya.Open;
  Mem_Lap_Realiasasi_Biaya.close;
  Mem_Lap_Realiasasi_Biaya.Open;
  DBGridLapRencLunasHutang.FinishLoadingStatus();
end;

procedure TFdaftar_realisasi_biaya.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFdaftar_realisasi_biaya.FormCreate(Sender: TObject);
begin
   realFdaftar_realisasi_biaya:=self;
end;

procedure TFdaftar_realisasi_biaya.FormDestroy(Sender: TObject);
begin
   realFdaftar_realisasi_biaya:=nil;
end;

procedure TFdaftar_realisasi_biaya.FormShow(Sender: TObject);
begin
    DTP1.EditValue:=date();
    DTP2.EditValue:=date();
    nama_tp.EditValue:='';
    group_biaya.EditValue:='';
    kode_tp:='';
    kode_group_biaya:='';
end;

procedure TFdaftar_realisasi_biaya.group_biayaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
    FMasterData.Caption:='Master Data Group Biaya';
    FMasterData.vcall:='realisasi_biaya_gb';
    FMasterData.update_grid_all('initial_code','cost_type','cost_type','t_ak_type_cost','WHERE	deleted_at IS NULL ');
    FMasterData.ShowModal;
end;

procedure TFdaftar_realisasi_biaya.nama_tpPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    FMasterData.Caption:='Master Data TP';
    FMasterData.vcall:='realisasi_biaya_tp';
    FMasterData.update_grid_all('code','name','description','t_region_tp','WHERE	deleted_at IS NULL ');
    FMasterData.ShowModal;
end;

function TFdaftar_realisasi_biaya.conv_bulan(bulan:integer):string;
begin
  case bulan of
  1: result:='01';
  2: result:='02';
  3: result:='03' ;
  4: result:='04' ;
  5: result:='05' ;
  6: result:='06' ;
  7: result:='07' ;
  8: result:='08' ;
  9: result:='09' ;
  10: result:='10' ;
  11: result:='11' ;
  12: result:='12';
  end;
end;

initialization
  RegisterClass(TFdaftar_realisasi_biaya);


end.
