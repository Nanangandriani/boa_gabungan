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
    QMaterial2: TUniQuery;
    DSMaterial2: TDataSource;
    DBGridEh2: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure BSelectAllClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure CkAllClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Autonumberlot;
    procedure Autonumber2;
  end;

function FSearch_TerimaBarang: TFSearch_TerimaBarang;
  //category:string;
var  lotstatus:boolean;

implementation

{$R *.dfm}

uses UDataModule, UMainMenu,UNew_Pembelian;

var
  RealFSearch_TerimaBarang: TFSearch_TerimaBarang;
function FSearch_TerimaBarang: TFSearch_TerimaBarang;
begin
  if RealFSearch_TerimaBarang <> nil then
    FSearch_TerimaBarang:= RealFSearch_TerimaBarang
  else
    Application.CreateForm(TFSearch_TerimaBarang, Result);
end;

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

procedure TFSearch_TerimaBarang.Autonumber2;
var i      : integer;
    urut   : integer;
    yr,mt,dy,noSJ,noEX ,yn : string;
    yy,d,M : word;
    code   : string;
    //urutan   : string;
    EditComplete : string;
    maxmy  : string;
begin
     (*Find encode of the date*)
     DecodeDate(FNew_Pembelian.Dtterima.Date, yy,M,d );
     bln:=FormatDateTime('mm',FNew_Pembelian.Dtterima.Date);
     tgl:=FormatDateTime('dd',FNew_Pembelian.Dtterima.Date);
     yr:=intTostr(yy);
     thn:=inttostr(yy);
     yn:=copy(yr,3,2);
     mt:=IntToStr(M);
     dy:=IntToStr(d);
     (*looking for max mm/yy*)
     maxmy:= tgl+'/'+(IntToRoman(strToint(mt)))+'/'+yn;
     with FNew_Pembelian do
     begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='select MAX("left"(kd_asset,3)) AS KD from t_asset where tahun_perolehan='+QuotedStr(thn)+''+
                    ' and bln='+QuotedStr(bln)+' and tgl_no='+QuotedStr(tgl);
          open;
        end;
        if dm.Qtemp['KD'] = '' then
          code := '1'
        else
          code:= IntToStr(dm.Qtemp['KD']+ 1);
        if length(code) < 10 then
        begin
          for i := length(code) to 2 do
          code := '0' + code;
        end;
        EditComplete:=CODE;
        MemterimaDet.Edit;
        MemterimaDet['kd_stok']:= EditComplete+'/'+maxmy+'/' + Kd_SBU;
        MemterimaDet.Post;
        kd_urut:=EditComplete+'/'+maxmy+'/' + Kd_SBU;
    end;
end;

procedure TFSearch_TerimaBarang.Autonumberlot;
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
        FNew_Pembelian.MemterimaDet.Edit;
        //FNew_Pembelian.MemterimaDet['item_stock_code']:= MemterimaDet['no_material']+ '/'+Edkd_supp.Text+'/'+EditComplete+'/'+QMaterial['wh_code']+'/'+yn;
        FNew_Pembelian.MemterimaDet['kd_stok']:= MemterimaDet['kd_material']+ '/'+Edkd_supp.Text+'/'+EditComplete+'/'+QMaterial['wh_code']+'/'+(yn);
        FNew_Pembelian.MemterimaDet['nourut']:= EditComplete;
        FNew_Pembelian.MemterimaDet.Post;
        FNew_Pembelian.MemterimaDet.Next;
      end;
    end;
end;

