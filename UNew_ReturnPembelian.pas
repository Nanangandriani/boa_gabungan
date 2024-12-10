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
    edppn: TRzEdit;
    EdNoFaktur: TRzComboBox;
    DtFaktur: TRzDateTimeEdit;
    DBGridEh3: TDBGridEh;
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
    Edvls: TRzNumericEdit;
    ednilai_vls: TRzNumericEdit;
    DtTh: TRzDateTimeEdit;
    DtBln: TRzDateTimeEdit;
    DtHr: TRzDateTimeEdit;
    Edppnrp: TRzNumericEdit;
    Edgrandtotal: TRzNumericEdit;
    procedure Ednm_suppButtonClick(Sender: TObject);
    procedure Ednm_suppChange(Sender: TObject);
    procedure edno_terimaChange(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtReturnChange(Sender: TObject);
    procedure DBGridEh3ColEnter(Sender: TObject);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure DBGridEh3Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure edppnChange(Sender: TObject);
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
 kdstok,thn,bln,tgl,nourut,jenis_tr:string;
 subtotal,ppn_rp,grandtotal:real;

{Function FNew_ReturnPemb: TFNew_ReturnPemb;
var status:integer;
    kdstok,thn,bln,tglno,nourut:string;
    subtotal,ppn_rp,grandtotal:real;}

implementation

{$R *.dfm}

uses USupp_Pembelian, UDataModule, UReturnPembelian,UMy_Function,
  USearch_ItemRetur, UMainMenu, USearch_Supplier;

{var
  realfnew_rt : TFNew_returnPemb;
// implementasi function
function fnew_returnpemb: TFNew_returnPemb;
begin
  if realfnew_rt <> nil then
    FNew_returnPemb:= realfnew_rt
  else
    Application.CreateForm(TFNew_returnPemb, Result);
end;}

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
  idmenu:='M11005';
  strday2:=DtReturn.Date;
  Edno.Text:=getNourutBlnPrshthn_kode(strday2,'t_purchase_return','');
  Edurut.Text:=order_no;
end;

procedure TFNew_ReturnPemb.BBatalClick(Sender: TObject);
begin
    Close;
    FReturnPembelian.DxBarRefreshClick(sender);
end;

procedure TFNew_ReturnPemb.BSimpanClick(Sender: TObject);
begin
      MemDetail.First;
      while not MemDetail.Eof do
      begin
        if DBGridEh3.Fields[0].AsString='' then
        begin
          MemDetail.Delete;
        end;
        MemDetail.Next;
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
      end;
      if not dm.koneksi.InTransaction then
      dm.koneksi.StartTransaction;
      try
      begin
        if status=0 then
        begin
          Autonumber;
          if messageDlg ('Anda Yakin Simpan No. '+EdNo.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
          begin
            with dm.Qtemp do
            begin
              close;
              sql.Clear;
              sql.Text:='select * from t_purchase_return';
              ExecSQL;
            end;
            with dm.Qtemp do
            begin
              close;
              sql.Clear;
              sql.Text:=' insert into t_purchase_return(return_no,return_date,faktur_no,price,total_price,'+
                        ' ppn, supplier_code,receive_no,valas,valas_value,trans_year,trans_month,trans_day,order_no,ppn_rp,pic)values(:parno,:partgl,:parnofk,:parharga,:partotal,'+
                        ' :parppn,:parkdsp,:parnotr,:parvls,:parnvls,:parthn,:parbln,:partglno,:parnourut,:parppnrp,:parpic)';
                        ParamByName('parno').Value:=Edno.Text;
                        ParamByName('partgl').Value:= FormatDateTime('yyy-mm-dd',DtReturn.Date);
                        ParamByName('parnofk').Value:=EdNoFaktur.Text;
                        ParamByName('parharga').Value:=FloatToStr(subtotal);
                        ParamByName('partotal').Value:=FloatToStr(grandtotal);
                        ParamByName('parppn').Value:=edppn.Text;
                        ParamByName('parkdsp').Value:=Edkd_supp.Text;
                        ParamByName('parnotr').Value:=edno_terima.Text;
                        ParamByName('parvls').Value:=edvls.Text;
                        ParamByName('parnvls').Value:=ednilai_vls.Value;
                        ParamByName('parthn').AsString:=thn;
                        //ParamByName('parnourut').Value:=nourut;
                        ParamByName('parnourut').Value:=Edurut.Text;
                        ParamByName('parbln').Value:=bln;
                        ParamByName('partglno').AsString:=tgl;
                        ParamByName('parppnrp').value:=Edppnrp.Value;
                        ParamByName('parpic').Value:=Nm;
              ExecSQL;
            end;
            MemDetail.First;
            while not MemDetail.Eof do
            begin
                with dm.Qtemp do
                begin
                  Close;
                  sql.Clear;
                  sql.Text:='	insert into t_purchase_return_det(return_no,faktur_no,po_no,item_stock_code,'+
                            ' qty,unit,stock_code,price,total_price,receive_no)values(:parno,:parnofk,:parnopo, '+
                            ' :parkdmat,:parqty,:parsatuan,:parkd_stok,:parharga,:partotal,:parnotr)';
                            ParamByName('parno').Value:=Edno.Text;
                            ParamByName('parnofk').Value:=MemDetail['nofaktur'];
                            ParamByName('parnopo').value:=MemDetail['nopo'];
                            ParamByName('parkdmat').Value:=MemDetail['kd_material'];
                            ParamByName('parqty').Value:=MemDetail['qty'];
                            ParamByName('parsatuan').Value:=MemDetail['satuan'];
                            ParamByName('parkd_stok').Value:=MemDetail['kd_stok'];
                            ParamByName('parharga').Value:=MemDetail['harga'];
                            ParamByName('partotal').Value:=MemDetail['totalharga'];
                            ParamByName('parnotr').Value:=MemDetail['no_terima'];
                  ExecSQL;
                end;
                MemDetail.Next;
            end;
            dm.koneksi.Commit;
            Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
            BBatalClick(sender);
          end;
        end;
        if status=1 then
        begin
          with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:='Update t_purchase_return set return_date=:partgl,faktur_no=:parnofk,price=:parharga,'+
                      ' total_price=:partotal,ppn=:parppn,supplier_code=:parkdsp,valas=:parvls,valas_value=:parnvls,'+
                      ' receive_no=:parnotr,ppn_rp=:parppnrp,pic_update=:parpic where return_no=:parno';
                      ParamByName('parno').Value:=Edno.Text;
                      ParamByName('partgl').Value:= FormatDateTime('yyy-mm-dd',DtReturn.Date);
                      ParamByName('parnofk').Value:=EdNoFaktur.Text;
                      ParamByName('parharga').Value:=FloatToStr(subtotal);
                      ParamByName('partotal').Value:=FloatToStr(grandtotal);
                      ParamByName('parppn').Value:=edppn.Text;
                      ParamByName('parkdsp').Value:=Edkd_supp.Text;
                      ParamByName('parnotr').Value:=edno_terima.Text;
                      ParamByName('parvls').Value:=edvls.Text;
                      ParamByName('parnvls').Value:=ednilai_vls.Value;
                      ParamByName('parppnrp').Value:=Edppnrp.Value;
                      ParamByName('parpic').Value:=Nm;
            ExecSQL;
          end;
          with dm.Qtemp do
          begin
            Close;
            sql.Clear;
            sql.Text:='	delete from t_purchase_return_det where return_no='+QuotedStr(Edno.Text);
            ExecSQL;
          end;
          MemDetail.First;
          while not MemDetail.Eof do
          begin
              with dm.Qtemp do
              begin
                Close;
                sql.Clear;
                sql.Text:='	insert into t_purchase_return_det(return_no,faktur_no,po_no, item_stock_code,'+
                          ' qty,unit,stock_code,price,total_price,receive_no)values(:parno,:parnofk,:parnopo, '+
                          ' :parkdmat,:parqty,:parsatuan,:parkd_stok,:parharga,:partotal,:parnotr)';
                          ParamByName('parno').Value:=Edno.Text;
                          ParamByName('parnofk').Value:=MemDetail['nofaktur'];
                          ParamByName('parnopo').value:=MemDetail['nopo'];
                          ParamByName('parkdmat').Value:=MemDetail['kd_material'];
                          ParamByName('parqty').Value:=MemDetail['qty'];
                          ParamByName('parsatuan').Value:=MemDetail['satuan'];
                          ParamByName('parkd_stok').Value:=MemDetail['kd_stok'];
                          ParamByName('parharga').Value:=MemDetail['harga'];
                          ParamByName('partotal').Value:=MemDetail['totalharga'];
                          ParamByName('parnotr').Value:=MemDetail['no_terima'];
                ExecSQL;
              end;
              MemDetail.Next;
          end;
          dm.koneksi.Commit;
          Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
          BBatalClick(sender);
        end;
      end
      Except
      on E :Exception do
      begin
        MessageDlg(E.Message,mtError,[MBok],0);
        dm.koneksi.Rollback;
      end;
      end;
end;


procedure TFNew_ReturnPemb.DBGridEh3CellClick(Column: TColumnEh);
begin
    MemDetail.Edit;
    MemDetail['totalharga']:=MemDetail['qty']*MemDetail['harga'];
    MemDetail.Post;
    Totalretur;
end;

procedure TFNew_ReturnPemb.DBGridEh3ColEnter(Sender: TObject);
begin
    MemDetail.Edit;
    MemDetail['totalharga']:=MemDetail['qty']*MemDetail['harga'];
    MemDetail.Post;
    Totalretur;
end;

procedure TFNew_ReturnPemb.DBGridEh3Columns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
    with FSearch_MaterialRetur do
    begin
      jenis_tr:='rt_pemb';
      Show;
      with Qmaterial do
      begin
        Filtered:=false;
        Filter:='supplier_code='+QuotedStr(Edkd_supp.Text)+' and receive_no='+QuotedStr(Edno_terima.Text)+' ';
        FilterOptions:=[];
        Filtered:=True;
      end;
      Qmaterial.Open;
    end;
end;

procedure TFNew_ReturnPemb.DtReturnChange(Sender: TObject);
var SelectedDate: TRzDateTimeEdit;
    year, month, day: word;
begin
   DecodeDate(now, year,month,day );
   DtBln.Date:=DtReturn.Date;
   DtTh.Date:=DtReturn.Date;
   Dthr.Date:=DtReturn.Date;

   thn:=FormatDateTime('yyyy',DtReturn.Date);
   bln:=FormatDateTime('mm',DtReturn.Date);
   tgl:=FormatDateTime('dd',DtReturn.Date);
   {with dm.Qtemp2 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DtReturn.Date))+' :: DATE, ''dd'') hari ';
     Open;
   end;
   dthr.Text:=dm.Qtemp2.FieldByName('hari').AsString;

   with dm.Qtemp1 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DtReturn.Date))+' :: DATE, ''mm'') bulan ';
     Open;
   end;
   Dtbln.Text:=dm.Qtemp1.FieldByName('bulan').AsString;

   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DtReturn.Date))+' :: DATE, ''yyyy'') tahun ';
     Open;
   end;
   Dtth.Text:=dm.Qtemp.FieldByName('tahun').AsString;}

