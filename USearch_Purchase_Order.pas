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
    procedure DBGridEh1AdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
      AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function FUSearch_PO: TFUSearch_PO;

implementation

{$R *.dfm}

uses Unew_spb;

var
  RealFUSearch_PO: TFUSearch_PO;
// implementasi function
function FUSearch_PO: TFUSearch_PO;
begin
  if RealFUSearch_PO <> nil then
    FUSearch_PO:= RealFUSearch_PO
  else
    Application.CreateForm(TFUSearch_PO, Result);
end;

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

procedure TFUSearch_PO.DBGridEh1AdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
  AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
  var Params: TColCellParamsEh; var Processed: Boolean);
var
t: String;
begin
//sesuaikan dengan nama field yang ingin dibuat kondisi
//t := Column.Field.DataSet.FieldByName('tgl_jatuhtempo').AsString;

 if (QPo.RecordCount<>0) then //cegah error jika tidak ada record
 begin
    if (qpo['statusby']=1) then //kondisi : jika tanggal jatuh tempo kurang dari 3 hari
    begin
    //font style
    //Params.Font.Style := [fsBold];
    //warna font
    Params.Font.Color := clWindow;
    //warna cell di grid, untuk mendapat kode warna ambil komponen sembarang klik bagian color
    Params.Background := $004080FF;
    end;
end;
end;

procedure TFUSearch_PO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFUSearch_PO.FormCreate(Sender: TObject);
begin
  RealFUSearch_PO:=self;
end;

procedure TFUSearch_PO.FormDestroy(Sender: TObject);
begin
  RealFUSearch_PO:=nil;
end;

procedure TFUSearch_PO.FormShow(Sender: TObject);
begin
   if QPo.Active=false then
      QPo.Active:=true;
   QPo.Close;
   QPo.Open;
end;

end.
