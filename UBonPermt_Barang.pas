unit UBonPermt_Barang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, dxSkinsdxBarPainter,
  MemTableDataEh, Data.DB, frxClass, DataDriverEh, MemTableEh, frxDBSet, MemDS,
  DBAccess, Uni, dxBar, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, cxClasses,
  dxRibbon, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, dxSkinBasic, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxCore, RzButton;

type
  TFBonPermt_Barang = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarHapus: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxBarBeri: TdxBarButton;
    dxBarTerima: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    QRptPermintaan: TUniQuery;
    DbRptPermintaan: TfrxDBDataset;
    DsQPermt_Material_det: TDataSource;
    QPermt_Material_det: TUniQuery;
    MemPermt_Material: TMemTableEh;
    QPermt_Material: TUniQuery;
    DsPermt_material: TDataSource;
    DsdPermt_Material: TDataSetDriverEh;
    Rpt: TfrxReport;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActRoExecute(Sender: TObject);
    procedure ActPrintExecute(Sender: TObject);
    procedure ActAppExecute(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function FBonPermt_Barang: TFBonPermt_Barang;

implementation

{$R *.dfm}

uses UNew_BonPermtBarang, umainmenu, UDataModule, UHomeLogin, UMy_Function;
var
  realFBonPermt_Barang: TFBonPermt_Barang;
// implementasi function
function FBonPermt_Barang: TFBonPermt_Barang;
begin
  if realFBonPermt_Barang <> nil then
    FBonPermt_Barang:= realFBonPermt_Barang
  else
    Application.CreateForm(TFBonPermt_Barang, Result);
end;

procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);
var
  memo: TfrxMemoView;
begin
  memo := aReport.FindObject(aMemoName) as TfrxMemoView;
  if memo <> nil then
    memo.Text := aText;
end;

