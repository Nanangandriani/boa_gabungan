unit UStokMat_Prod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, MemTableDataEh, Data.DB,
  dxSkinsdxBarPainter, dxBar, DataDriverEh, MemTableEh, MemDS, DBAccess, Uni,
  cxClasses, dxRibbon, Vcl.Mask, RzEdit, Vcl.StdCtrls, RzCmboBx, RzButton,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, RzTabs, dxSkinBasic,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxCore;

type
  TFStokMat_Prod = class(TForm)
    PGControl: TRzPageControl;
    TabBaku: TRzTabSheet;
    pnList: TPanel;
    DBGridBaku: TDBGridEh;
    DBGridEh3: TDBGridEh;
    Panel2: TPanel;
    BBaru: TRzBitBtn;
    BUpdate: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    Tabnew: TRzTabSheet;
    pninput: TPanel;
    Label1: TLabel;
    qty: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    EdKd_Material: TEdit;
    EdKd_supp: TEdit;
    EdNm_supp: TRzComboBox;
    EdSatuan: TEdit;
    Edhuruf: TEdit;
    EdNm_Material: TRzComboBox;
    Edstok: TEdit;
    Edkd: TEdit;
    Edno: TRzComboBox;
    Edmerk: TEdit;
    DtBln: TRzDateTimeEdit;
    DtTh: TRzDateTimeEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    TabKimia: TRzTabSheet;
    DBGridKemasan: TDBGridEh;
    DBGridEh4: TDBGridEh;
    Panel3: TPanel;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    TabKemasan: TRzTabSheet;
    DBGridEh5: TDBGridEh;
    DBGridEh6: TDBGridEh;
    Panel4: TPanel;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    RzBitBtn7: TRzBitBtn;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    QKimia: TUniQuery;
    DsKimia: TDataSource;
    MemKimia: TMemTableEh;
    DsdKimia: TDataSetDriverEh;
    QKimia_det: TUniQuery;
    DsKimia_det: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarMb1: TdxBar;
    dxBupdate: TdxBarButton;
    dxBrefresh: TdxBarButton;
    dxBdelete: TdxBarButton;
    dxBarKimiaUpdate: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarKimiaBaru: TdxBarLargeButton;
    dxBarKimiaRefresh: TdxBarButton;
    dxBarKimiaDelete: TdxBarButton;
    BarKmsBaru: TdxBarLargeButton;
    BarKmsUpdate: TdxBarButton;
    BarKmsRefresh: TdxBarButton;
    BarKmsDelete: TdxBarButton;
    Dstepung_det: TDataSource;
    Qtepung_det: TUniQuery;
    MemTepung: TMemTableEh;
    Dsdtepung: TDataSetDriverEh;
    DsTepung: TDataSource;
    Qtepung: TUniQuery;
    Qkemasan: TUniQuery;
    DsKemasan: TDataSource;
    DsdKemasan: TDataSetDriverEh;
    Memkemasan: TMemTableEh;
    QKemasan_det: TUniQuery;
    DsKemasan_det: TDataSource;
    procedure dxBrefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function FStokMat_Prod: TFStokMat_Prod;

implementation

{$R *.dfm}

uses umainmenu;
var
  RealFStokMat_Prod: TFStokMat_Prod;
function FStokMat_Prod: TFStokMat_Prod;
begin
  if RealFStokMat_Prod <> nil then
    FStokMat_Prod:= RealFStokMat_Prod
  else
    Application.CreateForm(TFStokMat_Prod, Result);
end;

