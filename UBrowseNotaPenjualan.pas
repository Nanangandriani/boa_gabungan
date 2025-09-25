unit UBrowseNotaPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls, RzDTP, Vcl.StdCtrls, RzLabel,
  Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzPanel, RzButton, RzBtnEdt;

type
  TFBrowseNotaPenjualan = class(TForm)
    DBGridEh1: TDBGridEh;
    DSselling: TDataSource;
    Qselling: TUniQuery;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    dtTgl1: TRzDateTimePicker;
    RzLabel2: TRzLabel;
    dtTgl2: TRzDateTimePicker;
    RzLabel3: TRzLabel;
    btTampilkan: TRzBitBtn;
    edPelanggan: TRzButtonEdit;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure edPelangganButtonClick(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKodePelanggan,vcall: String;
    procedure Refresh;
  end;

var
  FBrowseNotaPenjualan: TFBrowseNotaPenjualan;

implementation

{$R *.dfm}

uses UDataModule, UNew_PiutangBeramasalah, Ubrowse_pelanggan;

procedure TFBrowseNotaPenjualan.btTampilkanClick(Sender: TObject);
begin
  Refresh;
end;

procedure TFBrowseNotaPenjualan.DBGridEh1DblClick(Sender: TObject);
begin
  if vcall='piutang_bermasalah' then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select id from t_selling_receivables '+
                'where customer_code='+QuotedStr(FBrowseNotaPenjualan.strKodePelanggan)+' AND '+
                'trans_no_nota='+QuotedStr(Qselling.FieldValues['trans_no'])+' AND '+
                'deleted_at is NULL';
      open;
    end;
    if dm.Qtemp.RecordCount>0 then
    begin
      MessageDlg('No Nota '+Qselling.FieldValues['trans_no']+' sudah ada di Piutang Bermasalah..!!',mtInformation,[mbRetry],0);
    end else
    begin
      FNew_PiutangBermasalah.edNoNota.Text:=Qselling.FieldValues['trans_no'];
      FNew_PiutangBermasalah.dtTglNota.Date:=Qselling.FieldValues['trans_date'];
      FNew_PiutangBermasalah.edJumlahPiutang.Text:=Qselling.FieldValues['grand_tot'];
    end;
  end;
  Close;
end;

procedure TFBrowseNotaPenjualan.FormShow(Sender: TObject);
begin
  if strKodePelanggan<>'' then
  begin
    edPelanggan.ReadOnly:=True;
  end else begin
    edPelanggan.ReadOnly:=False;
  end;
  dtTgl1.Date:=NOW;
  dtTgl2.Date:=NOW;
  Refresh;
end;

procedure TFBrowseNotaPenjualan.Refresh;
var strWhereKodePelanggan,strWhereTgl:String;
begin
  if strKodePelanggan<>'' then strWhereKodePelanggan:= ' AND code_cust='+QuotedStr(strKodePelanggan)+' '
  else strWhereKodePelanggan:='';

  strWhereTgl:=' AND trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTgl1.Date))+' AND '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTgl2.Date))+' ';

  DBGridEh1.StartLoadingStatus();
  try
    with Qselling do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM t_selling WHERE deleted_at is NULL '+strWhereTgl+strWhereKodePelanggan;
      open;
    end;
  finally
  DBGridEh1.FinishLoadingStatus();
  end;
end;

procedure TFBrowseNotaPenjualan.edPelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='browse_nota_penjualan';
  Fbrowse_data_pelanggan.ShowModal;
end;

end.
