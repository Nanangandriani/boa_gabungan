unit Udafcek_entry;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls, MemDS, DBAccess, Uni,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, dxBar, cxClasses, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFDaf_EntryCek = class(TForm)
    qnocek: TUniQuery;
    DSnocek: TDataSource;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
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
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridCek: TDBGridEh;
    qnocekcode: TIntegerField;
    qnocekcek_no: TStringField;
    qnocekbank: TStringField;
    qnocekrek_no: TStringField;
    qnocekcekbg: TStringField;
    qnocekstatus: TStringField;
    qnocekid: TGuidField;
    qnocekcreated_at: TDateTimeField;
    qnocekcreated_by: TStringField;
    qnocekupdated_at: TDateTimeField;
    qnocekupdated_by: TStringField;
    qnocekdeleted_at: TDateTimeField;
    qnocekdeleted_by: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    cbbank: TComboBox;
    DBGridCek_Det: TDBGridEh;
    Qnocek_master: TUniQuery;
    DSnocek_master: TDataSource;
    qnocektrans_no: TIntegerField;
    Qnocek_mastertrans_no: TIntegerField;
    Qnocek_masterfirst_nocek: TStringField;
    Qnocek_masterlast_nocek: TStringField;
    Qnocek_masterbank: TStringField;
    Qnocek_masterrek_no: TStringField;
    Qnocek_mastercreated_at: TDateTimeField;
    Qnocek_mastercreated_by: TStringField;
    Qnocek_masterupdated_at: TDateTimeField;
    Qnocek_masterupdated_by: TStringField;
    Qnocek_masterdeleted_at: TDateTimeField;
    Qnocek_masterdeleted_by: TStringField;
    Qnocek_masterheader: TStringField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure cbbankChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure refresh;
  end;


function FDaf_EntryCek: TFDaf_EntryCek;


implementation

{$R *.dfm}

uses Uimportnocek, UDataModule, UHomeLogin;


var
  RealFDaf_EntryCek: TFDaf_EntryCek;
  Status:integer;

function FDaf_EntryCek: TFDaf_EntryCek;
begin
  if RealFDaf_EntryCek <> nil then
     FDaf_EntryCek:= RealFDaf_EntryCek
  else
    Application.CreateForm(TFDaf_EntryCek, Result);
end;


procedure TFDaf_EntryCek.ActBaruExecute(Sender: TObject);
begin
    Status:=0;
    if not assigned(FImportnocek) then
    FImportnocek:=TFImportnocek.create(application);
    FImportnocek.show;
    FImportnocek.Caption:='Input Nomor Cek';
    FImportnocek.clear;

end;