procedure TFStokMat_Prod.dxBrefreshClick(Sender: TObject);
begin
if loksbu='' then
begin
  with Qtepung do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT b.supplier_name,c.item_name,c.group_name,a.item_code,a.supplier_code,a.item_stock_code,a.order_no,a.kd_urut,a.unit,a.merk,a.item_name,'+
              '(case when aa.totalmt ISNULL then 0 else aa.totalmt end) as qty  '+
              ' FROM t_material_stok_prod AS "a" LEFT JOIN	t_supplier AS b	ON 	a.supplier_code = b.supplier_code  '+
	            ' INNER JOIN t_material AS "c"	ON 	a.item_code = c.iem_code AND		a.item_no = c.item_no  '+
              ' LEFT JOIN LATERAL (SELECT sum(a1.qty)as totalmt FROM t_item_stock_prod_det a1 INNER JOIN   '+
              ' t_wh b1 on a1.wh_code=b1.wh_code where a1.item_stock_code=a.item_stock_code)as aa on 1=1  '+
              ' t_item_group ab inner join a.group_id=ab.group_id'+
              ' where C.group_name=''BAHAN BAKU'' Order by item_stock_code Desc';
    ExecSQL;
  end;
  with Qtepung_det do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.*,b.sbu_code from t_item_stock_prod_det a INNER JOIN t_wh b on a.wh_code=b.wh_code';
    ExecSQL;
  end;
  with QKimia do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT b.supplier_name,c.item_name,c.group_name,a.item_code,a.supplier_code,a.item_stock_code,a.order_no,a.kd_urut,a.unit,a.merk,a.item_name,'+
              '(case when aa.totalmt ISNULL then 0 else aa.totalmt end) as qty  '+
              ' FROM t_material_stok_prod AS "a" LEFT JOIN	t_supplier AS b	ON 	a.supplier_code = b.supplier_code  '+
	            ' INNER JOIN t_material AS "c"	ON 	a.item_code = c.iem_code AND		a.item_no = c.item_no  '+
              ' LEFT JOIN LATERAL (SELECT sum(a1.qty)as totalmt FROM t_item_stock_prod_det a1 INNER JOIN   '+
              ' t_wh b1 on a1.wh_code=b1.wh_code where a1.item_stock_code=a.item_stock_code)as aa on 1=1  '+
              ' t_item_group ab inner join a.group_id=ab.group_id'+
              ' where C.group_name=''KIMIA'' Order by item_stock_code Desc';
    ExecSQL;
  end;
  with QKimia_det do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.*,b.sbu_code from t_item_stock_prod_det a INNER JOIN t_wh b on a.wh_code=b.wh_code';
    ExecSQL;
  end;
