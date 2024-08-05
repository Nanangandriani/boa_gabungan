unit UNew_Pot_Pembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  RzButton, RzPanel, MemTableDataEh, Data.DB, MemDS, DBAccess, Uni, MemTableEh,
  RzBtnEdt, RzEdit, RzCmboBx, Vcl.Mask;

type
  TFNew_Pot_Pembelian = class(TForm)
    Edno: TRzEdit;
    DsDetail: TDataSource;
    MemDetail: TMemTableEh;
    QFaktur: TUniQuery;
    EdTotal_rp: TRzNumericEdit;
    Edppn_rp: TRzNumericEdit;
    Edgrandtotal: TRzNumericEdit;
    Edppnrp: TRzNumericEdit;
    edppn: TRzEdit;
    edrp: TRzNumericEdit;
    edcurr: TRzNumericEdit;
    edharga: TRzNumericEdit;
    edno_terima: TRzComboBox;
    EdNoFaktur: TRzComboBox;
    DtFaktur: TRzDateTimeEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    DtReturn: TRzDateTimeEdit;
    Ednm_supp: TRzButtonEdit;
    Edkd_supp: TRzEdit;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label17: TLabel;
    Lbcurr: TLabel;
    Label13: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Totalretur;
    Procedure Clear;
  end;

//var
  //FNew_Pot_Pembelian: TFNew_Pot_Pembelian;
Function  FNew_Pot_Pembelian: TFNew_Pot_Pembelian;
var
  status:integer;
  kdstok,thn,bln,tglno,nourut:string;
  subtotal,ppn_rp,grandtotal:real;

implementation
{$R *.dfm}


uses UDataModule, UReturnPembelian, UPot_Pembelian, USearch_ItemRetur,
  UMainMenu, UMy_Function;

var
  realfNew_pot : TFNew_Pot_Pembelian;
// implementasi function
function FNew_Pot_Pembelian: TFNew_Pot_Pembelian;
begin
  if realfNew_pot <> nil then
    FNew_Pot_Pembelian:= realfNew_pot
  else
    Application.CreateForm(TFNew_Pot_Pembelian, Result);
end;

function IntToRoman(Value : Longint):String;  // fungsi
    const
    arabics: Array[1..12] of integer=(1,2,3,4,5,6,7,8,9,10,11,12);
    Romans: Array [1..12] Of string=('I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII');
    Var  i :integer;
    begin
    For i := 12 downto 1 do
    while (Value >= Arabics[i]) do
    begin
      Value := Value - Arabics[i];
      Result:= Result + Romans[i];
    end;
end;

procedure TFNew_Pot_Pembelian.Totalretur;
begin

end;

procedure TFNew_Pot_Pembelian.Clear;
begin
  MemDetail.Close;
  MemDetail.Open;
  Edkd_supp.Text:='';
  Ednm_supp.Text:='';
  edharga.Text:='0';
  edcurr.Text:='0';
  edrp.Text:='0';
  edppn.Text:='11';
  EdNoFaktur.Text:='';
  Edno.Clear;
  MemDetail.EmptyTable;
end;

procedure TFNew_Pot_Pembelian.BBatalClick(Sender: TObject);
begin
   Close;
   FPot_Pembelian.ActRoExecute(sender);
end;

procedure TFNew_Pot_Pembelian.BSimpanClick(Sender: TObject);
begin
    if DtReturn.Text='' then
    begin
      MessageDlg('Tanggal Retur Pembelian Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtReturn.SetFocus;
      Exit;
    end;
    if Ednm_supp.Text='' then
    begin
      MessageDlg('Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ednm_supp.SetFocus;
      Exit;
    end;
    if EdNoFaktur.Text='' then
    begin
      MessageDlg('No. Faktur Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNoFaktur.SetFocus;
      Exit;
    end;
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
    begin
        if status=0 then
        begin
          //Autonumber;
          if messageDlg ('Anda Yakin Simpan No. '+EdNo.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
          begin
            with dm.Qtemp do
            begin
              close;
              sql.Clear;
              sql.Text:='select * from t_pot_pembelian';
              ExecSQL;
            end;
            with dm.Qtemp do
            begin
              close;
              sql.Clear;
              sql.Text:='insert into t_pot_pembelian(no_pot,tgl_pot,nofaktur,harga,kd_supplier,no_terima,thn,harga_rp,valas,n_valas,bln,tgl_no,nourut,ppn,ppnrp,total,pic)'+
                        ' values(:parno,:partgl,:parnofaktur,:parharga,:parkd_supplier,:parno_terima,:parthn,:parharga_rp,:parvls,:parnvls,:parbln,:partglno,:parnourut,:parppn,:parppnrp,:partotal,:parpic)';
                        ParamByName('parno').Value:=Edno.Text;
                        ParamByName('partgl').Value:=FormatDateTime('yyy-mm-dd',DtReturn.Date);
                        ParamByName('parnofaktur').Value:=EdNoFaktur.Text;
                        ParamByName('parharga').Value:=edharga.Value;
                        ParamByName('parkd_supplier').Value:=Edkd_supp.Text;
                        ParamByName('parno_terima').Value:=edno_terima.Text;
                        ParamByName('parthn').Value:=thn;
                        ParamByName('parharga_rp').Value:=edrp.Value;
                        ParamByName('parvls').AsString:=Lbcurr.Caption;
                        ParamByName('parnvls').Value:=edcurr.Value;
                        ParamByName('parbln').Value:=bln;
                        ParamByName('partglno').AsString:=tglno;
                        ParamByName('parnourut').Value:=nourut;
                        ParamByName('parppn').Value:=edppn.Text;
                        ParamByName('parppnrp').Value:=Edppn_rp.Value;
                        ParamByName('partotal').Value:=Edgrandtotal.Value;
                        ParamByName('parpic').Value:=Nm;
              ExecSQL;
            end;
          end;
        end;
        if status=1 then
        begin
          with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:='Update t_pot_pembelian set tgl_pot=:partgl,nofaktur=:parnofk,harga=:parharga,'+
                      ' kd_supplier=:parkd_sp,harga_rp=:parharga_rp,valas=:parvls,n_valas=:parnvls,'+
                      ' ppn=:parppn,ppnrp=:parppnrp,total=:partotal,no_terima=:parno_terima,pic_update=:parpic where no_pot=:parno_pot';
                      ParamByName('partgl').AsString:=FormatDateTime('yyy-mm-dd',DtReturn.Date);
                      ParamByName('parnofk').Value:=EdNoFaktur.Text;
                      ParamByName('parharga').Value:=edharga.Value;
                      ParamByName('parkd_sp').Value:=Edkd_supp.Text;
                      ParamByName('parno_pot').Value:=Edno.Text;
                      ParamByName('parharga_rp').Value:=edrp.Value;
                      ParamByName('parvls').AsString:=Lbcurr.Caption;
                      ParamByName('parnvls').Value:=edcurr.Value;
                      ParamByName('parppn').Value:=edppn.Text;
                      ParamByName('parppnrp').Value:=Edppn_rp.Value;
                      ParamByName('partotal').Value:=Edgrandtotal.Value;
                      ParamByName('parno_terima').Value:=edno_terima.Text;
                      ParamByName('parpic').Value:=Nm;
            ExecSQL;
          end;
        end;
          dm.koneksi.Commit;
          Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
          BBatalClick(sender);
        end
        Except
        on E :Exception do
        begin
          MessageDlg(E.Message,mtError,[MBok],0);
          dm.koneksi.Rollback;
        end;
    end;
end;

end.
