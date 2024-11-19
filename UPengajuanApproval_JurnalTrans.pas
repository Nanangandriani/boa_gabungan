unit UPengajuanApproval_JurnalTrans;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RzTabs, MemTableDataEh, Data.DB, MemTableEh, DataDriverEh, MemDS, DBAccess,
  Uni, RzButton, Vcl.StdCtrls, Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzBtnEdt,
  Vcl.Samples.Gauges, Vcl.Grids, Vcl.DBGrids;

type
  TFPengajuan_AppJurnal_Trans = class(TForm)
    RzPageControl1: TRzPageControl;
    TabPembelian: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    MemPembelian: TMemTableEh;
    DsPembelian: TDataSource;
    TabPenjualan: TRzTabSheet;
    TabKas: TRzTabSheet;
    DBGridEh2: TDBGridEh;
    DsPenjualan: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    dtmulai: TRzDateTimeEdit;
    dtselesai: TRzDateTimeEdit;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    dtmulaipenj: TRzDateTimeEdit;
    dtselesaipenj: TRzDateTimeEdit;
    MemPenjualan: TMemTableEh;
    Label23: TLabel;
    Label24: TLabel;
    Edkodewilayah: TRzButtonEdit;
    Ednamawilayah: TEdit;
    Panel3: TPanel;
    BTampil_Penj: TRzBitBtn;
    Bselect: TRzBitBtn;
    BApprove: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    Panel4: TPanel;
    BTampil_Pemb: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    RzBitBtn7: TRzBitBtn;
    RzBitBtn8: TRzBitBtn;
    Qdetail_Pembelian: TUniQuery;
    Panel7: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Dtmulai_kas: TRzDateTimeEdit;
    Dtselesai_kas: TRzDateTimeEdit;
    Panel8: TPanel;
    Btampil_kas: TRzBitBtn;
    RzBitBtn11: TRzBitBtn;
    RzBitBtn12: TRzBitBtn;
    RzBitBtn13: TRzBitBtn;
    Ds_DetailPembelian: TDataSource;
    DBGridEh3: TDBGridEh;
    QDetail_Penjualan: TUniQuery;
    DsDetailPenjualan: TDataSource;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    DBGridEh6: TDBGridEh;
    Cbmodule: TComboBox;
    Label9: TLabel;
    MemKas: TMemTableEh;
    DsKas: TDataSource;
    DsDetail_kas: TDataSource;
    QDetail_kas: TUniQuery;
    procedure EdkodewilayahButtonClick(Sender: TObject);
    procedure BTampil_PembClick(Sender: TObject);
    procedure BTampil_PenjClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btampil_kasClick(Sender: TObject);
    procedure CbmoduleSelect(Sender: TObject);
    procedure RzBitBtn6Click(Sender: TObject);
    procedure BselectClick(Sender: TObject);
    procedure RzBitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    module_id:string;
  end;

function FPengajuan_AppJurnal_Trans: TFPengajuan_AppJurnal_Trans;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UMasterWilayah;

var
  RealFPengajuan_AppJurnal_Trans: TFPengajuan_AppJurnal_Trans;
// implementasi function
function FPengajuan_AppJurnal_Trans: TFPengajuan_AppJurnal_Trans;
begin
  if RealFPengajuan_AppJurnal_Trans <> nil then
    FPengajuan_AppJurnal_Trans:= RealFPengajuan_AppJurnal_Trans
  else
    Application.CreateForm(TFPengajuan_AppJurnal_Trans, Result);
end;

