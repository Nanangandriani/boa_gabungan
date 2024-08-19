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
  Data.DB, MemDS, DBAccess, Uni, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

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
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    Qfakturyears: TStringField;
    Qfakturstarting_number: TIntegerField;
    Qfakturfinal_number: TIntegerField;
    Qfakturjum_nonaktif: TLargeintField;
    Qfakturjum_aktif: TLargeintField;
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

uses UNewFakturPajak, Uupdate_faktur, UDataModule, UHomeLogin;

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
    if Qfaktur.FieldByName('jum_aktif').AsLargeInt<>0 then
    begin
      MessageDlg('Maaf faktur tidak dapat diubah, faktur sudah digunakan..!!',mtInformation,[mbRetry],0);
    end
    else
    begin
      {Finput_faktur_pajak.edid.Text:='';
      Finput_faktur_pajak.edfaktur.Text:='';
      with Qfaktur do
      begin
        Finput_faktur_pajak.edid.Text := FieldByName('id').AsString;
        Finput_faktur_pajak.edfaktur.Text := FieldByName('no_faktur').AsString;
      end;}
      Finput_faktur_pajak.Show;
    end;
end;

procedure TFFakturPajak.FormShow(Sender: TObject);
begin
   dxBarRefreshClick(sender);
end;

procedure TFFakturPajak.Refresh;
begin
   DBGridEh1.StartLoadingStatus();
   try
   with QFaktur do
   begin
       close;
       sql.Clear;
       sql.Text:=' select a.years, a.starting_number, a.final_number, '+
                 ' case when jum_nonaktif is null then 0 else jum_nonaktif end jum_nonaktif, '+
                 ' case when jum_aktif is null then 0 else jum_aktif end jum_aktif '+
                 ' from t_invoicetax a '+
                 ' LEFT JOIN (SELECT years, starting_number, final_number , '+
                   ' COUNT(no_invoice_tax) as jum_nonaktif from t_invoicetax_det '+
                   ' where status=false '+
                   ' GROUP BY years, starting_number, final_number  , status) non '+
                   ' ON a.years=non.years and '+
                   ' a.starting_number=non.starting_number and '+
                   ' a.final_number=non.final_number '+
                 ' LEFT JOIN (SELECT years, starting_number, final_number , '+
                   ' COUNT(no_invoice_tax) as jum_aktif from t_invoicetax_det '+
                   ' where status=true '+
                   ' GROUP BY years, starting_number, final_number  , status) aktif '+
                   ' ON a.years=aktif.years and '+
                   ' a.starting_number=aktif.starting_number and '+
                   ' a.final_number=aktif.final_number '+
                 ' where a.deleted_at is null';
       open;
   end;
   finally
   DBGridEh1.FinishLoadingStatus();
   end;
   {QFaktur.Active:=False;
   QFaktur.Active:=True;
   QFaktur.Close;
   QFaktur.Open;}

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
              with dm.Qtemp1 do
              begin
                Close;
                Sql.Clear;
                //Sql.Text:='Delete from master_data.t_faktur where id='+QuotedStr(DBGridEh1.Fields[0].AsString);
                Sql.Text:=' Select * from t_invoicetax_det '+
                          ' where years='+QuotedStr(DBGridEh1.Fields[0].AsString)+' '+
                          ' AND status=true AND starting_number='+QuotedStr(DBGridEh1.Fields[1].AsString)+' '+
                          ' AND final_number='+QuotedStr(DBGridEh1.Fields[2].AsString) ;
                Open;
              end;

              if dm.Qtemp1.RecordCount<>0 then
              begin
                ShowMessage('Proses Hapus Tidak Dapat Dilanjutkan, Detail Faktur Sudah Digunakan... !!!');
                Exit;
              end;

              if dm.Qtemp1.RecordCount=0 then
              begin
              with dm.qtemp do
              begin
                Close;
                Sql.Clear;
                //Sql.Text:='Delete from master_data.t_faktur where id='+QuotedStr(DBGridEh1.Fields[0].AsString);
                Sql.Text:=' Update t_invoicetax set '+
                          ' deleted_at=now(),'+
                          ' deleted_by='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                          ' where years='+QuotedStr(DBGridEh1.Fields[0].AsString)+' '+
                          ' AND starting_number='+QuotedStr(DBGridEh1.Fields[1].AsString)+' '+
                          ' AND final_number='+QuotedStr(DBGridEh1.Fields[2].AsString) ;
                ExecSQL;
              end;
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
   Finput_faktur_pajak.showmodal;
end;

initialization
  RegisterClass(TFFakturPajak);

end.
