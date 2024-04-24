unit USearch_TerimaBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzButton, Vcl.ExtCtrls, Data.DB, MemDS,
  DBAccess, Uni, RzRadChk;

type
  TFSearch_TerimaBarang = class(TForm)
    DSMaterial: TDataSource;
    QMaterial: TUniQuery;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BEdit: TRzBitBtn;
    BSelectAll: TRzBitBtn;
    DTth: TRzDateTimeEdit;
    DBGridEh1: TDBGridEh;
    CkAll: TRzCheckBox;
    procedure FormShow(Sender: TObject);
    procedure BSelectAllClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure CkAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Autonumber;
  end;

var
  FSearch_TerimaBarang: TFSearch_TerimaBarang;
  //category:string;
  lotstatus:boolean;

implementation

{$R *.dfm}

uses UNew_Pembelian, UDataModule;


function IntToRoman(Value : Longint):String;  // fungsi
 const
    arabics: Array[1..12] of integer=(1,2,3,4,5,6,7,8,9,10,11,12);
    Romans: Array [1..12] Of string=('I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII');
 Var  i :integer;
begin
    For i := 12 downto 1 do
    while (Value >= Arabics[i]) do
    begin
      Value := Value - Arabics[i];
      Result:= Result + Romans[i];
    end;
end;

procedure TFSearch_TerimaBarang.Autonumber;
var
    i      : integer;
    urut   : integer;
    yr,mt,dy,noSJ,noEX ,yn : string;
    yy,d,M : word;
    code   : string;
    //urutan   : string;
    EditComplete : string;
    maxmy  : string;
    kd_mat :string;
begin
   (*Find encode of the date*)
   DecodeDate(now, yy,M,d );
   yr:=intTostr(yy);
   yn:=copy(yr,3,2);
   mt:=IntToStr(M);
   dy:=IntToStr(d);
   (*looking for max mm/yy*)
   maxmy:= (IntToRoman(strToint(mt)))+'/'+yn;
   with FNew_Pembelian do
   begin
     MemterimaDet.First;
     while not MemterimaDet.Eof do
     begin
        kd_mat:=MemterimaDet['item_stock_code'];
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='select "max"(order_no) as no_urut from purchase.t_item_receive_det '+
                    ' where stock_code='+QuotedStr(kd_mat)+''+
                    ' and trans_year='+QuotedStr(DTth.Text);
          open;
        end;
        if dm.Qtemp['no_urut']= '' then
          code :='1'
        else
          code:= IntToStr(dm.Qtemp['no_urut'] + 1);
        if length(code) < 10 then
        begin
         for i := length(code) to 2 do
          code := '0' + code;
        end;
        EditComplete:=CODE;
        FNew_Pembelian.MemterimaDet.Edit;
        FNew_Pembelian.MemterimaDet['kd_stok']:= MemterimaDet['no_material']+ '/'+Edkd_supp.Text+'/'+EditComplete+'/'+QMaterial['wh_code']+'/'+yn;
        FNew_Pembelian.MemterimaDet['nourut']:= EditComplete;
        FNew_Pembelian.MemterimaDet.Post;
        FNew_Pembelian.MemterimaDet.Next;
      end;
    end;
end;

