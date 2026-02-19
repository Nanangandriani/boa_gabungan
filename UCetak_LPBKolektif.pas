unit UCetak_LPBKolektif;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni, frxClass,
  frxDBSet, RzButton, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls, Vcl.Mask, RzEdit;

type
  TFCetak_LPbKolektif = class(TForm)
    Label1: TLabel;
    dtmulai: TRzDateTimeEdit;
    RzPanel1: TRzPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    DbLPB: TfrxDBDataset;
    QReportLPB: TUniQuery;
    Rpt: TfrxReport;
    Label2: TLabel;
    cbkategori: TComboBox;
    procedure BPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    subquery:string;
    Procedure Queryreport;
  end;

var
  FCetak_LPbKolektif: TFCetak_LPbKolektif;

implementation

{$R *.dfm}

uses UDataModule;

Procedure TFCetak_LPbKolektif.Queryreport;
begin
 subquery:='select a.trans_no,a.order_no,a.trans_date,a.po_no,a.created_by,a.remark,a.spb_no,a.sj_no,'+
           ' a.faktur_no,a.import_duty,a.faktur_date,a.due_date,a.supplier_code,a.account_code,a.purchase_type,'+
           ' a.debt_amount,a.payment_amount,a.debt_remaining,a.status,a.valas,a.valas_value,a.updated_at,a.updated_by, '+
            ' a.pib_no,	a.correction_status,a.plan_stat,a.approval_status,a.approval,a.sbu_code, a.trans_month, '+
            ' a.trans_year,a.tgl_jatuh_tempo,C.vehicle_no,C.driver,D.supplier_name,F.item_name,e.item_stock_code,e.unit,e.qty,e.ppn_rp,'+
            ' e.pph_rp,e.ppn_pembulatan,e.subtotalrp,e.grandtotal,e.subtotal,e.price,g.ttd,e.account_pph_code,a.um_value '+
            ' from t_purchase_invoice A Left join t_spb C on A.spb_no=C.spb_no '+
            ' inner join t_purchase_invoice_det E on A.trans_no=E.trans_no '+
            ' inner join t_supplier D on A.supplier_code=D.supplier_code '+
            ' inner join t_item_stock F on E.item_stock_code=F. item_stock_code '+
            ' left JOIN t_user g on a.created_by=g.user_name ';
end;

procedure TFCetak_LPbKolektif.BPrintClick(Sender: TObject);
begin
 subquery:='select a.trans_no,a.order_no,a.trans_date,a.po_no,a.created_by,a.remark,a.spb_no,a.sj_no,'+
           ' a.faktur_no,a.import_duty,a.faktur_date,a.due_date,a.supplier_code,a.account_code,a.purchase_type,'+
           ' a.debt_amount,a.payment_amount,a.debt_remaining,a.status,a.valas,a.valas_value,a.updated_at,a.updated_by, '+
            ' a.pib_no,	a.correction_status,a.plan_stat,a.approval_status,a.approval,a.sbu_code, a.trans_month, '+
            ' a.trans_year,a.tgl_jatuh_tempo,C.vehicle_no,C.driver,D.supplier_name,F.item_name,e.item_stock_code,e.unit,e.qty,e.ppn_rp,'+
            ' e.pph_rp,e.ppn_pembulatan,e.subtotalrp,e.grandtotal,e.subtotal,e.price,g.ttd,e.account_pph_code,a.um_value '+
            ' from t_purchase_invoice A Left join t_spb C on A.spb_no=C.spb_no '+
            ' inner join t_purchase_invoice_det E on A.trans_no=E.trans_no '+
            ' inner join t_supplier D on A.supplier_code=D.supplier_code '+
            ' inner join t_item_stock F on E.item_stock_code=F. item_stock_code '+
            ' left JOIN t_user g on a.created_by=g.user_name ';
  if cbkategori.Text='' then
  begin
    WITH QReportLPB do
    begin
      close;
      sql.Clear;
      sql.Text:=''+subquery+''+
      ' where a.trans_date='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtmulai.date))+''+
      ' and a.deleted_at ISNULL order by e.id asc';
      Execute;
    end;
  end;
   if cbkategori.Text<>'' then
  begin
    WITH QReportLPB do
    begin
      close;
      sql.Clear;
      sql.Text:=''+subquery+''+
      ' where a.purchase_type='+QuotedStr(cbkategori.Text)+' and a.trans_date='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtmulai.date))+''+
      ' and a.deleted_at ISNULL order by e.id asc';
      Execute;
    end;
  end;
   //   Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\frx_LaporanPenerimaanBarangPPNgb.fr3');
     Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\frx_LaporanPenerimaanBarang_kolektif.fr3');
     Rpt.ShowReport();
end;

procedure TFCetak_LPbKolektif.FormShow(Sender: TObject);
begin
  with dm.qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select DISTINCT type from t_item_type order by type';
    Execute;
  end;
  dm.Qtemp.First;
  while not dm.Qtemp.eof do
  begin
    cbkategori.items.add(dm.Qtemp['type']);
    dm.Qtemp.Next;
  end;

end;

end.
