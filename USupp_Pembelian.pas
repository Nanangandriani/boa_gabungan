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
  end;

var
  FSupp_Pembelian: TFSupp_Pembelian;

implementation

{$R *.dfm}

uses UNew_Pembelian, UNew_ReturnPembelian;

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
    with FNew_returnPemb do
    begin
      Edkd_supp.Text:=Qsupplier['supplier_code'];
      ednm_supp.text:=Qsupplier['supplier_name'];
    end;
    close;
end;

procedure TFSupp_Pembelian.FormShow(Sender: TObject);
begin
    with Qsupplier do
    begin
       close ;
       sql.Clear;
       sql.Text:='select * from t_supplier';
       open;
    end;
    qsupplier.close;
    qsupplier.open;
end;

end.