procedure TFSearch_TerimaBarang.BEditClick(Sender: TObject);
var i:integer;
begin
    if jenis_pembelian<>'AKTIVA' then
    begin
       if DBGrideh1.SelectedRows.Count > 0 then
       begin
          with DBGrideh1.DataSource.DataSet do
          begin
             for i := 0 to DBGrideh1.SelectedRows.Count-1 do
             begin
                  GotoBookmark((DBGrideh1.SelectedRows.Items[i]));
                  with FNew_Pembelian do
                  begin
                    MemterimaDet.Insert;
                    MemterimaDet['nm_material']:=QMaterial['item_name'];
                    MemterimaDet['item_stock_code']:=QMaterial['item_stock_code'];
                    MemterimaDet['kd_material']:=QMaterial['item_code'];
                    MemterimaDet['no_material']:=QMaterial['order_no'];
                    MemterimaDet['Gudang']:=QMaterial['warehouse'];
                    MemterimaDet['Satuanpo']:=QMaterial['unit'];
                    MemterimaDet['Satuan']:=QMaterial['unit'];
                    MemterimaDet['ppn']:=QMaterial['ppn'];
                    MemterimaDet['pph']:=QMaterial['pph'];
                    MemterimaDet['harga']:=QMaterial['price'];
                    MemterimaDet['Tahun']:=DTth.Text;
                    MemterimaDet['nopo']:=QMaterial['po_no'];
                    MemterimaDet['kd_akun']:=QMaterial['account_code'];
                    MemterimaDet['ppn_rp_pembulatan']:=0;
                    MemterimaDet['bea_masuk']:=0;
                    MemterimaDet['subtotalrp']:=0;
                    MemterimaDet['grandtotal']:=0;
                    MemterimaDet['pph_rp']:=0;
                    MemterimaDet['ppn_rp']:=0;
                    MemterimaDet['pemb_dpp']:=0;
                    Edjatuhtempo.Text:=QMaterial['due_date'];
                    EdValas.Text:=QMaterial['valas'];
                    EdNilai_Valas.Text:=QMaterial['valas_value'];
                    Edjenispo.Text:=QMaterial['type'];
                    MemterimaDet['qtypo']:=QMaterial['qty'];
                    MemterimaDet['qty']:=QMaterial['qty'];
                    MemterimaDet.Post;
                  end;
             end;
          end;
       end;
       close;
       FNew_Pembelian.MemterimaDet.First;
       while not FNew_Pembelian.MemterimaDet.Eof do
       begin
           if FNew_Pembelian.DBGridDetailpo.Fields[0].AsString='' then
           begin
              FNew_Pembelian.MemterimaDet.Delete
           end;
           FNew_Pembelian.MemterimaDet.Next;
       end;
       with FNew_Pembelian do
       begin
          MemterimaDet.First;
          while not MemterimaDet.Eof do
          begin
             with Dm.Qtemp do
             begin
                close;
                sql.Clear;
                sql.Text:='select a.*,b.item_stock_code from t_item a  inner join warehouse.t_item_stock b '+
                          ' on a.item_code=b.item_code where b.item_stock_code='+QuotedStr(MemterimaDet['item_stock_code']);
                ExecSQL;
             end;
             //category:=Dm.Qtemp['category_id'];
             lotstatus:=Dm.Qtemp['lot_status'];
             if lotstatus=false then
             begin
                MemterimaDet.Edit;
                MemterimaDet['kd_stok']:=MemterimaDet['kd_material'];
                MemterimaDet.Post;
             end
             else
             self.Autonumber;
             MemterimaDet.Next;
          end;
       end;
    end;
    if jenis_pembelian='AKTIVA' then
    begin
       if DBGrideh1.SelectedRows.Count > 0 then
       begin
          with DBGrideh1.DataSource.DataSet do
          begin
            for i := 0 to DBGrideh1.SelectedRows.Count-1 do
            begin
               GotoBookmark((DBGrideh1.SelectedRows.Items[i]));
               with FNew_Pembelian do
               begin
                  MemterimaDet.Insert;
                  MemterimaDet['nm_material']:=QMaterial['item_name'];
                  //MemterimaDet['kd_material']:=QMaterial['item_stock_code'];
                  MemterimaDet['kd_material']:=QMaterial['item_code'];
                  MemterimaDet['no_material']:=QMaterial['order_no'];
                  MemterimaDet['Gudang']:=QMaterial['warehouse'];
                  MemterimaDet['Satuanpo']:=QMaterial['unit'];
                  MemterimaDet['Satuan']:=QMaterial['unit'];
                  MemterimaDet['ppn']:=QMaterial['ppn'];
                  MemterimaDet['pph']:=QMaterial['pph'];
                  MemterimaDet['harga']:=QMaterial['price'];
                  MemterimaDet['Tahun']:=DTth.Text;
                  MemterimaDet['nopo']:=QMaterial['po_no'];
                  MemterimaDet['kd_akun']:=QMaterial['account_code'];
                  MemterimaDet['ppn_rp_pembulatan']:=0;
                  MemterimaDet['bea_masuk']:=0;
                  MemterimaDet['subtotalrp']:=0;
                  MemterimaDet['grandtotal']:=0;
                  MemterimaDet['pph_rp']:=0;
                  MemterimaDet['ppn_rp']:=0;
                  MemterimaDet['pemb_dpp']:=0;
                  Edjatuhtempo.Text:=QMaterial['due_date'];
                  EdValas.Text:=QMaterial['valas'];
                  EdNilai_Valas.Text:=QMaterial['valas_value'];
                  MemterimaDet['ppn_rp_pembulatan']:=0;
                  MemterimaDet['qtypo']:=QMaterial['qty'];
                  MemterimaDet['qty']:=QMaterial['qty'];
                  MemterimaDet.Post;
               end;
            end;
          end;
       end;
       FNew_Pembelian.MemterimaDet.First;
       while not FNew_Pembelian.MemterimaDet.Eof do
       begin
          if FNew_Pembelian.DBGridDetailpo.Fields[0].AsString='' then
          begin
             FNew_Pembelian.MemterimaDet.Delete
          end;
          FNew_Pembelian.MemterimaDet.Next;
       end;
       with FNew_Pembelian do
       begin
          MemterimaDet.First;
          while not MemterimaDet.Eof do
          begin
             with Dm.Qtemp do
             begin
                close;
                sql.Clear;
                sql.Text:='select a.*,b.item_stock_code from t_item a  inner join warehouse.t_item_stock b '+
                          ' on a.item_code=b.item_code where b.item_stock_code='+QuotedStr(MemterimaDet['kd_material']);
                ExecSQL;
              end;
              //Self.Autonumber2;
              MemterimaDet.Next;
          end;
       end;
    end;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:=' SELECT a.*,b.account_name FROM t_item_category a '+
                ' INNER JOIN t_ak_account b on a.account_code=b.code '+
                ' INNER JOIN t_item c on a.category_id=c.category_id '+
                ' INNER JOIN warehouse.t_item_stock d on c.item_code=d.item_code '+
                ' where d.item_stock_code='+QuotedStr(DBGridEh1.Fields[5].AsString);
      ExecSQL
    end;
    if DM.Qtemp.RecordCount=0 then
    begin
      ShowMessage('Akun Perkiraan Kosong');
    end
    else
    with FNew_Pembelian do
    begin
      Edkd_akun.Text:=DM.Qtemp['account_code'];
      EdNm_akun.Text:=dm.Qtemp['account_name'];
    end;
    FNew_Pembelian.DBGridDetailpoColEnter(sender);
    Close;

end;

procedure TFSearch_TerimaBarang.BSelectAllClick(Sender: TObject);
begin
  DBGridEh1.SelectedRows.SelectAll;
end;

procedure TFSearch_TerimaBarang.FormShow(Sender: TObject);
begin
   DTth.Date:=now;
   QMaterial.Close;
   QMaterial.Open;
   CkAll.Checked:=false;
end;

procedure TFSearch_TerimaBarang.CkAllClick(Sender: TObject);
begin
  if CKAll.Checked then
  begin
     DBGridEh1.SelectedRows.SelectAll;
  end
  else
   DBGridEh1.SelectedRows.Clear;
end;

end.