procedure TFBonPermt_Barang.ActAppExecute(Sender: TObject);
begin
 if messageDlg ('Yakin Approve No.'+DBGridEh1.Fields[0].AsString+' ini '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
then begin
with dm.Qtemp do
begin
  Close;
  sql.Clear;
// sql.Text:='Update t_permt_barang2 set "status"=''1'',tgl_update=now(),tgl_app1=now(),app1='+QuotedStr(Nm)+' where notrans='+QuotedStr(DBGridEh1.Fields[0].AsString);
  Execute;
end;
ActROExecute(sender);
ShowMessage('Data Berhasil di Approve');
end;
end;

procedure TFBonPermt_Barang.ActBaruExecute(Sender: TObject);
begin
  with FNew_BonPermtBarang do
  begin
    show;
    status:=0;
    MemMaterial.EmptyTable;
    Edno.Clear;
    idmenu:='M4103';
  end;
end;

procedure TFBonPermt_Barang.ActDelExecute(Sender: TObject);
begin
if DBGridEh1.Fields[3].AsString<>'APPROVE' then
BEGIN
  if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridEh1.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
then begin
with dm.Qtemp do
begin
  Close;
  sql.Clear;
  sql.Text:='Delete From t_permt_barang2 where notrans='+QuotedStr(DBGridEh1.Fields[0].AsString);
  Execute;
end;
with dm.Qtemp do
begin
  Close;
  sql.Clear;
  sql.Text:='Delete From t_permt_barang2_det where notrans='+QuotedStr(DBGridEh1.Fields[0].AsString);
  Execute;
end;
ActROExecute(sender);
ShowMessage('Data Berhasil di Hapus');
end;
END ELSE
ShowMessage('Maaf Data Sudah di Approve Tidak Bisa di hapus');
end;

procedure TFBonPermt_Barang.ActPrintExecute(Sender: TObject);
begin
with QRptPermintaan do
begin
  close;
  sql.Clear;
  sql.Text:='select A.tgl_permt,a.pic,a.app1,a.app2,b.*,c.nm_material,d.ttd,e.ttd ttd2,kdsbu from t_permt_barang2 a INNER JOIN'+
  ' t_permt_barang2_det b on a.notrans=b.notrans inner join t_material c on b.kd_material=c.kd_material LEFT JOIN t_user d'+
  ' on a.pic=d.nama LEFT JOIN t_user e on a.app1=e.nama where a.notrans='+QuotedStr(MemPermt_Material['notrans']);
  Execute;
end;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\BonPermintaanBarang.Fr3');
  SetMemo(Rpt,'Mpt',' '+kdsbu);
  Rpt.ShowReport();
//  SetMemo(Rpt,'Mtgl',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
end;

procedure TFBonPermt_Barang.ActRoExecute(Sender: TObject);
begin
  if loksbu='' then
  begin
    with  QPermt_Material do
    begin
      close;
      sql.Clear;
      sql.Text:='select case when (status_app=''f'') and (status=''f'') then ''CREATED'' WHEN (status_app=''t'') '+
      ' and (status=''t'') then ''APPROVE'' ELSE ''IN-PROSES'' END status,trans_date,trans_no,kdsbu,'+
      ' trans_year,trans_month,to_char(trans_date,''dd'') tgl from warehouse.t_item_request order by created_at Desc';
      open;
    end;
      MemPermt_Material.Close;
      MemPermt_Material.Open;
      QPermt_Material_det.Close;
      QPermt_Material_det.Open;
  end;
  if loksbu<>'' then
  begin
    with  QPermt_Material do
    begin
      close;
      sql.Clear;
      sql.Text:='select case when (status_app=''f'') and (status=''f'') then ''CREATED'' WHEN (status_app=''t'') '+
        ' and (status=''t'') then ''APPROVE'' ELSE ''IN-PROSES'' END status,trans_date,trans_no,kdsbu,'+
        ' trans_year,trans_month,to_char(trans_date,''dd'') tgl from warehouse.t_item_request  '+
        ' where kdsbu='+QuotedStr(loksbu)+' order by id Desc';
      open;
    end;
      MemPermt_Material.Close;
      MemPermt_Material.Open;
      QPermt_Material_det.Close;
      QPermt_Material_det.Open;
  end;
end;

procedure TFBonPermt_Barang.ActUpdateExecute(Sender: TObject);
begin
  with FNew_BonPermtBarang do
  begin
    show;
    MemMaterial.EmptyTable;
    status:=1;
    Edno.Text:=MemPermt_Material['trans_no'];
    DtPeriode.Text:=MemPermt_Material['trans_date'];
    while NOT QPermt_Material_det.Eof do
    begin
      MemMaterial.Insert;
      MemMaterial['kd_material']:=QPermt_Material_det['item_code'];
      MemMaterial['nm_material']:=QPermt_Material_det['item_name'];
      MemMaterial['qty']:=QPermt_Material_det['qty'];
      MemMaterial['satuan']:=QPermt_Material_det['unit'];
      MemMaterial['ket']:=QPermt_Material_det['note'];
      MemMaterial.Post;
      QPermt_Material_det.Next;
    end;
  end;
end;

procedure TFBonPermt_Barang.DBGridEh1CellClick(Column: TColumnEh);
begin
{  if DBGridEh1.Fields[3].AsString='CREATED' then
  begin
    with DM.Qtemp do
    begin
        Close;
        sql.Clear;
     // lm  sql.Text:='select * from t_akses where no_group='+QuotedStr(Mn)+' and no_dept='+QuotedStr(no_dept);
          sql.Text:='select * from t_akses where id_menu=''136'' and iddept='+QuotedStr(id_dept);
        ExecSQL;
    end;
    if dm.Qtemp['serah']=1 then
    begin
      ActApp.Enabled:=true;
      ActUpdate.Enabled:=true;
    end;
  end;
  if DBGridEh1.Fields[3].AsString<>'CREATED' then
  begin
    ActApp.Enabled:=false;
    ActUpdate.Enabled:=false;
  end;
  if DBGridEh1.Fields[3].AsString<>'APPROVE' then
  BEGIN
    ActPrint.Enabled:=false;
  END;
  if DBGridEh1.Fields[3].AsString='APPROVE' then
  BEGIN
    ActPrint.Enabled:=true;
  END;       }
end;

procedure TFBonPermt_Barang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFBonPermt_Barang.FormCreate(Sender: TObject);
begin
  realFBonPermt_Barang:=self;
end;

procedure TFBonPermt_Barang.FormDestroy(Sender: TObject);
begin
  realFBonPermt_Barang:=nil;
end;

end.