procedure TFDaf_EntryCek.ActDelExecute(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridCek.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
    then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:=' Update t_nocek_master set deleted_at=:deleted_at,deleted_by=:deleted_by '+
                ' where trans_no='+QuotedStr(DBGridCek.Fields[0].AsString);
      parambyname('deleted_at').AsDateTime:=Now();
      parambyname('deleted_by').AsString:=FHomeLogin.EdUser.Text;
      Execute;
    end;
    with dm.Qtemp1 do
    begin
      Close;
      sql.Clear;
      sql.Text:=' Update t_nocek set deleted_at=:deleted_at,deleted_by=:deleted_by '+
                ' where trans_no='+QuotedStr(DBGridCek.Fields[0].AsString);
      parambyname('deleted_at').AsDateTime:=Now();
      parambyname('deleted_by').AsString:=FHomeLogin.EdUser.Text;
      Execute;
    end;
    ActROExecute(sender);
    ShowMessage('Data Berhasil di Hapus');
    end;
end;

procedure TFDaf_EntryCek.ActRoExecute(Sender: TObject);
begin
    DBGridCek.StartLoadingStatus();
    DBGridCek.FinishLoadingStatus();
    Qnocek_master.Close;
    Qnocek.Close;
    Qnocek_master.Open;
    Qnocek.Open;
end;

procedure TFDaf_EntryCek.ActUpdateExecute(Sender: TObject);
begin
    with qnocek do
    begin
        close;
        sql.Clear;
        sql.Text:=' select * from t_nocek where trans_no='+DBGridCek.Fields[0].Asstring;
        ExecSQL;
    end;
    FImportnocek.cbcek.Text:=qnocek.FieldByName('cekbg').Asstring;

    with FImportnocek do
    begin
      show;
      Status:=1;
      caption:='Update No Cek';

      with qnocek_master do
      begin
          cbbank.Text:=qnocek_master.FieldByName('bank').AsString;
          cbrek.Text:=qnocek_master.FieldByName('rek_no').AsString;
          ed_trans_no.Text:=qnocek_master.FieldByName('trans_no').Value;

          ed_header.Text:=qnocek_master.FieldByName('header').Asstring;
      end;

    end;

    {with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT a.*,b.cek_no,b.bank,b.rek_no FROM t_nocek_master a INNER JOIN t_nocek b on a.trans_no=b.trans_no '+
                'WHERE a.trans_no='+QuotedStr(DBGridCek.Fields[0].Value)+' '+
                'GROUP BY a.first_nocek,a.last_noceka.bank,a.rek_no,a.trans_no,	a.created_at,a.created_by,a.updated_at,a.updated_by,a.deleted_at,a.deleted_by,a.header,b.cek_no,b.bank,b.rek_no '+
                'ORDER BY trans_no ';
      Open;
    end;
    with FImportnocek do
    begin
      show;
      Status:=1;
      caption:='Update No Cek';

      cbbank.Text:=dm.Qtemp.FieldByName('bank').AsString;
      cbrek.Text:=dm.Qtemp.FieldByName('rek_no').AsString;
    end;}

end;

procedure TFDaf_EntryCek.cbbankChange(Sender: TObject);
begin
    if length(ComboBox1.Text)<>0 and length(cbbank.Text) then
    begin
      with qnocek do
      begin
        close;
        sql.clear;
        sql.add('select * from t_nocek where bank='+QuotedStr(cbbank.Text)+' and cekbg='+QuotedStr(ComboBox1.Text)+' and status=''N''');
        sql.add('order by cek_no');
        open;
      end;
  end;
end;

procedure TFDaf_EntryCek.ComboBox1Change(Sender: TObject);
begin
    if length(ComboBox1.Text)<>0 and length(cbbank.Text) then
    begin
    with qnocek do
    begin
      close;
      sql.clear;
      sql.add('select * from t_nocek where bank='+QuotedStr(cbbank.Text)+' and cekbg='+QuotedStr(ComboBox1.Text)+' and status=''N''');
      sql.add('order by cek_no');
      open;
    end;
    end;
end;

procedure TFDaf_EntryCek.FormShow(Sender: TObject);
begin
    refresh;
    cbbank.Clear;
    with dm.qtemp2 do
    begin
      close;
      sql.clear;
      sql.add('select bank_code from t_bank');
      open;
      first;
    end;
    while not dm.qtemp2.Eof do
    begin
       cbbank.Items.add(dm.qtemp2.fieldbyname('bank_code').asstring);
       dm.qtemp2.Next;
    end;
end;

procedure TFDaf_EntryCek.refresh;
begin
   with Qnocek_master do
   begin
       close;
       sql.Clear;
       sql.Text:='select * from t_nocek_master where deleted_at is null order by trans_no ASC ';
       open;
   end;
   Qnocek_master.Close;
   Qnocek_master.open;

   with qnocek do
   begin
       close;
       sql.Clear;
       sql.Text:='select * from t_nocek where deleted_at is null order by trans_no ASC ';
       open;
   end;
   qnocek.Close;
   qnocek.Open;
end;

initialization
  RegisterClass(TFDaf_EntryCek);

end.
