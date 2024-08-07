unit UMaster_PercBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Grids, Vcl.DBGrids, MemDS,
  DBAccess, Uni, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  RzButton, Vcl.ExtCtrls, Vcl.Mask, RzEdit, RzBtnEdt, MemTableDataEh, MemTableEh,
  Vcl.Buttons, DataDriverEh;

type
  TFMaster_PercBarang = class(TForm)
    PnlAksi: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Btambah: TRzBitBtn;
    BRefresh: TRzBitBtn;
    PnlNew: TPanel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    EdNm: TEdit;
    Pnllist: TPanel;
    DBGridEh1: TDBGridEh;
    QMaster: TUniQuery;
    DsDetail: TDataSource;
    edkd: TRzButtonEdit;
    Memdetail: TMemTableEh;
    DBGridEh2: TDBGridEh;
    DsMaster: TDataSource;
    MemMaster: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    BUpdate: TRzBitBtn;
    procedure edkdButtonClick(Sender: TObject);
    procedure DBGridEh2Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BBatalClick(Sender: TObject);
    procedure BtambahClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BRefreshClick(Sender: TObject);
    procedure BUpdateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Autonumber;
    Procedure clear;
  end;

var
  FMaster_PercBarang: TFMaster_PercBarang;
  nourut:string;

implementation

{$R *.dfm}

uses UCari_Barang, UCari_Barang2, UMainMenu, UDataModule, UMy_Function;

Procedure TFMaster_PercBarang.Autonumber;
begin
  with dm.Qtemp2 do
  begin
    close;
    SQL.Clear;
    sql.Text:='select max(master_no) as urut from warehouse.t_mixing_master';
    Execute;
  end;
  //if dm.Qtemp2.RecordCount=0 then
  if dm.Qtemp2['urut'] = null then
  begin
   order_no:='1';
  end
  else
  //if dm.Qtemp2.RecordCount=1 then
    if dm.Qtemp2['urut']<> null then
  begin
    order_no := IntToStr(dm.Qtemp2['urut']+1);
  end;
 // Edit1.Text:=order_no;
end;

Procedure TFMaster_PercBarang.clear;
begin
  edkd.Clear;
  EdNm.Clear;
  Memdetail.Close;
  memdetail.Open;
  Memdetail.EmptyTable;
end;

procedure TFMaster_PercBarang.BBatalClick(Sender: TObject);
begin
  close;
end;

procedure TFMaster_PercBarang.BRefreshClick(Sender: TObject);
begin
  DBGridEh1.StartLoadingStatus();
    QMaster.Close;
    QMaster.Open;
    MemMaster.Close;
    MemMaster.Open;
  DBGridEh1.FinishLoadingStatus();
end;

procedure TFMaster_PercBarang.BSimpanClick(Sender: TObject);
begin
  if messageDlg ('Anda Yakin Menyimpan Data ini ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
     if edkd.Text='' then
    begin
      MessageDlg('kode Tidak boleh Kosong ',MtWarning,[MbOk],0);
      edkd.SetFocus;
      Exit;
    end;
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
      begin
        if statustr=0 then
        begin
          Autonumber;
          Memdetail.First;
          while not Memdetail.eof do
          begin
            with dm.Qtemp do
            begin
              close;
              sql.clear;        {
              sql.Text:='insert into warehouse.t_mixing_master(supplier_name='+QuotedStr(Ednm.Text)+ ' , Address='+QuotedStr(EdAlamat.Text)+' ,telp='+QuotedStr(Edtelp.Text)+''+
                        ' ,npwp='+QuotedStr(EdNPWP.Text)+',supplier_code2='+QuotedStr(Edkd.Text)+',updated_at=:updated_at,updated_by=:updated_by '+
                        ' Where supplier_code='+QuotedStr(Edno.Text);
                        parambyname('updated_at').AsString:=Formatdatetime('yyy-mm-dd',Now());
                        parambyname('updated_by').AsString:='Admin'; }
              sql.Text:='insert into warehouse.t_mixing_master(master_no,type_code,item_code,qty)values'+
                        '(:master_no,:type_code,:item_code,:qty)';
                        ParamByName('master_no').Value:=order_no;
                        ParamByName('type_code').Value:=edkd.Text;
                        ParamByName('item_code').Value:=Memdetail['item_code'];
                        ParamByName('qty').Value:=Memdetail['qty'];
                        ExecSQL;
            end;
              Memdetail.Next;
          end;
        end;
        if statustr=1 then
        begin
            with dm.Qtemp do
            begin
              close;
              sql.clear;
              sql.Text:='delete from warehouse.t_mixing_master where master_no='+QuotedStr(order_no);
                        ExecSQL;
            end;
          Memdetail.First;
          while not Memdetail.eof do
          begin
            with dm.Qtemp do
            begin
              close;
              sql.clear;
              sql.Text:='insert into warehouse.t_mixing_master(master_no,type_code,item_code,qty)values'+
                        '(:master_no,:type_code,:item_code,:qty)';
                        ParamByName('master_no').Value:=order_no;
                        ParamByName('type_code').Value:=edkd.Text;
                        ParamByName('item_code').Value:=Memdetail['item_code'];
                        ParamByName('qty').Value:=Memdetail['qty'];
                        ExecSQL;
            end;
            Memdetail.Next;
          end;
        end;
        dm.koneksi.Commit;
        Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
        end
        Except
        on E :Exception do
      begin
        MessageDlg(E.Message,mtError,[MBok],0);
        dm.koneksi.Rollback;
      end;
    end;
    FMainMenu.TampilTabForm2;
    BRefreshClick(sender);
  end;
  PnlNew.visible:=False;
  Pnllist.visible:=True;
end;

procedure TFMaster_PercBarang.BtambahClick(Sender: TObject);
begin
  PnlNew.visible:=True;
  clear;
  Pnllist.Visible:=False;
  edkd.SetFocus;
  statustr:=0;
end;

procedure TFMaster_PercBarang.BUpdateClick(Sender: TObject);
begin
  statustr:=1;
  PnlNew.Visible:=true;
  Memdetail.Close;
  Memdetail.Open;
  Memdetail.EmptyTable;
  clear;
  order_no:=MemMaster['master_no'];
  edkd.Text:=MemMaster['type_code'];
  EdNm.Text:=MemMaster['jenis'];
//  MemMaster.First;
  while not MemMaster.eof do
  begin
    Memdetail.Insert;
    Memdetail['item_code']:=MemMaster['item_code'];
    Memdetail['item_name']:=MemMaster['item_name'];
    Memdetail['qty']:=MemMaster['qty'];
    Memdetail['unit']:=MemMaster['unit'];
    Memdetail.Post;
    MemMaster.Next;
  end;
  Pnllist.Visible:=False;
end;

procedure TFMaster_PercBarang.DBGridEh2Columns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with Fcari_Barang do
  begin
    Show;
    status_tr:='6';
    Qbarang.Close;
    Qbarang.Open;
  end;
end;

procedure TFMaster_PercBarang.edkdButtonClick(Sender: TObject);
begin
  with FCari_Barang do
  begin
    show;
    status_tr:='5';
    with QBarang do
    begin
      close;
      sql.Text:='select a.item_code,a.item_name,b.category,a.order_no,a.unit from t_item a inner join '+
                ' t_item_category b on a.category_id=b.category_id '+//where b.category='+QuotedStr(Edcategory.Text)+''+
                ' Group by a.item_code,a.item_name,b.category,a.order_no,a.unit  '+
                ' order by b.category,a.order_no Asc';
      ExecSQL;
    end;
  end;
end;

end.
