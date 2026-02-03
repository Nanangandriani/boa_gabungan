unit UCetak_POkoletif;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzButton, Vcl.ExtCtrls, RzPanel, Data.DB, MemDS, DBAccess, Uni, frxClass,
  frxDBSet, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFCetak_POKolektif = class(TForm)
    RzPanel1: TRzPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    Dbrpt: TfrxDBDataset;
    RptPO: TfrxReport;
    QRptPO: TUniQuery;
    Qrptdetailpo2: TUniQuery;
    DbRptDetailpo: TfrxDBDataset;
    DBGridMaterial: TDBGridEh;
    Panel1: TPanel;
    dtmulai: TRzDateTimeEdit;
    Label1: TLabel;
    Dsrpt: TDataSource;
    RzBitBtn1: TRzBitBtn;
    procedure BBatalClick(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    jenis_po:string;
  end;

var
  FCetak_POKolektif: TFCetak_POKolektif;

implementation

{$R *.dfm}

uses maenangka;

procedure TFCetak_POKolektif.BBatalClick(Sender: TObject);
begin
 close;
end;

procedure TFCetak_POKolektif.BPrintClick(Sender: TObject);
begin
 if jenis_po='LOKAL' then
    begin
      QRptPO.Close;
      with QRptPO do
      begin
        close;
        sql.Clear;
        sql.Text:=' SELECT	a.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit,a.wh_code,d.trans_category,'+
                  ' a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph,a.pph_rp, '+
                  ' a.subtotal,a.status,a.grandtotal,sum(a.qty)as qtysum, sum(a.subtotal)as subtotalsum,d.po_date,'+
                  ' d.delivery_date, E.supplier_name,e.address,d.valas,d.remarks,d.delivery2_date,d.po2_no,sumtotal, '+
                  ' c.category_id ,i.wh_name,a.account_pph_code,a.account_ppn_code,d.um_value,a.pemb_ppn,d.due_date,(d.po_date+d.due_date) as jatuhtempo_po'+
                  ' FROM t_podetail AS "a" '+
                  ' INNER JOIN t_item_stock AS b ON a.item_stock_code = b.item_stock_code '+
                  ' INNER JOIN t_item AS "c" ON b.item_code = c.item_code  '+
                  ' INNER JOIN t_item_category h on c.category_id=h.category_id '+
                  ' INNER JOIN t_po d on a.po_no=d.po_no '+
                  ' INNER JOIN t_supplier e on d.supplier_code=e.supplier_code '+
                  ' INNER JOIN t_wh i on a.wh_code=i.wh_code  '+
                  ' INNER JOIN (select sum(Grandtotal)as sumtotal,po_no from t_podetail GROUP BY po_no) f on d.po_no=f.po_no '+
                  ' LEFT JOIN t_user g on d.approval=g.user_name'+
                  ' WHERE d.po_date='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtmulai.date))+''+
                  ' GROUP BY a.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit, '+
                  ' a.wh_code,d.type,a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph, '+
                  ' a.pph_rp,a.subtotal,a.status,a.grandtotal,d.po_date,d.delivery_date, e.supplier_name,e.address,d.valas,'+
                  ' d.remarks,d.delivery2_date,i.wh_name,d.po2_no,sumtotal,c.category_id,g.user_name,d.trans_category '+
                  ' ,a.account_pph_code,a.account_ppn_code,d.um_value,a.pemb_ppn,d.due_date'+
                  //' Order By a.detail_id asc ';
                  ' Order By a.po_no desc ';
        ExecSQL;
      end;
      QRptPO.Open;
      Qrptdetailpo2.Open;
      if QRptPO.FieldByName('po_no').AsString=''  then
      begin
         ShowMessage('Maaf data po kosong');
      end
      else
        RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_POgb.Fr3');
       // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
      //  SetMemo(Rptpo,'MTerbilang',' '+ConvKeHuruf(Qrptdetailpo2['qtysum'])+' ');
      //  SetMemo(Rptpo,'MTerbilang2',' '+ConvKeHuruf(Qrptpo['sumtotal'])+' Rupiah ');
        RptPO.ShowReport();
    end;
    if jenis_Po='IMPORT' then
    begin
      QRptPO.Close;
      with QRptPO do
      begin
          close;
          sql.Clear;
          sql.Text:=' SELECT	c.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit,a.wh_code,i.wh_name, '+
                    ' a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph,a.pph_rp, '+
                    ' a.subtotal,a.status,a.grandtotal,sum(a.qty)as qtysum, sum(a.subtotal)as subtotalsum,d.po_date,'+
                    ' d.delivery_date, e.supplier_name,e.address,d.valas,d.remarks,d.delivery2_date,d.po2_no,sumtotal, '+
                    ' c.category_id,g.user_name,d.trans_category,d."type" ,i.wh_name,a.account_pph_code,a.account_ppn_code,d.um_value,a.pemb_ppn'+
                    ' FROM t_podetail AS "a" '+
                    ' INNER JOIN t_item_stock AS b ON a.item_stock_code = b.item_stock_code '+
                    ' INNER JOIN t_item AS "c" ON b.item_code = c.item_code '+
                    ' INNER JOIN t_po d on a.po_no=d.po_no '+
                    ' INNER JOIN t_wh i on a.wh_code=i.wh_code '+
                    ' INNER JOIN t_supplier e on d.supplier_code=e.supplier_code '+
                    ' INNER JOIN t_item_category h on c.category_id=h.category_id '+
                    ' INNER JOIN t_wh i on a.wh_code=i.wh_code '+
                    ' INNER JOIN (select sum(Grandtotal)as sumtotal,po_no from t_podetail GROUP BY po_no) f on '+
                    ' d.po_no=f.po_no INNER JOIN t_user g on d.approval=g.user_name '+
                   ' WHERE d.po_date='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtmulai.date))+''+
                    ' GROUP BY c.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit,a.wh_code,i.wh_name, '+
                    ' a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph, '+
                    ' a.pph_rp,a.subtotal,a.status,a.grandtotal,d.po_date,d.delivery_date,e.supplier_name,e.address,d.valas,'+
                    ' d.remarks,i.wh_name,d.delivery2_date,d.po2_no,sumtotal,c.category_id,g.user_name,d.trans_category,d."type" ,'+
                    ' a.account_pph_code,a.account_ppn_code,d.um_value,a.pemb_ppn'+
                    ' ORDER by a.detail_id ASC ';
          ExecSQL;
      end;
      QRptPO.Open;
      Qrptdetailpo2.Open;
      if QRptPO.FieldByName('po_no').AsString=''  then
      begin
        ShowMessage('Maaf data kosong');
      end;
      if QRptPO.FieldByName('nopo').AsString<>''  then
      begin
         if QRptPO['ppn']<>'0' then
         begin
           RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_POgb.Fr3');
          // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
           SetMemo(Rptpo,'MTerbilang',' '+NumberInWords(Qrptdetailpo2['qtysum'])+' ');
           SetMemo(Rptpo,'MTerbilang2',' '+NumberInWords(Qrptpo['sumtotal'])+' US Dolar ');
           RptPO.ShowReport();
         end;
         if QRptPO['ppn']='0' then
         begin
       // podmlt    RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\frx_KolektifPOPPN.Fr3');
           RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_POgb.Fr3');
           //TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
           SetMemo(Rptpo,'MTerbilang',' '+NumberInWords(Qrptdetailpo2['qtysum'])+' ');
           SetMemo(Rptpo,'MTerbilang2',' '+NumberInWords(Qrptpo['sumtotal'])+' US Dolar ');
           RptPO.ShowReport();
         end;
      end;
    end;
