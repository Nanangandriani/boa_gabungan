unit UNew_ReturnPembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemDS, DBAccess, Uni,
  RzBtnEdt, Vcl.StdCtrls, RzCmboBx, RzEdit, Vcl.Mask, RzButton, Vcl.ExtCtrls,
  MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFNew_ReturnPemb = class(TForm)
    edno_terima: TRzComboBox;
    DsDetail: TDataSource;
    MemDetail: TMemTableEh;
    QFaktur: TUniQuery;
    Edgrandtotal: TRzEdit;
    edppn: TRzEdit;
    EdNoFaktur: TRzComboBox;
    DtFaktur: TRzDateTimeEdit;
    DBGridEh3: TDBGridEh;
    Edppnrp: TRzEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Edno: TRzEdit;
    DtReturn: TRzDateTimeEdit;
    Ednm_supp: TRzButtonEdit;
    Edkd_supp: TRzEdit;
    Label8: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Edurut: TEdit;
    RzBitBtn1: TRzBitBtn;
    Label18: TLabel;
    Label19: TLabel;
    RzNumericEdit1: TRzNumericEdit;
    RzNumericEdit2: TRzNumericEdit;
    DtTh: TRzDateTimeEdit;
    DtBln: TRzDateTimeEdit;
    DtHr: TRzDateTimeEdit;
    procedure Ednm_suppButtonClick(Sender: TObject);
    procedure Ednm_suppChange(Sender: TObject);
    procedure edno_terimaChange(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtReturnChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Autonumber;
    Procedure Totalretur;
    procedure clear;
  end;

var
  FNew_ReturnPemb: TFNew_ReturnPemb;
  status:integer;
  kdstok:string;
  subtotal,ppn_rp,grandtotal:real;

implementation

{$R *.dfm}

uses USupp_Pembelian, UDataModule, UReturnPembelian,UMy_Function;

Procedure TFNew_returnPemb.Totalretur;
begin
  subtotal:=DBGridEh3.Columns[6].footer.sumvalue;
  ppn_rp:=(subtotal/100)* StrToFloat(edppn.Text);
  grandtotal:=subtotal+ppn_rp;
  Edppnrp.Text:=FloatToStr(ppn_rp);
  Edgrandtotal.Text:=FloatToStr(grandtotal);
end;

procedure TFNew_ReturnPemb.Autonumber;
begin
  idmenu:='M4304';
  strday2:=DtReturn.Date;
  Edno.Text:=getNourutBlnPrshthn_kode(strday2,'purchase.t_purchase_return','');
  Edurut.Text:=order_no;
end;

procedure TFNew_ReturnPemb.BBatalClick(Sender: TObject);
begin
    Close;
    FReturnPembelian.DxBarRefreshClick(sender);
end;

procedure TFNew_ReturnPemb.BSimpanClick(Sender: TObject);
begin
    {if EdNo.Text='' then
    begin
      MessageDlg('No. Retur Pembelian Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNo.SetFocus;
      Exit;
    end;
    if DtReturn.Text='' then
    begin
      MessageDlg('Tanggal Retur Pembelian Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtReturn.SetFocus;
      Exit;
    end;
    if Ednm_supp.Text='' then
    begin
      MessageDlg('Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ednm_supp.SetFocus;
      Exit;
    end;
    if EdNoFaktur.Text='' then
    begin
      MessageDlg('No. Faktur Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNoFaktur.SetFocus;
      Exit;
    end;}
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
      try
      begin
          Autonumber;
          if status=0 then
          begin
              with dm.Qtemp do
              begin
                close;
                sql.Clear;
                sql.Text:='select * from purchase.t_purchase_return';
                ExecSQL;
              end;
              with dm.Qtemp do
              begin
                close;
                sql.Clear;
                sql.Text:='insert into purchase.t_purchase_return(return_no,return_date,faktur_no,'+
                          ' price, total_price, ppn, supplier_code,receive_no,year,month,date_no,order_no,trans_day,trans_month,trans_year)'+
                          ' values('+quotedstr(Edno.Text)+','+
                          ''+QuotedStr(FormatDateTime('mm-dd-yyy',DtReturn.Date))+','+
                          ''+QuotedStr(EdNoFaktur.Text)+','+
                          ''+QuotedStr(FloatToStr(subtotal))+','+QuotedStr(FloatToStr(grandtotal))+','+
                          ''+QuotedStr(edppn.Text)+','+QuotedStr(Edkd_supp.Text)+','+
                          ''+QuotedStr(edno_terima.Text)+','+
                          ''+QuotedStr(DtTh.Text)+','+
                          ''+QuotedStr(DtBln.Text)+','+
                          ''+QuotedStr(DtHr.Text)+','+
                          ''+QuotedStr(edurut.Text)+','+
                          ''+QuotedStr(DtHr.Text)+','+
                          ''+QuotedStr(DtBln.Text)+','+
                          ''+QuotedStr(DtTh.Text)+')';

                ExecSQL;
              end;
              MemDetail.First;
              while not MemDetail.Eof do
              begin
              with dm.Qtemp do
              begin
                Close;
                sql.Clear;
                sql.Text:='	insert into purchase.t_purchase_return_det(return_no,faktur_no,po_no, material_stock_code,'+
                          ' qty,unit,stock_code,price,total_price,no_terima)values('+QuotedStr(EdNo.Text)+','+
                          ''+QuotedStr(MemDetail['nofaktur'])+','+QuotedStr(MemDetail['nopo'])+','+
                          ''+QuotedStr(MemDetail['kd_material'])+','+QuotedStr(MemDetail['qty'])+','+
                          ''+QuotedStr(MemDetail['satuan'])+','+QuotedStr(MemDetail['kd_stok'])+','+
                          ''+QuotedStr(MemDetail['harga'])+','+QuotedStr(MemDetail['totalharga'])+','+
                          ''+QuotedStr(MemDetail['no_terima'])+')';
                ExecSQL;
              end;
              MemDetail.Next;
              end;
              end;
          if status=1 then
          begin
              with dm.Qtemp do
              begin
                  close;
                  sql.Clear;
                  sql.Text:='Update purchase.t_purchase_return set return_date='+
                            ''+QuotedStr(FormatDateTime('mm-dd-yyy',DtReturn.Date))+','+
                            ' faktur_no='+QuotedStr(EdNoFaktur.Text)+','+
                            ' price='+QuotedStr(FloatToStr(subtotal))+','+
                            ' grandtotal='+QuotedStr(FloatToStr(grandtotal))+','+
                            ' ppn='+QuotedStr(edppn.Text)+','+
                            ' supplier_code='+QuotedStr(Edkd_supp.Text)+''+
                            ' where no_return='+quotedstr(Edno.Text);
                  ExecSQL;
                end;
              with dm.Qtemp do
              begin
                Close;
                sql.Clear;
                sql.Text:='	delete from purchase.t_purchase_return_det where return_no='+QuotedStr(Edno.Text);
                ExecSQL;
              end;
              MemDetail.First;
              while not MemDetail.Eof do
              begin
                with dm.Qtemp do
                begin
                  Close;
                  sql.Clear;
                  sql.Text:='	insert into purchase.t_purchase_return_det(return_no,faktur_no,po_no, material_stock_code,'+
                            ' qty,unit,stock_code,price,total_price)values('+QuotedStr(EdNo.Text)+','+
                            ''+QuotedStr(MemDetail['nofaktur'])+','+QuotedStr(MemDetail['nopo'])+','+
                            ''+QuotedStr(MemDetail['kd_material'])+','+QuotedStr(MemDetail['qty'])+','+
                            ''+QuotedStr(MemDetail['satuan'])+','+QuotedStr(MemDetail['kd_stok'])+','+
                            ''+QuotedStr(MemDetail['harga'])+','+QuotedStr(MemDetail['totalharga'])+')';
                  ExecSQL;
                end;
                MemDetail.Next;
              end;
          end;
          dm.koneksi.Commit;
          Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
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


procedure TFNew_ReturnPemb.DtReturnChange(Sender: TObject);
begin
   DtBln.Date:=DtReturn.Date;
   DtTh.Date:=DtReturn.Date;
   Dthr.Date:=DtReturn.Date;
end;

procedure TFNew_ReturnPemb.Ednm_suppButtonClick(Sender: TObject);
begin
  with FSupp_Pembelian do
  begin
    Show;
    if Qsupplier.Active=False then Qsupplier.Active:=True;
  end;
end;

procedure TFNew_ReturnPemb.Ednm_suppChange(Sender: TObject);
begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from purchase.t_material_receive where supplier_code='+QuotedStr(Edkd_supp.Text);
      Execute;
    end;
    Dm.Qtemp.First;
    while not Dm.Qtemp.Eof do
    begin
      edno_terima.items.Add(Dm.Qtemp['receive_no']);
      Dm.Qtemp.Next;
    end;
    end;

procedure TFNew_ReturnPemb.edno_terimaChange(Sender: TObject);
begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from purchase.t_material_receive where Receive_no='+QuotedStr(edno_terima.Text);
      Execute;
    end;
      EdNoFaktur.Text:=Dm.Qtemp['faktur_no'];
      DtFaktur.text:=Dm.Qtemp['faktur_date'];
end;
procedure TFNew_ReturnPemb.FormShow(Sender: TObject);
begin
   Clear;
   DtReturn.Date:=Now;
end;

procedure TFNew_ReturnPemb.RzBitBtn1Click(Sender: TObject);
begin
   Autonumber;
end;

Procedure TFNew_ReturnPemb.Clear;
begin
  Edno.Text:='';
  Edurut.Text:='';
  Edkd_supp.Text:='';
  Ednm_supp.Text:='';
  Edppnrp.Text:='0';
  EdNoFaktur.Text:='';
  edppn.Text:='10';
  Edgrandtotal.Text:='';
  MemDetail.EmptyTable;
end;


end.
