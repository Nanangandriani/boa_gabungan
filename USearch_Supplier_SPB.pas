unit USearch_Supplier_SPB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, RzButton,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFSearch_Supplier_SPB = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    QSupplier: TUniQuery;
    DsSupplier: TDataSource;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSearch_Supplier_SPB: TFSearch_Supplier_SPB;

implementation

{$R *.dfm}

uses UNew_KontrakKerjasama, Unew_spb, UNew_PO;

procedure TFSearch_Supplier_SPB.DBGridEh1DblClick(Sender: TObject);
begin
    {with Fnew_spb do
    begin
      Edkd_supp.Text:=QSupplier['supplier_code'];
      ednm_supp.Text:=QSupplier['supplier_name'];
    end;}
    with FNew_PO do
    begin
      Edkd_supp.Text:=QSupplier['supplier_code'];
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

procedure TFSearch_Supplier_SPB.FormDblClick(Sender: TObject);
begin
    with Fnew_spb do
    begin
      Edkd_supp.Text:=QSupplier['kd_supplier'];
      ednm_supp.Text:=QSupplier['nm_supplier'];
    end;
    with FNew_PO do
    begin
      Edkd_supp.Text:=QSupplier['kd_supplier'];
      ednm_supp.Text:=QSupplier['nm_supplier'];
    end;
    with FNewKontrak_ks do
    begin
      Edkd_supp.Text:=QSupplier['kd_supplier'];
      ednm_supp.Text:=QSupplier['nm_supplier'];
    end;
    {with FNew_do do
    begin
      Edkd_supp_Angkutan.Text:=QSupplier['kd_supplier'];
      ednm_supp_Angkutan.Text:=QSupplier['nm_supplier'];
    end;}
 close;
end;

procedure TFSearch_Supplier_SPB.FormShow(Sender: TObject);
begin
   DBGridEh1.SearchPanel.SearchingText:='';
end;

end.
