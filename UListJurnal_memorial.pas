unit UListJurnal_memorial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxRibbonCustomizationForm,
  MemTableDataEh, Data.DB, DataDriverEh, MemTableEh, dxBar, dxBarExtItems,
  MemDS, DBAccess, Uni, cxClasses, dxRibbon, RzButton, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzLabel, Vcl.ExtCtrls, RzPanel, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, RzTabs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, frxClass, frxDBSet,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  dxSkinBasic, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxCore;

type
  TFlist_jurnal_memorial = class(TForm)
    PgControl: TRzPageControl;
    Tablist: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    Qlist_jurnal: TUniQuery;
    DsJurnal: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarImageCombo1: TdxBarImageCombo;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    BtnNew: TdxBarButton;
    BtnUpdate: TdxBarButton;
    BtnRefresh: TdxBarButton;
    dxBarButton9: TdxBarButton;
    Btn_New: TdxBarLargeButton;
    dxBarButton6: TdxBarButton;
    MemTableEh1: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    DBGridEh2: TDBGridEh;
    DSjurnal_detail: TDataSource;
    Qjurnal_detail: TUniQuery;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton3: TdxBarLargeButton;
    Rpt: TfrxReport;
    QBukti_memo: TUniQuery;
    DbBukti_memo: TfrxDBDataset;
    QBukti_memo2: TUniQuery;
    DbBukti_memo2: TfrxDBDataset;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure DBGridEh1AdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
      AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure ActPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
  end;

//var
Function  Flist_jurnal_memorial: TFlist_jurnal_memorial;

implementation

{$R *.dfm}

uses UDatamodule, UNewJurnal_memorial, UMainMenu;//, UNewJurnal_memorial;//, UNewJurnal_memorial;
var
//  FPakai_BahanPersbu: TFPakai_BahanPersbu;
  RealFMemorial: TFlist_jurnal_memorial;

function FList_jurnal_memorial: TFlist_jurnal_memorial;
begin
  if RealFMemorial <> nil then
    Flist_jurnal_memorial:= RealFMemorial
  else
    Application.CreateForm(TFlist_jurnal_memorial, Result);
end;

procedure TFlist_jurnal_memorial.Refresh;
begin
  DBGridEh1.StartLoadingStatus();
    try
      Qlist_jurnal.Close;
      Qlist_jurnal.Open;
      MemTableEh1.Close;
      MemTableEh1.Open;
      Qjurnal_detail.Close;
      Qjurnal_detail.Open;
    finally
  DBGridEh1.FinishLoadingStatus();
  end;
end;

procedure TFlist_jurnal_memorial.ActBaruExecute(Sender: TObject);
begin
  FNewJurnal_memo.Clear;
  Status:=0;
  FNewJurnal_memo.Show;
end;

