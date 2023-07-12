unit UNewKonv_Material;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  RzCmboBx, Vcl.Mask, RzEdit, RzBtnEdt;

type
  TFNewKonv_Material = class(TForm)
    Label5: TLabel;
    EdNm: TRzButtonEdit;
    Edcategory: TRzComboBox;
    Edno: TEdit;
    EdKonversi: TEdit;
    EdqtyKon: TEdit;
    Edsatuan: TEdit;
    Edqty: TEdit;
    Edkd: TEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Label2: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    qty: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure EdNmButtonClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure EdcategorySelect(Sender: TObject);
    procedure EdqtyChange(Sender: TObject);
    procedure EdqtyKonChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Load;
    Procedure Clear;
  end;

var
  FNewKonv_Material: TFNewKonv_Material;

implementation

{$R *.dfm}

uses USearchMaterial, UDataModule, UListKonversi_Material;

procedure TFNewKonv_Material.BSimpanClick(Sender: TObject);
begin
    if EdNm.Text='' then
    begin
      MessageDlg('Nama Material Tidak boleh Kosong ',MtWarning,[MbOk],0);
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
    if status=0 then
    begin
     with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:='Select * from t_konversi_material';
      ExecSQL;
    end;
     with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:='insert into t_konversi_material(no_konversi,kd_material, qtysatuan, satuan, qtykonversi, konversi)'+
                'values('+QuotedStr(Edno.Text)+', '+QuotedStr(EdKd.Text)+', '+QuotedStr(Edqty.Text)+', '+QuotedStr(Edsatuan.Text)+', '+QuotedStr(EdqtyKon.Text)+', '+QuotedStr(EdKonversi.Text)+')';
      ExecSQL;
      end;
    end;
    if status=1 then
     begin
     with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:='Update t_konversi_material set kd_material='+QuotedStr(EdKd.Text)+ ' ,qtysatuan='+QuotedStr(Edqty.Text)+' ,satuan='+QuotedStr(Edsatuan.Text)+''+
                  ' ,qtykonversi='+QuotedStr(EdqtyKon.Text)+', konversi='+QuotedStr(EdKonversi.Text)+' Where No_konversi='+QuotedStr(Edno.Text);
        ExecSQL;
        end;
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

procedure TFNewKonv_Material.Clear;
begin
    EdKd.Text:='';
    EdNm.Text:='';
    Edqty.Text:='0';
    Edsatuan.Text:='';
    EdqtyKon.Text:='0';
    EdKonversi.Text:='';
    Edno.Text:='';
end;


procedure TFNewKonv_Material.Load;
begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Select * from t_category_material';
      ExecSQL;
    end;
    Dm.Qtemp.First;
    while not Dm.Qtemp.Eof do
    begin
    Edcategory.Items.Add(Dm.Qtemp['category']);
    Dm.Qtemp.Next;
    end;
end;

procedure TFNewKonv_Material.BBatalClick(Sender: TObject);
begin
  Close;
  //FListKonvMaterial.dxBarRefreshClick(sender);
end;

procedure TFNewKonv_Material.EdcategorySelect(Sender: TObject);
begin
  with Dm.Qtemp do
  begin
    close;
    sql.Text:='select kd_material,nm_material,category,no_material from t_material '+
              ' where category='+QuotedStr(Edcategory.Text)+''+
              ' Group by kd_material,nm_material,category,no_material '+
              ' order by category,no_material Asc';
    ExecSQL;
  end;
  EdNm.Clear;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
  // EdNm.Items.Add(Dm.Qtemp.FieldByName('no_material').AsString+' '+Dm.Qtemp.FieldByName('nm_material').AsString);
  Dm.Qtemp.Next;
  end;
end;

procedure TFNewKonv_Material.EdNmButtonClick(Sender: TObject);
begin
  //FsearchMaterial.showmodal;
  with FSearchMaterial do
  begin
    showmodal;
  with QMaterial do
  begin
    close;
    sql.Text:='select kd_material,nm_material,category,no_material,satuan from t_material '+
              ' where category='+QuotedStr(Edcategory.Text)+''+
              ' Group by kd_material,nm_material,category,no_material,satuan  '+
              ' order by category,no_material Asc';
    ExecSQL;
  end;
  end;
end;

procedure TFNewKonv_Material.EdqtyChange(Sender: TObject);
begin
   if Edqty.Text='' then   Edqty.Text:='0'  ;
end;

procedure TFNewKonv_Material.EdqtyKonChange(Sender: TObject);
begin
   if EdqtyKon.Text='' then   EdqtyKon.Text:='0'  ;
end;

procedure TFNewKonv_Material.FormShow(Sender: TObject);
begin
  load;
  //clear;
end;

end.
