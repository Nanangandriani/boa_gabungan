unit U_daf_pilih_detail_bayar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableDataEh, Data.DB, MemTableEh, MemDS,
  DBAccess, Uni;

type
  Tfrmdafdetailbayar = class(TForm)
    BProses: TButton;
    BCari: TButton;
    Dtp2: TDateTimePicker;
    Label3: TLabel;
    Dtp1: TDateTimePicker;
    Label2: TLabel;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Qdafsumberbayar: TUniQuery;
    Memdafsumberbayar: TMemTableEh;
    DSdafsumberbayar: TDataSource;
    Qdafsumberbayarnoref: TStringField;
    Qdafsumberbayartglref: TDateField;
    Qdafsumberbayarketer: TMemoField;
    Qdafsumberbayarnm_sumber: TStringField;
    Qdafsumberbayartotal_hutang: TFloatField;
    Qdafsumberbayarakun_um: TStringField;
    Qdafsumberbayarsaldo: TFloatField;
    DBGridEh1: TDBGridEh;
    procedure BCariClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     vcall: string;
     Status: Integer;
     periode1, periode2: TDate;
  end;

var
  frmdafdetailbayar: Tfrmdafdetailbayar;

implementation

{$R *.dfm}

uses UDataModule, u_rencana_lunas_hutang_input;

procedure Tfrmdafdetailbayar.BCariClick(Sender: TObject);
begin
   with Qdafsumberbayar do
   begin
     close;
     sql.Clear;
     sql.Text:='select noref,tglref, keter,nm_sumber ,total_hutang,akun_um,total_hutang-bayar as saldo from '+
               '(select a.*,(case when b.bayar is null then 0 else b.bayar end)bayar from '+
               '(select a.no_trans as noref,a.trans_date as tglref,'''' keter,b.supplier_name as nm_sumber ,um_value as total_hutang,a.um_account_code as akun_um from '+
               't_advance_payment a,t_supplier b where a.um_payment_status=false and a.um_status=true and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.Date))+' '+
               'and a.supplier_code=b.supplier_code)a '+
               'left join (select voucher_no,sum(pay) bayar from t_payment_detail_real GROUP BY voucher_no) b on a.noref=b.voucher_no)zzz  where total_hutang-bayar>0 order by tglref,noref';
     open;
   end;
   Qdafsumberbayar.Close;
   Qdafsumberbayar.Open;

   if  Qdafsumberbayar.RecordCount=0 then
   begin
      Memdafsumberbayar.active:=false;
      Memdafsumberbayar.active:=true;
      Memdafsumberbayar.EmptyTable;
   end;

   if  Qdafsumberbayar.RecordCount<>0 then
   begin
        Qdafsumberbayar.first;
        while not Qdafsumberbayar.Eof do
        begin
         Memdafsumberbayar.insert;
         Memdafsumberbayar['noref']:=Qdafsumberbayar.FieldByName('noref').AsString;
         Memdafsumberbayar['tglref']:=Qdafsumberbayar.FieldByName('tglref').AsDateTime;
         Memdafsumberbayar['keterangan']:=Qdafsumberbayar.FieldByName('keter').AsString;
         Memdafsumberbayar['nm_sumber']:=Qdafsumberbayar.FieldByName('nm_sumber').AsString;
         Memdafsumberbayar['total_hutang']:=Qdafsumberbayar.FieldByName('total_hutang').Asfloat;
         Memdafsumberbayar['kode_akun']:=Qdafsumberbayar.FieldByName('akun_um').AsString;
         Memdafsumberbayar['saldo']:=Qdafsumberbayar.FieldByName('saldo').Asfloat;
         Memdafsumberbayar['bayar']:=Qdafsumberbayar.FieldByName('saldo').Asfloat;
         Memdafsumberbayar['source_id']:=2;
         Memdafsumberbayar['pilih']:=0;
         Memdafsumberbayar.post;
         Qdafsumberbayar.next;
        end;
   end;
end;

procedure Tfrmdafdetailbayar.BProsesClick(Sender: TObject);
begin
   var
  rec: Integer;
begin
   Status:=0;
   rec:=0;
      if not dm.Koneksi.InTransaction then
             dm.Koneksi.StartTransaction;
      try
        if Memdafsumberbayar.RecordCount=0 then
        begin
          MessageDlg('Tidak Ada Data',mtInformation,[mbRetry],0);

        end
        else if Status = 0 then
        begin
           //cek ada yang di tandai tidak
           Memdafsumberbayar.First;
           while not Memdafsumberbayar.Eof do
           begin
             if Memdafsumberbayar['pilih']=true then
             begin
              rec:=rec+1;
             end;
           Memdafsumberbayar.Next;
           end;

           if rec=0 then
           begin
             ShowMessage('Tidak Ada Data Yang Di Tandai.. !!');
             exit;
           end;

           //data di tandai kirm ke daftar rencana pelunasan
           if rec>0 then
           begin
             FRencana_Lunas_Hutang.MemRencana.active:=false;
             FRencana_Lunas_Hutang.MemRencana.active:=true;
             FRencana_Lunas_Hutang.MemRencana.EmptyTable;

             Memdafsumberbayar.First;
             while not Memdafsumberbayar.Eof do
             begin
               if Memdafsumberbayar['pilih']=true then
               begin
                    FRencana_Lunas_Hutang.MemRencana.insert;
                    FRencana_Lunas_Hutang.MemRencana['kd_sup']:=Memdafsumberbayar['kodesup'];
                    FRencana_Lunas_Hutang.MemRencana['noinv']:=Memdafsumberbayar['no_inv'];
                    FRencana_Lunas_Hutang.MemRencana['nosj']:=Memdafsumberbayar['sj_no'];
                    FRencana_Lunas_Hutang.MemRencana['nofaktur']:=Memdafsumberbayar['nofakturpajak'];
                    FRencana_Lunas_Hutang.MemRencana['tglfaktur']:=Memdafsumberbayar['tglfaktur'];
                    FRencana_Lunas_Hutang.MemRencana['akun_pph']:=Memdafsumberbayar['akun_pph'];
                    FRencana_Lunas_Hutang.MemRencana['npph']:=Memdafsumberbayar['npph'];
                    FRencana_Lunas_Hutang.MemRencana['jumlah']:=Memdafsumberbayar['jumlah'];
                    FRencana_Lunas_Hutang.MemRencana['source_id']:=Memdafsumberbayar['source_id'];
                    FRencana_Lunas_Hutang.MemRencana.post;
               end;
             Memdafsumberbayar.Next;
             end;
           end;
      end
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
      Close;
  end;
end;

procedure Tfrmdafdetailbayar.FormShow(Sender: TObject);
begin
  DTP1.Date:=now();
  DTP2.Date:=now();
  if Memdafsumberbayar.Active=false then
  Memdafsumberbayar.Active:=true;

end;

end.
