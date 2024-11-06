unit UListSupplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  dxRibbon, dxBar, cxClasses, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.StdCtrls;

type
  TFListSupplier = class(TForm)
    DBGridSupplier: TDBGridEh;
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
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DsSupplier: TDataSource;
    QSupplier: TUniQuery;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    QBarang: TUniQuery;
    DBGridEh1: TDBGridEh;
    DsBarang: TDataSource;
    procedure dxBarBaruClick(Sender: TObject);
    procedure dxBarUpdateClick(Sender: TObject);
    procedure dxbarRefreshClick(Sender: TObject);
    procedure dxBarDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    Procedure Refresh;
    Procedure Autonumber;
  end;

function FListSupplier: TFListSupplier;
  //RealListSupplier: TFListSupplier;
var  urut:integer;

implementation

{$R *.dfm}

uses UNew_Supplier, UDataModule, UMainMenu;
var
  RealListSupplier: TFListSupplier;
function FListSupplier: TFListSupplier;
begin
   if RealListSupplier <> nil then
      FListSupplier:= RealListSupplier
   else
     Application.CreateForm(TFListSupplier, Result);
end;

procedure TFListSupplier.Refresh;
begin
   with QSupplier do
   begin
       close;
       sql.Clear;
       sql.Text:='select * from T_Supplier where deleted_at is null order by created_at Desc ';
       open;
   end;
   QSupplier.Active:=False;
   QSupplier.Active:=True;
   QBarang.Close;
   QBarang.Open;
end;

procedure TFListSupplier.Autonumber;
begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:=' SELECT max(t_supplier.supplier_no)AS urut FROM t_supplier';
      execsql;
    end;
    urut:=Dm.Qtemp.FieldByName('urut').AsInteger+1;
    FNew_Supplier.Edno.Text:=FloatToStr(urut);
end;

procedure TFListSupplier.dxBarUpdateClick(Sender: TObject);
begin
  with FNew_Supplier do
  begin
      Show;
      BSimpan.Visible:=False;
      BEdit.Visible:=True;
      Caption:='Update Supplier';
      Edno.Enabled:=False;
      Edkd.Enabled:=False;
      MemMaterial.EmptyTable;
      MemMaterial.Active:=false;
      MemMaterial.Active:=true;
      with QSupplier do
      begin
        Edno.Text:=QSupplier.FieldByName('supplier_code').AsString;
        Edkd.Text:=QSupplier.FieldByName('supplier_code2').AsString;
        EdNm.Text:=QSupplier.FieldByName('supplier_name').AsString;
        Edalamat.Text:=QSupplier.FieldByName('address').AsString;
        Edtelp.Text:=QSupplier.FieldByName('telp').AsString;
        EdNPWP.Text:=QSupplier.FieldByName('npwp').AsString;
        KodeHeaderPerkiraan:=QSupplier.FieldByName('header_code').AsString;
        KodeHeaderPerkiraan_um:=QSupplier.FieldByName('header_code_um').AsString;
        edKodePerkiraan.Text:=QSupplier.FieldByName('account_code').AsString;
        edKodePerkiraan_um.Text:=QSupplier.FieldByName('account_code_um').AsString;
      end;
      QBarang.First;
      while not QBarang.eof do
      begin
        with QBarang do
        begin
          MemMaterial.Insert;
          MemMaterial['kd_material']:=QBarang.FieldByName('item_code').AsString;
          MemMaterial['nm_material']:=QBarang.FieldByName('item_name').AsString;
          MemMaterial['qty']:=QBarang.FieldByName('qty').AsString;
          MemMaterial['satuan']:=QBarang.FieldByName('unit').AsString;
          MemMaterial['kode']:=QBarang.FieldByName('item_stock_code').AsString;
          MemMaterial.Post;
        end;
        QBarang.Next;
      end;
  end;
end;

procedure TFListSupplier.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFListSupplier.FormCreate(Sender: TObject);
begin
  RealListSupplier:=self;
   with QSupplier do
   begin
       close;
       sql.Clear;
       sql.Text:='select * from T_Supplier ';
       open;
   end;
   Qsupplier.Close;
   Qsupplier.Open;
end;

procedure TFListSupplier.FormDestroy(Sender: TObject);
begin
  RealListSupplier:=nil;
end;

procedure TFListSupplier.FormShow(Sender: TObject);
begin
  refresh;
  Qsupplier.Close;
  Qsupplier.Open;
end;

procedure TFListSupplier.Button1Click(Sender: TObject);
begin
    FNew_Supplier.Show;
    FNew_Supplier.BSimpan.Visible:=False;
    FNew_Supplier.BEdit.Visible:=True;
    FNew_Supplier.Caption:='Update Supplier';
    FNew_Supplier.Edno.Enabled:=False;
    with QSupplier do
    begin
      FNew_Supplier.Edno.Text:=QSupplier.FieldByName('supplier_code').AsString;
      FNew_Supplier.EdNm.Text:=QSupplier.FieldByName('supplier_name').AsString;
      FNew_Supplier.Edalamat.Text:=QSupplier.FieldByName('address').AsString;
      FNew_Supplier.Edtelp.Text:=QSupplier.FieldByName('telp').AsString;
      FNew_Supplier.EdNPWP.Text:=QSupplier.FieldByName('npwp').AsString;
    end;
end;

procedure TFListSupplier.dxBarBaruClick(Sender: TObject);
begin
  with FNew_Supplier do
  begin
      Caption:='New Supplier';
      show;
      Autonumber;
      Edkd.Enabled:=true;
      MemMaterial.EmptyTable;
      MemMaterial.Active:=false;
      MemMaterial.Active:=true;
  end;
end;

procedure TFListSupplier.dxBarDeleteClick(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridSupplier.Fields[1].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
    begin
      with dm.Qtemp do
      begin
        Close;
        sql.Clear;
        //sql.Text:='Delete From t_supplier where supplier_code='+QuotedStr(DBGridSupplier.Fields[0].AsString);
        sql.Text:=' Update t_supplier set deleted_at=:deleted_at,deleted_by=:deleted_by '+
                  ' where supplier_code='+QuotedStr(DBGridSupplier.Fields[0].AsString);
        parambyname('deleted_at').AsDateTime:=Now;
        parambyname('deleted_by').AsString:='Admin';
        Execute;
      end;
      dxbarRefreshClick(sender);
      ShowMessage('Data Berhasil di Hapus');
    end;
end;

procedure TFListSupplier.dxbarRefreshClick(Sender: TObject);
begin
   DBGridSupplier.StartLoadingStatus();
   DBGridSupplier.FinishLoadingStatus();
   Refresh;
end;

initialization
RegisterClass(TFListSupplier);

end.
