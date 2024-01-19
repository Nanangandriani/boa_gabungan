unit USearch_Supplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, RzButton,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFSearch_Supplier = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    QSupplier: TUniQuery;
    DsSupplier: TDataSource;
    QSuppliersupplier_code: TStringField;
    QSuppliersupplier_name: TStringField;
    QSupplieraddress: TStringField;
    QSuppliertelp: TStringField;
    QSuppliersupplier1_name: TStringField;
    QSuppliernpwp: TStringField;
    QSuppliercontact_person: TStringField;
    QSupplierpph: TStringField;
    QSupplierid: TGuidField;
    QSuppliercreated_at: TDateTimeField;
    QSuppliercreated_by: TStringField;
    QSupplierupdated_at: TDateTimeField;
    QSupplierupdated_by: TStringField;
    QSupplierdeleted_at: TDateTimeField;
    QSupplierdeleted_by: TStringField;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSearch_Supplier: TFSearch_Supplier;

implementation

{$R *.dfm}

uses UNew_KontrakKerjasama, Unew_spb, UNew_PO;

procedure TFSearch_Supplier.DBGridEh1DblClick(Sender: TObject);
begin
    //showmessage('0');
    {with Fnew_spb do
    begin
      Edkd_supp.Text:=QSupplier['supplier_code'];
      ednm_supp.Text:=QSupplier['supplier_name'];
    end;}
    with FNew_PO do
    begin
      EdKd_supp.Text:=QSupplier['supplier_code'];
      ednm_supp.Text:=QSupplier['supplier_name'];
    end;
    with FNewKontrak_ks do
    begin
      Edkd_supp.Text:=QSupplier['supplier_code'];
      ednm_supp.Text:=QSupplier['supplier_name'];
    end;

    {with FNew_do do
    begin
      Edkd_supp_Angkutan.Text:=QSupplier['supplier_code'];
      ednm_supp_Angkutan.Text:=QSupplier['supplier_name'];
    end;}

    close;
end;

procedure TFSearch_Supplier.FormShow(Sender: TObject);
begin
   DBGridEh1.SearchPanel.SearchingText:='';
end;

end.
