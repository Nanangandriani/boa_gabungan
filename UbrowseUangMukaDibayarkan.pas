unit UbrowseUangMukaDibayarkan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, RzRadChk,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Samples.Gauges, Vcl.ExtCtrls,
  RzButton, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ComCtrls, RzDTP,
  RzCmboBx, RzLabel, RzPanel;

type
  TFbrowseUangMukaDibayarkan = class(TForm)
    DBGridOrder: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DSDetail: TDataSource;
    Qdetail: TUniQuery;
    procedure DBGridOrderDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall: String;
    procedure Refresh;
  end;

var
  FbrowseUangMukaDibayarkan: TFbrowseUangMukaDibayarkan;


implementation

{$R *.dfm}

uses UDataModule, UNew_DataPenjualan, UMy_Function;

procedure TFbrowseUangMukaDibayarkan.Refresh;
var strCodeHeadOffice, strWhere:String;
begin
  if vcall='penjualan' then
  begin
    strCodeHeadOffice:=SelectRow('select code_head_office from get_customer() where customer_code='+QuotedStr(FNew_Penjualan.edKode_Pelanggan.Text)+' ');

    if (strCodeHeadOffice='0') OR (strCodeHeadOffice='') OR (strCodeHeadOffice=NULL) then
    begin
      strWhere:=' code_cust='+QuotedStr(FNew_Penjualan.edKode_Pelanggan.Text)+' AND ';
    end else begin
      strWhere:=' code_head_office='+QuotedStr(strCodeHeadOffice)+' AND ';
    end;


    with Qdetail do
    begin
      close;
      sql.clear;
      sql.text:='SELECT * FROM get_down_payment_sales()'+
                'WHERE '+strWhere+' sisa_uang_muka>0';
      open;
    end;
  end;
end;

procedure TFbrowseUangMukaDibayarkan.DBGridOrderDblClick(Sender: TObject);
var isValidasi: Integer;
begin
  isValidasi:=0 ;
  with FNew_Penjualan do
  begin

    MemUangMuka.First;
    while not MemUangMuka.Eof do
    begin
      if MemUangMuka['voucher_no']=Qdetail.FieldByName('voucher_no').AsString then
      begin
        isValidasi:=1;
      end;

      MemUangMuka.Next;
    end;

    if isValidasi=0 then
    begin

      MemUangMuka.insert;
      MemUangMuka['no_trans_down_payment']:=Qdetail.FieldByName('no_trans_down_payment').AsString;
  //    MemUangMuka['trans_date']:=Qdetail.FieldByName('trans_date').AsString;
      MemUangMuka['voucher_no']:=Qdetail.FieldByName('voucher_no').AsString;
      MemUangMuka['sisa_uang_muka']:=Qdetail.FieldByName('sisa_uang_muka').AsString;
      MemUangMuka['uang_muka_dipakai']:=Qdetail.FieldByName('sisa_uang_muka').AsString;
      MemUangMuka.Post;
    end else
    begin
      MessageDlg('Uang Muka Sudah Ada Di Order..!!',mtInformation,[mbRetry],0);
    end;
  end;
  Close;
end;

procedure TFbrowseUangMukaDibayarkan.FormShow(Sender: TObject);
begin
//  Refresh;
end;

end.
