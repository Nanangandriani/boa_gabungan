unit URpt_Jurnal_Khusus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni, frxClass,
  RzButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RzEdit, frxDBSet, RzCmboBx,
  Vcl.Samples.Gauges;

type
  TFRpt_Jurnal_Khusus = class(TForm)
    DBJurnal_Khusus: TfrxDBDataset;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    DtMulai: TRzDateTimeEdit;
    DtSelesai: TRzDateTimeEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    Rpt: TfrxReport;
    QRpt_Jurnal_Khusus: TUniQuery;
    Label1: TLabel;
    Label4: TLabel;
    CbModul: TRzComboBox;
    procedure BPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Load;
  end;

//var
Function  FRpt_Jurnal_Khusus: TFRpt_Jurnal_Khusus;

implementation

{$R *.dfm}

uses UDatamodule, umainmenu;
var
  realfRptjk : TFRpt_Jurnal_Khusus;
// implementasi function
function fRpt_Jurnal_khusus: TFRpt_Jurnal_Khusus;
begin
  if realfRptjk<> nil then
    FRpt_Jurnal_Khusus:= realfRptjk
  else
    Application.CreateForm(TFRpt_Jurnal_Khusus, Result);
end;
procedure TFRpt_Jurnal_Khusus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFRpt_Jurnal_Khusus.FormCreate(Sender: TObject);
begin
  realfRptjk:=self;
end;

procedure TFRpt_Jurnal_Khusus.FormDestroy(Sender: TObject);
begin
  realfRptjk:=nil;
end;

procedure TFRpt_Jurnal_Khusus.FormShow(Sender: TObject);
begin
   Load;
end;

procedure TFRpt_Jurnal_Khusus.Load;
begin
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:=' select * from t_ak_module';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    CbModul.Items.Add(Dm.Qtemp['module_name']);
    Dm.Qtemp.Next;
  end;
end;

procedure TFRpt_Jurnal_Khusus.BBatalClick(Sender: TObject);
begin
Close;
end;

procedure TFRpt_Jurnal_Khusus.BPrintClick(Sender: TObject);
begin
   with QRpt_Jurnal_Khusus do
   begin
      close;
      sql.Clear;
      sql.Text:='select A.trans_no,a.trans_date,sum(case when status_dk =''D'' then amount else 0 end) db,'+
      ' sum(case when status_dk =''K'' then amount else 0 end) kd, a.account_code,B.account_name,c.module_name,a.module_id '+
      ' from t_general_ledger_real a inner join t_ak_account b on A.account_code=b.code INNER JOIN t_ak_module c ON a.module_id=c.id '+
      ' where module_name='+QuotedStr(CbModul.Text)+' and trans_date >= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
      ' and trans_date<= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai.Date))+''+
      ' GROUP BY a.trans_no,a.trans_date , a.account_code,b.account_name,c.module_name,a.module_id,status_dk  '+
      ' order by a.trans_no,status_dk ASC';
      Execute;
   end;
   QRpt_Jurnal_Khusus.Open;
    if QRpt_Jurnal_Khusus.FieldByName('trans_no').AsString=''  then
    begin
      ShowMessage('Maaf data kosong');
    end else
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_jurnal_khusus.Fr3');
      Tfrxmemoview(Rpt.FindObject('MPeriode')).Memo.Text:='Periode  : '+FormatDateTime('dd MMMM yyy',DtMulai.Date)+' - '+FormatDateTime('dd MMMM yyy',DtSelesai.Date);
    //  Tfrxmemoview(Rpt.FindObject('Memo2')).Memo.Text:=''+SBU;
     // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
    //  SetMemo(Rpt,'MPT',' '+SBU+' ');
      //SetMemo(Rpt,'MPeriode',' '++' Rupiah ');
    Rpt.ShowReport();
end;


initialization
RegisterClass(TFRpt_Jurnal_Khusus);

end.