procedure TFlist_jurnal_memorial.ActDelExecute(Sender: TObject);
begin
 {if MessageDlg('Apakah anda yakin ingin menghapus data ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    with Dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Delete From t_jurnal_memorial where no_bukti_memo = '+QuotedStr(DBGridEh1.Fields[0].AsString);
      execsql;
    end;
    with Dm.Qtemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='Delete From t_jurnal_memorial_detail where no_bukti_memo = '+QuotedStr(DBGridEh1.Fields[0].AsString);
      execsql;
    end;
    Refresh;
    MessageDlg('Hapus Berhasil..!!',mtInformation,[MBOK],0);
  end;            }
end;

procedure TFlist_jurnal_memorial.ActPrintExecute(Sender: TObject);
begin
with QBukti_memo do
begin
  close;
  sql.Clear;
{  sql.Text:='select a.tgl,keterangan,b.*,c.nama_perkiraan,to_char((SELECT (date_trunc(''MONTH'', tgl ) + INTERVAL ''1 MONTH - 1 day'')::date as hari),''dd'') tgl2'+
  ' from t_jurnal_memorial a INNER JOIN t_jurnal_memorial_detail b on a.no_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan c '+
  ' on b.akun_kredit=c.kode WHERE a.no_bukti_memo='+QuotedStr(MemTableEh1['no_bukti_memo'])+' and kredit >0 '; }
 sql.Text:='select * from "V_BukuMemorial" WHERE memo_no='+QuotedStr(MemTableEh1['memo_no'])+' and kredit >0 ';
  open;
end;
with QBukti_memo2 do
begin
  close;
  sql.Clear;
 { sql.Text:='select a.tgl,keterangan,b.*,c.nama_perkiraan from t_jurnal_memorial a INNER JOIN '+
  ' t_jurnal_memorial_detail b on a.no_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan c '+
  ' on b.akun_kredit=c.kode WHERE a.no_bukti_memo='+QuotedStr(MemTableEh1['no_bukti_memo'])+'order by debit desc';   }
 sql.Text:='select * from "V_BukuMemorial" WHERE memo_no='+QuotedStr(MemTableEh1['memo_no'])+'order by debit desc';

  open;
end;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BuktiMemorial.Fr3');

  if Rpt.FindObject('nama_pt') <> nil then
  TfrxMemoView(Rpt.FindObject('nama_pt')).Memo.Text := SBU;
  //  Tfrxmemoview(Rpt.FindObject('Mtgl')).Memo.Text:='Tanggal  : '+FormatDateTime('dd mmmm yyyy',(MemTableEh1['tgl']));
  Rpt.ShowReport();
end;

procedure TFlist_jurnal_memorial.ActRoExecute(Sender: TObject);
begin
  Refresh;
end;

procedure TFlist_jurnal_memorial.ActUpdateExecute(Sender: TObject);
begin
  Status:=1;
  FNewJurnal_memo.Show;
  FNewJurnal_memo.Enabled:=true;
  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='SELECT case when notes_id isnull then a.notes else concat(b.notes,'' '', f_bulan(a.trans_month::integer),'' '',a.trans_year )end'+
    ' keterangan,case when notes_id ISNULL then a.notes else b.notes end ket,b.notes,a.memo_no,a.trans_date, '+
    ' a.bk_no,a.faktur_no,a.rounding_status,a.post_status,a.koreksi_status,f_bulan(a.trans_month::integer) bln,a.trans_year,a.notes_id FROM   '+
    '	t_memorial_journal AS a LEFT JOIN t_memorial_notes AS b ON a.notes_id=b.id '+
    ' where memo_no='+QuotedStr(DBGridEh1.Fields[0].AsString)+' order by a.id desc';
    Open;
  end;
  if dm.Qtemp.FieldByName('post_status').AsInteger=0 then
  begin
    FNewJurnal_memo.Clear;
    with MemTableEh1 do
    begin
      FNewJurnal_memo.edno_bukti_memorial.Text:=FieldByName('memo_no').AsString;
      FNewJurnal_memo.DTtgl.Text:=FieldByName('trans_date').AsString;
      FNewJurnal_memo.Memket.Text:=FieldByName('keterangan').AsString;
      FNewJurnal_memo.cbbulan.Text:=FieldByName('bln').AsString;
      FNewJurnal_memo.edth.Text:=FieldByName('trans_year').AsString;
      FNewJurnal_memo.Edkd_ket.Text:=FieldByName('notes_id').AsString;
      FNewJurnal_memo.Memket.Text:=FieldByName('ket').AsString;
      if FieldByName('bk_no').AsString<>'' then
      begin
        FNewJurnal_memo.Checkpembuatan.Checked:=false;
        FNewJurnal_memo.CheckpembuatanClick(sender);
        FNewJurnal_memo.edno_bk_pembulatan.Text:=FieldByName('bk_no').AsString;
        FNewJurnal_memo.edno_faktur_pembulatan.Text:=FieldByName('faktur_no').AsString;
      end
      else if FieldByName('bk_no').AsString='' then
      begin
        FNewJurnal_memo.Checkpembuatan.checked:=false;
        FNewJurnal_memo.Panel_pembulatan.Visible:=false;
      end;
    end;
    with dm.Qtemp do
    begin
      Close;
      Sql.Clear;
      {Sql.Text:='select a.*,b.account_name from t_memorial_journal_detail a  '+
      ' left join t_ak_account_sub b on a.account_code2=b.code '+
      ' where memo_no='+QuotedStr(DBGridEh1.Fields[0].AsString)+' order by a.id asc'; }
      Sql.Text:='select a.*,case when b.account_name is null then c.account_name else '+
      ' b.account_name end account_name from t_memorial_journal_detail a '+
      ' left join t_ak_account_sub b on a.account_code=b.account_code2 '+
      ' left join t_ak_account c on a.account_code=c.code '+
      ' where memo_no='+QuotedStr(DBGridEh1.Fields[0].AsString)+' order by a.id asc';
      Open;
    end;
    Qjurnal_detail.First;
    while not Qjurnal_detail.Eof do
    begin
      with Qjurnal_detail do
      begin
        FNewJurnal_memo.MemTableEh1.Insert;
        FNewJurnal_memo.MemTableEh1['kode_akun']:=FieldByName('account_code').AsString;
        FNewJurnal_memo.MemTableEh1['nama_akun']:=FieldByName('nama_akun').AsString;
        FNewJurnal_memo.MemTableEh1['debit']:=FieldByName('debit').AsString;
        FNewJurnal_memo.MemTableEh1['kredit']:=FieldByName('kredit').AsString;
        FNewJurnal_memo.MemTableEh1.Post;
      end;
      Qjurnal_detail.Next;
    end;
  end
  else
  begin
    MessageDlg('Maaf Memorial '+DBGridEh1.Fields[0].AsString+' belum ada approval koreksi, tidak dapat diubah..!!',mtInformation,[MBOK],0);
  end;
end;

procedure TFlist_jurnal_memorial.DBGridEh1AdvDrawDataCell(
  Sender: TCustomDBGridEh; Cell, AreaCell: TGridCoord; Column: TColumnEh;
  const ARect: TRect; var Params: TColCellParamsEh; var Processed: Boolean);
var
status_posting: String;
begin
  status_posting := Column.Field.DataSet.FieldByName('post_status').AsString;
  if (status_posting ='1') then
  begin
    Params.Background := $0091FFFF;
  end;
end;

procedure TFlist_jurnal_memorial.DBGridEh1DblClick(Sender: TObject);
begin
  ActUpdateExecute(sender);
end;

procedure TFlist_jurnal_memorial.dxBarLargeButton2Click(Sender: TObject);
begin
{  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='select status_post from t_jurnal_memorial where no_bukti_memo='+QuotedStr(DBGridEh1.Fields[0].AsString);
    Open;
  end;
  if dm.Qtemp.FieldByName('status_post').AsString='0' then
  begin
    if MessageDlg('Apakah anda yakin ingin POSTING memorial '+DBGridEh1.Fields[0].AsString+' ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      if not dm.Koneksi.InTransaction then
      dm.Koneksi.StartTransaction;
      try

      with Dm.Qtemp2 do
      begin
        close;
        Sql.Clear;
        Sql.Text:= 'update t_jurnal_memorial set status_post=:parstatus_post '+
                   'where no_bukti_memo=:parno_bukti_memo';
        parambyname('parstatus_post').Value:='1';
        parambyname('parno_bukti_memo').Value:=DBGridEh1.Fields[0].AsString;
        ExecSql;
      end;

      MessageDlg('Posting berhasil..!!',mtInformation,[MBOK],0);
      Refresh;
      Dm.Koneksi.Commit;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
    end;
  end
  else if dm.Qtemp.FieldByName('status_post').AsString='1' then
  begin
    MessageDlg('Memorial '+DBGridEh1.Fields[0].AsString+' sudah di posting!!',mtWarning,[mbCancel],0);
  end;  }
end;

procedure TFlist_jurnal_memorial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Qlist_jurnal.Close;
  MemTableEh1.Close;
  Qjurnal_detail.Close;
  Action:=cafree;
end;

procedure TFlist_jurnal_memorial.FormCreate(Sender: TObject);
begin
  RealFMemorial:=self;
end;

procedure TFlist_jurnal_memorial.FormDestroy(Sender: TObject);
begin
  RealFMemorial:=nil;
end;

procedure TFlist_jurnal_memorial.FormShow(Sender: TObject);
begin
{  Qlist_jurnal.Close;
  Qlist_jurnal.Open;
  MemTableEh1.Close;
  MemTableEh1.Open;
  Qjurnal_detail.Close;
  Qjurnal_detail.Open;          }
end;


initialization
registerclass(TFlist_jurnal_memorial);


end.