end;

procedure TFCetak_POKolektif.RzBitBtn1Click(Sender: TObject);
var i:integer;
begin
  if DBGridMaterial.SelectedRows.Count > 0 then
  begin
    with DBGridMaterial.DataSource.DataSet do
    begin
       for i := 0 to DBGridMaterial.SelectedRows.Count-1 do
        begin
          GotoBookmark((DBGridMaterial.SelectedRows.Items[i]));
    //      QRptPO.First ;
      //    while not QRptPO.Eof do
        //  begin
              if jenis_po='LOKAL' then
    begin
      QRptPO.Close;
      with QRptPO do
      begin
        close;
        sql.Clear;
        sql.Text:=' SELECT	a.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit,a.wh_code,d.trans_category,'+
                  ' a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph,a.pph_rp, '+
                  ' a.subtotal,a.status,a.grandtotal,sum(a.qty)as qtysum, sum(a.subtotal)as subtotalsum,d.po_date,'+
                  ' d.delivery_date, E.supplier_name,e.address,d.valas,d.remarks,d.delivery2_date,d.po2_no,sumtotal, '+
                  ' c.category_id ,i.wh_name,a.account_pph_code,a.account_ppn_code,d.um_value,a.pemb_ppn,d.due_date,(d.po_date+d.due_date) as jatuhtempo_po'+
                  ' FROM t_podetail AS "a" '+
                  ' INNER JOIN t_item_stock AS b ON a.item_stock_code = b.item_stock_code '+
                  ' INNER JOIN t_item AS "c" ON b.item_code = c.item_code  '+
                  ' INNER JOIN t_item_category h on c.category_id=h.category_id '+
                  ' INNER JOIN t_po d on a.po_no=d.po_no '+
                  ' INNER JOIN t_supplier e on d.supplier_code=e.supplier_code '+
                  ' INNER JOIN t_wh i on a.wh_code=i.wh_code  '+
                  ' INNER JOIN (select sum(Grandtotal)as sumtotal,po_no from t_podetail GROUP BY po_no) f on d.po_no=f.po_no '+
                  ' LEFT JOIN t_user g on d.approval=g.user_name'+
                  ' WHERE d.po_no='+QuotedStr(QRptPO['po_no'])+''+
                  ' GROUP BY a.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit, '+
                  ' a.wh_code,d.type,a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph, '+
                  ' a.pph_rp,a.subtotal,a.status,a.grandtotal,d.po_date,d.delivery_date, e.supplier_name,e.address,d.valas,'+
                  ' d.remarks,d.delivery2_date,i.wh_name,d.po2_no,sumtotal,c.category_id,g.user_name,d.trans_category '+
                  ' ,a.account_pph_code,a.account_ppn_code,d.um_value,a.pemb_ppn,d.due_date'+
                  //' Order By a.detail_id asc ';
                  ' Order By a.po_no desc ';
        ExecSQL;
      end;
      QRptPO.Open;
      Qrptdetailpo2.Open;
      if QRptPO.FieldByName('po_no').AsString=''  then
      begin
         ShowMessage('Maaf data po kosong');
      end
      else
        RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_POgb.Fr3');
       // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
      //  SetMemo(Rptpo,'MTerbilang',' '+ConvKeHuruf(Qrptdetailpo2['qtysum'])+' ');
      //  SetMemo(Rptpo,'MTerbilang2',' '+ConvKeHuruf(Qrptpo['sumtotal'])+' Rupiah ');
        RptPO.ShowReport();
    end;
    if jenis_Po='IMPORT' then
    begin
      QRptPO.Close;
      with QRptPO do
      begin
          close;
          sql.Clear;
          sql.Text:=' SELECT	c.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit,a.wh_code,i.wh_name, '+
                    ' a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph,a.pph_rp, '+
                    ' a.subtotal,a.status,a.grandtotal,sum(a.qty)as qtysum, sum(a.subtotal)as subtotalsum,d.po_date,'+
                    ' d.delivery_date, e.supplier_name,e.address,d.valas,d.remarks,d.delivery2_date,d.po2_no,sumtotal, '+
                    ' c.category_id,g.user_name,d.trans_category,d."type" ,i.wh_name,a.account_pph_code,a.account_ppn_code,d.um_value,a.pemb_ppn'+
                    ' FROM t_podetail AS "a" '+
                    ' INNER JOIN t_item_stock AS b ON a.item_stock_code = b.item_stock_code '+
                    ' INNER JOIN t_item AS "c" ON b.item_code = c.item_code '+
                    ' INNER JOIN t_po d on a.po_no=d.po_no '+
                    ' INNER JOIN t_wh i on a.wh_code=i.wh_code '+
                    ' INNER JOIN t_supplier e on d.supplier_code=e.supplier_code '+
                    ' INNER JOIN t_item_category h on c.category_id=h.category_id '+
                    ' INNER JOIN t_wh i on a.wh_code=i.wh_code '+
                    ' INNER JOIN (select sum(Grandtotal)as sumtotal,po_no from t_podetail GROUP BY po_no) f on '+
                    ' d.po_no=f.po_no INNER JOIN t_user g on d.approval=g.user_name '+
                   ' WHERE d.po_no='+QuotedStr(QRptPO['po_no'])+''+
                    ' GROUP BY c.item_name,h.category,a.detail_id,a.po_no,a.item_stock_code,a.qty,a.price,a.unit,a.wh_code,i.wh_name, '+
                    ' a.conv_currency,a.qty_sent,a.total_payment,a.remaining_payment,a.remaining_qty,a.ppn,a.ppn_rp,a.pph, '+
                    ' a.pph_rp,a.subtotal,a.status,a.grandtotal,d.po_date,d.delivery_date,e.supplier_name,e.address,d.valas,'+
                    ' d.remarks,i.wh_name,d.delivery2_date,d.po2_no,sumtotal,c.category_id,g.user_name,d.trans_category,d."type" ,'+
                    ' a.account_pph_code,a.account_ppn_code,d.um_value,a.pemb_ppn'+
                    ' ORDER by a.detail_id ASC ';
          ExecSQL;
      end;
      QRptPO.Open;
      Qrptdetailpo2.Open;
      if QRptPO.FieldByName('po_no').AsString=''  then
      begin
        ShowMessage('Maaf data kosong');
      end;
      if QRptPO.FieldByName('nopo').AsString<>''  then
      begin
         if QRptPO['ppn']<>'0' then
         begin
           RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_POgb.Fr3');
          // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
           SetMemo(Rptpo,'MTerbilang',' '+NumberInWords(Qrptdetailpo2['qtysum'])+' ');
           SetMemo(Rptpo,'MTerbilang2',' '+NumberInWords(Qrptpo['sumtotal'])+' US Dolar ');
           RptPO.ShowReport();
         end;
         if QRptPO['ppn']='0' then
         begin
       // podmlt    RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\frx_KolektifPOPPN.Fr3');
           RptPO.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_POgb.Fr3');
           //TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Kop Surat2.jpg');
           SetMemo(Rptpo,'MTerbilang',' '+NumberInWords(Qrptdetailpo2['qtysum'])+' ');
           SetMemo(Rptpo,'MTerbilang2',' '+NumberInWords(Qrptpo['sumtotal'])+' US Dolar ');
           RptPO.ShowReport();
         end;
      end;
    end;
    end;
  end;
  end;
end;

end.
