unit USupp_Pembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFSupp_Pembelian = class(TForm)
    DBGridEh1: TDBGridEh;
    Qsupplier: TUniQuery;
    DsSupplier: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      jenis_tr:string;
      stat:string;
  end;

var  FSupp_Pembelian: TFSupp_Pembelian;


{var
  RealFSupp_Pembelian: TFSupp_Pembelian;
function FSupp_Pembelian: TFSupp_Pembelian;
begin
  if RealFSupp_Pembelian <> nil then
     FSupp_Pembelian:= RealFSupp_Pembelian
  else
    Application.CreateForm(TFSupp_Pembelian, Result);
end;}

implementation

{$R *.dfm}

uses UNew_Pembelian, UNew_ReturnPembelian, UNew_Pot_Pembelian,
  UNew_TerimaMaterial, UDataModule;

procedure TFSupp_Pembelian.DBGridEh1DblClick(Sender: TObject);
begin
    {with FNew_Pembelian do
    begin
      Edkd_supp.Text:=Qsupplier['supplier_code'];
      ednm_supp.text:=Qsupplier['supplier_name'];
    end;
    with FNew_TerimaMaterial do
    begin
      Edkd_supp.Text:=Qsupplier['kd_supplier'];
      ednm_supp.text:=Qsupplier['nm_supplier'];
    end; }
    if jenis_tr='tr_pemb' then
    begin
      with FNew_TerimaMaterial do
      begin
        Edkd_supp.Text:=Qsupplier['supplier_code'];
        ednm_supp.text:=Qsupplier['supplier_name'];
      end;
    end;
    if jenis_tr='pot_pemb' then
    begin
      with FNew_Pot_Pembelian do
      begin
        Edkd_supp.Text:=Qsupplier['supplier_code'];
        ednm_supp.text:=Qsupplier['supplier_name'];
      end;
    end;
    if jenis_tr='rt_pemb' then
    begin
      with FNew_returnPemb do
      begin
        Edkd_supp.Text:=Qsupplier['supplier_code'];
        ednm_supp.text:=Qsupplier['supplier_name'];
      end;
    end;
    if jenis_tr='pemb' then
    begin
      with FNew_Pembelian do
      begin
        Edkd_supp.Text:=Qsupplier['supplier_code'];
        ednm_supp.text:=Qsupplier['supplier_name'];
        with dm.Qtemp do
        begin
              close;
              sql.Clear;
              sql.Text:='SELECT a.account_code,b.account_name FROM t_supplier a '+
                        'INNER JOIN t_ak_account_sub B ON A.account_code=b.account_code2 '+
                        'where a.supplier_code='+QuotedStr(Edkd_supp.Text);
              Execute;
            end;
            Edkd_akun.Text:=DM.Qtemp['account_code'];
            EdNm_akun.Text:=DM.Qtemp['account_name'];
           // Edkd_akunum.Text:=DM.Qtemp['account_name'];         off ds 4-02-2026
      end;
    end;
    close;

    {if stat='kolektif_po' then
    begin
      with fcetakkolektifpo do
      begin
       Edkd_supp.Text:=Qsupplier['kd_supplier'];
       ednm_supp.text:=Qsupplier['nm_supplier'];
      end;
    end;}
      close;
end;

procedure TFSupp_Pembelian.FormShow(Sender: TObject);
begin
    with Qsupplier do
    begin
       close ;
       sql.Clear;
       //update ds 5-2-2026
       sql.Text:='SELECT supplier_code,supplier_name,address,telp,supplier1_name,npwp,contact_person,pph,'+
       ' supplier_code2,a.header_code,account_code,1 status_id,up_npwp,supplier_initial,sbu_code,header_code2,'+
       '  account_code2,tempo,item_do,b.account_name,header_code_um,account_code_um from t_supplier  a '+
       ' left JOIN t_ak_account b on a.header_code=b.code '+
       ' where a.deleted_at is null  Order by supplier_code ASC';
       open;
    end;
    qsupplier.close;
    qsupplier.open;
end;

end.
