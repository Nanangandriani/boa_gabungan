unit Usearch_MatTerima;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, RzRadChk,
  RzButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RzEdit, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh;

type
  TFSearch_Matterima = class(TForm)
    DBGridEh1: TDBGridEh;
    DTth: TRzDateTimeEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BEdit: TRzBitBtn;
    BSelectAll: TRzBitBtn;
    CkAll: TRzCheckBox;
    DSMaterial: TDataSource;
    QMaterial: TUniQuery;
    procedure BEditClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure CkAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Autonumberlot;
  end;

var
  FSearch_Matterima: TFSearch_Matterima;
  lotstatus:boolean;
implementation

{$R *.dfm}

uses UNew_TerimaMaterial, UDataModule;



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

procedure TFSearch_Matterima.Autonumberlot;
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
   with FNew_TerimaMaterial do
   begin
     MemterimaDet.First;
     while not MemterimaDet.Eof do
     begin
        kd_mat:=MemterimaDet['item_stock_code'];
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:=' select "max"(order_no) as no_urut from t_item_receive_det '+
                    ' where item_stock_code='+QuotedStr(kd_mat)+''+
                    ' and trans_year='+QuotedStr(DTth.Text);
          open;
        end;
        if dm.Qtemp['no_urut'] =null then
          code :='1'
        else
          code:= IntToStr(dm.Qtemp['no_urut'] + 1);
        if length(code) < 10 then
        begin
         for i := length(code) to 2 do
          code := '0' + code;
        end;
        EditComplete:=CODE;
        FNew_TerimaMaterial.MemterimaDet.Edit;
        //FNew_Pembelian.MemterimaDet['item_stock_code']:= MemterimaDet['no_material']+ '/'+Edkd_supp.Text+'/'+EditComplete+'/'+QMaterial['wh_code']+'/'+yn;
        FNew_TerimaMaterial.MemterimaDet['kd_stok']:= QMaterial['item_code']+ '/'+Edkd_supp.Text+'/'+EditComplete+'/'+QMaterial['wh_code']+'/'+(yn);
        FNew_TerimaMaterial.MemterimaDet['nourut']:= EditComplete;
        FNew_TerimaMaterial.MemterimaDet.Post;
        FNew_TerimaMaterial.MemterimaDet.Next;
      end;
    end;
end;

procedure TFSearch_Matterima.BBatalClick(Sender: TObject);
begin
   Close;
end;

