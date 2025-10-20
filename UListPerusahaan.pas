unit UListPerusahaan;

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
  Data.DB, MemDS, DBAccess, Uni, dxRibbon, dxBar, cxClasses, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFListPerusahaan = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DBGridPerusahaan: TDBGridEh;
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
    QPerusahaan: TUniQuery;
    DsPerusahaan: TDataSource;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    ActAdd: TAction;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActAddExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure  refresh;
    procedure clear;
  end;


function FListPerusahaan: TFListPerusahaan;
{var
  FListPerusahaan: TFListPerusahaan;
  status:integer;}
implementation

{$R *.dfm}

uses UNew_Perusahaan, UDataModule, UMainMenu;

var
  realFListPerusahaan: TFListPerusahaan;
  status:integer;

// implementasi function
function FListPerusahaan: TFListPerusahaan;
begin
  if RealFListPerusahaan <> nil then
     FListPerusahaan := RealFListPerusahaan
  else
    Application.CreateForm(TFListPerusahaan, Result);
end;


 procedure TFListPerusahaan.clear;
 begin
    with FNewPerusahaan do
    begin
      Ed_kode.Text:='';
      Ed_nama.Text:='';
      cb_jenis_usaha.Text:='';
      Ed_alamat.Text:='';
      Ed_telp.Text:='';
      Ed_email.Text:='';
      Ed_npwp.Text:='';
      cb_status_pajak.Text:='';
      cb_mata_uang.Text:='';
      //Ed_kode.SetFocus;
    end;

 end;

procedure TFListPerusahaan.refresh;
begin
   with QPerusahaan do
   begin
       close;
       sql.Clear;
       sql.Text:=' select *, '+
                 ' case when stat_office=0 then ''KANTOR PUSAT'' else ''KANTOR CABANG'' end status_kantor '+
                 ' from T_company where deleted_at is null Order by stat_office ASC ';
       open;
   end;
   QPerusahaan.Close;
   QPerusahaan.Open;
end;

procedure TFListPerusahaan.ActAddExecute(Sender: TObject);
begin
     status:=0;
     FNewPerusahaan.Caption:='New Perusahaan';
     FNewPerusahaan.stat:='BO';
     FNewPerusahaan.Show;
     Clear;
     FNewPerusahaan.BSimpan.Visible:=True;
     FNewPerusahaan.BEdit.Visible:=False;
end;

procedure TFListPerusahaan.ActBaruExecute(Sender: TObject);
begin
     status:=0;
     FNewPerusahaan.Caption:='New Perusahaan';
     FNewPerusahaan.stat:='HO';
     FNewPerusahaan.Show;
     Clear;
     FNewPerusahaan.BSimpan.Visible:=True;
     FNewPerusahaan.BEdit.Visible:=False;
end;

procedure TFListPerusahaan.ActDelExecute(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridPerusahaan.Fields[1].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
    begin
      with dm.Qtemp do
      begin
        Close;
        sql.Clear;
        //sql.Text:='Delete From master_data.t_company where company_code='+QuotedStr(DBGridPerusahaan.Fields[0].AsString);
        sql.Text:=' Update t_company set deleted_at=:deleted_at,deleted_by=:deleted_by '+
                  ' Where company_code='+QuotedStr(DBGridPerusahaan.Fields[0].AsString);
        parambyname('deleted_at').AsDateTime:=Now;
        parambyname('deleted_by').AsString:='Admin';
        Execute;
      end;
      ActROExecute(sender);
      ShowMessage('Data Berhasil di Hapus');
    end;
end;

procedure TFListPerusahaan.ActROExecute(Sender: TObject);
begin
   refresh;
   DBGridPerusahaan.StartLoadingStatus();
   DBGridPerusahaan.FinishLoadingStatus();
end;

procedure TFListPerusahaan.ActUpdateExecute(Sender: TObject);
begin
    status:=1;
    FNewPerusahaan.Show;
    FNewPerusahaan.BSimpan.Visible:=False;
    FNewPerusahaan.BEdit.Visible:=True;
    FNewPerusahaan.Caption:='Update Perusahaan';
    FNewPerusahaan.Ed_kode.Enabled:=False;
    with Qperusahaan do
    begin
      FNewPerusahaan.Ed_kode.Text:=Qperusahaan.FieldByName('company_code').AsString;
      FNewPerusahaan.Ed_nama.Text:=Qperusahaan.FieldByName('company_name').AsString;
      FNewPerusahaan.cb_jenis_usaha.Text:=Qperusahaan.FieldByName('type_of_business').AsString;
      FNewPerusahaan.Ed_alamat.Text:=Qperusahaan.FieldByName('address').AsString;
      FNewPerusahaan.Ed_telp.Text:=Qperusahaan.FieldByName('telp').AsString;
      FNewPerusahaan.Ed_email.Text:=Qperusahaan.FieldByName('email').AsString;
      FNewPerusahaan.Ed_NPWP.Text:=Qperusahaan.FieldByName('npwp').AsString;
      FNewPerusahaan.Ed_nitku.Text:=Qperusahaan.FieldByName('nitku').AsString;
      //FNewPerusahaan.Cb_status_pajak.Text:=Qperusahaan.FieldByName('tax_status').AsString;
      FNewPerusahaan.Ed_status_tax.Text:=Qperusahaan.FieldByName('tax_status').AsString;
      FNewPerusahaan.Cb_mata_uang.Text:=Qperusahaan.FieldByName('currency').AsString;

      if Qperusahaan.FieldByName('stat_office').Value=0 then
      begin
        FNewPerusahaan.stat:='HO';
      end
      else
      if Qperusahaan.FieldByName('stat_office').Value=1 then
      begin
        FNewPerusahaan.stat:='BO';
      end;

    end;
end;

procedure TFListPerusahaan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=cafree;
end;

procedure TFListPerusahaan.FormCreate(Sender: TObject);
begin
  realFListPerusahaan:=self;
end;

procedure TFListPerusahaan.FormDestroy(Sender: TObject);
begin
   realFListPerusahaan:=nil;
end;

procedure TFListPerusahaan.FormShow(Sender: TObject);
begin
    refresh;
    Qperusahaan.Close;
    Qperusahaan.Open;
end;

// Contoh RegisterClass
Initialization
  RegisterClass(TFListPerusahaan);

end.
