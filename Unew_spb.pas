unit Unew_spb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBGridEh,
  Vcl.StdCtrls, RzEdit, RzButton, Vcl.ExtCtrls, DBCtrlsEh, DBLookupEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, MemDS, DBAccess, Uni, DataDriverEh, MemTableEh,
  Vcl.Mask, RzBtnEdt, Vcl.Buttons, Vcl.WinXPickers;

type
  TFNew_SPB = class(TForm)
    Label17: TLabel;
    DsDetail: TDataSource;
    Memdetail: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    DsPo: TDataSource;
    Mempo: TMemTableEh;
    QPo1: TUniQuery;
    Edurut: TEdit;
    Ednopo: TRzButtonEdit;
    EdKepada: TEdit;
    Edjam_kembali: TEdit;
    EdJam_Serah: TEdit;
    Edket: TMemo;
    dttgl_kembali: TRzDateTimeEdit;
    Ednm_supp: TRzButtonEdit;
    Edkd_supp: TRzEdit;
    DBGridEh2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    EdPo: TDBLookupComboboxEh;
    Eddriver: TRzEdit;
    EdnoKend: TRzEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    EdnoSpb: TRzEdit;
    DtSpb: TRzDateTimeEdit;
    Label20: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DTJam_Serah: TRzDateTimeEdit;
    DTJam_Kembali: TRzDateTimeEdit;
    Edth: TEdit;
    Edbln: TEdit;
    Edhr: TEdit;
    Edkd_sbu: TEdit;
    CbCategori: TComboBox;
    Label21: TLabel;
    procedure EdnopoButtonClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh2Columns1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure DtSpbChange(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure Ednm_suppButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    kategori_tr:string;
    procedure autonumber;
    Procedure Clear;
    Procedure Load;
  end;

var
 FNew_SPB: TFNew_SPB;
  //RealFnew_spb: TFnew_spb;
  status:integer;
  kdsb,no_urut:string;

implementation

{$R *.dfm}

uses USearch_Po, UMy_Function, USearch_Purchase_Order, UDataModule, UMainMenu,
  USearch_Supplier;

{function Fnew_spb: TFnew_spb;
begin
  if RealFnew_spb <> nil then Fnew_spb:= RealFnew_spb
  else  Application.CreateForm(TFnew_spb, Result);
end;}

Procedure TFNew_SPB.Load;
begin
  CbCategori.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_item_type order by type_id';
    execute;
  end;
  dm.Qtemp.First;
  while not Dm.Qtemp.eof do
  begin
    CbCategori.Items.Add(dm.Qtemp['type']);
    dm.Qtemp.Next;
  end;
end;

procedure TFNew_SPB.Clear;
begin
  Memdetail.close;
  Memdetail.Open;
  EdnoSpb.Clear;
  EdnoKend.Clear;
  Eddriver.Clear;
  Edkd_supp.Clear;
  Ednm_supp.Clear;
  Memdetail.EmptyTable;
  DtJam_Serah.Clear;
  EdKepada.Clear;
  Dtjam_kembali.Clear;
  dttgl_kembali.Date:=now;
  DtSpb.Date:=now;
  Ednopo.Text:='';
  Edket.Text:='';
end;

procedure TFNew_SPB.DBGridEh2Columns1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  if loksbu='' then
  begin
      with FUSearch_PO.QPo do
      begin
         close;
         sql.Clear;
         sql.Text:='SELECT a.statusby,c.item_stock_code,a.po_no,a.po_date,b.remaining_sp,b.unit,b.wh_code,'+
         ' d.wh_name,c.item_name,a.supplier_code,a.sbu_code,a.approval_status from (select a.*,'+
         ' case when b.ref_no<>'''' then ''1'' else ''0'' end statusby from purchase.t_po a left join purchase.t_purchase_invoice b on a.po_no=b.ref_no)  a '+
         ' INNER JOIN purchase.t_podetail b on a.po_no=b.po_no '+
         ' inner join warehouse.t_item_stock c on b.item_stock_code=c.item_stock_code  '+
         ' INNER JOIN t_wh d on d.wh_code=a.wh_code where b.remaining_sp <>0 and a.approval_status=''1'''+
         ' AND a.supplier_code='+QuotedStr(Edkd_supp.Text)+' AND trans_category='+QuotedStr(CbCategori.Text)+' ';
         Open;
      end;
  end;
  if loksbu<>'' then
  begin
      with FUSearch_PO.QPo do
      begin
         close;
         sql.Clear;
         sql.Text:='SELECT a.statusby,c.item_stock_code,a.po_no,a.po_date,b.remaining_sp,b.unit,b.wh_code,'+
         ' d.wh_name,c.item_name,a.supplier_code,a.sbu_code,a.approval_status from (select a.*,'+
         ' case when b.ref_no<>'''' then ''1'' else ''0'' end statusby from purchase.t_po a left join purchase.t_purchase_invoice b on a.po_no=b.ref_no)  a '+
         ' INNER JOIN purchase.t_podetail b on a.po_no=b.po_no '+
         ' inner join warehouse.t_item_stock c on b.item_stock_code=c.item_stock_code  '+
         ' INNER JOIN t_wh d on d.wh_code=a.wh_code where b.remaining_sp <>0 and a.approval_status=''1'''+
         ' AND a.supplier_code='+QuotedStr(Edkd_supp.Text)+' AND trans_category='+QuotedStr(CbCategori.Text)+' and a.sbu_code='+QuotedStr(loksbu);
         Open;
      end;
  end;
  FUSearch_PO.Show;
end;

procedure TFNew_SPB.DtSpbChange(Sender: TObject);
var
   SelectedDate: TRzDateTimeEdit;
   year, month, day: word;
begin
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtspb.Date))+' :: DATE, ''dd'') hari ';
     Open;
   end;
   Edhr.text:=dm.Qtemp.FieldByName('hari').AsString;

   with dm.Qtemp1 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtspb.Date))+' :: DATE, ''yyyy'') tahun ';
     Open;
   end;
   Edth.Text:=dm.Qtemp1.FieldByName('tahun').AsString;

   with dm.Qtemp2 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtspb.Date))+' :: DATE, ''mm'') bulan ';
     Open;
   end;
   Edbln.Text:=dm.Qtemp2.FieldByName('bulan').AsString;

