unit UNew_Satuan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS,
  DBAccess, Uni, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFNew_Satuan = class(TForm)
    PnlAksi: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BCari: TRzBitBtn;
    PnlNew: TPanel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    EdDesk: TEdit;
    Edkd: TEdit;
    Pnllist: TPanel;
    DBGridEh1: TDBGridEh;
    QSatuan: TUniQuery;
    DsSatuan: TDataSource;
    Btambah: TRzBitBtn;
    BRefresh: TRzBitBtn;
    Edit1: TEdit;
    BDelete: TRzBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure BtambahClick(Sender: TObject);
    procedure BCariClick(Sender: TObject);
    procedure BRefreshClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Statustr:integer;
    jenis_tr:string;
  end;

Function FNew_Satuan: TFNew_Satuan;

implementation

{$R *.dfm}

uses UDataModule, UNew_Barang, UNew_KonvBarang, UMainMenu, UMy_Function;
var
  RealFNew_Satuan: TFNew_Satuan;
// implementasi function
function FNew_Satuan: TFNew_Satuan;
begin
  if RealFNew_Satuan <> nil then
    FNew_Satuan:= RealFNew_Satuan
  else
    Application.CreateForm(TFNew_Satuan, Result);
end;

procedure TFNew_Satuan.BBatalClick(Sender: TObject);
begin
  PnlNew.Visible:=false;
  Edkd.Clear;
  EdDesk.Clear;
//  close;
end;

procedure TFNew_Satuan.BCariClick(Sender: TObject);
begin
  Pnllist.Hide;
  PnlNew.Show;
  Statustr:=1;
  Edkd.Text:=QSatuan['unit_code'];
  Eddesk.Text:=QSatuan['unit_name'];
  BCari.Hide;
  BBatal.Show;
  BSimpan.Show;
end;

procedure TFNew_Satuan.BRefreshClick(Sender: TObject);
begin
  DBGridEh1.StartLoadingStatus();
  QSatuan.Close;
  QSatuan.Open;
  Pnllist.show;
  PnlNew.hide;
  DBGridEh1.FinishLoadingStatus();
end;

procedure TFNew_Satuan.BSimpanClick(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Menyimpan Data ini ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
  if not dm.koneksi.InTransaction then
    if statustr=0 then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Insert into t_unit(unit_code,unit_name)values(:code,:desk)';
                  ParamByName('code').Value:=Edkd.Text;
                  ParamByName('desk').value:=EdDesk.Text;
                  Execute;
      end;
    end;
    if statustr=1 then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='update t_unit set unit_name=:desk where unit_code=:code';
                  ParamByName('code').Value:=Edkd.Text;
                  ParamByName('desk').value:=EdDesk.Text;
                  ExecSQL;
      end;
    end;
    ShowMessage('Data Berhasil di Simpan');
    BRefreshClick(sender);
  end;
  PnlNew.Visible:=false;
  BBatal.Visible:=false;
end;

procedure TFNew_Satuan.BtambahClick(Sender: TObject);
begin
  PnlNew.Visible:=true;
  statustr:=0;
  Edkd.Clear;
  EdDesk.Clear;
  Edkd.SetFocus;
  BBatal.Visible:=true;
  BSimpan.Visible:=true;
end;

procedure TFNew_Satuan.Button1Click(Sender: TObject);
begin
 { with dm.Qtemp2 do
  begin
    Close;
    SQL.Clear;
    SQL.Text:='select max(master_no) as urut from warehouse.t_mixing';
    Execute;
  end;
  if dm.Qtemp2.RecordCount=1 then
  begin    //order_no := IntToStr(dm.Qtemp['urut']+1);
    Order_no := '0';
  end;
  if dm.Qtemp2.RecordCount=0 then
  begin
    Order_no:='1';
  end;
  Edit1.Text:=order_no; }
end;

procedure TFNew_Satuan.DBGridEh1DblClick(Sender: TObject);
begin
  PnlNew.Visible:=true;
  if jenis_tr='Barang' then
  begin
    with FNew_Barang do
    begin
      EdSatuan.Text:=QSatuan['unit_code'];
      FNew_Satuan.close;
    end;
  end;
  if jenis_tr='KonvBarang' then
  begin
   with FNew_KonvBarang do
   begin
    EdKonversi.text:=QSatuan['unit_code'];
    FNew_Satuan.Close;
   end;
  end;
  if jenis_tr='BARU' then
  BEGIN
    Statustr:=1;
    Edkd.Text:=QSatuan['unit_code'];
    Eddesk.Text:=QSatuan['unit_name'];
   // BCari.Hide;
    BBatal.Show;
    BSimpan.Show;
  END;
end;

procedure TFNew_Satuan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_Satuan.FormCreate(Sender: TObject);
begin
  RealFNew_Satuan:=self;
end;

procedure TFNew_Satuan.FormDestroy(Sender: TObject);
begin
  RealFNew_Satuan:=nil;
end;

procedure TFNew_Satuan.BDeleteClick(Sender: TObject);
begin
  if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridEh1.Fields[1].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='delete from t_unit where unit_code='+QuotedStr(DBGridEh1.Fields[0].AsString);
      Execute;
    end;
    BRefreshClick(sender);
    ShowMessage('Data Berhasil di Hapus');
  end;
end;

end.
