unit UItem_Type;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBasic, dxSkinBlack,
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
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  dxRibbon, dxBar, cxClasses, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, RzBtnEdt, Vcl.Mask, RzEdit, RzButton, Vcl.ExtCtrls;

type
  TFItem_Type = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DBGridEh7: TDBGridEh;
    QType: TUniQuery;
    DsType: TDataSource;
    Label2: TLabel;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BCari: TRzBitBtn;
    EdType: TEdit;
    Label19: TLabel;
    Edkd_akun: TRzEdit;
    EdNm_akun: TRzButtonEdit;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    statustr:integer;
    id:string;
  end;

function FItem_Type: TFItem_Type;
var
  nm_form:string;

implementation

{$R *.dfm}

uses UDataModule, UNew_ItemType, UMainMenu;

var
  realFItem_Type: TFItem_Type;
// implementasi function
function FItem_Type: TFItem_Type;
begin
  if RealFItem_Type <> nil then
    Fitem_type:= RealFItem_Type
  else
    Application.CreateForm(TFItem_Type, Result);
end;

procedure TFItem_Type.ActBaruExecute(Sender: TObject);
begin
{  with FNew_ItemType do
  begin
    show;
    statustr:=0;
    EdType.Clear;
  end; }
  if messageDlg ('Anda Yakin Menyimpan Data ini ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
  if not dm.koneksi.InTransaction then
    if statustr=0 then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Insert into t_item_type(type,created_by,account_code)values(:type,:created_by,:acc_cd)';
                  ParamByName('type').Value:=EdType.Text;
                  ParamByName('created_by').value:=nm;
                  ParamByName('acc_cd').Value:=Edkd_akun.Text;
                  Execute;
      end;
    end;
    if statustr=1 then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='update t_item_type set type=:type,updated_by=:updated_by,updated_at=now(), '+
                  'account_code=:acc_cd where "id"=:id ';
                  ParamByName('type').Value:=EdType.Text;
                  ParamByName('updated_by').value:=nm;
            //      ParamByName('id').Value:=id;
                  ParamByName('acc_cd').Value:=Edkd_akun.Text;
                  ExecSQL;
      end;
    end;
    BBatalClick(sender);
    ShowMessage('Data Berhasil di Simpan');
  end;
end;

procedure TFItem_Type.ActDelExecute(Sender: TObject);
begin
  if messageDlg ('Anda Yakin Hapus Data ini ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
  if not dm.koneksi.InTransaction then
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Update master_data.t_item_type set deleted_at=now(),deleted_by=:deleted_by where "id"=:id';
              ParamByName('deleted_by').Value:=nm;
              ParamByName('id').Value:=QType['id'];
    ExecSQL;
  end;
    ActROExecute(sender);
    ShowMessage('Data Berhasil di Hapus');
  end;
end;

procedure TFItem_Type.ActROExecute(Sender: TObject);
begin
  DBGridEh7.StartLoadingStatus();
    QType.Close;
    QType.Open;
  DBGridEh7.FinishLoadingStatus();
end;

procedure TFItem_Type.ActUpdateExecute(Sender: TObject);
begin
  with FNew_ItemType do
  begin
    show;
    statustr:=1;
    id:=QType['id'];
    EdType.Text:=QType['type'];
    Edkd_akun.Text:=QType['account_code'];
    EdNm_akun.Text:=QType['account_name'];
  end;
end;

procedure TFItem_Type.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFItem_Type.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFItem_Type.FormCreate(Sender: TObject);
begin
  realFItem_Type:=self;
end;

procedure TFItem_Type.FormDestroy(Sender: TObject);
begin
  realFItem_Type:=nil;
end;

procedure TFItem_Type.FormShow(Sender: TObject);
begin
  ActROExecute(sender);
end;

end.
