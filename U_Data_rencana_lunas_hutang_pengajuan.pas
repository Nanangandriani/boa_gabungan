unit U_Data_rencana_lunas_hutang_pengajuan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls,
  Vcl.ComCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, Data.DB, MemDS, DBAccess,
  Uni, RzButton, MemTableDataEh, MemTableEh;

type
  TFDataRenanaLunasHutangPengajuan = class(TForm)
    RzPanel1: TRzPanel;
    Button4: TButton;
    txtnmsupp: TEdit;
    cbsupp: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    DtSelesai: TDateTimePicker;
    DtMulai: TDateTimePicker;
    Label1: TLabel;
    RzPanel2: TRzPanel;
    PGC1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    QdataRencana: TUniQuery;
    DSRenana: TDataSource;
    QdataRencanaid: TLargeintField;
    QdataRencanabank: TStringField;
    QdataRencanasupplier_code: TStringField;
    QdataRencanainv_no: TStringField;
    QdataRencanafaktur_no: TStringField;
    QdataRencanafaktur_date: TDateField;
    QdataRencanacek_no: TStringField;
    QdataRencanafactory_code: TStringField;
    QdataRencanapph_account: TStringField;
    QdataRencanacek_date: TDateField;
    QdataRencanapaid_date: TDateField;
    QdataRencanaperiode1: TDateField;
    QdataRencanaperiodetempo1: TDateField;
    QdataRencanaperiode2: TDateField;
    QdataRencanaperiodetempo2: TDateField;
    QdataRencanaamount: TFloatField;
    QdataRencananpph: TFloatField;
    QdataRencanapaid_status: TSmallintField;
    QdataRencanadebt_type: TIntegerField;
    QdataRencanausername: TStringField;
    QdataRencanaexchange_rate: TFloatField;
    QdataRencanadolar_amount: TFloatField;
    QdataRencanaapprove_status: TBooleanField;
    QdataRencanasj_no: TStringField;
    QdataRencanaplan_to: TSmallintField;
    QdataRencanavoucher_no: TStringField;
    QdataRencanapph_name: TStringField;
    QdataRencanaapprove_name: TStringField;
    QdataRencanasupplier_name: TStringField;
    BCari: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    Memdatarencana: TMemTableEh;
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BCariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataRenanaLunasHutangPengajuan: TFDataRenanaLunasHutangPengajuan;

implementation

{$R *.dfm}

uses UDataKolektor, UDataModule, USearch_Supplier;

procedure TFDataRenanaLunasHutangPengajuan.BCariClick(Sender: TObject);
var query :string;
begin
    query:='SELECT a.*,b.supplier_name FROM cash_banks.t_paid_debt_det A '+
           'INNER JOIN t_supplier b on a.supplier_code=b.supplier_code ';

    with QdataRencana do
    begin
       close;
       sql.clear;
       sql.add(query);
       if (Length(cbsupp.Text)=0)   then
         begin
           sql.add('where a.approve_status=true and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+'  and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' ');
           sql.add('order by a.supplier_code,a.faktur_date,a.faktur_no');
         end
         else
         begin
           sql.add('where a.supplier_code='+QuotedStr(cbsupp.Text)+'  and stat_approve=true and  (a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' ');
           sql.add('order by a.supplier_ode,a.faktur_date,a.faktur_no');
         end;
       open;
    end;
    QdataRencana.Close;
    QdataRencana.Open;
end;

procedure TFDataRenanaLunasHutangPengajuan.Button4Click(Sender: TObject);
begin
  with FSearch_Supplier do
    begin
       QSupplier.Close;
       QSupplier.Open;
    end;
    FSearch_Supplier.Caption:='Master Data Supplier';
    FSearch_Supplier.vcall:='Datarencanalunashutangajuan';
    FSearch_Supplier.ShowModal;
end;

procedure TFDataRenanaLunasHutangPengajuan.FormShow(Sender: TObject);
begin
   TabSheet2.TabVisible:=false;
   TabSheet3.TabVisible:=false;
   //if QdataRencana.Active=false then
      //QdataRencana.Active:=true;
   dtmulai.Date:=Now;
   dtselesai.Date:=Now;
   BCariClick(sender);
end;

end.