procedure TFSearch_TerimaBarang.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFSearch_TerimaBarang.BEditClick(Sender: TObject);
var i:integer;
begin
    if jenis_pembelian<>'AKTIVA' then
    begin
       if dbgrideh1.Visible=true then
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
                      MemterimaDet['Gudang']:=QMaterial['wh_name'];
                      MemterimaDet['wh_code']:=QMaterial['wh_code'];
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
                      MemterimaDet['wh_code']:=QMaterial['wh_code'];
                      MemterimaDet['kd_akun']:=QMaterial['header_code'];
                      MemterimaDet.Post;
                    end;
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
                //MemterimaDet['kd_stok']:=MemterimaDet['kd_material'];
                MemterimaDet['kd_stok']:=MemterimaDet['item_stock_code'];
                MemterimaDet.Post;
             end
             else
             Autonumberlot;
             //showmessage('0');
             {MemterimaDet.Edit;
             MemterimaDet['kd_stok']:=MemterimaDet['item_stock_code'];
             MemterimaDet.Post;}
             MemterimaDet.Next;
          end;
       end;

       //////////
       if dbgrideh2.Visible=true then
       begin
         if DBGrideh2.SelectedRows.Count > 0 then
         begin
            with DBGrideh2.DataSource.DataSet do
            begin
               for i := 0 to DBGrideh2.SelectedRows.Count-1 do
               begin
                    GotoBookmark((DBGrideh2.SelectedRows.Items[i]));
                    with FNew_Pembelian do
                    begin
                      MemterimaDet.Insert;
                      MemterimaDet['nm_material']:=QMaterial2['item_name'];
                      MemterimaDet['item_stock_code']:=QMaterial2['item_stock_code'];
                      MemterimaDet['kd_material']:=QMaterial2['item_code'];
                      MemterimaDet['no_material']:=QMaterial2['order_no'];
                      MemterimaDet['Gudang']:=QMaterial2['wh_name'];
                      MemterimaDet['wh_code']:=QMaterial2['wh_code'];
                      MemterimaDet['Satuanpo']:=QMaterial2['unit'];
                      MemterimaDet['Satuan']:=QMaterial2['unit'];
                      MemterimaDet['ppn']:=QMaterial2['ppn'];
                      MemterimaDet['pph']:=QMaterial2['pph'];
                      MemterimaDet['harga']:=QMaterial2['price'];
                      MemterimaDet['Tahun']:=DTth.Text;
                      MemterimaDet['nopo']:=QMaterial2['receive_no'];
                      MemterimaDet['kd_akun']:=QMaterial2['account_code'];
                      MemterimaDet['ppn_rp_pembulatan']:=0;
                      MemterimaDet['bea_masuk']:=0;
                      MemterimaDet['subtotalrp']:=0;
                      MemterimaDet['grandtotal']:=0;
                      MemterimaDet['pph_rp']:=0;
                      MemterimaDet['ppn_rp']:=0;
                      MemterimaDet['pemb_dpp']:=0;
                      Edjatuhtempo.Text:=QMaterial2['due_date'];
                      EdValas.Text:=QMaterial2['valas'];
                      EdNilai_Valas.Text:=QMaterial2['valas_value'];
                      Edjenispo.Text:=QMaterial2['type'];
                      MemterimaDet['qtypo']:=QMaterial2['qty'];
                      MemterimaDet['qty']:=QMaterial2['qty'];
                      MemterimaDet['wh_code']:=QMaterial2['wh_code'];
                      MemterimaDet['kd_material']:=QMaterial2['item_code'];
                      MemterimaDet['kd_akun']:=QMaterial2['header_code'];
                      MemterimaDet.Post;
                    end;
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
                //MemterimaDet['kd_stok']:=MemterimaDet['kd_material'];
                MemterimaDet['kd_stok']:=MemterimaDet['item_stock_code'];
                MemterimaDet.Post;
             end
             else
             Autonumberlot;
             //showmessage('0');
             {MemterimaDet.Edit;
             MemterimaDet['kd_stok']:=MemterimaDet['item_stock_code'];
             MemterimaDet.Post;}
             MemterimaDet.Next;
          end;
       end;

    end;
    if jenis_pembelian='AKTIVA' then
    begin
     if DBGridEh1.Visible=true then
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
                  MemterimaDet['Gudang']:=QMaterial['wh_name'];
                  MemterimaDet['wh_code']:=QMaterial['wh_code'];
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
                  MemterimaDet['wh_code']:=QMaterial['wh_code'];
                  MemterimaDet['kd_material']:=QMaterial['item_code'];
                  MemterimaDet['kd_akun']:=QMaterial['header_code'];
                  MemterimaDet.Post;
               end;
            end;
          end;
       end;
       Close;
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
                sql.Text:=' select a.*,b.item_stock_code from t_item a  inner join warehouse.t_item_stock b '+
                          ' on a.item_code=b.item_code where b.item_stock_code='+QuotedStr(MemterimaDet['item_stock_code']);
                ExecSQL;
             end;
             lotstatus:=Dm.Qtemp['lot_status'];
             if lotstatus=false then
             begin
                MemterimaDet.Edit;
                //MemterimaDet['kd_stok']:=MemterimaDet['kd_material'];
                MemterimaDet['kd_stok']:=MemterimaDet['item_stock_code'];
                MemterimaDet.Post;
             end
             else
              Autonumberlot;
              MemterimaDet.Next
          end;
       end;
     end;

     /////////
     if DBGridEh2.Visible=true then
     begin
       if DBGrideh1.SelectedRows.Count > 0 then
       begin
          with DBGrideh2.DataSource.DataSet do
          begin
            for i := 0 to DBGrideh2.SelectedRows.Count-1 do
            begin
               GotoBookmark((DBGrideh2.SelectedRows.Items[i]));
               with FNew_Pembelian do
               begin
                  MemterimaDet.Insert;
                  MemterimaDet['nm_material']:=QMaterial2['item_name'];
                  MemterimaDet['item_stock_code']:=QMaterial2['item_stock_code'];
                  MemterimaDet['kd_material']:=QMaterial2['item_code'];
                  MemterimaDet['no_material']:=QMaterial2['order_no'];
                  MemterimaDet['Gudang']:=QMaterial2['wh_name'];
                  MemterimaDet['wh_code']:=QMaterial2['wh_code'];
                  MemterimaDet['Satuanpo']:=QMaterial2['unit'];
                  MemterimaDet['Satuan']:=QMaterial2['unit'];
                  MemterimaDet['ppn']:=QMaterial2['ppn'];
                  MemterimaDet['pph']:=QMaterial2['pph'];
                  MemterimaDet['harga']:=QMaterial2['price'];
                  MemterimaDet['Tahun']:=DTth.Text;
                  MemterimaDet['nopo']:=QMaterial2['receive_no'];
                  MemterimaDet['kd_akun']:=QMaterial2['account_code'];
                  MemterimaDet['ppn_rp_pembulatan']:=0;
                  MemterimaDet['bea_masuk']:=0;
                  MemterimaDet['subtotalrp']:=0;
                  MemterimaDet['grandtotal']:=0;
                  MemterimaDet['pph_rp']:=0;
                  MemterimaDet['ppn_rp']:=0;
                  MemterimaDet['pemb_dpp']:=0;
                  Edjatuhtempo.Text:=QMaterial2['due_date'];
                  EdValas.Text:=QMaterial['valas'];
                  EdNilai_Valas.Text:=QMaterial2['valas_value'];
                  MemterimaDet['ppn_rp_pembulatan']:=0;
                  MemterimaDet['qtypo']:=QMaterial2['qty'];
                  MemterimaDet['qty']:=QMaterial2['qty'];
                  MemterimaDet['wh_code']:=QMaterial2['wh_code'];
                  MemterimaDet['kd_material']:=QMaterial['item_code'];
                  MemterimaDet['kd_akun']:=QMaterial['header_code'];
                  MemterimaDet.Post;
               end;
            end;
          end;
       end;
       Close;
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
                sql.Text:=' select a.*,b.item_stock_code from t_item a  inner join warehouse.t_item_stock b '+
                          ' on a.item_code=b.item_code where b.item_stock_code='+QuotedStr(MemterimaDet['item_stock_code']);
                ExecSQL;
             end;
             lotstatus:=Dm.Qtemp['lot_status'];
             if lotstatus=false then
             begin
                MemterimaDet.Edit;
                //MemterimaDet['kd_stok']:=MemterimaDet['kd_material'];
                MemterimaDet['kd_stok']:=MemterimaDet['item_stock_code'];
                MemterimaDet.Post;
             end
             else
              Autonumberlot;
              MemterimaDet.Next
          end;
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
      //ShowMessage('Akun Perkiraan Kosong');
    end
    else
    with FNew_Pembelian do
    begin
    //  Edkd_akun.Text:=DM.Qtemp['account_code']; 29-10-2024
     // EdNm_akun.Text:=dm.Qtemp['account_name'];
    end;
    FNew_Pembelian.DBGridDetailpoColEnter(sender);
    //Close;

    FNew_Pembelian.EdJum_Hutang.Value:=FNew_Pembelian.DBGridDetailpo.Columns[25].Footer.sumvalue;

    if Fnew_pembelian.Cb_Sumber.Text='PO' then
    begin
      with Fnew_pembelian do
      begin
        with QUM do
        begin
          close;
          sql.Clear;
          sql.Text:=' SELECT a.*,b.supplier_name from t_advance_payment a '+
                    ' INNER JOIN t_supplier b on a.supplier_code=b.supplier_code   '+
                    ' WHERE a.supplier_code='+QuotedStr(Edkd_supp.Text)+' AND a.po_no='+QuotedStr(Cb_ref.Text)+' '+
                    ' AND a.um_status=false '+
                    ' GROUP BY a.supplier_code,b.supplier_name,a.no_trans '+
                    ' ORDER BY a.no_trans DESC';
          open;
        end;
        EdJum_UM.Value:=DBGrid_UM.Columns[2].Footer.sumvalue;
      end;
    end;
    if Fnew_pembelian.Cb_Sumber.Text='Penerimaan Barang' then
    begin
      with Fnew_pembelian do
      begin
        with QUM do
        begin
          close;
          sql.Clear;
          sql.Text:=' SELECT a.*,b.supplier_name,c.receive_no,d.spb_no,e.po_no from t_advance_payment a '+
                    ' INNER JOIN t_supplier b on a.supplier_code=b.supplier_code   '+
                    ' INNER JOIN t_item_receive c on b.supplier_code=c.supplier_code '+
                    ' INNER JOIN t_spb d on c.spb_no=d.spb_no '+
                    ' INNER JOIN t_po e on d.po_no=e.po_no '+
                    ' WHERE a.supplier_code='+QuotedStr(Edkd_supp.Text)+' AND a.po_no='+QuotedStr(Cb_ref.Text)+' '+
                    ' AND a.um_status=false '+
                    ' GROUP BY a.supplier_code,b.supplier_name,a.no_trans,c.receive_no,d.spb_no,e.po_no '+
                    ' ORDER BY a.no_trans DESC';
          open;
        end;
        EdJum_UM.text:=DBGrid_UM.Columns[2].Footer.sumvalue;
      end;
    end;
    FNew_Pembelian.EdJum_totalhut.Value:=(FNew_Pembelian.EdJum_Hutang.Value)-(FNew_Pembelian.EdJum_Um.Value)-(FNew_Pembelian.EdJum_PotPem.Value)-(FNew_Pembelian.EdJum_ReturPemb.Value);
