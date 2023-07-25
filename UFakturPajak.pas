unit UFakturPajak;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, dxSkinsCore,
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
  dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  dxRibbon, dxBar, cxClasses, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni;

type
  TFFakturPajak = class(TForm)
    DBGridEh1: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DsFaktur: TDataSource;
    Qfaktur: TUniQuery;
    dxBarManager1Bar2: TdxBar;
    procedure dxBarLargeBaruClick(Sender: TObject);
    procedure dxBarUpdateClick(Sender: TObject);
    procedure dxBarRefreshClick(Sender: TObject);
    procedure dxBarDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
  end;

var
  FFakturPajak: TFFakturPajak;
  ItemReturn :Integer;

implementation

{$R *.dfm}

uses UNewFakturPajak, Uupdate_faktur, UDataModule;

procedure TFFakturPajak.dxBarRefreshClick(Sender: TObject);
begin
    DBGridEh1.StartLoadingStatus();
    try
      Qfaktur.Close;
      Qfaktur.Open;
    finally
    DBGridEh1.FinishLoadingStatus();
    end;
    Refresh;
end;

procedure TFFakturPajak.dxBarUpdateClick(Sender: TObject);
begin
    if Qfaktur.FieldByName('status').AsString='Aktif' then
    begin
      MessageDlg('Maaf faktur tidak dapat diubah, faktur sudah digunakan..!!',mtInformation,[mbRetry],0);
    end
    else
    begin
      Fupdate_faktur.edid.Text:='';
      Fupdate_faktur.edfaktur.Text:='';
      with Qfaktur do
      begin
        Fupdate_faktur.edid.Text := FieldByName('id').AsString;
        Fupdate_faktur.edfaktur.Text := FieldByName('no_faktur').AsString;
      end;
      Fupdate_faktur.Show;
    end;
end;

procedure TFFakturPajak.FormShow(Sender: TObject);
begin
   dxBarRefreshClick(sender);
end;

procedure TFFakturPajak.Refresh;
begin
    with QFaktur do
   begin
       close;
       sql.Clear;
       sql.Text:='select * from master_data.T_Faktur where deleted_at is null order by created_at Desc ';
       open;
   end;
   QFaktur.Active:=False;
   QFaktur.Active:=True;
   QFaktur.Close;
   QFaktur.Open;

    {DBGridEh1.StartLoadingStatus();
    try
      Qfaktur.Close;
      Qfaktur.Open;
    finally
    DBGridEh1.FinishLoadingStatus();
    end;}
end;

procedure TFFakturPajak.dxBarDeleteClick(Sender: TObject);
var i:integer;
begin
    if MessageDlg('Apakah anda yakin ingin menghapus data yang ditandai?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      if ItemReturn=0 then
      begin
      if DBGridEh1.SelectedRows.Count > 0 then
        begin
          with DBGridEh1.DataSource.DataSet do
          begin
          for i := 0 to DBGridEh1.SelectedRows.Count-1 do
            begin
              //GotoBookmark(Pointer(DBGridEh1.SelectedRows.Items[i]));
              GotoBookmark(DBGridEh1.SelectedRows.Items[i]);
              with dm.qtemp do
              begin
                Close;
                Sql.Clear;
                //Sql.Text:='Delete from master_data.t_faktur where id='+QuotedStr(DBGridEh1.Fields[0].AsString);
                Sql.Text:='Update master_data.t_faktur set deleted_at=:deleted_at,deleted_by=:deleted_by '+
                          'where id='+QuotedStr(DBGridEh1.Fields[0].AsString);
                parambyname('deleted_at').AsDateTime:=Now;
                parambyname('deleted_by').AsString:='Admin';
                ExecSQL;
              end;
            end;
          end;
        end;
      end;
      MessageDlg('Hapus Berhasil..!!',mtInformation,[MBOK],0);
      Refresh;
    end;
end;

procedure TFFakturPajak.dxBarLargeBaruClick(Sender: TObject);
begin
   Finput_faktur_pajak.Clear;
   Status:=0;
   Finput_faktur_pajak.panel_loader.Visible:=false;
   Finput_faktur_pajak.showmodal;
end;

end.