procedure TFSearch_Matterima.BEditClick(Sender: TObject);
var I :integer;
begin
    if DBGrideh1.SelectedRows.Count > 0 then
    begin
       with DBGrideh1.DataSource.DataSet do
       begin
           for i := 0 to DBGrideh1.SelectedRows.Count-1 do
           begin
              GotoBookmark((DBGrideh1.SelectedRows.Items[i]));
              with FNew_TerimaMaterial do
              begin
                MemterimaDet.Insert;
                MemterimaDet['nm_material']:=QMaterial['item_name'];
                MemterimaDet['item_stock_code']:=QMaterial['item_stock_code'];
                MemterimaDet['kd_material']:=QMaterial['item_code'];
                MemterimaDet['no_material']:=QMaterial['order_no'];
                MemterimaDet['Gudang']:=QMaterial['wh_name'];
                MemterimaDet['wh_code']:=QMaterial['wh_code'];
                MemterimaDet['qtypo']:=QMaterial['qty'];
                MemterimaDet['qty']:=QMaterial['qty'];
                MemterimaDet['Satuanpo']:=QMaterial['unit'];
                MemterimaDet['Satuan']:=QMaterial['unit'];
                MemterimaDet['ppn']:=QMaterial['ppn'];
                MemterimaDet['pph']:=QMaterial['pph'];
                MemterimaDet['harga']:=QMaterial['price'];
                MemterimaDet['Tahun']:=DTth.Text;
                MemterimaDet['nopo']:=QMaterial['po_no'];
                MemterimaDet['kd_akun']:=QMaterial['account_code'];
                Edjatuhtempo.Text:=QMaterial['due_date'];
                EdValas.Text:=QMaterial['valas'];
                EdNilai_Valas.Text:=QMaterial['valas_value'];
                Edjenispo.Text:=QMaterial['type'];
                memterimadet['id_pengajuan_asset']:=QMaterial['id_pengajuan_asset'];
                memterimadet['no_pengajuan_asset']:=QMaterial['no_pengajuan_asset'];
                memterimadet['id_detail_asset']:=QMaterial['id_detail_asset'];
                memterimadet['spesifikasi_asset']:=QMaterial['spesifikasi_asset'];
               MemterimaDet.Post;
              end;
           end;
       end;
    end;
    close;

    FNew_TerimaMaterial.MemterimaDet.First;
    while not FNew_TerimaMaterial.MemterimaDet.Eof do
    begin
       if FNew_TerimaMaterial.DBGridDetailpo.Fields[0].AsString='' then
       begin
          FNew_TerimaMaterial.MemterimaDet.Delete
       end;
       FNew_TerimaMaterial.MemterimaDet.Next;
    end;
    with FNew_TerimaMaterial do
    begin
      MemterimaDet.First;
      while not MemterimaDet.Eof do
      begin
        with Dm.Qtemp do
        begin
            close;
            sql.Clear;
            sql.Text:=' select a.*,b.item_stock_code from t_item a  inner join t_item_stock b '+
                      ' on a.item_code=b.item_code where b.item_stock_code='+QuotedStr(MemterimaDet['item_stock_code']);
            ExecSQL;
        end;
        lotstatus:=Dm.Qtemp['lot_status'];
        if lotstatus=false then
        begin
          MemterimaDet.Edit;
          //MemterimaDet['kd_stok']:=MemterimaDet['kd_material'];
          //MemterimaDet['kd_stok']:=MemterimaDet['item_stock_code'];
          //MemterimaDet['kd_stok']:=MemterimaDet['item_stock_code']+'/'+MemterimaDet['wh_code'];
          MemterimaDet['kd_stok']:=QMaterial['item_stock_code']+'/'+QMaterial['wh_code'];
          MemterimaDet.Post;
        end
        else
        Autonumberlot;
        MemterimaDet.Next;
      end;
    end;

    {with Dm.Qtemp do
    begin
        close;
        sql.Clear;
        sql.Text:='select a.*,b.item_stock_code from t_item a  inner join warehouse.t_item_stock b '+
                  ' on a.item_code=b.item_code where b.item_stock_code='+QuotedStr(QMaterial['item_stock_code']);
        ExecSQL;
    end;
    //category:=Dm.Qtemp['type'];
    lotstatus:=Dm.Qtemp['lot_status'];
    if lotstatus=false then
    begin
      FNew_TerimaMaterial.MemterimaDet.Edit;
      FNew_TerimaMaterial.MemterimaDet['kd_stok']:=FNew_TerimaMaterial.MemterimaDet['kd_material'];
      FNew_TerimaMaterial.MemterimaDet.Post;
    end
    else
      Autonumberlot;}

    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:=' SELECT a.group_name,a.kdtr, c.account_code,b.account_name FROM t_item_group a  '+
      ' INNER JOIN t_ak_account b on a.account_code=b.code INNER JOIN t_item c on a.group_id=c.group_id'+
      ' INNER JOIN t_item_stock d on c.item_code=d.item_code where d.item_stock_code='+QuotedStr(DBGridEh1.Fields[5].AsString);
      ExecSQL
    end;
    if DM.Qtemp.RecordCount=0 then
    begin
       ShowMessage('Akun Perkiraan Kosong');
    end
    else
    with FNew_TerimaMaterial do
    begin
      Edkd_akun.Text:=DM.Qtemp['account_code'];
      EdNm_akun.Text:=dm.Qtemp['account_name'];
    end;
    Close;

end;

procedure TFSearch_Matterima.CkAllClick(Sender: TObject);
begin
  if CKAll.Checked then
  begin
    DBGridEh1.SelectedRows.SelectAll;
  end
  else
    DBGridEh1.SelectedRows.Clear;
end;