procedure TFPengajuan_AppJurnal_Trans.BTampil_PembClick(Sender: TObject);
begin
  MemPembelian.EmptyTable;
  MemPembelian.Active:=false;
  MemPembelian.Active:=true;
  with dm.qtemp do
  begin
    close;
    sql.clear;
    sql.text:='select sum(subtotalrp) subtot,sum(grandtotal) grandtot,sum(ppn) ppn,status_app,trans_no,faktur_no,sj_no,supplier_name,account_name,nm_perk,tgl,bln,approval_status,trans_date from ('+
    ' select (case WHEN a."approval_status"=''0'' THEN ''PENGAJUAN'' else ''APPROVE''  END) AS status_app,a.trans_no,a.faktur_no,a.sj_no, b.supplier_name,f.subtotalrp,grandtotal,'+
    ' f.ppn_rp+f.ppn_pembulatan ppn, c.account_name, d.account_name as nm_perk,to_char(trans_date,''dd'') tgl,to_char(trans_date,''mm'') bln,a.approval_status,a.trans_date from   '+
    ' purchase.t_purchase_invoice a Left join t_supplier b on a.supplier_code=b.supplier_code '+
    ' left join t_ak_account c on a.account_code=c.code'+
    ' left join t_ak_account d on a.account_um_code=d.code'+
    ' left join purchase.t_purchase_invoice_det f on a.trans_no=f.trans_no where a.deleted_at isnull  '+
    ' order by a.id desc) a where trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtmulai.date))+'and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtselesai.date))+''+
    ' GROUP BY status_app,trans_no,faktur_no,sj_no,supplier_name,account_name,nm_perk,tgl,bln ,approval_status,trans_date';
    Execute;
  end;
  dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    MemPembelian.Insert;
    MemPembelian['trans_no']:=dm.Qtemp['trans_no'];
    MemPembelian['faktur_no']:=dm.Qtemp['faktur_no'];
    MemPembelian['supplier_name']:=dm.Qtemp['supplier_name'];
    MemPembelian['subtot']:=dm.Qtemp['subtot'];
    MemPembelian['ppn']:=dm.Qtemp['ppn'];
    MemPembelian['grandtot']:=dm.Qtemp['grandtot'];
    MemPembelian['approval_status']:=dm.Qtemp['approval_status'];
    MemPembelian['trans_date']:=dm.Qtemp['trans_date'];
    MemPembelian['approval_status']:=dm.Qtemp['approval_status'];
    MemPembelian.Post;
    dm.Qtemp.Next;
  end;
  Qdetail_Pembelian.Close;
  Qdetail_Pembelian.Open;
end;

procedure TFPengajuan_AppJurnal_Trans.BTampil_PenjClick(Sender: TObject);
begin
  MemPenjualan.EmptyTable;
  MemPenjualan.Active:=false;
  MemPenjualan.Active:=true;
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:='SELECT a.created_at,a.no_inv_tax,a.trans_no,"a".pph_value,"a".ppn_value,"a".sub_total,"a".grand_tot,'+
    '	"a".name_cust,"a".code_cust,"a".trans_date,b.approved_status FROM sale.t_selling AS "a" left JOIN t_general_ledger AS b'+
    '	ON "a".trans_no = b.trans_no WHERE "a".deleted_at IS NULL  and  '+
    ' a.trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtmulaipenj.date))+'and a.trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtselesaipenj.date))+''+
    ' GROUP BY a.created_at,a.no_inv_tax,a.trans_no,"a".pph_value,"a".ppn_value,"a".sub_total,"a".grand_tot,'+
    '	"a".name_cust,"a".code_cust,"a".trans_date,b.approved_status ORDER BY "a".created_at DESC ';
    Execute;
  end;
  dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    MemPenjualan.Insert;
    MemPenjualan['trans_no']:=dm.Qtemp['trans_no'];
    MemPenjualan['faktur_no']:=dm.Qtemp['no_inv_tax'];
    MemPenjualan['name_cust']:=dm.Qtemp['name_cust'];
    MemPenjualan['subtot']:=dm.Qtemp['sub_total'];
    MemPenjualan['ppn']:=dm.Qtemp['ppn_value'];
    MemPenjualan['grand_tot']:=dm.Qtemp['grand_tot'];
    MemPenjualan['trans_date']:=dm.Qtemp['trans_date'];
    MemPenjualan['approval_status']:=dm.Qtemp['approved_status'];
    MemPenjualan.Post;
    dm.Qtemp.Next;
  end;
  Qdetail_Penjualan.Close;
  Qdetail_Penjualan.Open;
