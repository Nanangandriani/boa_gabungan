unit UNewKonv_Produk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RzButton,
  Vcl.ExtCtrls;

type
  TFNewKonv_produk = class(TForm)
    Edkd: TEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    Edsatuan: TEdit;
    EdKonversi: TEdit;
    EdqtyKon: TEdit;
    Edqty: TEdit;
    Edno: TEdit;
    EdNm: TRzComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    qty: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    procedure BBatalClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure EdNmSelect(Sender: TObject);
    procedure EdqtyChange(Sender: TObject);
    procedure EdqtyKonChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNewKonv_produk: TFNewKonv_produk;

implementation

{$R *.dfm}

uses UDataModule;

procedure TFNewKonv_produk.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNewKonv_produk.BEditClick(Sender: TObject);
begin
      if EdNm.Text='' then
      begin
        MessageDlg('Nama Produk Tidak boleh Kosong ',MtWarning,[MbOk],0);
        EdNm.SetFocus;
        Exit;
      end;
      if Edsatuan.Text='' then
      begin
        MessageDlg('Satuan Tidak boleh Kosong ',MtWarning,[MbOk],0);
        Edsatuan.SetFocus;
        Exit;
      end;
      if EdKonversi.Text='' then
      begin
        MessageDlg('Satuan Konversi Tidak boleh Kosong ',MtWarning,[MbOk],0);
        EdKonversi.SetFocus;
        Exit;
      end;
      if not dm.koneksi.InTransaction then
      dm.koneksi.StartTransaction;
      try
      begin
        BEdit.Visible:=false;
        BSimpan.Visible:=true;
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:='Select * from t_konversi_produk';
          ExecSQL;
        end;
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:='Update t_konversi_produk set kd_produk='+QuotedStr(Ednm.Text)+ ' , qtysatuan='+QuotedStr(Edqty.Text)+' ,satuan='+QuotedStr(Edsatuan.Text)+''+
                    ' ,qtykonversi='+QuotedStr(EdqtyKon.Text)+', konversi='+QuotedStr(EdKonversi.Text)+' Where No_konversi='+QuotedStr(Edno.Text);
          ExecSQL;
        end;
        dm.koneksi.Commit;
        Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
      end
      Except
      on E :Exception do
      begin
        MessageDlg(E.Message,mtError,[MBok],0);
        dm.koneksi.Rollback;
      end;
      end;
        BBatalClick(sender);
end;
procedure TFNewKonv_produk.BSimpanClick(Sender: TObject);
begin
    if EdNm.Text='' then
    begin
      MessageDlg('Nama Produk Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNm.SetFocus;
      Exit;
    end;
    if Edsatuan.Text='' then
    begin
      MessageDlg('Satuan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edsatuan.SetFocus;
      Exit;
    end;
    if EdKonversi.Text='' then
    begin
      MessageDlg('Satuan Konversi Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdKonversi.SetFocus;
      Exit;
    end;
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
    begin
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:='Select * from t_konversi_produk';
        ExecSQL;
      end;
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:='insert into t_konversi_produk(no_konversi,kd_produk, qtysatuan, satuan, qtykonversi, konversi)'+
                  'values('+QuotedStr(Edno.Text)+', '+QuotedStr(EdNm.Text)+', '+QuotedStr(Edqty.Text)+', '+QuotedStr(Edsatuan.Text)+', '+QuotedStr(EdqtyKon.Text)+', '+QuotedStr(EdKonversi.Text)+')';
        ExecSQL;
      end;
      dm.koneksi.Commit;
      Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
    end
    Except
    on E :Exception do
    begin
      MessageDlg(E.Message,mtError,[MBok],0);
      dm.koneksi.Rollback;
    end;
    end;
      BBatalClick(sender);
    end;

procedure TFNewKonv_produk.EdNmSelect(Sender: TObject);
begin
  with Dm.Qtemp do
  begin
    close;
    sql.Text:='select * from t_produk where kd_produk='+QuotedStr(EdNm.Text);
    ExecSQL;
  end;
  EdNm.Text:=Dm.Qtemp.FieldByName('kd_produk').AsString;with Dm.Qtemp do
  begin
    close;
    sql.Text:='select * from t_produk where kd_produk='+QuotedStr(EdNm.Text);
    ExecSQL;
  end;
  EdNm.Text:=Dm.Qtemp.FieldByName('kd_produk').AsString;
end;

procedure TFNewKonv_produk.EdqtyChange(Sender: TObject);
begin
   if Edqty.Text='' then   Edqty.Text:='0'  ;
end;

procedure TFNewKonv_produk.EdqtyKonChange(Sender: TObject);
begin
     if EdqtyKon.Text='' then   EdqtyKon.Text:='0'  ;
end;

end.