procedure TFSearch_Matterima.DBGridEh1DblClick(Sender: TObject);
begin
    with FNew_TerimaMaterial do
    begin
      Show;
      MemterimaDet.Edit;
      MemterimaDet['nm_material']:=QMaterial['item_name'];
      MemterimaDet['item_stock_code']:=QMaterial['item_stock_code'];
      MemterimaDet['kd_material']:=QMaterial['item_code'];
      MemterimaDet['no_material']:=QMaterial['order_no'];
      MemterimaDet['Gudang']:=QMaterial['wh_name'];
      MemterimaDet['wh_code']:=QMaterial['wh_code'];
      MemterimaDet['qtypo']:=QMaterial['qty'];
      MemterimaDet['qty']:=QMaterial['qty'];
      MemterimaDet['Satuanpo']:=QMaterial['unit'];
      MemterimaDet['Satuan']:=QMaterial['unit'];
      MemterimaDet['ppn']:=QMaterial['ppn'];
      MemterimaDet['pph']:=QMaterial['pph'];
      MemterimaDet['harga']:=QMaterial['price'];
      MemterimaDet['Tahun']:=DTth.Text;
      MemterimaDet['nopo']:=QMaterial['po_no'];
      MemterimaDet['kd_akun']:=QMaterial['account_code'];
      Edjatuhtempo.Text:=QMaterial['due_date'];
      EdValas.Text:=QMaterial['valas'];
      EdNilai_Valas.Text:=QMaterial['valas_value'];
      Edjenispo.Text:=QMaterial['type'];
      memterimadet['id_pengajuan_asset']:=QMaterial['id_pengajuan_asset'];
      memterimadet['no_pengajuan_asset']:=QMaterial['no_pengajuan_asset'];
      memterimadet['id_detail_asset']:=QMaterial['id_detail_asset'];
      memterimadet['spesifikasi_asset']:=QMaterial['spesifikasi_asset'];
      MemterimaDet.Post;
    end;
    with Dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select a.*,b.item_stock_code from t_item a  inner join t_item_stock b '+
                ' on a.item_code=b.item_code where b.item_stock_code='+QuotedStr(QMaterial['item_stock_code']);
      ExecSQL;
    end;
    lotstatus:=Dm.Qtemp['lot_status'];
    if lotstatus=false then
    begin
        FNew_TerimaMaterial.MemterimaDet.Edit;
        //FNew_TerimaMaterial.MemterimaDet['kd_stok']:=FNew_TerimaMaterial.MemterimaDet['kd_material'];
        //FNew_TerimaMaterial.MemterimaDet['kd_stok']:=Dm.Qtemp['item_stock_code'];
        FNew_TerimaMaterial.MemterimaDet['kd_stok']:=Dm.Qtemp['item_stock_code']+'/'+QMaterial['wh_code'];
        FNew_TerimaMaterial.MemterimaDet.Post;
    end
    else
    begin
      Autonumberlot;
      //FNew_TerimaMaterial.MemterimaDet.Next;
    end;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:=' SELECT a.*,b.account_name FROM t_item_category a '+
                ' INNER JOIN t_ak_account b on a.account_code=b.code '+
                ' INNER JOIN t_item c on a.category_id=c.category_id '+
                ' INNER JOIN t_item_stock d on c.item_code=d.item_code '+
                ' where d.item_stock_code='+QuotedStr(DBGridEh1.Fields[5].AsString);
      ExecSQL
    end;
    if DM.Qtemp.RecordCount=0 then
    begin
      ShowMessage('Akun Perkiraan Kosong');
    end
    else
    with FNew_TerimaMaterial do
    begin
      Edkd_akun.Text:=DM.Qtemp['account_code'];
      EdNm_akun.Text:=dm.Qtemp['account_name'];
    end;
    Close;
end;

procedure TFSearch_Matterima.FormShow(Sender: TObject);
begin
   DTth.Date:=now;
   QMaterial.Close;
   QMaterial.Open;
   CkAll.Checked:=false;
end;

procedure TFSearch_Matterima.Panel1Click(Sender: TObject);
begin
  if CKAll.Checked then
  begin
    DBGridEh1.SelectedRows.SelectAll;
  end
  else
    DBGridEh1.SelectedRows.Clear;
end;

end.
