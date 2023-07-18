unit UNew_Barang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, RzButton,
  Vcl.ExtCtrls, Vcl.Mask, RzEdit, RzBtnEdt, Data.DB, MemDS, DBAccess, Uni,
  RzCmboBx;

type
  TFNew_Barang = class(TForm)
    Edjenis: TRzComboBox;
    UniQuery1: TUniQuery;
    EdNm_akun: TRzButtonEdit;
    Edkd_akun: TRzEdit;
    EdMerk: TRzComboBox;
    EdSatuan: TEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    EdCategory: TRzComboBox;
    Edno: TEdit;
    Edno1: TEdit;
    EdKd: TEdit;
    EdNm: TEdit;
    SpeedButton1: TSpeedButton;
    Label20: TLabel;
    Label19: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    procedure BBatalClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure EdNm_akunButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdCategorySelect(Sender: TObject);
    procedure EdjenisSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Load;
  end;

var
  FNew_Barang: TFNew_Barang;
  idmaterial:string;

implementation

{$R *.dfm}

uses UKategori_Barang, UDataModule, UAkun_Perkiraan_TerimaMat, UListBarang;



procedure TFNew_Barang.Load;
begin
  Edjenis.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select jenis from t_category_material group by jenis ';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    Edjenis.Items.Add(Dm.Qtemp['jenis']);
    Dm.Qtemp.Next;
  end;
end;

procedure TFNew_Barang.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNew_Barang.BEditClick(Sender: TObject);
begin
      if Edjenis.Text='' then
      begin
        MessageDlg('jenis Tidak boleh Kosong ',MtWarning,[MbOk],0);
        Edjenis.SetFocus;
        Exit;
      end;
      if EdCategory.Text='' then
      begin
        MessageDlg('Category Tidak boleh Kosong ',MtWarning,[MbOk],0);
        EdCategory.SetFocus;
        Exit;
      end;
      if EdKd.Text='' then
      begin
        MessageDlg('Kode Material Tidak boleh Kosong ',MtWarning,[MbOk],0);
        EdKd.SetFocus;
        Exit;
      end;
      if EdNm.Text='' then
      begin
        MessageDlg('Nama Material Tidak boleh Kosong ',MtWarning,[MbOk],0);
        EdNm.SetFocus;
        Exit;
      end;
      if EdSatuan.Text='' then
      begin
        MessageDlg('Satuan Tidak boleh Kosong ',MtWarning,[MbOk],0);
        EdSatuan.SetFocus;
        Exit;
      end;
       with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:='Select * from t_material';
        ExecSQL;
      end;
      if not dm.koneksi.InTransaction then
      dm.koneksi.StartTransaction;
      try
      begin
       with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:=' Update t_material set no_urut=:parno_urut,kd_material=:parkd_material,'+
                  ' nm_material=:parnm_material,satuan=:parsatuan,merk=:parmerk,jenis=:parjenis,'+
                  ' kd_akun=:parkd_akun, no_material=:parno_material,category=:parcategory '+
                  ' where id=:parid';
                  ParamByName('parno_urut').Value:=Edno1.Text;
                  ParamByName('parkd_material').Value:=EdKd.Text;
                  ParamByName('parnm_material').Value:=EdNm.Text;
                  ParamByName('parsatuan').Value:=EdSatuan.Text;
                  ParamByName('parmerk').Value:=EdMerk.Text;
                  ParamByName('parjenis').Value:=Edjenis.Text;
                  ParamByName('parkd_akun').Value:=Edkd_akun.Text;
                  ParamByName('parno_material').Value:=Edno.Text;
                  ParamByName('parcategory').Value:=EdCategory.Text;
                  ParamByName('parid').Value:=idmaterial;
        ExecSQL;
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