end;
if kdsbu<>'' then
begin
  with Qtepung do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT b.supplier_name,c.item_name,c.group_name,a.item_code,a.supplier_code,a.item_stock_code,a.order_no,a.kd_urut,a.unit,a.merk,a.item_name,'+
              '(case when aa.totalmt ISNULL then 0 else aa.totalmt end) as qty  '+
              ' FROM t_material_stok_prod AS "a" LEFT JOIN	t_supplier AS b	ON 	a.supplier_code = b.supplier_code  '+
	            ' INNER JOIN t_material AS "c"	ON 	a.item_code = c.iem_code AND		a.item_no = c.item_no  '+
              ' LEFT JOIN LATERAL (SELECT sum(a1.qty)as totalmt FROM t_item_stock_prod_det a1 INNER JOIN   '+
              ' t_wh b1 on a1.wh_code=b1.wh_code where a1.item_stock_code=a.item_stock_code where b1.sbu_code='+QuotedStr(loksbu)+') as aa on 1=1  '+
              ' t_item_group ab inner join a.group_id=ab.group_id'+
              ' where C.group_name=''BAHAN BAKU'' Order by item_stock_code Desc';//' b1.kd_sbu='+QuotedStr(loksbu)+')as aa on 1=1 where C.category=''BAHAN BAKU'''+
    ExecSQL;
  end;
  with Qtepung_det do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.*,b.sbu_code from t_item_stock_prod_det a INNER JOIN t_wh b on a.wh_code=b.wh_code where b.sbu_code='+QuotedStr(loksbu);
    ExecSQL;
  end;
  with QKimia do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT b.supplier_name,c.item_name,c.group_name,a.item_code,a.supplier_code,a.item_stock_code,a.order_no,a.kd_urut,a.unit,a.merk,a.item_name,'+
              '(case when aa.totalmt ISNULL then 0 else aa.totalmt end) as qty  '+
              ' FROM t_material_stok_prod AS "a" LEFT JOIN	t_supplier AS b	ON 	a.supplier_code = b.supplier_code  '+
	            ' INNER JOIN t_material AS "c"	ON 	a.item_code = c.iem_code AND		a.item_no = c.item_no  '+
              ' LEFT JOIN LATERAL (SELECT sum(a1.qty)as totalmt FROM t_item_stock_prod_det a1 INNER JOIN   '+
              ' t_wh b1 on a1.wh_code=b1.wh_code where a1.item_stock_code=a.item_stock_code where b1.kd_sbu='+QuotedStr(loksbu)+') as aa on 1=1  '+
              ' t_item_group ab inner join a.group_id=ab.group_id'+
              ' where C.group_name=''KIMIA'' Order by item_stock_code Desc';
    ExecSQL;
  end;
  with QKimia_det do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.*,b.sbu_code from t_item_stock_prod_det a INNER JOIN t_wh b on a.wh_code=b.wh_code where b.sbu_code='+QuotedStr(loksbu);
    ExecSQL;
  end;
  with Qkemasan do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT b.supplier_name,c.item_name,c.group_name,a.item_code,a.supplier_code,a.item_stock_code,a.order_no,a.kd_urut,a.unit,a.merk,a.item_name,'+
              '(case when aa.totalmt ISNULL then 0 else aa.totalmt end) as qty  '+
              ' FROM t_material_stok_prod AS "a" LEFT JOIN	t_supplier AS b	ON 	a.supplier_code = b.supplier_code  '+
	            ' INNER JOIN t_material AS "c"	ON 	a.item_code = c.iem_code AND		a.item_no = c.item_no  '+
              ' LEFT JOIN LATERAL (SELECT sum(a1.qty)as totalmt FROM t_item_stock_prod_det a1 INNER JOIN   '+
              ' t_wh b1 on a1.wh_code=b1.wh_code where a1.item_stock_code=a.item_stock_code where b1.kd_sbu='+QuotedStr(loksbu)+') as aa on 1=1  '+
              ' t_item_group ab inner join a.group_id=ab.group_id'+
              ' where C.group_name=''BAHAN KEMASAN'' Order by item_stock_code Desc';
    ExecSQL;
  end;
  with QKemasan_det do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.*,b.sbu_code from t_item_stock_prod_det a INNER JOIN t_wh b on a.wh_code=b.wh_code where b.sbu_code='+QuotedStr(loksbu);
    ExecSQL;
  end;
end;
  QKimia.Close;
  MemKimia.Close;
  QKimia_det.Close;
  Qtepung.Close;
  MemTepung.Close;
  Qtepung_det.Close;
  Qkemasan.Close;
  Memkemasan.Close;
  QKemasan_det.Close;
  if QKimia.Active=false then QKimia.Active:=true;
  if MemKimia.Active=false then MemKimia.Active:=true;
  if QKimia_det.Active=false then QKimia_det.Active:=true;
  if Qtepung.Active=false then Qtepung.Active:=true;
  if MemTepung.Active=false then MemTepung.Active:=true;
  if Qtepung_det.Active=false then Qtepung_det.Active:=true;
  if Qkemasan.Active=false then Qkemasan.Active:=true;
  if Memkemasan.Active=false then Memkemasan.Active:=true;
  if QKemasan_det.Active=false then QKemasan_det.Active:=true;
end;

procedure TFStokMat_Prod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFStokMat_Prod.FormCreate(Sender: TObject);
begin
  RealFStokMat_Prod:=self;
end;

procedure TFStokMat_Prod.FormDestroy(Sender: TObject);
begin
  RealFStokMat_Prod:=nil;
end;

procedure TFStokMat_Prod.FormShow(Sender: TObject);
begin
//dxBrefreshClick(sender);
end;

initialization
registerclass(TFStokMat_Prod);

end.
