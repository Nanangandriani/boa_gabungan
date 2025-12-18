unit UPengajuanApproval_JurnalTrans;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RzTabs, MemTableDataEh, Data.DB, MemTableEh, DataDriverEh, MemDS, DBAccess,
  Uni, RzButton, Vcl.StdCtrls, Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzBtnEdt,
  Vcl.Samples.Gauges, Vcl.Grids, Vcl.DBGrids, frxClass;

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
    Bselect_Penj: TRzBitBtn;
    BApp_Penj: TRzBitBtn;
    BPrint_Penj: TRzBitBtn;
    Panel4: TPanel;
    BTampil_Pemb: TRzBitBtn;
    BSelect_Pemb: TRzBitBtn;
    BApp_Pemb: TRzBitBtn;
    BPrint_Pemb: TRzBitBtn;
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
    TabMemorial: TRzTabSheet;
    MemMemorial: TMemTableEh;
    QDetailMemorial: TUniQuery;
    DsDetailMemorial: TDataSource;
    DsMemorial: TDataSource;
    DBGridEh7: TDBGridEh;
    DBGridEh8: TDBGridEh;
    Panel5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    dtAwalMemorial: TRzDateTimeEdit;
    dtAkhirMemorial: TRzDateTimeEdit;
    Panel6: TPanel;
    btTampilMemorial: TRzBitBtn;
    btSelectMemo: TRzBitBtn;
    btApprovMemo: TRzBitBtn;
    btCetakMemorial: TRzBitBtn;
    procedure EdkodewilayahButtonClick(Sender: TObject);
    procedure BTampil_PembClick(Sender: TObject);
    procedure BTampil_PenjClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btampil_kasClick(Sender: TObject);
    procedure CbmoduleSelect(Sender: TObject);
    procedure BSelect_PembClick(Sender: TObject);
    procedure Bselect_PenjClick(Sender: TObject);
    procedure RzBitBtn11Click(Sender: TObject);
    procedure BApp_PembClick(Sender: TObject);
    procedure BApp_PenjClick(Sender: TObject);
    procedure RzBitBtn12Click(Sender: TObject);
    procedure RzBitBtn13Click(Sender: TObject);
    procedure BPrint_PenjClick(Sender: TObject);
    procedure BPrint_PembClick(Sender: TObject);
    procedure btTampilMemorialClick(Sender: TObject);
    procedure btSelectMemoClick(Sender: TObject);
    procedure btApprovMemoClick(Sender: TObject);
    procedure btCetakMemorialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    module_id:string;
  end;