procedure TFNew_Barang.BSimpanClick(Sender: TObject);
begin
    if Edjenis.Text='' then
    begin
      MessageDlg('jenis Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edjenis.SetFocus;
      Exit;
    end;
    if EdCategory.Text='' then
    begin
      MessageDlg('Category Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdCategory.SetFocus;
      Exit;
    end;
    if EdKd.Text='' then
    begin
      MessageDlg('Kode Material Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdKd.SetFocus;
      Exit;
    end;
    if EdNm.Text='' then
    begin
      MessageDlg('Nama Material Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNm.SetFocus;
      Exit;
    end;
    if EdSatuan.Text='' then
    begin
      MessageDlg('Satuan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdSatuan.SetFocus;
      Exit;
    end;
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:='Select * from t_material';
      ExecSQL;
    end;
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
    begin
     with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:='insert into t_material(no_urut,no_material,kd_material,nm_material,category,'+
                ' satuan,merk,jenis,kd_akun)values(:parno_urut,:parno_material,:parkd_material,'+
                ' :parnm_material,:parcategory,:parsatuan,:parmerk,:parjenis,:parkd_akun)';
                ParamByName('parno_urut').Value:=Edno1.Text;
                ParamByName('parno_material').Value:=Edno.Text;
                ParamByName('parkd_material').Value:=EdKd.Text;
                ParamByName('parnm_material').Value:=EdNm.Text;
                ParamByName('parcategory').Value:=EdCategory.Text;
                ParamByName('parsatuan').Value:=EdSatuan.Text;
                ParamByName('parmerk').Value:=EdMerk.Text;
                ParamByName('parjenis').Value:=EdJenis.Text;
                ParamByName('parkd_akun').Value:=edkd_akun.text;
      ExecSQL;
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

procedure TFNew_Barang.EdCategorySelect(Sender: TObject);
var no_urut:string;
begin
    with dm.Qtemp3 do
    begin
      Close;
      SQL.clear;
      sql.Text:=' SELECT * FROM t_category_material '+
                ' WHERE t_category_material.category='+QuotedStr(EdCategory.Text);
      Open;
    end;
    if DM.QTemp3['no_urut']='' then
    begin
       ShowMessage('Kode Barang Kosong');
       EdKd.Text:='';
       Edno.Text:='';
       Edno1.Text:='';
    end
    else
    if DM.QTemp3['no_urut']<>'' then
    begin
        with dm.Qtemp do
        begin
          Close;
          SQL.clear;
          sql.Text:=' SELECT * FROM t_material '+
                    ' WHERE t_material.category='+QuotedStr(EdCategory.Text);
          Open;
        end;
        if dm.Qtemp.RecordCount =0 then
        begin
          with dm.Qtemp2 do
          begin
            Close;
            SQL.clear;
            sql.Text:=' SELECT *,"left"(no_URUT,3)as kode FROM t_category_material '+
                      ' WHERE category='+QuotedStr(EdCategory.Text);
            Open;
          end;
          no_urut:=DM.QTemp2['no_urut'];
        end
        else
        if dm.Qtemp.RecordCount >0 then
        begin
          with dm.Qtemp2 do
          begin
            Close;
            SQL.clear;
            sql.Text:=' SELECT *,"left"(no_URUT,3)as kode FROM t_category_material '+
                      ' WHERE category='+QuotedStr(EdCategory.Text);
            Open;
          end;

          with dm.Qtemp do
          begin
            Close;
            SQL.clear;
            sql.Text:=' SELECT "max"("right"(no_material,3))AS urut FROM t_material '+
                      ' WHERE category='+QuotedStr(EdCategory.Text);
            Open;
          end;
          no_urut:=FloatToStr(Dm.Qtemp.FieldByName('urut').AsInteger +1);
        end;
        Edno1.Text:=no_urut;
        edno.text:=Copy('000'+edno1.Text,length('000'+edno1.Text)-2,3);
        EdKd.text:=Copy('000'+edno1.Text,length('000'+edno1.Text)-2,3);


        if EdCategory.Text='BAHAN KEMASAN' then EdMerk.Enabled:=True else EdMerk.Enabled:=False;

    end;
end;

procedure TFNew_Barang.EdjenisSelect(Sender: TObject);
begin
    EdCategory.Clear;
  {case edjenis.ItemIndex of
  0:begin
    EdCategory.Items.Add('Bahan Baku');
    EdCategory.Items.Add('Bahan Kemasan');
    EdCategory.Items.Add('Kimia');
  end;
  1:begin
    EdCategory.Items.Add('Bahan Penolong');
    EdCategory.Items.Add('Jasa');
  end;
  end;  }
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_category_material where jenis='+QuotedStr(Edjenis.Text);
      ExecSQL;
    end;
    Dm.Qtemp.First;
    while not Dm.Qtemp.Eof do
    begin
      EdCategory.Items.Add(Dm.Qtemp['category']);
      Dm.Qtemp.Next;
    end;EdCategory.Clear;
  {case edjenis.ItemIndex of
  0:begin
    EdCategory.Items.Add('Bahan Baku');
    EdCategory.Items.Add('Bahan Kemasan');
    EdCategory.Items.Add('Kimia');
  end;
  1:begin
    EdCategory.Items.Add('Bahan Penolong');
    EdCategory.Items.Add('Jasa');
  end;
  end;  }
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_category_material where jenis='+QuotedStr(Edjenis.Text);
      ExecSQL;
    end;
    Dm.Qtemp.First;
    while not Dm.Qtemp.Eof do
    begin
      EdCategory.Items.Add(Dm.Qtemp['category']);
      Dm.Qtemp.Next;
    end;
end;

procedure TFNew_Barang.EdNm_akunButtonClick(Sender: TObject);
begin
    with  FAkun_Perkiraan_TerimaMat do
    begin
      Show;
      if QAkun.Active=false then QAkun.Active:=True;
    end;
end;

procedure TFNew_Barang.FormShow(Sender: TObject);
begin
    EdCategory.SetFocus;
    BSimpan.Visible:=true;
    BEdit.Visible:=False;
    Caption:='New Material';
end;

procedure TFNew_Barang.SpeedButton1Click(Sender: TObject);
begin
  FKategori_Barang.show;
end;

end.