end;

procedure TFNew_SPB.autonumber;
begin
  idmenu:='M11003';
  strday2:=Dtspb.Date;
  EdNoSpb.Text:=getNourutBlnPrshthn_kode(strday2,'purchase.t_spb','');
  Edurut.Text:=order_no;
end;

procedure TFNew_SPB.BBatalClick(Sender: TObject);
begin
   Close;
end;

procedure TFNew_SPB.BEditClick(Sender: TObject);
begin
      if not dm.koneksi.InTransaction then
      dm.koneksi.StartTransaction;
      try
      begin
          with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:='select * from purchase.t_spb';
            ExecSQL;
          end;
          with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:='Update purchase.t_spb set spb_date=:partgl_spb, pic=:parpic,vehicle_no=:parnokend,'+
                      ' supplier_code=:parkd_supplier,sbu_code=:parkd_sbu,driver=:pardriver,po_no=:parnopo,'+
                      ' handover_time=:parjamserah,return_time=:parjamkembali,return_date=:partglkembali, '+
                      ' remark=:parket,to_at=:Parkepada,order_no=:parnourut where spb_no=:parnospb';
                      ParamByName('parkd_supplier').Value:=Edkd_supp.Text;
                      ParamByName('parnospb').Value:=EdnoSpb.Text;
                      ParamByName('partgl_spb').Value:=Formatdatetime('yyy-mm-dd',DtSpb.date);
                      ParamByName('parpic').Value:=Nm;
                      ParamByName('parnokend').Value:=EdnoKend.Text;
                      ParamByName('pardriver').Value:=Eddriver.Text;
                      ParamByName('parkd_sbu').Value:=loksbu;
                      ParamByName('parjamserah').Value:=DtJam_Serah.Text;
                      ParamByName('parjamkembali').Value:=Dtjam_kembali.Text;
                      ParamByName('parkepada').Value:=EdKepada.Text;
                      ParamByName('partglkembali').Value:=Formatdatetime('yyy-mm-dd',dttgl_kembali.date);
                      ParamByName('parket').Value:=Edket.Text;
                      ParamByName('parnopo').Value:=Ednopo.Text;
                      ParamByName('parnourut').Value:=no_urut;
             ExecSQL;
          end;

          with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:='Delete from purchase.t_spb_det where spb_no='+QuotedStr(EdnoSpb.Text);
            ExecSQL;
          end;
          Memdetail.First;
          while not Memdetail.Eof do
          begin
          with Dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:='Insert Into purchase.t_spb_det(spb_no,po_no,item_stock_code,qty,unit,wh_code)'+
                      'Values(:parnospb,:parnopo,:parkd_material,:parqty,:parsatuan,:pargudang)';
                       ParamByName('parnospb').Value:=EdnoSpb.Text;
                       ParamByName('parnopo').Value:=Memdetail['nopo'];
                       ParamByName('parkd_material').Value:=Memdetail['kd_material'];
                       ParamByName('parqty').Value:=Memdetail['qty'];
                       ParamByName('parsatuan').Value:=Memdetail['satuan'];
                       //ParamByName('pargudang').Value:=Memdetail['gudang'];
                       ParamByName('pargudang').Value:=Memdetail['wh_code'];

            ExecSQL;
          end;
        Memdetail.Next;
      end;
      dm.koneksi.Commit;
      Messagedlg(' Data Berhasil di Simpan ',MtInformation,[Mbok],0);
      BBatalClick(sender);
      end
      Except
      on E :Exception do
      begin
        MessageDlg(E.Message,mtError,[MBok],0);
        dm.koneksi.Rollback;
      end;
      end;
      BBatalClick(sender);
