unit UMaster_PercBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Grids, Vcl.DBGrids, MemDS,
  DBAccess, Uni, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  RzButton, Vcl.ExtCtrls, Vcl.Mask, RzEdit, RzBtnEdt;

type
  TFMaster_PercBarang = class(TForm)
    PnlAksi: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Btambah: TRzBitBtn;
    BRefresh: TRzBitBtn;
    PnlNew: TPanel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    EdNm: TEdit;
    Pnllist: TPanel;
    DBGridEh1: TDBGridEh;
    QSatuan: TUniQuery;
    DsSatuan: TDataSource;
    DBGrid1: TDBGrid;
    edkd: TRzButtonEdit;
    procedure edkdButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMaster_PercBarang: TFMaster_PercBarang;

implementation

{$R *.dfm}

uses UCari_Barang;

procedure TFMaster_PercBarang.edkdButtonClick(Sender: TObject);
begin
  with FCari_Barang do
  begin
    show;
    status_tr:='5';
  with QBarang do
  begin
    close;
    sql.Text:='select a.item_code,a.item_name,b.category,a.order_no,a.unit from t_item a inner join '+
              ' t_item_category b on a.category_id=b.category_id '+//where b.category='+QuotedStr(Edcategory.Text)+''+
              ' Group by a.item_code,a.item_name,b.category,a.order_no,a.unit  '+
              ' order by b.category,a.order_no Asc';
    ExecSQL;
  end;
  end;
end;

end.