end;

procedure TFSearch_TerimaBarang.BSelectAllClick(Sender: TObject);
begin
  DBGridEh1.SelectedRows.SelectAll;
  DBGridEh2.SelectedRows.SelectAll;
end;

procedure TFSearch_TerimaBarang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFSearch_TerimaBarang.FormCreate(Sender: TObject);
begin
  RealFSearch_TerimaBarang:=self;
end;

procedure TFSearch_TerimaBarang.FormDestroy(Sender: TObject);
begin
  RealFSearch_TerimaBarang:=nil;
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
 if DBGridEh1.Visible=true then
 begin
    if CKAll.Checked then
    begin
      DBGridEh1.SelectedRows.SelectAll;
    end
    else
      DBGridEh1.SelectedRows.Clear;
   end;

 if DBGridEh2.Visible=true then
 begin
    if CKAll.Checked then
    begin
      DBGridEh2.SelectedRows.SelectAll;
    end
    else
      DBGridEh2.SelectedRows.Clear;
   end;
end;

procedure TFSearch_TerimaBarang.DBGridEh1DblClick(Sender: TObject);
begin
   if jenis_pembelian<>'AKTIVA' then
   begin
      with FNew_Pembelian do
      begin
         show;
         MemterimaDet.Edit;
         MemterimaDet['nm_material']:=QMaterial['item_name'];
         MemterimaDet['item_stock_code']:=QMaterial['item_stock_code'];
         MemterimaDet['kd_material']:=QMaterial['item_code'];
         MemterimaDet['no_material']:=QMaterial['order_no'];
         MemterimaDet['Gudang']:=QMaterial['wh_name'];
         MemterimaDet['wh_code']:=QMaterial['wh_code'];
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
         //Cb_Ref.Text:=MemterimaDet['ref_no'];
         MemterimaDet['qtypo']:=QMaterial['qty'];
         MemterimaDet['qty']:=QMaterial['qty'];
         MemterimaDet['wh_code']:=QMaterial['wh_code'];
         MemterimaDet['kd_akun']:=QMaterial['header_code'];
         MemterimaDet.Post;
      end;


      with Dm.Qtemp do
      begin
       close;
       sql.Clear;
       sql.Text:='select a.*,b.item_stock_code from t_item a  inner join warehouse.t_item_stock b '+
                 ' on a.item_code=b.item_code where b.item_stock_code='+QuotedStr(QMaterial['item_stock_code']);
       ExecSQL;
      end;
      lotstatus:=Dm.Qtemp['lot_status'];
      if lotstatus=false then
      begin
        FNew_Pembelian.MemterimaDet.Edit;
        FNew_Pembelian.MemterimaDet['kd_stok']:=Dm.Qtemp['item_stock_code'];
        FNew_Pembelian.MemterimaDet.Post;
      end
      else
      begin
        Autonumberlot;
      end;
   end;

   if jenis_pembelian='AKTIVA' then
   begin
      with FNew_Pembelian do
      begin
         show;
         MemterimaDet.Edit;
         MemterimaDet['nm_material']:=QMaterial['item_name'];
         MemterimaDet['item_stock_code']:=QMaterial['item_stock_code'];
         MemterimaDet['kd_material']:=QMaterial['item_code'];
         MemterimaDet['no_material']:=QMaterial['order_no'];
         MemterimaDet['Gudang']:=QMaterial['wh_name'];
         MemterimaDet['wh_code']:=QMaterial['wh_code'];
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
         //Cb_Ref.Text:=MemterimaDet['ref_no'];
         MemterimaDet['qtypo']:=QMaterial['qty'];
         MemterimaDet['qty']:=QMaterial['qty'];
         MemterimaDet['wh_code']:=QMaterial['wh_code'];
         MemterimaDet['kd_akun']:=QMaterial['header_code'];
         MemterimaDet.Post;
      end;
      with Dm.Qtemp do
      begin
       close;
       sql.Clear;
       sql.Text:='select a.*,b.item_stock_code from t_item a  inner join warehouse.t_item_stock b '+
                 ' on a.item_code=b.item_code where b.item_stock_code='+QuotedStr(QMaterial['item_stock_code']);
       ExecSQL;
      end;
      lotstatus:=Dm.Qtemp['lot_status'];
      if lotstatus=false then
      begin
        FNew_Pembelian.MemterimaDet.Edit;
        FNew_Pembelian.MemterimaDet['kd_stok']:=Dm.Qtemp['item_stock_code'];
        FNew_Pembelian.MemterimaDet.Post;
      end
      else
      begin
        Autonumberlot;
{        FNew_Pembelian.DBGridDetailpoColEnter(sender);
        FNew_Pembelian.EdJum_hutang.text:=FNew_Pembelian.DBGridDetailpo.Columns[25].Footer.sumvalue;
        FNew_Pembelian.EdJum_totalhut.Value:=(FNew_Pembelian.EdJum_Hutang.Value)-(FNew_Pembelian.EdJum_Um.Value)-(FNew_Pembelian.EdJum_PotPem.Value)-(FNew_Pembelian.EdJum_ReturPemb.Value);
        Close;
 }    end;
   end;
   FNew_Pembelian.DBGridDetailpoColEnter(sender);
   FNew_Pembelian.EdJum_hutang.text:=FNew_Pembelian.DBGridDetailpo.Columns[25].Footer.sumvalue;
   FNew_Pembelian.EdJum_totalhut.Value:=(FNew_Pembelian.EdJum_Hutang.Value)-(FNew_Pembelian.EdJum_Um.Value)-(FNew_Pembelian.EdJum_PotPem.Value)-(FNew_Pembelian.EdJum_ReturPemb.Value);
   Close;
end;

end.
