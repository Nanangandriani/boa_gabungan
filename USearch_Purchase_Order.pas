unit USearch_Purchase_Order;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RzButton, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni;

type
  TFUSearch_PO = class(TForm)
    QPo: TUniQuery;
    DsPO: TDataSource;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BSelectAll: TRzBitBtn;
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUSearch_PO: TFUSearch_PO;

implementation

{$R *.dfm}

uses Unew_spb;

procedure TFUSearch_PO.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFUSearch_PO.BSimpanClick(Sender: TObject);
var i:integer;
begin
  try
  begin
    if DBGrideh1.SelectedRows.Count > 0 then
    begin
      with DBGrideh1.DataSource.DataSet do
      begin
        for i := 0 to DBGrideh1.SelectedRows.Count-1 do
        begin
          GotoBookmark((DBGrideh1.SelectedRows.Items[i]));
          with Fnew_spb do
          begin
            Memdetail.insert;
            Memdetail['nm_material']:=QPo['item_name'];
            Memdetail['kd_material']:=QPo['item_stock_code'];
            Memdetail['nopo']:=QPo['po_no'];
            Memdetail['qty']:=QPo['remaining_sp'];
            Memdetail['satuan']:=QPo['unit'];
            Memdetail['gudang']:=QPo['wh_name'];
            Memdetail['wh_code']:=QPo['wh_code'];
            if QPo['sbu_code']<>'' then kdsb:=QPO['sbu_code'] ;//else kdsb:='MLB';
            Memdetail.Post;
          end;
        end;
      end;
    end;
  end;
    except;
  end;
  close;
end;

procedure TFUSearch_PO.FormShow(Sender: TObject);
begin
   if QPo.Active=false then
      QPo.Active:=true;
   QPo.Close;
   QPo.Open;
end;

end.
