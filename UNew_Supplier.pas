unit UNew_Supplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, MemTableDataEh, Data.DB,
  MemTableEh, Vcl.Mask, RzEdit, RzBtnEdt, RzTabs;

type
  TFNew_Supplier = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edno: TEdit;
    EdNm: TEdit;
    EdAlamat: TEdit;
    EdTelp: TEdit;
    EdNPWP: TEdit;
    MemMaterial: TMemTableEh;
    DsMaterial: TDataSource;
    Edkd: TEdit;
    edKodePerkiraan_x: TRzButtonEdit;
    Label30: TLabel;
    Label29: TLabel;
    PG_Supplier: TRzPageControl;
    TabSheet1: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    TabSheet2: TRzTabSheet;
    RzPanel1: TRzPanel;
    edKodePerkiraan: TRzButtonEdit;
    Label11: TLabel;
    Label12: TLabel;
    edKodePerkiraan_um: TRzButtonEdit;
    Label13: TLabel;
    Label14: TLabel;
    procedure BBatalClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure edKodePerkiraan_xButtonClick(Sender: TObject);
    procedure edKodePerkiraanButtonClick(Sender: TObject);
    procedure edKodePerkiraan_umButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    KodeHeaderPerkiraan,KodeHeaderPerkiraan_um :string;
    Procedure Clear;
    Procedure Autonumber;
    procedure Autocode_perkiraan;
    procedure Autocode_perkiraan_um;
  end;

//var  FNew_Supplier: TFNew_Supplier;

Function  FNew_Supplier: TFNew_Supplier;

implementation

{$R *.dfm}

uses UDataModule, UListSupplier, UMainMenu, UCari_Barang, UMasterData;

var
    RealFNew_Supplier: TFNew_Supplier;
Function FNew_Supplier: TFNew_Supplier;
begin
    if RealFNew_Supplier <> nil then
    FNew_Supplier:= RealFNew_Supplier
    else
    Application.CreateForm(TFNew_Supplier, Result);
end;

procedure TFNew_Supplier.Autocode_perkiraan;
var
  kode : String;
  Urut : Integer;
begin
    with dm.Qtemp do
    begin
      Close;
      SQL.Clear;
      Sql.Text :=' SELECT * FROM t_ak_account '+
                 ' WHERE header_code='+Quotedstr(KodeHeaderPerkiraan)+'  ';
      open;
    end;

    if Dm.Qtemp.RecordCount = 0 then urut := 1 else
    if Dm.Qtemp.RecordCount > 0 then
    begin
        With Dm.Qtemp do
        begin
          Close;
          Sql.Clear;
          Sql.Text :=' select count(header_code) as hasil '+
                     ' from  t_ak_account where header_code='+QuotedSTR(KodeHeaderPerkiraan)+'  ';
          Open;
        end;
        Urut := dm.Qtemp.FieldByName('hasil').AsInteger + 1;
    end;
    edKodePerkiraan.Clear;
    kode := inttostr(urut);

    if Length(kode)=1 then
    begin
      kode := '00'+kode;
    end
    else
    if Length(kode)=2 then
    begin
      kode := '0'+kode;
    end
    else
    if Length(kode)=3 then
    begin
      kode := kode;
    end;
    edKodePerkiraan.Text := KodeHeaderPerkiraan+'.'+kode;
end;

procedure TFNew_Supplier.Autocode_perkiraan_um;
var
  kode : String;
  Urut : Integer;
begin
    with dm.Qtemp1 do
    begin
      Close;
      SQL.Clear;
      Sql.Text :=' SELECT * FROM t_ak_account '+
                 ' WHERE header_code='+Quotedstr(KodeHeaderPerkiraan_um)+'  ';
      open;
    end;

    if Dm.Qtemp1.RecordCount = 0 then urut := 1 else
    if Dm.Qtemp1.RecordCount > 0 then
    begin
        with Dm.Qtemp1 do
        begin
          Close;
          Sql.Clear;
          Sql.Text :=' select count(header_code) as hasil '+
                     ' from  t_ak_account where header_code='+QuotedSTR(KodeHeaderPerkiraan_um)+'  ';
          Open;
        end;
        Urut := dm.Qtemp1.FieldByName('hasil').AsInteger + 1;
    end;
    edKodePerkiraan_um.Clear;
    kode := inttostr(urut);

    if Length(kode)=1 then
    begin
      kode := '00'+kode;
    end
    else
    if Length(kode)=2 then
    begin
      kode := '0'+kode;
    end
    else
    if Length(kode)=3 then
    begin
      kode := kode;
    end;
    edKodePerkiraan_um.Text := KodeHeaderPerkiraan_um+'.'+kode;
end;

