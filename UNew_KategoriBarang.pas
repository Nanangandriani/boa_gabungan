unit UNew_KategoriBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzBtnEdt,
  Vcl.Mask, RzEdit, Vcl.StdCtrls, DBGridEhGrouping, ToolCtrlsEh,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxBar, cxClasses, Data.DB,
  MemDS, DBAccess, Uni, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFNew_KategoriBarang = class(TForm)
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EdKategori: TEdit;
    Edno: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Edkd_akun: TRzEdit;
    EdNm_akun: TRzButtonEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    EdJenis: TComboBox;
    Edkd_akun1: TRzEdit;
    BRefresh: TRzBitBtn;
    Edkd: TEdit;
    DBGridEh7: TDBGridEh;
    Dskategori: TDataSource;
    Qkategori: TUniQuery;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    Btambah: TRzBitBtn;
    procedure EdnoKeyPress(Sender: TObject; var Key: Char);
    procedure EdJenisKeyPress(Sender: TObject; var Key: Char);
    procedure EdKategoriKeyPress(Sender: TObject; var Key: Char);
    procedure EdNm_akunKeyPress(Sender: TObject; var Key: Char);
    procedure EdNm_akunButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdJenisSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure ActAppExecute(Sender: TObject);
    procedure EdKategoriExit(Sender: TObject);
  private
    { Private declarations }
  public
   { Public declarations }
    statustr:integer;
    id,id_type:string;
    procedure clear;
    Procedure Load;
  end;

Function FNew_KategoriBarang: TFNew_KategoriBarang;

implementation

{$R *.dfm}

uses UDataModule,UNew_Barang, UMainMenu, UKategori_Barang, UCari_DaftarPerk,
  UMy_Function;

var RealFNew_KategoriBarang: TFNew_KategoriBarang;
function FNew_KategoriBarang: TFNew_KategoriBarang;
begin
  if RealFNew_KategoriBarang <> nil then FNew_KategoriBarang:= RealFNew_KategoriBarang
  else  Application.CreateForm(TFNew_KategoriBarang, Result);
end;

procedure TFNew_KategoriBarang.clear;
begin
  EdKd.Clear;
  EdKategori.clear;
  EdJenis.Text:='';
  Edkd_akun.Clear;
  Edkd_akun1.Clear;
  EdNm_akun.Clear;
end;

procedure TFNew_KategoriBarang.Load;
begin
    EdJenis.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' select DISTINCT type from t_item_type '+
              ' where deleted_at isnull ';
    open;
  end;
    dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
      EdJenis.Items.Add(dm.Qtemp['type']);
    dm.Qtemp.Next;
    end;
end;