end;

procedure TFNew_ReturnPemb.Ednm_suppButtonClick(Sender: TObject);
begin
  with FSearch_Supplier do
  begin
    Show;
    QSupplier.Close;
    QSupplier.Open;
  end;
  {with FSupp_Pembelian do
  begin
    Show;
    if Qsupplier.Active=False then Qsupplier.Active:=True;
  end;}
end;

procedure TFNew_ReturnPemb.Ednm_suppChange(Sender: TObject);
begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_item_receive where supplier_code='+QuotedStr(Edkd_supp.Text);
      Execute;
    end;
    edno_terima.Items.Clear;
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
      sql.Text:='select * from t_item_receive where Receive_no='+QuotedStr(edno_terima.Text);
      Execute;
    end;
      EdNoFaktur.Text:=Dm.Qtemp['faktur_no'];
      DtFaktur.text:=Dm.Qtemp['faktur_date'];
end;
procedure TFNew_ReturnPemb.edppnChange(Sender: TObject);
begin
   if Edppn.Text='' then Edppn.Text:='0';
   Totalretur;
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

function IntToRoman(Value : Longint):String;  // fungsi
const
    arabics: Array[1..12] of integer=(1,2,3,4,5,6,7,8,9,10,11,12);
    Romans: Array [1..12] Of string=('I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII');
var  i :integer;
begin
   For i := 12 downto 1 do
   while (Value >= Arabics[i]) do
   begin
      Value := Value - Arabics[i];
      Result:= Result + Romans[i];
   end;
end;

Function Ribuan(Edit : TRzEdit):String;
var
  NilaiRupiah: string;
  AngkaRupiah: Currency;
begin
if Edit.Text='0' then Exit;
  NilaiRupiah := Edit.text;
  NilaiRupiah := StringReplace(NilaiRupiah,',','',[rfReplaceAll,rfIgnoreCase]);
  //NilaiRupiah := StringReplace(NilaiRupiah,',','',[rfReplaceAll,rfIgnoreCase]);
  AngkaRupiah := StrToCurrDef(NilaiRupiah,0);
  Edit.Text := FormatCurr('#,##0.00',AngkaRupiah);
  Edit.SelStart := length(Edit.text);
end;


end.