procedure TFNew_Supplier.Clear;
begin
   Edno.Text:='';
   EdNm.Text:='';
   EdAlamat.Text:='';
   Edtelp.Text:='';
   EdNPWP.Text:='';
   edKodePerkiraan.Text:='';
   edKodePerkiraan_um.Text:='';
   KodeHeaderPerkiraan:='';
   KodeHeaderPerkiraan_um:='';
end;

Procedure TFNew_supplier.Autonumber;
var nourut,code:string;
i:integer;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select max(RIGHT(supplier_code,4)) as urut from t_supplier';
    Execute;
  end;
     if dm.Qtemp['urut']= '' then
      code := '1'
     else
     code:= IntToStr(dm.Qtemp['urut'] + 1);
     if length(code) < 10 then
      begin
       for i := length(code) to 3 do
        code := '0' + code;
      end;
    nourut:=code;
    Edno.Text:='SP'+nourut;
    Edkd.Text:='SP'+nourut;
end;

procedure TFNew_Supplier.DBGridEh1Columns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
 with FCari_Barang do
  begin
    show;
    status_tr:='Supplier';
    with QBarang do
    begin
    Close;
    sql.clear;
    SQL.Text:='select a.item_code,a.item_name,b.category,a.order_no,a.merk,a.unit from t_item '+
              ' a INNER JOIN t_item_category b on a.category_id=b.category_id '+
              //' where b.category='+QuotedStr(Edcategory.Text)+''+
              ' Group by a.item_code,a.item_name,b.category,a.order_no,a.merk,a.unit '+
              ' order by b.category,a.order_no Asc';
      execute;
    end;
  end;
end;

procedure TFNew_Supplier.edKodePerkiraanButtonClick(Sender: TObject);
begin
   FMasterData.DBGridCustomer.SearchPanel.SearchingText:='';
   FMasterData.Caption:='Master Data Perkiraan';
   FMasterData.vcall:='perkiraan_supplier';
   FMasterData.update_grid('header_code','header_name','journal_name','t_ak_header','WHERE	deleted_at IS NULL');
   FMasterData.Showmodal;
end;

procedure TFNew_Supplier.edKodePerkiraan_umButtonClick(Sender: TObject);
begin
   FMasterData.DBGridCustomer.SearchPanel.SearchingText:='';
   FMasterData.Caption:='Master Data Perkiraan';
   FMasterData.vcall:='perkiraan_supplier_um';
   FMasterData.update_grid('header_code','header_name','journal_name','t_ak_header','WHERE	deleted_at IS NULL');
   FMasterData.ShowModal;
end;

procedure TFNew_Supplier.edKodePerkiraan_xButtonClick(Sender: TObject);
begin
   FMasterData.Caption:='Master Data Perkiraan';
   FMasterData.vcall:='perkiraan_supplier';
   FMasterData.update_grid('header_code','header_name','journal_name','t_ak_header','WHERE	deleted_at IS NULL');
   FMasterData.ShowModal;
end;

procedure TFNew_Supplier.BBatalClick(Sender: TObject);
begin
  self.Refresh;
  Close;
  FlistSupplier.OnShow(sender);

end;

