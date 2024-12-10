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
    Edurut: TEdit;
    RzBitBtn1: TRzBitBtn;
    DtTh: TRzDateTimeEdit;
    DtBln: TRzDateTimeEdit;
    DtHr: TRzDateTimeEdit;
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure Ednm_suppButtonClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Ednm_suppChange(Sender: TObject);
    procedure edno_terimaSelect(Sender: TObject);
    procedure LbcurrClick(Sender: TObject);
    procedure edhargaChange(Sender: TObject);
    procedure DtReturnChange(Sender: TObject);
    procedure EdppnrpChange(Sender: TObject);
    procedure Edppn_rpChange(Sender: TObject);
    procedure edrpChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Autonumber;
    Procedure Totalretur;
    Procedure Clear;
  end;

var
  FNew_Pot_Pembelian: TFNew_Pot_Pembelian;
  status:integer;
  kdstok,thn,bln,tgl,nourut:string;
  subtotal,ppn_rp,grandtotal:real;
{Function  FNew_Pot_Pembelian: TFNew_Pot_Pembelian;
var
  status:integer;
  kdstok,thn,bln,tglno,nourut:string;
  subtotal,ppn_rp,grandtotal:real;}

implementation
{$R *.dfm}


uses UDataModule, UReturnPembelian, UPot_Pembelian, USearch_ItemRetur,
  UMainMenu, UMy_Function, USupp_Pembelian;

{var
  realfNew_pot : TFNew_Pot_Pembelian;
// implementasi function
function FNew_Pot_Pembelian: TFNew_Pot_Pembelian;
begin
  if realfNew_pot <> nil then
    FNew_Pot_Pembelian:= realfNew_pot
  else
    Application.CreateForm(TFNew_Pot_Pembelian, Result);
end;}

procedure TFNew_Pot_Pembelian.Autonumber;
begin
  idmenu:='M11006';
  strday2:=DtReturn.Date;
  Edno.Text:=getNourutBlnPrshthn_kode(strday2,'t_purchase_discount','');
  Edurut.Text:=order_no;
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

procedure TFNew_Pot_Pembelian.DtReturnChange(Sender: TObject);
var SelectedDate: TRzDateTimeEdit;
    year, month, day: word;
begin
   DecodeDate(now, year,month,day );
   DtBln.Date:=DtReturn.Date;
   DtTh.Date:=DtReturn.Date;
   Dthr.Date:=DtReturn.Date;

   thn:=FormatDateTime('yyyy',DtReturn.Date);
   bln:=FormatDateTime('mm',DtReturn.Date);
   tgl:=FormatDateTime('dd',DtReturn.Date);
end;

procedure TFNew_Pot_Pembelian.edhargaChange(Sender: TObject);
begin
    if Lbcurr.Caption<>'Rp' then
    begin
      edrp.Value:=edharga.Value*edcurr.Value;
      Edppnrp.Text:=FloatToStr((edharga.Value/100)* StrToFloat(edppn.Text));
      grandtotal:=edharga.value+Edppnrp.Value;
      //Edppnrp.Text:=FloatToStr(ppn_rp);
      Edgrandtotal.Text:=FloatToStr(grandtotal);
    end;
    if lbcurr.Caption='Rp' then
    begin
      edrp.Value:=edharga.Value;
      Edppnrp.Text:=FloatToStr((edharga.Value/100)* StrToFloat(edppn.Text));
      //Edgrandtotal.Value:=edrp.Value+Edppnrp.Value;
      grandtotal:=edharga.value+Edppnrp.Value;
      //Edppnrp.Text:=FloatToStr(ppn_rp);
      Edgrandtotal.Text:=FloatToStr(grandtotal);
      //Edppn_rp.Value:=Edppnrp.Value;
      //EdTotal_rp.Value:=Edgrandtotal.Value;
    end;
end;

procedure TFNew_Pot_Pembelian.Ednm_suppButtonClick(Sender: TObject);
begin
    with FSupp_Pembelian do
    begin
      jenis_tr:='pot_pemb';
      Show;
      if Qsupplier.Active=False then Qsupplier.Active:=True;
    end;
end;

procedure TFNew_Pot_Pembelian.Ednm_suppChange(Sender: TObject);
begin
    edno_terima.Clear;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_item_receive where supplier_code='+QuotedStr(Edkd_supp.Text);
      Execute;
    end;
    Dm.Qtemp.First;
    while not Dm.Qtemp.Eof do
    begin
      edno_terima.items.Add(Dm.Qtemp['receive_no']);
      Dm.Qtemp.Next;
    end;
end;

procedure TFNew_Pot_Pembelian.edno_terimaSelect(Sender: TObject);
begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_item_receive where receive_no='+QuotedStr(edno_terima.Text);
      Execute;
    end;
      EdNoFaktur.Text:=Dm.Qtemp['faktur_no'];
      DtFaktur.text:=Dm.Qtemp['faktur_date'];
      Lbcurr.Caption:=dm.Qtemp['valas'];
      edcurr.Text:=dm.Qtemp['valas_value'];
      LbcurrClick(sender);
end;

procedure TFNew_Pot_Pembelian.EdppnrpChange(Sender: TObject);
begin
    //Ribuan(Edppnrp);
    Edppn_rp.Value:=Edppnrp.Value*edcurr.Value;
    grandtotal:=edharga.value+Edppnrp.Value;
    //Edppnrp.Text:=FloatToStr(ppn_rp);
    Edgrandtotal.Text:=FloatToStr(grandtotal);
end;

procedure TFNew_Pot_Pembelian.Edppn_rpChange(Sender: TObject);
begin
    EdTotal_rp.Value:=edrp.Value+Edppn_rp.Value;
end;

procedure TFNew_Pot_Pembelian.edrpChange(Sender: TObject);
begin
    EdTotal_rp.Value:=edrp.Value+Edppn_rp.Value;
end;

procedure TFNew_Pot_Pembelian.FormShow(Sender: TObject);
begin
  DtReturn.Date:=Now;
end;

procedure TFNew_Pot_Pembelian.LbcurrClick(Sender: TObject);
begin
   if Lbcurr.Caption='USD' then edcurr.enabled:=true else edcurr.Enabled:=false;
end;

procedure TFNew_Pot_Pembelian.RzBitBtn1Click(Sender: TObject);
begin
   Autonumber;
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
          Autonumber;
          if messageDlg ('Anda Yakin Simpan No. '+EdNo.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
          begin
            with dm.Qtemp do
            begin
              close;
              sql.Clear;
              sql.Text:='select * from t_purchase_discount';
              ExecSQL;
            end;
            with dm.Qtemp do
            begin
              close;
              sql.Clear;
              sql.Text:=' insert into t_purchase_discount(discount_no,discount_date,faktur_no,price,supplier_code,receive_no,trans_year,price_rp,valas,n_valas,trans_month,trans_day,order_no,ppn,ppnrp,total,pic)'+
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
                        ParamByName('partglno').AsString:=tgl;
                        //ParamByName('parnourut').Value:=nourut;
                        ParamByName('parnourut').Value:=Edurut.Text;
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
            sql.Text:='Update t_purchase_discount set discount_date=:partgl,faktur_no=:parnofk,price=:parharga,'+
                      ' supplier_code=:parkd_sp,price_rp=:parharga_rp,valas=:parvls,n_valas=:parnvls,'+
                      ' ppn=:parppn,ppnrp=:parppnrp,total=:partotal,receive_no=:parno_terima,pic_update=:parpic where discount_no=:parno_pot';
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