function FPengajuan_AppJurnal_Trans: TFPengajuan_AppJurnal_Trans;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UMasterWilayah, UMy_Function, UMainMenu,
  URpt_Jurnal_Khusus;

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
    sql.text:='select sum(subtotalrp) subtot,sum(grandtotal) grandtot,sum(ppn) ppn,status_app,trans_no,faktur_no,sj_no,supplier_name,account_name,nm_perk,tgl,bln,approved_status approval_status,trans_date from ('+
    //Pembelian
    ' select (case WHEN a."approval_status"=''0'' THEN ''PENGAJUAN'' else ''APPROVE''  END) AS status_app,a.trans_no,a.faktur_no,a.sj_no, b.supplier_name,f.subtotalrp,grandtotal,'+
    ' f.ppn_rp+f.ppn_pembulatan ppn, c.account_name, d.account_name as nm_perk,to_char(a.trans_date,''dd'') tgl,to_char(a.trans_date,''mm'') bln,g.approved_status,a.trans_date from   '+
    ' t_purchase_invoice a Left join t_supplier b on a.supplier_code=b.supplier_code '+
    ' left join t_ak_account_sub c on a.account_code=c.account_code2 '+
    ' left join t_ak_account_sub d on a.account_um_code=d.account_code2 '+
    ' left join t_purchase_invoice_det f on a.trans_no=f.trans_no '+
    ' INNER JOIN (select approved_status,trans_no from t_general_ledger GROUP BY approved_status,trans_no) g on a.trans_no=g.trans_no where a.deleted_at isnull  '+
    //Retur Pembelian
    ' UNION ALL ' +
    ' select '''' AS status_app,a.return_no,a.faktur_no,''0'' as sj_no, b.supplier_name,'+
    ' f.price as subtotalrp,f.total_price as grandtotal, f.ppn_rp ppn, c.account_name, '+
    ' d.account_name as nm_perk,to_char(a.return_date,''dd'') tgl,to_char(a.return_date,''mm'') bln,'+
    ' g.approved_status,a.return_date from    t_purchase_return a '+
    ' Left join t_supplier b on a.supplier_code=b.supplier_code  '+
    ' left join t_ak_account_sub c on a.account_code=c.account_code2  '+
    ' left join t_ak_account_sub d on a.account_code=d.account_code2  '+
    ' left join t_purchase_return_det f on a.return_no=f.return_no  '+
    ' INNER JOIN (select approved_status,trans_no from t_general_ledger GROUP BY '+
    ' approved_status,trans_no) g on a.return_no=g.trans_no'+
    //' order by a.id desc'+
    ') a where trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtmulai.date))+'and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtselesai.date))+''+
    ' GROUP BY status_app,trans_no,faktur_no,sj_no,supplier_name,account_name,nm_perk,tgl,bln,approved_status,trans_date';
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
    '	"a".name_cust,"a".code_cust,"a".trans_date,b.approved_status FROM public.t_selling AS "a" left JOIN t_general_ledger AS b'+
    '	ON "a".trans_no = b.trans_no WHERE "a".deleted_at IS NULL  and  b.deleted_at IS NULL and'+
    ' a.trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtmulaipenj.date))+'and a.trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtselesaipenj.date))+''+
    ' GROUP BY a.created_at,a.no_inv_tax,a.trans_no,"a".pph_value,"a".ppn_value,"a".sub_total,"a".grand_tot,'+
    '	"a".name_cust,"a".code_cust,"a".trans_date,b.approved_status '+
    ' UNION ALL '+
    'SELECT a.created_at,a.no_inv_tax,a.trans_no,"a".pph_value,"a".ppn_value,"a".sub_total,"a".grand_tot,'+
    '	"a".name_cust,"a".code_cust,"a".trans_date,b.approved_status FROM public.t_sales_returns AS "a" left JOIN t_general_ledger AS b'+
    '	ON "a".trans_no = b.trans_no WHERE "a".deleted_at IS NULL  and  b.deleted_at IS NULL and'+
    ' a.trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtmulaipenj.date))+'and a.trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtselesaipenj.date))+''+
    ' GROUP BY a.created_at,a.no_inv_tax,a.trans_no,"a".pph_value,"a".ppn_value,"a".sub_total,"a".grand_tot,'+
    '	"a".name_cust,"a".code_cust,"a".trans_date,b.approved_status '+
    ' ORDER BY created_at DESC ';
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

procedure TFPengajuan_AppJurnal_Trans.btApprovMemoClick(Sender: TObject);
begin
   MemMemorial.First;
   while not MemMemorial.Eof do
   begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='delete from t_general_ledger_real where trans_no='+QuotedStr(MemMemorial['trans_no']);
          Execute;
        end;
      if MemMemorial['status_app']= true then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='update t_general_ledger set approved_at=now(),approved_by='+QuotedStr(Nm)+',approved_status=''1'' where trans_no='+QuotedStr(MemMemorial['trans_no']);
          Execute;
        end;
       end;
      if MemMemorial['status_app']= false then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='update t_general_ledger set approved_at=now(),approved_by='+QuotedStr(Nm)+',approved_status=''0'' where trans_no='+QuotedStr(MemMemorial['trans_no']);
          Execute;
        end;
       end;
    MemMemorial.Next;
  end;
  ShowMessage('Data Berhasil di Approve');
end;

procedure TFPengajuan_AppJurnal_Trans.btCetakMemorialClick(Sender: TObject);
begin
   with FRpt_Jurnal_Khusus.QRpt_Jurnal_Khusus do
   begin
      close;
      sql.Clear;
      sql.Text:='select A.trans_no,a.trans_date,sum(case when status_dk =''D'' then amount else 0 end) db,'+
      ' sum(case when status_dk =''K'' then amount else 0 end) kd, left(A.account_code,7) as account_code,B.account_name,c.module_name,a.module_id '+
      ' from t_general_ledger_real a '+
      ' inner join t_ak_account b on A.account_code=b.code or left(A.account_code,7)=b.code '+
      ' INNER JOIN t_ak_module c ON a.module_id=c.id '+
      ' where trans_date >= '+QuotedStr(FormatDateTime('yyy-mm-dd',dtAwalMemorial.Date))+''+
      ' and trans_date<= '+QuotedStr(FormatDateTime('yyy-mm-dd',dtAkhirMemorial.Date))+''+
      ' GROUP BY a.trans_no,a.trans_date , a.account_code,b.account_name,c.module_name,a.module_id,status_dk  '+
      ' order by a.trans_no,status_dk ASC';
      Execute;
   end;
   FRpt_Jurnal_Khusus.QRpt_Jurnal_Khusus.Open;
    if FRpt_Jurnal_Khusus.QRpt_Jurnal_Khusus.FieldByName('trans_no').AsString=''  then
    begin
      ShowMessage('Maaf data kosong');
    end else
      FRpt_Jurnal_Khusus.Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_jurnal_khusus.Fr3');
      Tfrxmemoview(FRpt_Jurnal_Khusus.Rpt.FindObject('MPeriode')).Memo.Text:='Periode  : '+FormatDateTime('dd MMMM yyy',DtMulai_kas.Date)+' - '+FormatDateTime('dd MMMM yyy',DtSelesai_kas.Date);
    //  Tfrxmemoview(Rpt.FindObject('Memo2')).Memo.Text:=''+SBU;
     // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
    //  SetMemo(Rpt,'MPT',' '+SBU+' ');
      //SetMemo(Rpt,'MPeriode',' '++' Rupiah ');
    FRpt_Jurnal_Khusus.Rpt.ShowReport();
end;

procedure TFPengajuan_AppJurnal_Trans.btSelectMemoClick(Sender: TObject);
begin
  MemMemorial.First;
  while not MemMemorial.Eof do
  begin
    MemMemorial.Edit;
    MemMemorial['status_app']:=true;
    MemMemorial.Post;
    MemMemorial.Next;
  end;
end;

procedure TFPengajuan_AppJurnal_Trans.btTampilMemorialClick(Sender: TObject);
begin
  MemMemorial.EmptyTable;
  MemMemorial.Close;
  MemMemorial.Open;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' SELECT	a.memo_no,a.trans_date,a.trans_date,sum(b.amount) as amount,'+
              ' a.notes,b.approved_status,b.module_id  FROM	(SELECT memo_no,trans_date,'+
              ' notes,bk_no,faktur_no,deleted_at from t_memorial_journal)  AS "a" '+
              ' left join t_general_ledger b on a.memo_no=b.trans_no  '+
              ' where "a".deleted_at IS NULL and b.module_id= ''5'' and  '+
              ' a.trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwalMemorial.date))+' '+
              ' and a.trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhirMemorial.date))+' '+
              ' and status_dk=''D'' GROUP BY a.memo_no, a.trans_date, a.notes, '+
              ' b.approved_status,b.module_id ORDER BY "a".trans_date DESC ';
    execute;
  end;
  dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    MemMemorial.Insert;
    MemMemorial['trans_no']:=dm.Qtemp['memo_no'];
    MemMemorial['ket']:=dm.Qtemp['notes'];
    MemMemorial['jumlah']:=dm.Qtemp['amount'];
    MemMemorial['trans_date']:=dm.Qtemp['trans_date'];
    MemMemorial['status_app']:=dm.Qtemp['approved_status'];
    MemMemorial.Post;
    dm.Qtemp.Next;
  end;
  QDetailMemorial.Close;
  QDetailMemorial.Open;
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
    sql.Text:='select * from t_ak_module where id in (3,4,5,6,11)';
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
    MemKas['status_app']:=true;
    MemKas.Post;
    MemKas.Next;
  end;
end;

procedure TFPengajuan_AppJurnal_Trans.RzBitBtn12Click(Sender: TObject);
begin
   MemKas.First;
   while not Memkas.Eof do
   begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='delete from t_general_ledger_real where trans_no='+QuotedStr(Memkas['trans_no']);
          Execute;
        end;
      if MemKas['status_app']= true then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='update t_general_ledger set approved_at=now(),approved_by='+QuotedStr(Nm)+',approved_status=''1'' where trans_no='+QuotedStr(MemKas['trans_no']);
          Execute;
        end;
       end;
      if MemKas['status_app']= false then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='update t_general_ledger set approved_at=now(),approved_by='+QuotedStr(Nm)+',approved_status=''0'' where trans_no='+QuotedStr(MemKas['trans_no']);
          Execute;
        end;
       end;
    MemKas.Next;
  end;
  ShowMessage('Data Berhasil di Approve');
end;

procedure TFPengajuan_AppJurnal_Trans.RzBitBtn13Click(Sender: TObject);
begin
   with FRpt_Jurnal_Khusus.QRpt_Jurnal_Khusus do
   begin
      close;
      sql.Clear;
      sql.Text:='select A.trans_no,a.trans_date,sum(case when status_dk =''D'' then amount else 0 end) db,'+
      ' sum(case when status_dk =''K'' then amount else 0 end) kd, left(A.account_code,7) as account_code,B.account_name,c.module_name,a.module_id '+
      ' from t_general_ledger_real a '+
      ' inner join t_ak_account b on A.account_code=b.code or left(A.account_code,7)=b.code '+
      ' INNER JOIN t_ak_module c ON a.module_id=c.id '+
      ' where module_name='+QuotedStr(Cbmodule.Text)+' and trans_date >= '+QuotedStr(FormatDateTime('yyy-mm-dd',Dtmulai_kas.Date))+''+
      ' and trans_date<= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai_kas.Date))+''+
      ' GROUP BY a.trans_no,a.trans_date , a.account_code,b.account_name,c.module_name,a.module_id,status_dk  '+
      ' order by a.trans_no,status_dk ASC';
      Execute;
   end;
   FRpt_Jurnal_Khusus.QRpt_Jurnal_Khusus.Open;
    if FRpt_Jurnal_Khusus.QRpt_Jurnal_Khusus.FieldByName('trans_no').AsString=''  then
    begin
      ShowMessage('Maaf data kosong');
    end else
      FRpt_Jurnal_Khusus.Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_jurnal_khusus.Fr3');
      Tfrxmemoview(FRpt_Jurnal_Khusus.Rpt.FindObject('MPeriode')).Memo.Text:='Periode  : '+FormatDateTime('dd MMMM yyy',DtMulai_kas.Date)+' - '+FormatDateTime('dd MMMM yyy',DtSelesai_kas.Date);
    //  Tfrxmemoview(Rpt.FindObject('Memo2')).Memo.Text:=''+SBU;
     // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
    //  SetMemo(Rpt,'MPT',' '+SBU+' ');
      //SetMemo(Rpt,'MPeriode',' '++' Rupiah ');
    FRpt_Jurnal_Khusus.Rpt.ShowReport();
end;

procedure TFPengajuan_AppJurnal_Trans.BApp_PenjClick(Sender: TObject);
begin
   MemPenjualan.First;
   while not MemPenjualan.Eof do
   begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='delete from t_general_ledger_real where trans_no='+QuotedStr(MemPenjualan['trans_no']);
          Execute;
        end;
      if MemPenjualan['approval_status']= true then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='update t_general_ledger set approved_at=now(),approved_by='+QuotedStr(Nm)+',approved_status=''1'' where trans_no='+QuotedStr(MemPenjualan['trans_no']);
          Execute;
        end;
       end;
      if MemPenjualan['approval_status']= false then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='update t_general_ledger set approved_at=now(),approved_by='+QuotedStr(Nm)+',approved_status=''0'' where trans_no='+QuotedStr(MemPenjualan['trans_no']);
          Execute;
        end;
       end;
    MemPenjualan.Next;
  end;
  ShowMessage('Data Berhasil di Approve');
end;

procedure TFPengajuan_AppJurnal_Trans.BPrint_PembClick(Sender: TObject);
begin
    with FRpt_Jurnal_Khusus.QRpt_Jurnal_Khusus do
   begin
      close;
      sql.Clear;
      sql.Text:='select A.trans_no,a.trans_date,sum(case when status_dk =''D'' then amount else 0 end) db,'+
      ' sum(case when status_dk =''K'' then amount else 0 end) kd, left(A.account_code,7) as account_code,B.account_name,c.module_name,a.module_id '+
      ' from t_general_ledger_real a '+
      ' inner join t_ak_account b on A.account_code=b.code or left(A.account_code,7)=b.code '+
      ' INNER JOIN t_ak_module c ON a.module_id=c.id '+
      ' where module_name=''PEMBELIAN'' and trans_date >= '+QuotedStr(FormatDateTime('yyy-mm-dd',dtmulai.Date))+''+
      ' and trans_date<= '+QuotedStr(FormatDateTime('yyy-mm-dd',dtselesai.Date))+''+
      ' GROUP BY a.trans_no,a.trans_date , a.account_code,b.account_name,c.module_name,a.module_id,status_dk  '+
      ' order by a.trans_no,status_dk ASC';
      Execute;
   end;
   FRpt_Jurnal_Khusus.QRpt_Jurnal_Khusus.Open;
    if FRpt_Jurnal_Khusus.QRpt_Jurnal_Khusus.FieldByName('trans_no').AsString=''  then
    begin
      ShowMessage('Maaf data kosong');
    end else
      FRpt_Jurnal_Khusus.Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_jurnal_khusus.Fr3');
      Tfrxmemoview(FRpt_Jurnal_Khusus.Rpt.FindObject('MPeriode')).Memo.Text:='Periode  : '+FormatDateTime('dd MMMM yyy',dtmulai.Date)+' - '+FormatDateTime('dd MMMM yyy',dtselesai.Date);
    //  Tfrxmemoview(Rpt.FindObject('Memo2')).Memo.Text:=''+SBU;
     // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
    //  SetMemo(Rpt,'MPT',' '+SBU+' ');
      //SetMemo(Rpt,'MPeriode',' '++' Rupiah ');
    FRpt_Jurnal_Khusus.Rpt.ShowReport();
end;

procedure TFPengajuan_AppJurnal_Trans.BPrint_PenjClick(Sender: TObject);
begin
   with FRpt_Jurnal_Khusus.QRpt_Jurnal_Khusus do
   begin
      close;
      sql.Clear;
      sql.Text:='select A.trans_no,a.trans_date,sum(case when status_dk =''D'' then amount else 0 end) db,'+
      ' sum(case when status_dk =''K'' then amount else 0 end) kd, left(A.account_code,7) as account_code,B.account_name,c.module_name,a.module_id '+
      ' from t_general_ledger_real a '+
      ' inner join t_ak_account b on A.account_code=b.code or left(A.account_code,7)=b.code'+
      ' INNER JOIN t_ak_module c ON a.module_id=c.id '+
      ' where module_name=''PENJUALAN'' and trans_date >= '+QuotedStr(FormatDateTime('yyy-mm-dd',dtmulaipenj.Date))+''+
      ' and trans_date<= '+QuotedStr(FormatDateTime('yyy-mm-dd',dtselesaipenj.Date))+''+
      ' GROUP BY a.trans_no,a.trans_date , a.account_code,b.account_name,c.module_name,a.module_id,status_dk  '+
      ' order by a.trans_no,status_dk ASC';
      Execute;
   end;
   FRpt_Jurnal_Khusus.QRpt_Jurnal_Khusus.Open;
    if FRpt_Jurnal_Khusus.QRpt_Jurnal_Khusus.FieldByName('trans_no').AsString=''  then
    begin
      ShowMessage('Maaf data kosong');
    end else
      FRpt_Jurnal_Khusus.Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_jurnal_khusus.Fr3');
      Tfrxmemoview(FRpt_Jurnal_Khusus.Rpt.FindObject('MPeriode')).Memo.Text:='Periode  : '+FormatDateTime('dd MMMM yyy',dtmulaipenj.Date)+' - '+FormatDateTime('dd MMMM yyy',dtselesaipenj.Date);
    //  Tfrxmemoview(Rpt.FindObject('Memo2')).Memo.Text:=''+SBU;
     // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
    //  SetMemo(Rpt,'MPT',' '+SBU+' ');
      //SetMemo(Rpt,'MPeriode',' '++' Rupiah ');
    FRpt_Jurnal_Khusus.Rpt.ShowReport();
end;

procedure TFPengajuan_AppJurnal_Trans.BSelect_PembClick(Sender: TObject);
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

procedure TFPengajuan_AppJurnal_Trans.BApp_PembClick(Sender: TObject);
begin
   MemPembelian.First;
   while not MemPembelian.Eof do
   begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='delete from t_general_ledger_real where trans_no='+QuotedStr(MemPembelian['trans_no']);
          Execute;
        end;
      if MemPembelian['approval_status']= true then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='update t_general_ledger set approved_at=now(),approved_by='+QuotedStr(Nm)+',approved_status=''1'' where trans_no='+QuotedStr(MemPembelian['trans_no']);
          Execute;
        end;
       end;
      if MemPembelian['approval_status']= false then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='update t_general_ledger set approved_at=now(),approved_by='+QuotedStr(Nm)+',approved_status=''0'' where trans_no='+QuotedStr(MemPembelian['trans_no']);
          Execute;
        end;
       end;
    MemPembelian.Next;
  end;
  ShowMessage('Data Berhasil di Approve');
end;

procedure TFPengajuan_AppJurnal_Trans.Bselect_PenjClick(Sender: TObject);
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
    ' FROM	(select voucher_no,trans_date,created_at,paid_amount,description,deleted_at from t_cash_bank_acceptance   '+
    ' UNION select voucher_no,trans_date,created_at,amount,to_ ,deleted_at from t_cash_bank_expenditure'+
    ' UNION select voucher_no,trans_date,created_at,amount as paid_amount,description,deleted_at from t_petty_cash)  AS "a" left join t_general_ledger b on a.voucher_no=b.trans_no '+
    ' where "a".deleted_at IS NULL and b.module_id= '+quotedstr(module_id)+' and '+
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