procedure TFNew_KategoriBarang.ActAppExecute(Sender: TObject);
begin
  if Length(EdJenis.Text)=0 then
  begin
    MessageDlg('jenis Tidak boleh Kosong ',MtWarning,[MbOk],0);
    Edjenis.SetFocus;
    Exit;
  end;
  if Length(EdKategori.Text)=0 then
  begin
    MessageDlg('kategori Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdKategori.SetFocus;
    Exit;
  end;

  if statustr=0 then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='insert into t_item_category(category,type_id,account_code,order_no,code)values'+
                '(:ct,:jn,:kd_akun,:no,:code)';
                ParamByName('ct').Value:=EdKategori.Text;
                ParamByName('jn').Value:=id_type;
                ParamByName('kd_akun').Value:=Edkd_akun.Text;
                ParamByName('no').Value:=Edno.Text;
                ParamByName('code').Value:=Edkd.Text;
      ExecSQL;
    end;
  end;
  if statustr=1 then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Update t_item_category set category=:ct,type_id=:tp,account_code=:akun,'+
                ' order_no=:parno,updated_at=now(),code=:code where "category_id"=:id';
                ParamByName('id').Value:=id;
                ParamByName('ct').Value:=EdKategori.Text;
                ParamByName('tp').Value:=id_type;
                ParamByName('akun').Value:=Edkd_akun.Text;
                ParamByName('code').Value:=Edkd.Text;
                ParamByName('parno').Value:=Edno.Text;
      ExecSQL;
    end;
  end;
//  BBatalClick(sender);
  ShowMessage('Data Berhasil Ditambahkan');
//  FNew_Barang.Load;
  clear;
  ActROExecute(sender);
end;

procedure TFNew_KategoriBarang.ActBaruExecute(Sender: TObject);
begin
  clear;
  Load;
  edjenis.SetFocus;
  statustr:=0;
end;

procedure TFNew_KategoriBarang.ActDelExecute(Sender: TObject);
begin
{if statustr=3 then
begin
  close;
end;
if statustr<>3 then
begin
  Close;
  FKategori_Barang.Show;
  FKategori_Barang.ActROExecute(sender);
end;    }
  close;
end;

procedure TFNew_KategoriBarang.ActROExecute(Sender: TObject);
begin
  DBGridEh7.StartLoadingStatus();
  Qkategori.Close;
  Qkategori.Open;
  DBGridEh7.FinishLoadingStatus();
end;

procedure TFNew_KategoriBarang.ActUpdateExecute(Sender: TObject);
begin
  with FNew_KategoriBarang do
  begin
   // show;
    statustr:=1;
    id:=Qkategori['category_id'];
    EdKd.Text:=Qkategori['code'];
    EdJenis.Text:=Qkategori['type'];
    id_type:=Qkategori['type_id'];
    EdKategori.Text:=Qkategori['category'];
//    Edkd_akun.Text:=Qkategori['account_code'];
//    EdNm_akun.Text:=Qkategori['account_name'];
    Edkd_akun.Text:='';
    EdNm_akun.Text:='';
    EdKategori.Text:=Qkategori['category'];
    Edno.Text:=Qkategori['order_no'];
    EdKd.Text:=Qkategori['order_no'];
  end;
end;

procedure TFNew_KategoriBarang.EdJenisKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  EdKategori.SetFocus;
end;
end;

procedure TFNew_KategoriBarang.EdJenisSelect(Sender: TObject);
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select DISTINCT type, type_id from t_item_type where type='+QuotedStr(EdJenis.Text);
  ExecSQL;
end;
//  Edkd_akun1.Text:=Dm.Qtemp['akun_code'];
  id_type:=dm.Qtemp['type_id'];
end;

procedure TFNew_KategoriBarang.EdKategoriExit(Sender: TObject);
begin
  if statustr=0 then
  begin
    Edno.Text:=SelectRow('SELECT buat_singkatan('+QuotedStr(EdKategori.Text)+');');
    Edkd.Text:=Edno.Text;
  end;
end;

procedure TFNew_KategoriBarang.EdKategoriKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
begin
  EdNm_akun.SetFocus;
end;
end;

procedure TFNew_KategoriBarang.EdnoKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  Edjenis.SetFocus;
end;
end;

procedure TFNew_KategoriBarang.EdNm_akunButtonClick(Sender: TObject);
begin
with FCari_DaftarPerk do
begin
  Show;
  vpanggil:='kategorimaterial';
  with QDaftar_Perk do
  begin
    close;
    sql.Clear;
    SQL.Text:='SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
              ' left join t_ak_account b on a.account_code=b.code  '+
              'left join t_ak_header c on b.header_code=c.header_code';
    Execute;
  end;
end;
end;

procedure TFNew_KategoriBarang.EdNm_akunKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  BSimpan.SetFocus;
end;
end;

procedure TFNew_KategoriBarang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_KategoriBarang.FormCreate(Sender: TObject);
begin
  RealFNew_KategoriBarang:=self;
end;

procedure TFNew_KategoriBarang.FormDestroy(Sender: TObject);
begin
  RealFNew_KategoriBarang:=nil;
end;

procedure TFNew_KategoriBarang.FormShow(Sender: TObject);
begin
  Load;
end;

end.
