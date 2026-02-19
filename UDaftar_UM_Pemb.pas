unit UDaftar_UM_Pemb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB, MemDS,
  DBAccess, Uni, MemTableEh, RzRadChk, Vcl.StdCtrls, RzButton, Vcl.ComCtrls,
  Vcl.ExtCtrls, RzPanel, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs;

type
  TFDaftar_UM_Pemb = class(TForm)
    MemData: TMemTableEh;
    DSMem: TDataSource;
    RzPanel1: TRzPanel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Button4: TButton;
    txtnmsupp: TEdit;
    cbsupp: TEdit;
    DtSelesai: TDateTimePicker;
    DtMulai: TDateTimePicker;
    BCari: TRzBitBtn;
    PGC1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    procedure BCariClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
     vcall: string;
    { Public declarations }
  end;

var
  FDaftar_UM_Pemb: TFDaftar_UM_Pemb;

implementation

{$R *.dfm}

uses UDataModule, UDataPengajuanPengeluaranKasBank, USearch_Supplier;

procedure TFDaftar_UM_Pemb.BCariClick(Sender: TObject);
var query :string;
    URUTAN_KE : Integer;
begin
    query:=' select a.*,b.supplier_name,b.header_code_um,c.account_name '+
           ' from t_advance_payment a LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code '+
           ' left join t_ak_account c on b.header_code_um=c.code';

    if vcall='pengajuan_um' then
    begin
        with dm.Qtemp do
        begin
           close;
           sql.clear;
           sql.add(query);
           if (Length(cbsupp.Text)=0)   then
             begin
               sql.add(' where a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+'  '+
                       ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' ');
               sql.add('group by a.supplier_code,b.supplier_name,a.no_trans,b.header_code_um,c.account_name ');
               sql.add('order by a.no_trans DESC ');
             end
             else
             begin
               sql.add(' where a.supplier_code='+QuotedStr(cbsupp.Text)+' and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+'  '+
                       ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' ');
               sql.add('group by a.supplier_code,b.supplier_name,a.no_trans,b.header_code_um,c.account_name ');
               sql.add('order by a.no_trans DESC ');
             end;
           open;
        end;
        MemData.active:=false;
        MemData.active:=true;
        MemData.EmptyTable;

        if  Dm.Qtemp.RecordCount<>0 then
        begin
          Dm.Qtemp.first;
          while not Dm.Qtemp.Eof do
          begin
             MemData.insert;
             MemData['supplier_code']:=Dm.Qtemp.FieldByName('supplier_code').AsString;
             MemData['supplier_name']:=Dm.Qtemp.FieldByName('supplier_name').AsString;
             MemData['trans_no']:=Dm.Qtemp.FieldByName('no_trans').AsString;
             MemData['trans_date']:=Dm.Qtemp.FieldByName('trans_date').AsString;
             MemData['amount']:=Dm.Qtemp.FieldByName('um_value').value;
             MemData['dpp_value']:=Dm.Qtemp.FieldByName('dpp_value').value;
             MemData['ppn_value']:=Dm.Qtemp.FieldByName('ppn_value').value;
             MemData.post;
             Dm.Qtemp.next;
          end;
        end;
    end;
end;

procedure TFDaftar_UM_Pemb.Button4Click(Sender: TObject);
begin
  with FSearch_Supplier do
    begin
       QSupplier.Close;
       QSupplier.Open;
    end;
    FSearch_Supplier.Caption:='Master Data Supplier';
    FSearch_Supplier.vcall:='pengajuan_um';
    FSearch_Supplier.ShowModal;
end;

procedure TFDaftar_UM_Pemb.DBGridEh1DblClick(Sender: TObject);
begin
    if MemData.RecordCount<>0 then
    begin
      FDataPengajuanPengeluaranKasBank.MemDetailHutang.active:=false;
      FDataPengajuanPengeluaranKasBank.MemDetailHutang.active:=true;
      FDataPengajuanPengeluaranKasBank.MemDetailHutang.EmptyTable;

//      MemData.First;
//      while not MemData.Eof do
//      begin
          FDataPengajuanPengeluaranKasBank.MemDetailHutang.insert;
          FDataPengajuanPengeluaranKasBank.MemDetailHutang['no_tagihan']:=MemData['trans_no'];
          FDataPengajuanPengeluaranKasBank.MemDetailHutang['no_sj']:=MemData['trans_no'];
          FDataPengajuanPengeluaranKasBank.MemDetailHutang['no_faktur']:=MemData['trans_no'];
          FDataPengajuanPengeluaranKasBank.MemDetailHutang['tgl_faktur']:=MemData['trans_date'];
          FDataPengajuanPengeluaranKasBank.MemDetailHutang['jum_hutang']:=MemData['amount'];
          FDataPengajuanPengeluaranKasBank.MemDetailHutang.FieldByName('keterangan').AsString :='EX. ' + FormatDateTime('dd/mm/yyyy', MemData.FieldByName('trans_date').AsDateTime) +' No.Faktur : ' + MemData.FieldByName('trans_no').AsString;
          FDataPengajuanPengeluaranKasBank.MemDetailHutang.post;
//      MemData.Next;
//      end;
      FDataPengajuanPengeluaranKasBank.edKode_supplier.Text:=MemData['supplier_code'];
      FDataPengajuanPengeluaranKasBank.ednama_supplier.Text:=MemData['supplier_name'];
      FDataPengajuanPengeluaranKasBank.CbRencana.Text:='1';
      FDataPengajuanPengeluaranKasBank.EdJumlah.Text:=MemData['amount'];
      FDataPengajuanPengeluaranKasBank.Ed_kepada.Text:=MemData['supplier_name'];
      //FDataPengajuanPengeluaranKasBank.edKodeSumberPengeluaran.Text:='0';
      FDataPengajuanPengeluaranKasBank.edUntukPengeluaran.Text:='UANG MUKA';
      FDataPengajuanPengeluaranKasBank.MemKeterangan.Text:='UANG MUKA';

      with FDataPengajuanPengeluaranKasBank do
    begin
      MemDetailAkun.First;
      while not MemDetailAkun.Eof do
      begin
      //ShowMessage(MemDetailAkun['kd_header_akun']);
        if MemDetailAkun['kd_header_akun']='1131.08' then
        begin
          MemDetailAkun.Edit;
          MemDetailAkun['debit']:=MemData['ppn_value'] ;
          MemDetailAkun.post;
        end;
        if (MemDetailAkun['kd_header_akun']='1132.01') or (MemDetailAkun['kd_header_akun']='1132.02')then
        begin
          MemDetailAkun.Edit;
          MemDetailAkun['debit']:=MemData['dpp_value'] ;
          MemDetailAkun.post;
        end;
        if (MemDetailAkun['kd_header_akun']='1102')then
        begin
          MemDetailAkun.Edit;
          MemDetailAkun['kredit']:=MemData['amount'] ;
          MemDetailAkun.post;
        end;

        MemDetailAkun.Next;
      end;
    end;

    end;
      Close;
end;

procedure TFDaftar_UM_Pemb.FormShow(Sender: TObject);
begin
  cbsupp.Clear;
  txtnmsupp.Clear;
  DtMulai.Date:=now();
  DtSelesai.Date:=now();
  MemData.active:=false;
  MemData.active:=true;
  MemData.EmptyTable;
end;

end.