procedure TFNew_Supplier.BEditClick(Sender: TObject);
begin
  if messageDlg ('Anda Yakin Menyimpan Data ini ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
    BEdit.Visible:=false;
    BSimpan.Visible:=true;
    if Edno.Text='' then
    begin
      MessageDlg('Kode Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNo.SetFocus;
      Exit;
    end;
    if EdNm.Text='' then
    begin
      MessageDlg('Nama Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNm.SetFocus;
      Exit;
    end;
    if EdAlamat.Text='' then
    begin
      MessageDlg('Alamat Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdAlamat.SetFocus;
      Exit;
    end;
    if Edtelp.Text='' then
    begin
      MessageDlg('Telepon Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edtelp.SetFocus;
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
        sql.Text:='Select * from t_supplier where supplier_code='+QuotedStr(Edno.Text);
        ExecSQL;
      end;
      if (dm.Qtemp['header_code']=null) and (dm.Qtemp['header_code_um']=null) then
      begin
        Autocode_perkiraan;
        Autocode_perkiraan_um;
      end;

      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:='Update t_supplier set supplier_name='+QuotedStr(Ednm.Text)+ ' , Address='+QuotedStr(EdAlamat.Text)+' ,telp='+QuotedStr(Edtelp.Text)+''+
                  ' ,npwp='+QuotedStr(EdNPWP.Text)+',supplier_code2='+QuotedStr(Edkd.Text)+',updated_at=:updated_at,updated_by=:updated_by '+
                  ' ,header_code='+quotedstr(KodeHeaderPerkiraan)+',account_code='+Quotedstr(edKodePerkiraan.Text)+''+
                  ' ,header_code_um='+quotedstr(KodeHeaderPerkiraan_um)+''+
                  ' ,account_code_um='+quotedstr(edKodePerkiraan_um.Text)+''+
                  ' Where supplier_code='+QuotedStr(Edno.Text);
                  parambyname('updated_at').AsString:=Formatdatetime('yyy-mm-dd',Now());
                  parambyname('updated_by').AsString:='Admin';
        ExecSQL;
      end;
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Delete from t_item_stock where supplier_code='+QuotedStr(Edno.Text);
        ExecSQL;
      end;
      MemMaterial.First;
      while not MemMaterial.eof do
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:='insert into t_item_stock(item_stock_code,item_code,supplier_code,qty,unit,order_no,item_name,created_by)'+
                    ' values(:item_stock,:item_code,:supplier_code,:qty,:unit,:order_no,:item_name,:cr_by)';
                    ParamByName('item_stock').AsString:=MemMaterial['kode'];
                    ParamByName('item_code').AsString:=MemMaterial['kd_material'];
                    ParamByName('supplier_code').AsString:=Edno.Text;
                    ParamByName('qty').AsString:=MemMaterial['qty'];
                    ParamByName('unit').AsString:=MemMaterial['satuan'];
                    ParamByName('item_name').AsString:=MemMaterial['nm_material'];
                    ParamByName('cr_by').AsString:=nm;
          ExecSQL;
        end;
          MemMaterial.Next;
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
    FMainMenu.TampilTabForm2;
    BBatalClick(sender);
  end;
end;

procedure TFNew_Supplier.BSimpanClick(Sender: TObject);
var sp_code:string;
begin
    if Edno.Text='' then
    begin
      MessageDlg('Kode Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNo.SetFocus;
      Exit;
    end;
    if EdNm.Text='' then
    begin
      MessageDlg('Nama Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNm.SetFocus;
      Exit;
    end;
    if EdAlamat.Text='' then
    begin
      MessageDlg('Alamat Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdAlamat.SetFocus;
      Exit;
    end;
    if Edtelp.Text='' then
    begin
      MessageDlg('Telepon Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edtelp.SetFocus;
      Exit;
    end;
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
    begin
      Autocode_perkiraan;
      Autocode_perkiraan_um;
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:='Insert into t_supplier(supplier_code,supplier_code2,supplier_name,address,Telp, npwp,header_code,account_code,header_code_um,account_code_um,created_at,created_by)values'+
                  '('+QuotedStr(Edno.Text)+','+QuotedStr(Edkd.Text)+','+QuotedStr(EdNm.Text)+','+QuotedStr(EdAlamat.Text)+','+
                  ''+QuotedStr(EdTelp.Text)+','+QuotedStr(EdNPWP.Text)+',:header_code,:account_code,:header_code_um,:account_code_um,:created_at,:created_by )';
                  //''+QuotedStr(EdTelp.Text)+','+QuotedStr(EdNPWP.Text)+',now(),''Admin'' )';
                  //:created_at,:created_by';
                  parambyname('header_code').AsString:=KodeHeaderPerkiraan;
                  parambyname('account_code').AsString:=edKodePerkiraan.Text;
                  parambyname('header_code_um').AsString:=KodeHeaderPerkiraan_um;
                  parambyname('account_code_um').AsString:=edKodePerkiraan_um.Text;
                  parambyname('created_at').AsString:=Formatdatetime('yyy-mm-dd',Now());
                  parambyname('created_by').AsString:='Admin';
        ExecSQL;
      end;

      MemMaterial.First;
      while not MemMaterial.eof do
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:='insert into warehouse.t_item_stock(item_stock_code,item_code,supplier_code,qty,unit,order_no,item_name,created_by)'+
                    ' values(:item_stock,:item_code,:supplier_code,:qty,:unit,:order_no,:item_name,:cr_by)';
                    ParamByName('item_stock').AsString:=MemMaterial['kode'];
                    ParamByName('item_code').AsString:=MemMaterial['kd_material'];
                    ParamByName('supplier_code').AsString:=Edno.Text;
                    ParamByName('qty').AsString:=MemMaterial['qty'];
                    ParamByName('unit').AsString:=MemMaterial['satuan'];
                    ParamByName('item_name').AsString:=MemMaterial['nm_material'];
                    ParamByName('cr_by').AsString:=nm;
          ExecSQL;
        end;
          MemMaterial.Next;
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
    FMainMenu.TampilTabForm2;
    //FListSupplier.dxbarRefreshClick(sender);
    BBatalClick(sender);
end;

procedure TFNew_Supplier.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //FListSupplier.Refresh;
end;

procedure TFNew_Supplier.FormCreate(Sender: TObject);
begin
  RealFNew_Supplier:=self;
end;

procedure TFNew_Supplier.FormDestroy(Sender: TObject);
begin
   RealFNew_Supplier:=nil;
end;

procedure TFNew_Supplier.FormShow(Sender: TObject);
begin
    Clear;
    //Edno.SetFocus;
    BSimpan.Visible:=True;
    BEdit.Visible:=False;
    PG_Supplier.ActivePage:=Tabsheet1;
end;

end.