end;

procedure TFNew_SPB.BitBtn1Click(Sender: TObject);
begin
  autonumber;
end;

procedure TFNew_SPB.BSimpanClick(Sender: TObject);
begin
    Autonumber;
    if messageDlg ('Anda Yakin Menyimpan SPB No.'+EdnoSpb.text+' '+'?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
    then begin
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from purchase.t_spb ';
        ExecSQL;
      end;
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='insert into purchase.t_spb(supplier_code,spb_no,spb_date, pic,vehicle_no,driver,approval_status,'+
                  ' sbu_code,recept_time,handover_time,return_date,return_time,remark,to_at,trans_year,trans_month,trans_day,po_no,order_no,trans_category)values'+
                  ' (:parkd_supplier,:parnospb,:partgl_spb,:parpic,:parnokend,:pardriver,:parstatus_ap, '+
                  ' :parkd_sbu,:parjamterima,:parjamserah,:partglkembali,:parjamkembali,:parket,:parkepada,:parth,:parbln,:parhr,:parnopo,'+
                  ' :parorder_no,:parkt)';
                  ParamByName('parkd_supplier').Value:=Edkd_supp.Text;
                  ParamByName('parnospb').Value:=EdnoSpb.Text;
                  ParamByName('partgl_spb').Value:=Formatdatetime('yyyy-mm-dd',DtSpb.date);
                  ParamByName('parpic').Value:=Nm;
                  ParamByName('parnokend').Value:=EdnoKend.Text;
                  ParamByName('pardriver').Value:=Eddriver.Text;
                  ParamByName('parstatus_ap').Value:=0;
                  //ParamByName('parkd_sbu').Value:=kdsb;
                  ParamByName('parkd_sbu').Value:=Edkd_sbu.Text;
                  ParamByName('parjamterima').Value:='';
                  ParamByName('parjamserah').Value:=DtJam_Serah.Text;
                  ParamByName('parjamkembali').Value:=Dtjam_kembali.Text;
                  ParamByName('partglkembali').Value:=Formatdatetime('yyyy-mm-dd',dttgl_kembali.date);
                  ParamByName('parkepada').Value:=EdKepada.Text;
                  ParamByName('parket').Value:=Edket.Text;
                  ParamByName('parhr').Value:=Edhr.Text;
                  ParamByName('parbln').Value:=Edbln.Text;
                  ParamByName('parth').Value:=Edth.Text;
                  ParamByName('parnopo').Value:=Ednopo.Text;
                  ParamByName('parorder_no').Value:=Edurut.Text;
                  ParamByName('parkt').Value:=CbCategori.Text;
        ExecSQL;
      end;
      Memdetail.First;
      while not Memdetail.Eof do
      begin
          with Dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:=' Insert Into purchase.t_spb_det(spb_no,po_no,item_stock_code,qty,unit,wh_code)'+
                      ' Values(:parnospb,:parnopo,:parkd_material,:parqty,:parsatuan,:pargudang)';
                       ParamByName('parnospb').Value:=EdnoSpb.Text;
                       ParamByName('parnopo').Value:=Memdetail['nopo'];
                       ParamByName('parkd_material').Value:=Memdetail['kd_material'];
                       ParamByName('parqty').Value:=Memdetail['qty'];
                       ParamByName('parsatuan').Value:=Memdetail['satuan'];
                       //ParamByName('pargudang').Value:=Memdetail['gudang'];
                       ParamByName('pargudang').Value:=Memdetail['wh_code'];
            ExecSQL;
          end;
      Memdetail.Next;
    end;
      dm.koneksi.Commit;
      Messagedlg(' Data Berhasil di Simpan ',MtInformation,[Mbok],0);
      BBatalClick(sender);
    end
    Except
    on E :Exception do
    begin
      MessageDlg(E.Message,mtError,[MBok],0);
      dm.koneksi.Rollback;
    end;
    end;
    end;
end;

procedure TFNew_SPB.Ednm_suppButtonClick(Sender: TObject);
begin
  with FSearch_Supplier do
  begin
    QSupplier.Close;
    QSupplier.Open;
    Show;
    vcall:='spb';
  end;
end;

procedure TFNew_SPB.EdnopoButtonClick(Sender: TObject);
begin
  with Fsearch_po do
  begin
    show;
  end;
end;

procedure TFNew_SPB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Action:=cafree;
end;

procedure TFNew_SPB.FormDestroy(Sender: TObject);
begin
   //RealFnew_spb:=nil;
end;

procedure TFNew_SPB.FormShow(Sender: TObject);
begin
   DtSpb.Date:=Now;
   Load;
   //if Memdetail.Active=false then
      //Memdetail.Active:=true;
end;

end.