end;

procedure TFPengajuan_AppJurnal_Trans.CbmoduleSelect(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_ak_module where module_name='+QuotedStr(Cbmodule.Text);
    Execute;
  end;
  module_id:=dm.Qtemp['id'];
end;

procedure TFPengajuan_AppJurnal_Trans.EdkodewilayahButtonClick(Sender: TObject);
begin
  FMasterWilayah.vcall:='m_jurnalPenj';
  FMasterWilayah.Showmodal;
end;

procedure TFPengajuan_AppJurnal_Trans.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFPengajuan_AppJurnal_Trans.FormCreate(Sender: TObject);
begin
  realFPengajuan_AppJurnal_Trans:=self;
end;

procedure TFPengajuan_AppJurnal_Trans.FormDestroy(Sender: TObject);
begin
  realFPengajuan_AppJurnal_Trans:=nil;
end;

procedure TFPengajuan_AppJurnal_Trans.FormShow(Sender: TObject);
begin
  mempembelian.emptytable;
  mempenjualan.emptytable;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_ak_module where id in (3,4,5,6)';
    Execute;
  end;
  dm.qtemp.first;
  while not dm.qtemp.eof do
  begin
    Cbmodule.Items.Add(dm.Qtemp['module_name']);
    dm.Qtemp.Next;
  end;
  module_id:='';
end;

procedure TFPengajuan_AppJurnal_Trans.RzBitBtn11Click(Sender: TObject);
begin
  MemKas.First;
  while not MemKas.Eof do
  begin
    MemKas.Edit;
    MemKas['approval_status']:=true;
    MemKas.Post;
    MemKas.Next;
  end;
end;

procedure TFPengajuan_AppJurnal_Trans.RzBitBtn6Click(Sender: TObject);
begin
  MemPembelian.First;
  while not MemPembelian.Eof do
  begin
    MemPembelian.Edit;
    MemPembelian['approval_status']:=true;
    MemPembelian.Post;
    MemPembelian.next;
  end;
end;

procedure TFPengajuan_AppJurnal_Trans.BselectClick(Sender: TObject);
begin
  MemPenjualan.First;
  while not MemPenjualan.Eof do
  begin
    MemPenjualan.Edit;
    MemPenjualan['approval_status']:=true;
    MemPenjualan.Post;
    MemPenjualan.Next;
  end;
end;

procedure TFPengajuan_AppJurnal_Trans.Btampil_kasClick(Sender: TObject);
begin
  MemKas.EmptyTable;
  MemKas.Close;
  MemKas.Open;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT	a.voucher_no,a.trans_date,a.created_at,a.paid_amount,a.description,b.approved_status,b.module_id '+
    ' FROM	cash_banks.t_cash_bank_acceptance AS "a" left join t_general_ledger b on a.voucher_no=b.trans_no '+
    ' where "a".deleted_at IS NULL and a.module_id= '+quotedstr(module_id)+' and '+
    ' a.trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai_kas.date))+'and a.trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtselesai_kas.date))+''+
    ' GROUP BY a.voucher_no, a.trans_date, a.created_at, a.paid_amount, a.description,b.approved_status,b.module_id'+
    ' ORDER BY "a".created_at DESC ';
    execute;
  end;
  dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    Memkas.Insert;
    Memkas['trans_no']:=dm.Qtemp['Voucher_no'];
 //   Memkas['faktur_no']:=dm.Qtemp['no_inv_tax'];
    Memkas['ket']:=dm.Qtemp['description'];
    Memkas['jumlah']:=dm.Qtemp['paid_amount'];
    Memkas['trans_date']:=dm.Qtemp['trans_date'];
    Memkas['status_app']:=dm.Qtemp['approved_status'];
    Memkas.Post;
    dm.Qtemp.Next;
  end;
  QDetail_kas.Close;
  QDetail_kas.Open;
end;

initialization
  RegisterClass(TFPengajuan_AppJurnal_Trans);

end.
