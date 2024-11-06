unit UNew_PO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, RzButton, RzBtnEdt, RzEdit, RzCmboBx, Vcl.Mask, Vcl.ExtCtrls,
  MemTableDataEh, Data.DB, MemTableEh, MemDS, DBAccess, Uni, Vcl.ComCtrls;

type
  TFNew_PO = class(TForm)
    pninput: TPanel;
    Label1: TLabel;
    qty: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label15: TLabel;
    Label20: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    EdKd_supp: TEdit;
    DtPO: TRzDateTimeEdit;
    EdNo: TEdit;
    DtBln: TRzDateTimeEdit;
    DtTh: TRzDateTimeEdit;
    Edno_kontrak: TRzComboBox;
    EdNopo: TRzEdit;
    EdCurr: TRzComboBox;
    EdStatus: TComboBox;
    EdJenisAngkut: TRzComboBox;
    Edjenispo: TRzComboBox;
    Edjatuh_tempo: TRzEdit;
    EdNm_supp: TRzButtonEdit;
    DtDelivery: TRzDateTimeEdit;
    RzBitBtn1: TRzBitBtn;
    DtDelivery2: TRzDateTimeEdit;
    cb_gudang: TComboBox;
    Panel2: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    EdPPn: TEdit;
    EdPPh23: TEdit;
    EdSubtotal: TRzEdit;
    Edpph: TRzEdit;
    Edppn2: TRzEdit;
    EdGrandtotal: TRzEdit;
    EdKet: TMemo;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    Nopo: TEdit;
    DateTimePicker1: TDateTimePicker;
    Edurut: TEdit;
    Edbln: TEdit;
    Edth: TEdit;
    Button1: TButton;
    Edhari: TEdit;
    Cb_Code: TComboBox;
    Edsbu: TComboBox;
    Label36: TLabel;
    Label37: TLabel;
    Panel3: TPanel;
    DBGridDetail: TDBGridEh;
    Dthari: TRzDateTimeEdit;
    DsGudang: TDataSource;
    QGudang: TUniQuery;
    DsItempo: TDataSource;
    MemItempo: TMemTableEh;
    ckAs: TCheckBox;
    CkUangmk: TCheckBox;
    Ednm_akun: TRzButtonEdit;
    Edkd_akun: TRzEdit;
    Label38: TLabel;
    EdUM: TRzNumericEdit;
    Label39: TLabel;
    NoTransUM: TRzComboBox;
    Label40: TLabel;
    Label41: TLabel;
    Cb_bon: TRzComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Ed_kd_wh: TEdit;
    Ed_category: TEdit;
    Ednilai_curr: TRzEdit;
    CbKategori: TComboBox;
    Label42: TLabel;
    MemItempokd_material: TStringField;
    MemItempoKd_Material_stok: TStringField;
    MemItempoNm_material: TStringField;
    MemItemposatuan: TStringField;
    MemItempoQty: TFloatField;
    MemItempoharga: TCurrencyField;
    MemItempogudang: TStringField;
    MemItempoqtyperkonversi: TFloatField;
    MemItempoqtykonversi: TFloatField;
    MemItemposatuankonversi: TStringField;
    MemItempototalbayar: TFloatField;
    MemItemposisabayar: TFloatField;
    MemItemposisaqty: TFloatField;
    MemItempoqtyterkirim: TFloatField;
    MemItempoqtykontrak: TFloatField;
    MemItempoppn: TFloatField;
    MemItempoppn_rp: TFloatField;
    MemItempopph: TFloatField;
    MemItempopph_rp: TFloatField;
    MemItemposubtotal: TCurrencyField;
    MemItempograndtotal: TCurrencyField;
    MemItemposubtotal_rp: TFloatField;
    MemItempoharga_rp: TFloatField;
    MemItempograndtotalrp: TFloatField;
    MemItempoppn_us: TCurrencyField;
    MemItempopemb_ppn: TFloatField;
    MemItempopemb_ppn_us: TFloatField;
    MemItempopemb_dpp: TCurrencyField;
    MemItempokd_gudang: TStringField;
    procedure BSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdNm_suppButtonClick(Sender: TObject);
    procedure DBGridDetailColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DtPOChange(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure Edjatuh_tempoChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EdNm_suppChange(Sender: TObject);
    procedure EdStatusSelect(Sender: TObject);
    procedure Edno_kontrakSelect(Sender: TObject);
    procedure EdCurrChange(Sender: TObject);
    procedure DBGridDetailColumns1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridDetailCellClick(Column: TColumnEh);
    procedure DBGridDetailColEnter(Sender: TObject);
    procedure DBGridDetailKeyPress(Sender: TObject; var Key: Char);
    procedure Edjatuh_tempoKeyPress(Sender: TObject; var Key: Char);
    procedure EdPPh23Change(Sender: TObject);
    procedure ckAsClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure CkUangmkClick(Sender: TObject);
    procedure EdKd_suppChange(Sender: TObject);
    procedure NoTransUMSelect(Sender: TObject);
    procedure Edkd_akunChange(Sender: TObject);
    procedure EdNopoChange(Sender: TObject);
    procedure cb_gudangSelect(Sender: TObject);
    procedure Ed_kd_whChange(Sender: TObject);
    procedure EdsbuSelect(Sender: TObject);
    procedure EdGrandtotalChange(Sender: TObject);
    procedure MemItempopphChange(Sender: TField);

  private
    { Private declarations }
     procedure Clear;
  public
    { Public declarations }
     kdsbu, jenispo,kategori_tr:string;
     function AmbilDanUpdateNomorUrut: Integer;
     Procedure Loaditem;
     Procedure Loaditem2;
     Procedure Loaditem3;
     Procedure Loaditem4;
     Procedure Autonumber;
     Procedure Simpan;
     Procedure Simpan2;
     Procedure Update;
     Procedure Update2;
     Procedure Totalpo;
     Procedure Hitungdet;
     procedure load_um;
     procedure load_akun;
     procedure load_no_bon;
     procedure load_no_kontrak;
     procedure load_currency;
     procedure load_ref_po;
     procedure load_category;
  end;

//function FNew_PO: TFNew_PO;

var
  FNew_PO: TFNew_PO;
  Status,kd_gd,kdsb,nopo,status_um,status_as,No_Um,ref_code:string;
  subtotal,ppn,pph,grandtotal:Real;
  StatusTr,Statustr2:integer;
implementation

{$R *.dfm}

uses UDataModule, UNew_Penomoran,UPO, USearch_Supplier, UListItempo,
  UMainMenu,UMy_Function;

{var
  realFNew_PO: TFNew_PO;
// implementasi function
function FNew_PO: TFNew_PO;
begin
  if RealFNew_PO <> nil then
    FNew_PO:= RealFNew_PO
  else
    Application.CreateForm(TFNew_PO, Result);
end;}

Procedure TFNew_Po.load_category;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='SELECT * FROM t_item_type';
        ExecSQL;
      end;
      Dm.Qtemp.First;
      CbKategori.Items.Clear;
      while not dm.Qtemp.Eof do
      begin
         CbKategori.Items.Add(Dm.Qtemp.FieldByName('type').AsString);
         Dm.Qtemp.Next;
      end;
end;

Procedure TFNew_Po.load_ref_po;
begin
    with Dm.Qtemp do
    begin
      close;
      sql.Text:='SELECT * from purchase.t_ref_po where status=''true'' ';
      Open;
    end;
    Dm.Qtemp.First;
    Edstatus.Items.Clear;
    while not dm.Qtemp.Eof do
    begin
      Edstatus.Items.Add(Dm.Qtemp.FieldByName('ref_name').AsString);
      Dm.Qtemp.Next;
    end;
end;

Procedure TFNew_Po.load_currency;
begin
    with Dm.Qtemp do
    begin
      close;
      sql.Text:='SELECT * from t_currency where status=''true'' ';
      Open;
    end;
    Dm.Qtemp.First;
    EdCurr.Items.Clear;
    while not dm.Qtemp.Eof do
    begin
      EdCurr.Items.Add(Dm.Qtemp.FieldByName('currency_code').AsString);
      Dm.Qtemp.Next;
    end;
end;

Procedure TFNew_Po.Totalpo;
var Ppn1,pph1:Real;
begin
  Ppn1:= StrToInt(EdPPn.TEXT);
  EdSubtotal.Text:=DBGridDetail.Columns[6].Footer.sumvalue;
  Subtotal:=DBGridDetail.Columns[6].Footer.sumvalue;
  PPN:=subtotal/100 * ppn1;
  EdPPN2.Text:=FloatToStr(ppn);
  PPH:=(SubTOTAL)/100*(STRTOFLOAT(EDpph23.TEXT));
  Edpph.Text:=FloatToStr(pph);
  EdGrandTotal.Text:=FLOATTOSTR(subtotal-pph+ppn);
  GrandTotal:=subtotal-pph+ppn;
end;

Procedure TFNew_PO.load_no_bon;
begin
   with dm.Qtemp do
   begin
      close;
      sql.Clear;
      sql.Text:='select distinct trans_no from warehouse.t_item_request ';
      open;
   end;
   //cb_bon.Items.Clear;
   Edno_kontrak.Items.Clear;
   dm.Qtemp.First;
   while not dm.Qtemp.Eof do
   begin
     //cb_bon.Items.Add(dm.Qtemp['trans_no']);
     Edno_kontrak.Items.Add(dm.Qtemp['trans_no']);
     dm.Qtemp.Next;
   end;
end;

Procedure TFNew_PO.load_akun;
begin
   with dm.Qtemp2 do
   begin
     close;
     sql.Clear;
     sql.Text:=' SELECT * FROM t_ak_account where code='+Quotedstr(Edkd_akun.Text);
     open;
   end;
   Ednm_akun.Text:=dm.Qtemp2.FieldByName('account_name').AsString;
end;

Procedure TFNew_PO.load_um;
begin
   with dm.Qtemp do
   begin
      close;
      sql.Clear;
      sql.Text:='select * from purchase.t_advance_payment where supplier_code='+Quotedstr(EdKd_supp.Text)+' and po_no=''''';
               // ' and po_no isnull ';
                //' and po_no not in (select po_no from purchase.t_po)';
      Open;
   end;
   NoTransUM.Items.Clear;
   dm.Qtemp.First;
   while not dm.Qtemp.Eof do
   begin
     NoTransUM.Items.Add(dm.Qtemp['no_trans']);
     dm.Qtemp.Next;
   end;
end;

procedure TFNew_PO.MemItempopphChange(Sender: TField);
begin
    if MemItempo.Fields[17].Value=0 then
    begin
       MemItempo.Fields[18].Value:=0;
    end;
    //else
       //Hitungdet;
end;

procedure TFNew_PO.NoTransUMSelect(Sender: TObject);
begin
   with dm.Qtemp1 do
   begin
     close;
     sql.Clear;
     sql.Text:=' select * from purchase.t_advance_payment where no_trans='+Quotedstr(NoTransUM.Text);
     open;
   end;
   EdUM.Text:=dm.Qtemp1.FieldByName('um_value').AsString;
   Edkd_akun.Text:=dm.Qtemp1.FieldByName('um_account_code').AsString;

end;

Procedure TFNew_PO.Hitungdet;
begin
    try
      if EdStatus.Text='KONTRAK KERJASAMA' then
      BEGIN
        if EdCurr.Text='USD' then
        begin
          QGudang.Close;
          if QGudang.Active=false then QGudang.Active:=True;
          MemItempo.Edit;
          MemItempo['pph']:=0;
          MemItempo['Subtotal']:=MemItempo['Harga']*MemItempo['qty'];
          MemItempo['Subtotal_rp']:=MemItempo['subtotal']*StrToFloat(Ednilai_curr.Text);
          MemItempo['pemb_dpp']:='0';
          MemItempo['ppn_us']:=(MemItempo['subtotal']/100)*MemItempo['ppn'];
          MemItempo['grandtotal']:=MemItempo['subtotal']+(MemItempo['ppn_us']+MemItempo['pemb_ppn_us']);
          MemItempo['sisaqty']:=MemItempo['qty'];
          MemItempo['sisabayar']:=MemItempo['subtotal']+(MemItempo['ppn_rp']+MemItempo['pemb_ppn_us']);
          MemItempo['totalbayar']:='0';
          MemItempo['qtyterkirim']:='0';
          MemItempo.Post;
          Self.Totalpo;

        end;
        if EdCurr.Text<>'USD' then
        begin
          QGudang.Close;
          if QGudang.Active=false then QGudang.Active:=True;
          MemItempo.Edit;
          MemItempo['Subtotal_rp']:=MemItempo['harga_rp']*MemItempo['qty'];
          MemItempo['ppn_rp']:=int((MemItempo['subtotal_rp']/100)*MemItempo['ppn']);
          if MemItempo['pph']<>0 then
          BEGIN
            MemItempo['pph_rp']:=(MemItempo['subtotal_rp']/100)*MemItempo['pph'];
          END;
          MemItempo['grandtotalrp']:=MemItempo['subtotal_rp']+MemItempo['pemb_dpp']+(MemItempo['ppn_rp']+MemItempo['pemb_ppn']);//-MemItempo['pph_rp'];
          //MemItempo['grandtotalrp']:=MemItempo['subtotal_rp']+MemItempo['pemb_dpp']+(MemItempo['ppn_rp']+MemItempo['pemb_ppn'])-MemItempo['pph_rp'];
          MemItempo['sisaqty']:=MemItempo['qty'];
          MemItempo['sisabayar']:=MemItempo['subtotal_rp']+MemItempo['pemb_dpp']+(MemItempo['ppn_rp']+MemItempo['pemb_ppn']);//-MemItempo['pph_rp'];
          //MemItempo['sisabayar']:=MemItempo['subtotal_rp']+MemItempo['pemb_dpp']+(MemItempo['ppn_rp']+MemItempo['pemb_ppn'])-MemItempo['pph_rp'];
          MemItempo['totalbayar']:='0';
          MemItempo['qtyterkirim']:='0';
          MemItempo.Post;
          Self.Totalpo;

        end;
    END;
    if EdStatus.Text<>'KONTRAK KERJASAMA' then
    BEGIN
      if EdCurr.Text='USD' then
      begin
        QGudang.Close;
        if QGudang.Active=false then QGudang.Active:=True;
        MemItempo.Edit;
        MemItempo['Subtotal']:=MemItempo['Harga']*MemItempo['qty'];
        MemItempo['Subtotal_rp']:=MemItempo['subtotal']*StrToFloat(Ednilai_curr.Text);
        MemItempo['ppn_us']:=(MemItempo['subtotal']/100)*MemItempo['ppn'];
        MemItempo['grandtotal']:=MemItempo['subtotal']+(MemItempo['ppn_us']+MemItempo['pemb_ppn_us']);
        MemItempo['sisaqty']:=MemItempo['qty'];
        MemItempo['sisabayar']:=MemItempo['subtotal']+(MemItempo['ppn_rp']+MemItempo['pemb_ppn_us']);
        MemItempo['totalbayar']:='0';
        MemItempo['qtyterkirim']:='0';
        MemItempo['pemb_dpp']:='0';
        MemItempo.Post;
        Self.Totalpo;
      end;
      if EdCurr.Text<>'USD' then
      begin
        QGudang.Close;
        if QGudang.Active=false then QGudang.Active:=True;
        MemItempo.Edit;
        MemItempo['Subtotal_rp']:=MemItempo['harga_rp']*MemItempo['qty'];
        MemItempo['ppn_rp']:=int((MemItempo['subtotal_rp']/100)*MemItempo['ppn']);
        if MemItempo['pph']<>0 then
        BEGIN
          MemItempo['pph_rp']:=(MemItempo['subtotal_rp']/100)*MemItempo['pph'];
        END;
        MemItempo['grandtotalrp']:=MemItempo['subtotal_rp']+MemItempo['pemb_dpp']+(MemItempo['ppn_rp']+MemItempo['pemb_ppn'])-MemItempo['pph_rp'];
        MemItempo['sisaqty']:=MemItempo['qty'];
        MemItempo['sisabayar']:=MemItempo['subtotal_rp']+MemItempo['pemb_dpp']+(MemItempo['ppn_rp']+MemItempo['pemb_ppn'])-MemItempo['pph_rp'];
        MemItempo['totalbayar']:='0';
        MemItempo['qtyterkirim']:='0';
        MemItempo.Post;
        Self.Totalpo;
      end;
    END;
    Except;
    end;
end;


procedure TFNew_PO.Autonumber;
begin
  idmenu:='M11002';
  strday2:=Dtpo.Date;
  //Nopo.Text:=getNourutBlnPrshthn_kode(strday2,'purchase.t_po','');
  EdNopo.Text:=getNourutBlnPrshthn_kode(strday2,'purchase.t_po',Cb_code.text);
  Edurut.Text:=order_no;
end;


function TFNew_PO.AmbilDanUpdateNomorUrut: Integer;
var
  Query: TUniQuery;
  CurrentMonth, CurrentYear, MaxNomorUrut: Integer;
  year, month, day: Word;
  SelectedDate: TDateTime;
begin
    DecodeDate(SelectedDate, Year, Month, day);
    Query.Connection := dm.koneksi;
    Query := TUniQuery.Create(nil);
  try
    CurrentMonth := month;
    CurrentYear  := Year;

    Query := TUniQuery.Create(nil);
    try
      Query.SQL.Text := 'SELECT MAX(No_Urut) FROM purchase.t_po ' +
                        'WHERE Bulan = :bulan AND Tahun = :tahun';
      Query.ParamByName('bulan').AsInteger := CurrentMonth;
      Query.ParamByName('tahun').AsInteger := CurrentYear;
      Query.ExecSQL;

      MaxNomorUrut := Query.Fields[0].AsInteger;

      // Jika bulan berbeda, reset nomor urut
      if (not Query.Eof) and (MaxNomorUrut > 0) then
        MaxNomorUrut := 0;

      // Tambahkan 1 ke nomor urut dan simpan dalam tabel
      MaxNomorUrut := MaxNomorUrut + 1;

      Query.SQL.Text := 'INSERT INTO purchase.t_po (No_Urut, Bulan, Tahun) ' +
                        'VALUES (:nourut, :bulan, :tahun)';
      Query.ParamByName('nourut').AsInteger := MaxNomorUrut;
      Query.ParamByName('bulan').AsInteger := CurrentMonth;
      Query.ParamByName('tahun').AsInteger := CurrentYear;
      Query.ExecSQL;
    finally
      Query.Free;
    end;
  finally
    Query.Free;
  end;

  Result := MaxNomorUrut;
end;

procedure TFNew_PO.Loaditem3;
begin
    with dm.QTemp3 do
    begin
      {close;
      sql.Clear;
      sql.Text:='SELECT a.trans_no,a.item_code,b.item_name,a.qty,a.unit,a.note from warehouse.t_item_request_det a '+
                'LEFT JOIN t_item b on a.item_code=b.item_code '+
                'LEFT JOIN warehouse.t_item_stock c on b.item_code=c.item_code '+
                'WHERE trans_no='+Quotedstr(Cb_bon.Text)+'  '+
                'GROUP BY a.trans_no,a.item_code,a.qty,a.unit,a.note,b.item_name ';
      Open;}
      close;
      sql.Clear;
      sql.Text:='SELECT a.trans_no,a.item_code,b.item_name,a.qty,a.unit,a.note from warehouse.t_item_request_det a '+
                'LEFT JOIN t_item b on a.item_code=b.item_code '+
                'WHERE trans_no='+Quotedstr(Cb_bon.Text)+'  '+
                'GROUP BY a.trans_no,a.item_code,a.qty,a.unit,a.note,b.item_name ';
      Open;
    end;
    Dm.QTemp3.First;
    while not dm.QTemp3.Eof do
    begin
       //FNew_itempo.EdKd_material.Items.Add(Dm.Qtemp2.FieldByName('kd_material').AsString);
       Dm.QTemp3.Next;
    end;
    with Flistitempo.QMaterial3 do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT a.trans_no,a.item_code,b.item_name,a.qty,a.unit,a.note from warehouse.t_item_request_det a '+
                'LEFT JOIN t_item b on a.item_code=b.item_code '+
                'WHERE trans_no='+Quotedstr(Cb_bon.Text)+' '+
                'GROUP BY a.trans_no,a.item_code,a.qty,a.unit,a.note,b.item_name';
      ExecSQL;

      {close;
      sql.Clear;
      sql.Text:='SELECT a.trans_no,a.item_code,b.item_name,a.qty,a.unit,a.note,c.supplier_code from warehouse.t_item_request_det a '+
                'LEFT JOIN t_item b on a.item_code=b.item_code '+
                'LEFT JOIN warehouse.t_item_stock c on b.item_code=c.item_code '+
                'WHERE trans_no='+Quotedstr(Cb_bon.Text)+' and c.supplier_code='+Quotedstr(EdKd_supp.Text)+' '+
                'GROUP BY a.trans_no,a.item_code,a.qty,a.unit,a.note,b.item_name,c.supplier_code';
      ExecSQL;}
    end;
    Flistitempo.QMaterial3.Open;
    Flistitempo.DBGridMaterial3.Show;
    Flistitempo.DBGridMaterial.Hide;
    Flistitempo.DBGridMaterial2.Hide;
    Flistitempo.Bedit2.Visible:=false;
    Flistitempo.BEdit.Visible:=False;
    Flistitempo.BEdit3.Visible:=true;
    Flistitempo.BEdit3.Visible:=false;
end;

procedure TFNew_PO.Loaditem4;
begin
    with dm.QTemp1 do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT a.trans_no,a.item_code,b.item_name,a.qty,a.unit,a.note from warehouse.t_item_request_det a '+
                'LEFT JOIN t_item b on a.item_code=b.item_code '+
                'LEFT JOIN warehouse.t_item_stock c on b.item_code=c.item_code '+
                'WHERE trans_no='+Quotedstr(Cb_bon.Text)+'  '+
                'GROUP BY a.trans_no,a.item_code,a.qty,a.unit,a.note,b.item_name ';
      Open;
    end;
    Dm.QTemp1.First;
    while not dm.QTemp1.Eof do
    begin
       Dm.QTemp1.Next;
    end;
    with Flistitempo.QMaterial4 do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT a.trans_no,a.item_code,b.item_name,a.qty,a.unit,a.note,c.supplier_code from warehouse.t_item_request_det a '+
                'LEFT JOIN t_item b on a.item_code=b.item_code '+
                'LEFT JOIN warehouse.t_item_stock c on b.item_code=c.item_code '+
                'WHERE trans_no='+Quotedstr(Cb_bon.Text)+' and c.supplier_code='+Quotedstr(EdKd_supp.Text)+' '+
                'GROUP BY a.trans_no,a.item_code,a.qty,a.unit,a.note,b.item_name,c.supplier_code';
      ExecSQL;
    end;
    Flistitempo.QMaterial4.Open;
    Flistitempo.DBGridMaterial4.Show;
    Flistitempo.DBGridMaterial.Hide;
    Flistitempo.DBGridMaterial2.Hide;
    Flistitempo.DBGridMaterial3.Hide;
    Flistitempo.Bedit2.Visible:=false;
    Flistitempo.BEdit.Visible:=False;
    Flistitempo.BEdit3.Visible:=False;
    Flistitempo.BEdit4.Visible:=true;
end;

procedure TFNew_PO.Loaditem;
begin
    with dm.QTemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from purchase.t_coop_contract_det where contract_no='+QuotedStr(Edno_kontrak.Text);
      ExecSQL;
    end;
    Dm.QTemp2.First;
    while not dm.QTemp2.Eof do
    begin
      // FNew_itempo.EdKd_material.Items.Add(Dm.Qtemp2.FieldByName('kd_material_stok').AsString);
       Dm.QTemp2.Next;
    end;
    with Flistitempo.QMaterial_stok do
    begin
      close;
      sql.Clear;
      sql.Text:=' SELECT a.contract_no,a.item_stock_code,a.qty,a.price,a.unit,a.total_price,'+
                ' a.remaining_qty,a.totalpo,b.item_code,b.item_name,a.ppn,a.ppn_rp,a.pemb_ppn,a.pemb_dpp,a.pph,a.pph_rp,a.subtotal_rp,a.grandtotal  FROM purchase.t_coop_contract_det AS "a" '+
                ' INNER JOIN warehouse.t_item_stock AS b ON a.item_stock_code = b.item_stock_code '+
                ' where a.remaining_qty>0 and A.contract_no='+QuotedStr(Edno_kontrak.Text)+''+
                ' GROUP BY a.contract_no,a.item_stock_code,a.qty,a.price,a.unit, '+
                ' a.total_price, a.remaining_qty,a.totalpo,b.item_code,b.item_name,a.ppn,ppn_rp,a.pemb_ppn,a.pemb_dpp,a.pph,a.pph_rp,a.subtotal_rp,a.grandtotal '+
                ' ORDER BY item_stock_code DESC ';
      ExecSQL;
    end;
    Flistitempo.QMaterial_stok.Open;
    Flistitempo.DBGridMaterial.Show;
    Flistitempo.DBGridMaterial2.Hide;
    Flistitempo.Bedit.Visible:=true;
    Flistitempo.BEdit2.Visible:=False;
    Flistitempo.BEdit3.Visible:=False;
    Flistitempo.BEdit4.Visible:=False;
    Flistitempo.DBGridMaterial.Visible:=true;
    flistitempo.DBGridMaterial2.Visible:=false;
    Flistitempo.DBGridMaterial3.Visible:=false;
    flistitempo.DBGridMaterial4.Visible:=false;
end;

procedure TFNew_PO.Loaditem2;
begin
    with dm.QTemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_item';
      ExecSQL;
    end;
    Dm.QTemp2.First;
    while not dm.QTemp2.Eof do
    begin
       //FNew_itempo.EdKd_material.Items.Add(Dm.Qtemp2.FieldByName('kd_material').AsString);
       Dm.QTemp2.Next;
    end;
    with Flistitempo.QMaterial_stok2 do
    begin
      close;
      sql.Clear;
      sql.Text:=' select A.*,B.supplier_name ,e."type", C.item_name from warehouse.t_item_stock A  '+
                ' left join t_supplier B on A.supplier_code=B.supplier_code  '+
                ' inner join t_item C on A.item_code=C.item_code  '+
                ' INNER JOIN t_item_category d on c.category_id=d.category_id '+
                ' INNER JOIN t_item_type e on d.type_id=e.type_id '+
                ' where A.supplier_code='+QuotedStr(EdKd_supp.Text);
                //' and e.type <>''PRODUKSI''';
      ExecSQL;
    end;
    Flistitempo.QMaterial_stok2.Open;
    if Flistitempo.Qmaterial_stok2.RecordCount<>0 then
    begin
    with Flistitempo.QMaterial_stok2 do
    begin
      close;
      sql.Clear;
      sql.Text:=' select a.item_code,a.supplier_code, a.item_stock_code,a.order_no, '+
                '	a.qty,a.unit, a.merk,a.item_name,	f.qty_conv, '+
                //' f.unit_conv,b.supplier_name , c.item_name,e.type '+
                ' b.supplier_name , c.item_name,e.type '+
                ' from warehouse.t_item_stock A  '+
                ' left join t_supplier B on A.supplier_code=B.supplier_code  '+
                ' inner join t_item C on A.item_code=C.item_code  '+
                ' INNER JOIN t_item_category d on c.category_id=d.category_id '+
                ' INNER JOIN t_item_type e on d.type_id=e.type_id '+
                ' left join t_item_conversion f on c.item_code=f.item_code '+
                ' where A.supplier_code='+QuotedStr(EdKd_supp.Text)+'and e.type<>''PRODUKSI'''+
                ' group by a.item_code,a.supplier_code, a.item_stock_code,a.order_no, '+
                '	a.qty,a.unit,a.merk,a.item_name,f.qty_conv, '+
                //' f.unit_conv,b.supplier_name, c.item_name,e.type';
                ' b.supplier_name, c.item_name,e.type';
      ExecSQL;
    end;
    Flistitempo.QMaterial_stok2.Open;
    end else
    with Flistitempo.QMaterial_stok2 do
    begin
      close;
      sql.Clear;
      sql.Text:=' select A.*,B.supplier_name , C.item_name,e.type from warehouse.t_item_stock A  '+
                ' left join t_supplier B on A.supplier_code=B.supplier_code  '+
                ' inner join t_item C on A.item_code=C.item_code  '+
                ' INNER JOIN t_item_category d on c.category_id=d.category_id '+
                ' INNER JOIN t_item_type e on d.type_id=e.type_id '+
                //' where e.type <>''PRODUKSI'' and b.supplier_name is Null';
                ' where b.supplier_name is not Null';
      ExecSQL;
    end;
    Flistitempo.QMaterial_stok2.Open;
    Flistitempo.DBGridMaterial2.Show;
    Flistitempo.DBGridMaterial.Hide;    
    Flistitempo.DBGridMaterial3.HIDE;
    Flistitempo.DBGridMaterial4.Hide;
    Flistitempo.Bedit2.Visible:=true;
    Flistitempo.BEdit.Visible:=False;
    Flistitempo.BEdit3.Visible:=False;
    Flistitempo.BEdit4.Visible:=False;
end;

procedure TFNew_PO.CkUangmkClick(Sender: TObject);
begin
    if CkUangmk.Checked=True then
    begin
      Status_um:='1';
      NoTransUM.visible:=true;
      NoTransUM.ReadOnly:=false;
      Ednm_akun.visible:=true;
      EdUM.visible:=true;
      Edkd_akun.visible:=true;
      Label38.Visible:=true;
    end
     else
    if CkUangmk.Checked=False then
    begin
      status_um:='0';
      NoTransUM.visible:=false;
      Ednm_akun.visible:=false;
      Edkd_akun.Visible:=false;
      Label38.Visible:=false;
      EdUM.visible:=false;
    end;
end;

procedure TFNew_PO.Clear;
begin
  EdNo.Text:='';
  EdKd_supp.Text:='';
  EdNm_supp.Text:='';
  EdStatus.Text:='';
  EdPPh23.Text:='10';
  EdPPn.Text:='10';
  EdKet.Text:='';
  EdCurr.Text:='';
  Edjenispo.Text:='';
  DtPO.Date:=Now;
  DtDelivery.Date:=Now;
  DtDelivery2.Date:=Now;
  EdJenisAngkut.Text:='';
  Edjatuh_tempo.Text:='0';
  NoTransUM.Text:='';
  EdUM.Text:='0';
  Edkd_akun.Text:='';
  Ednm_akun.Text:='';
  MemItempo.EmptyTable;
  EdNopo.Text:='';
  Cb_bon.Text:='';
  CbKategori.Text:='';
  status_um:='0';
  NoTransUM.visible:=false;
  Ednm_akun.visible:=false;
  Edkd_akun.Visible:=false;
  Label38.Visible:=false;
  EdUM.visible:=false;
end;

procedure TFNew_PO.DBGridDetailCellClick(Column: TColumnEh);
begin
  Hitungdet;
end;

procedure TFNew_PO.DBGridDetailColEnter(Sender: TObject);
begin
   Hitungdet;
end;

procedure TFNew_PO.DBGridDetailColumns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  Flistitempo.Show;
  //if EdStatus.Text='KONTRAK KERJASAMA' then
  if ref_code='KK' then
  begin
    Self.Loaditem
  end;
  if ref_code='NR' then
  begin
    Self.Loaditem2;
  end;
end;

procedure TFNew_PO.DBGridDetailColumns1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
    Flistitempo.Show;
    if EdStatus.Text='KONTRAK KERJASAMA' then
    begin
      Self.Loaditem;
      Flistitempo.DBGridMaterial.Visible:=true;
      Flistitempo.DBGridMaterial2.Visible:=false;
      Flistitempo.DBGridMaterial3.Visible:=false;
      Flistitempo.DBGridMaterial4.Visible:=false;
    end
    else
    if EdStatus.Text='NON REFERENSI' then
    begin
      Self.Loaditem2;
      Flistitempo.DBGridMaterial.Visible:=false;
      Flistitempo.DBGridMaterial2.Visible:=true;
      Flistitempo.DBGridMaterial3.Visible:=false;
      Flistitempo.DBGridMaterial4.Visible:=false;
    end
    else
    if EdStatus.Text='BON PERMINTAAN BARANG'  then
    //if (EdStatus.Text='BON PERMINTAAN BARANG') and (Length(Edkd_supp.Text)=0) then
    begin
       Self.Loaditem3;
       Flistitempo.DBGridMaterial.Visible:=false;
       Flistitempo.DBGridMaterial2.Visible:=false;
       Flistitempo.DBGridMaterial3.Visible:=true;
       Flistitempo.DBGridMaterial4.Visible:=false;
    end;
    {else
    if (EdStatus.Text='BON PERMINTAAN BARANG') and (Length(Edkd_supp.Text)<>0) then
    begin
       Self.Loaditem4;
       Flistitempo.DBGridMaterial.Visible:=false;
       Flistitempo.DBGridMaterial2.Visible:=false;
       Flistitempo.DBGridMaterial3.Visible:=false;
       Flistitempo.DBGridMaterial4.Visible:=true;
    end;}
end;

procedure TFNew_PO.DBGridDetailKeyPress(Sender: TObject; var Key: Char);
begin
  if Key =#27 then Close;
     Key := UpCase(Key);
end;

procedure TFNew_PO.DtPOChange(Sender: TObject);
var
    SelectedDate: TRzDateTimeEdit;
    year, month, day: word;
begin
   with dm.Qtemp2 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DtPO.Date))+' :: DATE, ''dd'') hari ';
     Open;
   end;
   Edhari.Text:=dm.Qtemp2.FieldByName('hari').AsString;

   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DtPO.Date))+' :: DATE, ''yyyy'') tahun ';
     Open;
   end;
   Edth.Text:=dm.Qtemp.FieldByName('tahun').AsString;

   with dm.Qtemp1 do
   begin
     close;
     sql.Clear;
     sql.Text:='Select TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',DtPO.Date))+' :: DATE, ''mm'') bulan ';
     Open;
   end;
   Edbln.Text:=dm.Qtemp1.FieldByName('bulan').AsString;

end;

procedure TFNew_PO.EdCurrChange(Sender: TObject);
begin
    if EdCurr.Text='USD' then
    begin
      Ednilai_curr.Visible:=True;
    end
    else
      Ednilai_curr.Visible:=False;

    if EdCurr.Text='IDR' then
    begin
      DBGridDetail.Columns[5].Visible:=false;
      DBGridDetail.Columns[6].Visible:=false;
      DBGridDetail.Columns[7].Visible:=false;
      DBGridDetail.Columns[8].Visible:=false;
      DBGridDetail.Columns[9].Visible:=false;
      DBGridDetail.Columns[10].Visible:=False;
      DBGridDetail.Columns[11].Visible:=True;
      DBGridDetail.Columns[12].Visible:=True;
      DBGridDetail.Columns[13].Visible:=True;
      DBGridDetail.Columns[14].Visible:=True;
      DBGridDetail.Columns[15].Visible:=True;
      DBGridDetail.Columns[16].Visible:=True;
      DBGridDetail.Columns[17].Visible:=True;
    end;
    if EdCurr.Text<>'IDR' then
    begin
      DBGridDetail.Columns[5].Visible:=True;
      DBGridDetail.Columns[6].Visible:=True;
      DBGridDetail.Columns[7].Visible:=True;
      DBGridDetail.Columns[8].Visible:=True;
      DBGridDetail.Columns[9].Visible:=True;
      DBGridDetail.Columns[10].Visible:=True;
      DBGridDetail.Columns[11].Visible:=False;
      DBGridDetail.Columns[12].Visible:=False;
      DBGridDetail.Columns[13].Visible:=False;
      DBGridDetail.Columns[14].Visible:=False;
      DBGridDetail.Columns[15].Visible:=False;
      DBGridDetail.Columns[16].Visible:=False;
      DBGridDetail.Columns[17].Visible:=False;
    end;
end;

procedure TFNew_PO.EdGrandtotalChange(Sender: TObject);
begin
  //Ribuan(EdGrandtotal);
end;

procedure TFNew_PO.Edjatuh_tempoChange(Sender: TObject);
begin
    if Edjatuh_tempo.text='' then
       Edjatuh_tempo.text:='0';
end;

procedure TFNew_PO.Edjatuh_tempoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8,#13,#32]) then
  begin
    Key:=#0;
    ShowMessage('Inputan hanya angka saja');
  end;
end;

procedure TFNew_PO.Edkd_akunChange(Sender: TObject);
begin
  load_akun;
end;

procedure TFNew_PO.EdKd_suppChange(Sender: TObject);
begin
  load_um;
end;

procedure TFNew_PO.EdNm_suppButtonClick(Sender: TObject);
begin
    with FSearch_Supplier do
    begin
      Show;
      QSupplier.Close;
      QSupplier.Open;
    end;
end;

procedure TFNew_PO.EdNm_suppChange(Sender: TObject);
begin
    with Dm.Qtemp do
    begin
      close;
      sql.Text:='select * from t_supplier where supplier_name='+QuotedStr(EdNm_supp.Text);
      ExecSQL;
    end;
    EdKd_supp.Text:=Dm.Qtemp.FieldByName('supplier_code').AsString;
    Edno_kontrak.Clear;

    //if EdStatus.Text='KONTRAK KERJASAMA' then
    if ref_code='KK' then //ds 08-10-2024
    
    begin
        with dm.QTemp2 do
        begin
          close;
          sql.Clear;
          sql.Text:='select * from purchase.t_coop_contract where supplier_code='+QuotedStr(EdKd_supp.Text)+''+
                    ' and status = ''1'' AND "approval_status"=''1'' order by contract_date Desc';

          ExecSQL;
        end;
        Edno_kontrak.Clear;
        Dm.QTemp2.First;
        while not dm.QTemp2.Eof do
        begin
          Edno_kontrak.Items.Add(Dm.Qtemp2.FieldByName('contract_no').AsString);
          Dm.QTemp2.Next;
        end;
    end;
    //if EdStatus.Text='BON PERMINTAAN BARANG' then
    if ref_code='BPB' then //ds 08-10-2024//
    begin
        with dm.Qtemp do
        begin
            close;
            sql.Clear;
            sql.Text:='select distinct trans_no from warehouse.t_item_request ';
            open;
        end;
        Edno_kontrak.Items.Clear;
        dm.Qtemp.First;
        while not dm.Qtemp.Eof do
        begin
           Edno_kontrak.Items.Add(dm.Qtemp['trans_no']);
           dm.Qtemp.Next;
        end;
    end;

    {with Dm.Qtemp do
    begin
      close;
      sql.Text:='select * from t_supplier where supplier_name='+QuotedStr(EdNm_supp.Text);
      ExecSQL;
    end;
    EdKd_supp.Text:=Dm.Qtemp.FieldByName('supplier_code').AsString;
    Edno_kontrak.Clear;
    with dm.QTemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from purchase.t_coop_contract where supplier_code='+QuotedStr(EdKd_supp.Text)+''+
                ' and status = ''1'' AND "approval_status"=''1'' order by contract_date Desc';

      ExecSQL;
    end;
    if dm.QTemp2['contract_no']<>'' then
    begin
      Edno_kontrak.Text:='0';
    end
    else
    Dm.QTemp2.First;
    while not dm.QTemp2.Eof do
    begin
      Edno_kontrak.Items.Add(Dm.Qtemp2.FieldByName('contract_no').AsString);
      Dm.QTemp2.Next;
    end;}
end;

procedure TFNew_PO.EdNopoChange(Sender: TObject);
var
  status_um:boolean;
begin
   {with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='select * FROM purchase.t_po WHERE po_no='+QuotedStr(EdNopo.Text);
     Open;
   end;
   NoTransUM.Text:=dm.Qtemp.FieldByName('um_no').AsString;
   EdUM.Text:=dm.Qtemp.FieldByName('um_value').AsString;
   Edkd_akun.Text:=dm.Qtemp.FieldByName('um_account_code').AsString;
   status_um:=dm.Qtemp.FieldByName('um_status').AsBoolean;

   if status_um=true then
   begin
     CkUangmk.Checked:=true;
   end
   else
     CkUangmk.Checked:=false;}

end;

procedure TFNew_PO.Edno_kontrakSelect(Sender: TObject);
begin
    if EdStatus.Text='KONTRAK KERJASAMA' then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from purchase.t_coop_contract where contract_no='+QuotedStr(Edno_kontrak.Text);
        Execute;
      end;
      Edjatuh_tempo.Text:=dm.Qtemp['due_date'];
      EdCurr.Text:=Dm.Qtemp['currency'];
      Ednilai_curr.Text:=Dm.Qtemp['currency_value'];
      Edjenispo.Text:=Dm.Qtemp['type'];
      kategori_tr:=DM.Qtemp['category'];
      CbKategori.Text:=DM.Qtemp['category'];
      EdCurrChange(sender);
    end;
    if EdStatus.Text<>'KONTRAK KERJASAMA' then
    begin
      {with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT a."type",c.item_name,b.category FROM t_item_type a '+
                  'INNER JOIN t_item_category b on a.type_id=b.type_id '+
                  'INNER JOIN t_item c ON b.category_id=c.category_id ';
        Execute;
      end;}
      Edjatuh_tempo.Text:='0';
      EdCurr.Text:='IDR';
      Ednilai_curr.Text:='1';
      Edjenispo.Text:='LOKAL';
      //kategori_tr:='NON PRODUKSI';
      kategori_tr:=CbKategori.Text;
      CbKategori.Text:=DM.Qtemp['category'];
      EdCurrChange(sender);
    end;
end;

procedure TFNew_PO.EdPPh23Change(Sender: TObject);
begin
   Totalpo;
end;

procedure TFNew_PO.EdsbuSelect(Sender: TObject);
begin
    with Dm.Qtemp do
    begin
      close;
      sql.Text:='select * from t_sbu order by sbu_code Asc';
      ExecSQL;
    end;
end;

procedure TFNew_PO.EdStatusSelect(Sender: TObject);
begin
    DtPO.Enabled:=TRUE;
    DtPO.Date:=now;
    EdKd_supp.Text:='';
    EdNm_supp.Text:='';
    // created ds 08-10-2024
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='select * from "purchase".t_ref_po where ref_name='+QuotedStr(EdStatus.Text)+' order by id';
      ExecSQL;
    end;
      ref_code:=dm.Qtemp['ref_code'];
    //
    //if EdStatus.Text='NON REFERENSI' then
    if ref_code='NR' then         //DS 
    begin
      Edno_kontrak.ReadOnly:=True;
      FNew_PO.Edno_kontrak.Text:='0';
      Edjenispo.ReadOnly:=False;
      EdCurr.ReadOnly:=False;
      Edjatuh_tempo.Text:='0';
      EdCurr.Text:='IDR';
      Ednilai_curr.Text:='1';
      Edjenispo.Text:='LOKAL';
      //kategori_tr:='NON PRODUKSI';
      EdCurrChange(sender);
      Cb_bon.Enabled:=false;
      Cb_bon.text:='';
      Edno_kontrak.Items.Clear;
      CbKategori.Enabled:=true;
      load_category;
    end;
    //if EdStatus.Text='KONTRAK KERJASAMA' then
    if ref_code='KK' then  //DS        
    begin
      Edno_kontrak.Text:='';
      Edno_kontrak.ReadOnly:=False;
      Edjenispo.ReadOnly:=True;
      EdCurr.ReadOnly:=True;
      Cb_bon.Enabled:=false;
      Cb_bon.text:='';
      Edno_kontrak.Items.Clear;
      load_no_kontrak;
      CbKategori.Enabled:=false;
    end;
    //if EdStatus.Text='BON PERMINTAAN BARANG' then
    if ref_code='BPB' then    
    begin
      Edno_kontrak.ReadOnly:=false;
      //Edno_kontrak.Text:='';
      Edjenispo.ReadOnly:=false;
      EdCurr.ReadOnly:=false;
      Edjatuh_tempo.Text:='0';
      EdCurr.Text:='IDR';
      Ednilai_curr.Text:='1';
      Edjenispo.Text:='LOKAL';
      Cb_bon.Enabled:=true;
      Edno_kontrak.Items.Clear;
      load_no_bon;
      load_category;
    end;
    if ref_code='DO' then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:='select * from sale.t_delivery_order oder by notrans';
        Execute;
      end;
       Edno_kontrak.Items.Clear;
       dm.Qtemp.First;
       while not dm.Qtemp.Eof do
       begin
         //cb_bon.Items.Add(dm.Qtemp['trans_no']);
         Edno_kontrak.Items.Add(dm.Qtemp['notrans']);
         dm.Qtemp.Next;
       end;
      load_category;
    end;
    EdCurrChange(sender);
end;

procedure TFNew_PO.Ed_kd_whChange(Sender: TObject);
begin
  with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_wh where wh_code='+Quotedstr(Ed_kd_wh.Text);
    open;
  end;
  cb_gudang.Text:=dm.Qtemp2.FieldByName('wh_name').AsString;
end;

{procedure TFNew_PO.Autonumber;
var param:string;
    i,resettype,nourut,current_month,current_year:integer;
    query,query2,query3,query4:string;
    SelectedDate: TDateTime;
    year, month, day: word;
begin
     SelectedDate := DtPO.Date;
     DecodeDate(SelectedDate, Year, Month, day);

     with dm.Qtemp do
     begin
         close;
         sql.Clear;
         sql.add('SELECT reset_type as reset from t_numb where numb_type=''Purchase Order'' ');
         open;
     end;
     resettype:=dm.Qtemp.Fieldbyname('reset').Asinteger;

     query:='SELECT bulan,tahun,max(no_urut) as urut from pembelian.t_po '+
            'where tahun='+Quotedstr(inttostr(year))+' and bulan='+Quotedstr(inttostr(month))+' group by bulan,tahun';

     with dm.Qtemp1 do
     begin
          close;
          sql.Clear;
          sql.add(query);
          open;
     end;

     if (dm.Qtemp1.RecordCount=0) then
        nourut :=1
     else
        //if dm.Qtemp1.RecordCount<>0 then
        showmessage(inttostr(dm.Qtemp1.FieldByName('urut').AsInteger));
        nourut :=dm.Qtemp1.FieldByName('urut').AsInteger + 1;
        Edurut.Text:=inttostr(nourut);
        //showmessage('0');

     query2:='SELECT digit_counter from t_numb where numb_type=''Purchase Order''';
     with dm.Qtemp2 do
     begin
          close;
          sql.Clear;
          sql.add(query2);
          open;
     end;

     query3:='SELECT reset_type from t_numb where numb_type=''Purchase Order''';
     with dm.Qtemp3 do
     begin
          close;
          sql.Clear;
          sql.add(query3);
          open;
     end;

     with dm.Qtemp do
     begin
          close;
          sql.Clear;
          sql.text:='SELECT a.*,b.description,b.note,c.digit_counter,reset_type, '+
                    'case when b.id=1 then(SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtpo.Date))+' :: DATE, ''yyyy'') tahun) '+
                    'when b.id=2 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtpo.Date))+' :: DATE, ''yy'') tahun) '+
                    'when b.id=3 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtpo.Date))+' :: DATE, ''mm'') bulan) '+
                    'when b.id=4 then (SELECT trim(TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtpo.Date))+' :: DATE, ''RM'')) bulan) '+
                    'when b.id=5 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',Dtpo.Date))+' :: DATE, ''dd'') hari)  '+
                    'when b.id=6 then '+Quotedstr(Fnew_Penomoran.GenerateCustomSerialNumber(nourut,(dm.Qtemp2['digit_counter'])))+' else a.param_name end param, '+
                    'c.trans_type,d.note as reset FROM t_numb_det a '+
                    'left join t_numb_component b on a.id_param=b.id '+
                    'inner join t_numb c on a.trans_no=c.trans_no    '+
                    'left join t_numb_type d on c.reset_type=d.id    '+
                    'where c.trans_type=''Purchase Order''     '+
                    'ORDER BY a.trans_no,a.urutan';
          Open;
     end;

     Fnew_Penomoran.notif:='';
     dm.qtemp.First;
     while not dm.qtemp.eof do
     begin
        Fnew_Penomoran.notif:=Fnew_Penomoran.notif+dm.qtemp.FieldByName('param').AsString;
        dm.qtemp.next;
     end;
     Nopo.text:=Fnew_Penomoran.notif;
end;}

procedure TFNew_PO.FormShow(Sender: TObject);
var status:string;
begin
   Datetimepicker1.Date:=Now;
   DtBln.Date:=now;
   DtTh.Date:=now;
   DtHari.Date:=now;
   DtPO.Date:=Now;
   FPO.Load;
   if MemItempo.Active=False then  MemItempo.Active:=True;
   Self.Clear;
   Cb_bon.Enabled:=false;
   status_um:='0';
   status_as:='0';

   with dm.Qtemp do
   begin
      close;
      sql.Clear;
      sql.Add('SELECT * from t_numb where numb_type=''M4302'' ');
      open;
   end;
   status:=dm.Qtemp.FieldByName('additional_status').Asstring;
   //showmessage(dm.Qtemp.FieldByName('additional_status').Asstring);

   if status='false' then
   begin
      Cb_code.Enabled:=false;
      showmessage('tidak aktif');
   end;
   if status='true' then
   begin
      Cb_code.Enabled:=true;
      showmessage('aktif');
   end;

end;

procedure TFNew_PO.Simpan;
var
  Query1,Query2:string;
  CurrentMonth, CurrentYear, MaxNomorUrut: Integer;
  year, month, day: Word;
  SelectedDate: TDateTime;
begin
  if EdCurr.Text<>'IDR' then
  begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:=' insert into purchase.t_po(po_no,contract_no,po_date,supplier_code,pph23,ppn,po_type,'+
                  ' valas,valas_value,order_no, remarks,"type",transportation_type,division_code,status,'+
                  ' due_date,"Subtotal","Grandtotal","PPn_Rp","PPh_Rp",delivery_date,approval_status,'+
                  ' delivery2_date,wh_code,sbu_code,pic,po2_no,trans_day,trans_month,trans_year,as_status,trans_category,um_status,um_value,um_account_code,um_no) '+
                  ' values(:parnopo,:parno_kontrak,:partgl_po,:parkd_supplier,:parpph23,:parppn,'+
                  ' :parjenispo,:parvalas,:parnilai_valas,:parorder_no,:parKeterangan,:parjenis,'+
                  ' :parjenisangkutan,:parkd_divisi,:parstatus,:parjatuh_tempo,:parSubtotal,'+
                  ' :parGrandtotal,:parPPn_Rp,:parPPh_Rp,:partgl_dlv,:ParStatus_approval,:partgl_dlv2,'+
                  ' :pargudang,:parkd_sbu,:parpic,:parnopo2,:partgl,:parbulan,:partahun,:parstatus_as,:parkt,:parstatus_um,:parn_um,:parkd_akunum,:parum_no)';
                  ParamByName('parnopo').Value:=EdNopo.Text;
                  ParamByName('parno_kontrak').Value:=Edno_kontrak.Text;
                  ParamByName('partgl_po').Value:=FormatDateTime('yyy-mm-dd',DtPO.Date);
                  ParamByName('parkd_supplier').Value:=EdKd_supp.Text;
                  ParamByName('parpph23').Value:=EdPPh23.Text;
                  ParamByName('parppn').Value:=EdPPn.Text;
                  ParamByName('parjenispo').Value:=EdStatus.Text;
                  ParamByName('parvalas').Value:=EdCurr.Text;
                  ParamByName('parnilai_valas').Value:=Ednilai_curr.Text;
                  ParamByName('parorder_no').Value:=Edurut.text;
                  ParamByName('parketerangan').Value:=EdKet.Text;
                  ParamByName('parjenis').Value:=Edjenispo.Text;
                  ParamByName('parjenisangkutan').Value:=EdJenisAngkut.Text;
                  ParamByName('parkd_divisi').Value:=Kd_SBU;
                  ParamByName('parstatus').Value:='1';
                  ParamByName('parjatuh_tempo').value:=Edjatuh_tempo.Text;
                  ParamByName('parsubtotal').Value:=StrtoFloat(FloatToStr(subtotal));
                  ParamByName('pargrandtotal').Value:=StrtoFloat(FloatToStr(grandtotal));
                  ParamByName('parppn_rp').Value:=StrtoFloat(FloatToStr(ppn));
                  ParamByName('parpph_rp').Value:=StrtoFloat(FloatToStr(pph));
                  ParamByName('partgl_dlv').Value:=FormatDateTime('yyy-mm-dd',DtDelivery.Date);
                  ParambyName('partgl_dlv2').Value:=FormatDateTime('yyy-mm-dd',DtDelivery2.Date);
                  ParamByName('ParStatus_approval').Value:=0;
                  //ParamByName('pargudang').Value:=cb_gudang.Text;
                  ParamByName('pargudang').Value:=Ed_kd_wh.Text;
                  ParamByName('parkd_sbu').Value:=kdsbu;
                  ParamByName('parpic').Value:=Nm;
                  ParamByName('parnopo2').Value:=nopo.text;
                  ParamByName('partgl').Value:=Edhari.Text;
                  ParamByName('parbulan').Value:=Edbln.Text;
                  ParamByName('partahun').Value:=Edth.Text;
                  ParamByName('parstatus_as').Value:=status_as;
                  ParamByName('parkt').Value:=kategori_tr;
                  ParamByName('parstatus_um').Value:=status_um;
                  ParamByName('parn_um').Value:=EdUM.Value;
                  ParamByName('parkd_akunum').Value:=Edkd_akun.Text;
                  ParamByName('parum_no').Value:=NoTransUM.Text;
        ExecSQL;
      end;
      MemItempo.First;
      while not MemItempo.Eof do
      begin
          with dm.Qtemp2 do
          begin
            Close;
            sql.Clear;
            sql.Text:='insert into purchase.t_podetail(po_no,item_stock_code,qty,price,unit,wh_code,conv_currency,'+
                      ' qty_sent,total_payment,remaining_payment,remaining_qty,"subtotal",ppn,ppn_rp,pph,pph_rp,'+
                      ' grandtotal,qty_sp,remaining_sp,item_name,pemb_ppn,Pemb_dpp)values(:parnopo,:parkd_materialstok,:parqty,:parharga,:parsatuan,'+
                      ' :pargudang,:parconv_currency,:parqtyterkirim,:partotalbayar,:parsisabayar,'+
                      ' :parsisaqty,:parsubtotal,:parppn,:parppn_rp,:parpph,:parpph_rp,:pargrandtotal,'+
                      ' :parqtysp,:parsisasp,:parnm_mat,:parpemb,:parpemb_dpp)';
                      ParamByName('parnopo').Value:=EdNopo.Text;
                      ParamByName('parkd_materialstok').Value:=MemItempo['Kd_Material_stok'];
                      ParamByName('parqty').Value:=MemItempo['qty'];
                      ParamByName('parharga').Value:=MemItempo['harga'];
                      ParamByName('parsatuan').Value:=MemItempo['satuan'];
                      //ParamByName('pargudang').Value:=MemItempo['gudang'];
                      ParamByName('pargudang').Value:=Ed_kd_wh.Text;;
                      ParamByName('parconv_currency').Value:='0';
                      ParamByName('parqtyterkirim').Value:=MemItempo['qtyterkirim'];
                      ParamByName('partotalbayar').Value:=MemItempo['totalbayar'];
                      ParamByName('parsisabayar').Value:=MemItempo['sisabayar'];
                      ParamByName('parsisaqty').Value:=MemItempo['sisaqty'];
                      ParamByName('parsubtotal').Value:=MemItempo['subtotal']+MemItempo['pemb_dpp'];
                      ParamByName('parppn').Value:=MemItempo['ppn'];
                      ParamByName('parppn_rp').Value:=MemItempo['ppn_us'];
                      ParamByName('parpph').Value:=MemItempo['pph'];
                      ParamByName('parpph_rp').Value:=MemItempo['pph_rp'];
                      ParamByName('pargrandtotal').Value:=MemItempo['grandtotal'];
                      ParamByName('parqtysp').Value:='0';
                      ParamByName('parsisasp').Value:=MemItempo['qty'];
                      ParamByName('parnm_mat').Value:=MemItempo['nm_material'];
                      ParamByName('parpemb').Value:=MemItempo['pemb_ppn_us'];
                      ParamByName('parpemb_dpp').Value:=MemItempo['pemb_dpp'];
                      ExecSQL;
          end;
          MemItempo.Next;
      end;
  end;

  if EdCurr.Text='IDR' then
  begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:=' insert into purchase.t_po(po_no,contract_no,po_date, supplier_code,pph23,ppn,po_type, '+
                  ' valas,valas_value,order_no,remarks,"type",transportation_type,division_code,status, '+
                  ' due_date,"Subtotal","Grandtotal","PPn_Rp","PPh_Rp",delivery_date,approval_status, '+
                  ' delivery2_date,wh_code,sbu_code,pic,po2_no,trans_day,trans_month,trans_year, '+
                  ' as_status,trans_category,um_status,um_value,um_account_code,um_no)values(:parnopo,:parno_kontrak,:partgl_po,:parkd_supplier,:parpph23,:parppn,:parjenispo, '+
                  ' :parvalas,:parnilai_valas,:parno_urut,:parKeterangan,:parjenis,:parjenisangkutan,:parkd_divisi,:parstatus, '+
                  ' :parjatuh_tempo,:parSubtotal,:parGrandtotal,:parPPn_Rp,:parPPh_Rp,:partgl_dlv,:ParStatus_approval, '+
                  ' :partgl_dlv2,:pargudang,:parkd_sbu,:parpic,:parnopo2,:parhari,:parbulan,:partahun, '+
                  ' :parstatus_as,:parkt,:parstatus_um,:parn_um,:parkd_akunum,:parum_no)';
                  ParamByName('parnopo').Value:=EdNopo.Text;
                  ParamByName('parno_kontrak').Value:=Edno_kontrak.Text;
                  ParamByName('partgl_po').Value:=FormatDateTime('yyy-mm-dd',DtPO.Date);
                  ParamByName('parkd_supplier').Value:=EdKd_supp.Text;
                  ParamByName('parpph23').Value:=EdPPh23.Text;
                  ParamByName('parppn').Value:=EdPPn.Text;
                  ParamByName('parjenispo').Value:=EdStatus.Text;
                  ParamByName('parvalas').Value:=EdCurr.Text;
                  ParamByName('parnilai_valas').Value:=Ednilai_curr.Text;
                  ParamByName('parno_urut').Value:=Edurut.text;
                  ParamByName('parketerangan').Value:=EdKet.Text;
                  ParamByName('parjenis').Value:=Edjenispo.Text;
                  ParamByName('parjenisangkutan').Value:=EdJenisAngkut.Text;
                  ParamByName('parkd_divisi').Value:=Kd_SBU;
                  ParamByName('parstatus').Value:='1';
                  ParamByName('parjatuh_tempo').value:=Edjatuh_tempo.Text;
                  ParamByName('parsubtotal').Value:=FloatToStr(subtotal);
                  ParamByName('pargrandtotal').Value:=FloatToStr(grandtotal);
                  ParamByName('parppn_rp').Value:=FloatToStr(ppn);
                  ParamByName('parpph_rp').Value:=FloatToStr(pph);
                  ParamByName('partgl_dlv').Value:=FormatDateTime('yyy-mm-dd',DtDelivery.Date);
                  ParamByName('partgl_dlv2').Value:=FormatDateTime('yyy-mm-dd',DtDelivery2.Date);
                  ParamByName('ParStatus_approval').Value:=0;
                  //ParamByName('pargudang').Value:=cb_gudang.Text;
                  ParamByName('pargudang').Value:=Ed_kd_wh.Text;
                  ParamByName('parkd_sbu').Value:=Edsbu.Text;
                  ParamByName('parpic').Value:=Nm;
                  ParamByName('parnopo2').Value:=EdNopo.Text;
                  ParamByName('partahun').Value:=EdTh.Text;
                  ParamByName('parbulan').Value:=EdBln.Text;
                  ParamByName('parhari').Value:=Edhari.Text;
                  ParamByName('parstatus_as').Value:=status_as;
                  ParamByName('parkt').Value:=kategori_tr;
                  ParamByName('parstatus_um').Value:=status_um;
                  ParamByName('parn_um').Value:=EdUM.Value;
                  ParamByName('parkd_akunum').Value:=Edkd_akun.Text;
                  ParamByName('parum_no').Value:=NoTransUM.Text;
        ExecSQL;

      end;
      MemItempo.First;
      while not MemItempo.Eof do
      begin
          with dm.Qtemp2 do
          begin
            Close;
            sql.Clear;
            sql.Text:=' insert into purchase.t_podetail(po_no,item_stock_code,qty,price,unit,wh_code,conv_currency,'+
                      ' qty_sent,total_payment,remaining_payment,remaining_qty,subtotal,ppn,ppn_rp,pph,pph_rp,'+
                      ' grandtotal,qty_sp,remaining_sp,item_name,pemb_ppn,Pemb_dpp)values(:parnopo,:parkd_materialstok,:parqty,:parharga,:parsatuan,'+
                      ' :pargudang,:parconv_currency,:parqtyterkirim,:partotalbayar,:parsisabayar,'+
                      ' :parsisaqty,:parsubtotal,:parppn,:parppn_rp,:parpph,:parpph_rp,:pargrandtotal,'+
                      ' :parqtysp,:parsisasp,:parnm_mat,:parpemb,:parpemb_dpp)';
                      ParamByName('parnopo').Value:=EdNopo.Text;
                      ParamByName('parkd_materialstok').Value:=MemItempo['kd_material_stok'];
                      ParamByName('parqty').Value:=MemItempo['qty'];
                      ParamByName('parharga').Value:=MemItempo['harga'];
                      ParamByName('parsatuan').Value:=MemItempo['satuan'];
                      //ParamByName('pargudang').Value:=MemItempo['gudang'];
                      ParamByName('pargudang').Value:=Ed_kd_wh.Text;
                      ParamByName('parconv_currency').Value:='0';
                      ParamByName('parqtyterkirim').Value:=MemItempo['qtyterkirim'];
                      ParamByName('partotalbayar').Value:=MemItempo['totalbayar'];
                      ParamByName('parsisabayar').Value:=MemItempo['sisabayar'];
                      ParamByName('parsisaqty').Value:=MemItempo['sisaqty'];
                      ParamByName('parsubtotal').Value:=MemItempo['subtotal_rp'];
                      ParamByName('parppn').Value:=MemItempo['ppn'];
                      ParamByName('parppn_rp').Value:=MemItempo['ppn_rp'];
                      ParamByName('parpph').Value:=MemItempo['pph'];
                      ParamByName('parpph_rp').Value:=MemItempo['pph_rp'];
                      ParamByName('pargrandtotal').Value:=MemItempo['grandtotalrp'];
                      ParamByName('parqtysp').Value:='0';
                      ParamByName('parsisasp').Value:=MemItempo['qty'];
                      ParamByName('parnm_mat').Value:=MemItempo['nm_material'];
                      ParamByName('parpemb').Value:=MemItempo['pemb_ppn'];
                      ParamByName('parpemb_dpp').Value:=MemItempo['pemb_dpp'];
            ExecSQL;
          end;
          MemItempo.Next;
      end;
  end;

  with dm.Qtemp do
  begin
      close;
      sql.Clear;
      sql.Text:=' select * from purchase.t_po where supplier_code='+Quotedstr(EdKd_supp.Text)+' '+
                ' and um_no='+Quotedstr(NoTransUM.Text);
      Open;
  end;
  No_Um:=dm.Qtemp.FieldByName('um_no').AsString;
  if No_Um=NoTransUM.Text then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='update purchase.t_advance_payment set po_no=(select po_no from purchase.t_po where supplier_code='+Quotedstr(EdKd_supp.Text)+' and um_no='+Quotedstr(NoTransUM.Text)+' ) '+
                'where no_trans='+Quotedstr(NoTransUM.Text)+' ';
      execsql;
    end;
  end;



end;


procedure TFNew_PO.Simpan2;
var
  Query1,Query2:string;
  CurrentMonth, CurrentYear, MaxNomorUrut: Integer;
  year, month, day: Word;
  SelectedDate: TDateTime;
begin
  if EdCurr.Text<>'IDR' then
  begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:=' insert into purchase.t_po(po_no,contract_no,po_date,supplier_code,pph23,ppn,po_type,'+
                  ' valas,valas_value,order_no, remarks,type,transportation_type,division_code,status,'+
                  ' due_date,"Subtotal","Grandtotal","PPn_Rp","PPh_Rp",delivery_date,approval_status,'+
                  ' delivery2_date,wh_code,sbu_code,pic,po2_no,trans_day,trans_month,trans_year,as_status,trans_category,um_status,um_value,um_account_code,um_no) '+
                  ' values(:parnopo,:parno_kontrak,:partgl_po,:parkd_supplier,:parpph23,:parppn,'+
                  ' :parjenispo,:parvalas,:parnilai_valas,:parorder_no,:parKeterangan,:parjenis,'+
                  ' :parjenisangkutan,:parkd_divisi,:parstatus,:parjatuh_tempo,:parSubtotal,'+
                  ' :parGrandtotal,:parPPn_Rp,:parPPh_Rp,:partgl_dlv,:ParStatus_approval,:partgl_dlv2,'+
                  ' :pargudang,:parkd_sbu,:parpic,:parnopo2,:partgl,:parbulan,:partahun,:parstatus_as,:parkt,:parstatus_um,:parn_um,:parkd_akunum,:parum_no)';
                  ParamByName('parnopo').Value:=EdNopo.Text;
                  ParamByName('parno_kontrak').Value:=Edno_kontrak.Text;
                  ParamByName('partgl_po').Value:=FormatDateTime('yyy-mm-dd',DtPO.Date);
                  ParamByName('parkd_supplier').Value:=EdKd_supp.Text;
                  ParamByName('parpph23').Value:=EdPPh23.Text;
                  ParamByName('parppn').Value:=EdPPn.Text;
                  ParamByName('parjenispo').Value:=EdStatus.Text;
                  ParamByName('parvalas').Value:=EdCurr.Text;
                  ParamByName('parnilai_valas').Value:=Ednilai_curr.Text;
                  ParamByName('parorder_no').Value:=Edurut.text;
                  ParamByName('parketerangan').Value:=EdKet.Text;
                  ParamByName('parjenis').Value:=Edjenispo.Text;
                  ParamByName('parjenisangkutan').Value:=EdJenisAngkut.Text;
                  ParamByName('parkd_divisi').Value:=Kd_SBU;
                  ParamByName('parstatus').Value:='1';
                  ParamByName('parjatuh_tempo').value:=Edjatuh_tempo.Text;
                  ParamByName('parsubtotal').Value:=FloatToStr(subtotal);
                  ParamByName('pargrandtotal').Value:=FloatToStr(grandtotal);
                  ParamByName('parppn_rp').Value:=FloatToStr(ppn);
                  ParamByName('parpph_rp').Value:=FloatToStr(pph);
                  ParamByName('partgl_dlv').Value:=FormatDateTime('yyy-mm-dd',DtDelivery.Date);
                  ParambyName('partgl_dlv2').Value:=FormatDateTime('yyy-mm-dd',DtDelivery2.Date);
                  ParamByName('ParStatus_approval').Value:=0;
                  //ParamByName('pargudang').Value:=cb_gudang.Text;
                  ParamByName('pargudang').Value:=Ed_Kd_wh.Text;
                  ParamByName('parkd_sbu').Value:=kdsbu;
                  ParamByName('parpic').Value:=Nm;
                  ParamByName('parnopo2').Value:=nopo.text;
                  ParamByName('partgl').Value:=Edhari.Text;
                  ParamByName('parbulan').Value:=Edbln.Text;
                  ParamByName('partahun').Value:=Edth.Text;
                  ParamByName('parstatus_as').Value:=status_as;
                  //ParamByName('parkt').Value:=kategori_tr;
                  ParamByName('parkt').Value:=CbKategori.Text;
                  ParamByName('parstatus_um').Value:=status_um;
                  ParamByName('parn_um').Value:=EdUM.Value;
                  ParamByName('parkd_akunum').Value:=Edkd_akun.Text;
                  ParamByName('parum_no').Value:=NoTransUM.Text;
        ExecSQL;
      end;
      MemItempo.First;
      while not MemItempo.Eof do
      begin
          with dm.Qtemp2 do
          begin
            Close;
            sql.Clear;
            sql.Text:=' insert into purchase.t_podetail(po_no,item_stock_code,qty,price,unit,wh_code,conv_currency,'+
                      ' qty_sent,total_payment,remaining_payment,remaining_qty,subtotal,ppn,ppn_rp,pph,pph_rp,'+
                      ' grandtotal,qty_sp,remaining_sp,item_name,pemb_ppn,Pemb_dpp)values(:parnopo,:parkd_materialstok,:parqty,:parharga,:parsatuan,'+
                      ' :pargudang,:parconv_currency,:parqtyterkirim,:partotalbayar,:parsisabayar,'+
                      ' :parsisaqty,:parsubtotal,:parppn,:parppn_rp,:parpph,:parpph_rp,:pargrandtotal,'+
                      ' :parqtysp,:parsisasp,:parnm_mat,:parpemb,:parpemb_dpp)';
                      ParamByName('parnopo').Value:=EdNopo.Text;
                      ParamByName('parkd_materialstok').Value:=MemItempo['kd_material_stok'];
                      ParamByName('parqty').Value:=MemItempo['qty'];
                      ParamByName('parharga').Value:=MemItempo['harga'];
                      ParamByName('parsatuan').Value:=MemItempo['satuan'];
                      //ParamByName('pargudang').Value:=MemItempo['gudang'];
                      ParamByName('pargudang').Value:=Ed_kd_wh.Text;
                      ParamByName('parconv_currency').Value:='0';
                      ParamByName('parqtyterkirim').Value:=MemItempo['qtyterkirim'];
                      ParamByName('partotalbayar').Value:=MemItempo['totalbayar'];
                      ParamByName('parsisabayar').Value:=MemItempo['sisabayar'];
                      ParamByName('parsisaqty').Value:=MemItempo['sisaqty'];
                      ParamByName('parsubtotal').Value:=MemItempo['subtotal'];
                      ParamByName('parppn').Value:=MemItempo['ppn'];
                      ParamByName('parppn_rp').Value:=MemItempo['ppn_rp'];
                      ParamByName('parpph').Value:=MemItempo['pph'];
                      ParamByName('parpph_rp').Value:=MemItempo['pph_rp'];
                      ParamByName('pargrandtotal').Value:=MemItempo['grandtotal'];
                      ParamByName('parqtysp').Value:='0';
                      ParamByName('parsisasp').Value:=MemItempo['qty'];
                      ParamByName('parnm_mat').Value:=MemItempo['nm_material'];
                      ParamByName('parpemb').Value:=MemItempo['pemb_ppn_us'];
                      ParamByName('parpemb_dpp').Value:=MemItempo['pemb_dpp'];
            ExecSQL;
          end;
          MemItempo.Next;
      end;
  end;

  if EdCurr.Text='IDR' then
  begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:=' insert into purchase.t_po(po_no,contract_no,po_date, supplier_code,pph23,ppn,po_type, '+
                  ' valas,valas_value,order_no,remarks,type,transportation_type,division_code,status, '+
                  ' due_date,"Subtotal","Grandtotal","PPn_Rp","PPh_Rp",delivery_date,"approval_status", '+
                  ' delivery2_date,wh_code,sbu_code,pic,po2_no,trans_day,trans_month,trans_year, '+
                  ' as_status,trans_category,um_status,um_value,um_account_code,um_no)values(:parnopo,:parno_kontrak,:partgl_po,:parkd_supplier,:parpph23,:parppn,:parjenispo, '+
                  ' :parvalas,:parnilai_valas,:parno_urut,:parKeterangan,:parjenis,:parjenisangkutan,:parkd_divisi,:parstatus, '+
                  ' :parjatuh_tempo,:parSubtotal,:parGrandtotal,:parPPn_Rp,:parPPh_Rp,:partgl_dlv,:ParStatus_approval, '+
                  ' :partgl_dlv2,:pargudang,:parkd_sbu,:parpic,:parnopo2,:parhari,:parbulan,:partahun, '+
                  ' :parstatus_as,:parkt,:parstatus_um,:parn_um,:parkd_akunum,:parum_no)';
                  ParamByName('parnopo').Value:=EdNopo.Text;
                  ParamByName('parno_kontrak').Value:=Edno_kontrak.Text;
                  ParamByName('partgl_po').Value:=FormatDateTime('yyy-mm-dd',DtPO.Date);
                  ParamByName('parkd_supplier').Value:=EdKd_supp.Text;
                  ParamByName('parpph23').Value:=EdPPh23.Text;
                  ParamByName('parppn').Value:=EdPPn.Text;
                  ParamByName('parjenispo').Value:=EdStatus.Text;
                  ParamByName('parvalas').Value:=EdCurr.Text;
                  ParamByName('parnilai_valas').Value:=Ednilai_curr.Text;
                  ParamByName('parno_urut').Value:=Edurut.Text;
                  ParamByName('parketerangan').Value:=EdKet.Text;
                  ParamByName('parjenis').Value:=Edjenispo.Text;
                  ParamByName('parjenisangkutan').Value:=EdJenisAngkut.Text;
                  ParamByName('parkd_divisi').Value:=Kd_SBU;
                  ParamByName('parstatus').Value:='1';
                  ParamByName('parjatuh_tempo').value:=Edjatuh_tempo.Text;
                  ParamByName('parsubtotal').Value:=FloatToStr(subtotal);
                  ParamByName('pargrandtotal').Value:=FloatToStr(grandtotal);
                  ParamByName('parppn_rp').Value:=FloatToStr(ppn);
                  ParamByName('parpph_rp').Value:=FloatToStr(pph);
                  ParamByName('partgl_dlv').Value:=FormatDateTime('yyy-mm-dd',DtDelivery.Date);
                  ParamByName('partgl_dlv2').Value:=FormatDateTime('yyy-mm-dd',DtDelivery2.Date);
                  ParamByName('ParStatus_approval').Value:=0;
                  //ParamByName('pargudang').Value:=cb_gudang.Text;
                  ParamByName('pargudang').Value:=Ed_Kd_wh.Text;
                  ParamByName('parkd_sbu').Value:=Edsbu.Text;
                  ParamByName('parpic').Value:=Nm;
                  ParamByName('parnopo2').Value:=EdNopo.Text;
                  ParamByName('partahun').Value:=Edth.Text;
                  ParamByName('parbulan').Value:=Edbln.Text;
                  ParamByName('parhari').Value:=Edhari.Text;
                  ParamByName('parstatus_as').Value:=status_as;
                  //ParamByName('parkt').Value:=kategori_tr;
                  ParamByName('parkt').Value:=CbKategori.Text;
                  ParamByName('parstatus_um').Value:=status_um;
                  ParamByName('parn_um').Value:=EdUM.Value;
                  ParamByName('parkd_akunum').Value:=Edkd_akun.Text;
                  ParamByName('parum_no').Value:=NoTransUM.Text;
        ExecSQL;

      end;
      MemItempo.First;
      while not MemItempo.Eof do
      begin
          with dm.Qtemp2 do
          begin
            Close;
            sql.Clear;
            sql.Text:=' insert into purchase.t_podetail(po_no,item_stock_code,qty,price,unit,wh_code,conv_currency,'+
                      ' qty_sent,total_payment,remaining_payment,remaining_qty,subtotal,ppn,ppn_rp,pph,pph_rp,'+
                      ' grandtotal,qty_sp,remaining_sp,item_name,pemb_ppn,Pemb_dpp)values(:parnopo,:parkd_materialstok,:parqty,:parharga,:parsatuan,'+
                      ' :pargudang,:parconv_currency,:parqtyterkirim,:partotalbayar,:parsisabayar,'+
                      ' :parsisaqty,:parsubtotal,:parppn,:parppn_rp,:parpph,:parpph_rp,:pargrandtotal,'+
                      ' :parqtysp,:parsisasp,:parnm_mat,:parpemb,:parpemb_dpp)';
                      ParamByName('parnopo').Value:=EdNopo.Text;
                      ParamByName('parkd_materialstok').Value:=MemItempo['kd_material_stok'];
                      ParamByName('parqty').Value:=MemItempo['qty'];
                      ParamByName('parharga').Value:=MemItempo['harga_rp'];
                      ParamByName('parsatuan').Value:=MemItempo['satuan'];
                      //ParamByName('pargudang').Value:=MemItempo['gudang'];
                      ParamByName('pargudang').Value:=Ed_Kd_wh.Text;
                      ParamByName('parconv_currency').Value:='0';
                      ParamByName('parqtyterkirim').Value:=MemItempo['qtyterkirim'];
                      ParamByName('partotalbayar').Value:=MemItempo['totalbayar'];
                      ParamByName('parsisabayar').Value:=MemItempo['sisabayar'];
                      ParamByName('parsisaqty').Value:=MemItempo['sisaqty'];
                      ParamByName('parsubtotal').Value:=MemItempo['subtotal_rp'];
                      ParamByName('parppn').Value:=MemItempo['ppn'];
                      ParamByName('parppn_rp').Value:=MemItempo['ppn_rp'];
                      ParamByName('parpph').Value:=MemItempo['pph'];
                      ParamByName('parpph_rp').Value:=MemItempo['pph_rp'];
                      ParamByName('pargrandtotal').Value:=MemItempo['grandtotalrp'];
                      ParamByName('parqtysp').Value:='0';
                      ParamByName('parsisasp').Value:=MemItempo['qty'];
                      ParamByName('parnm_mat').Value:=MemItempo['nm_material'];
                      ParamByName('parpemb').Value:=MemItempo['pemb_ppn'];
                      ParamByName('parpemb_dpp').Value:=MemItempo['pemb_dpp'];
            ExecSQL;
          end;
          MemItempo.Next;
      end;
  end;

  with dm.Qtemp do
  begin
      close;
      sql.Clear;
      sql.Text:=' select * from purchase.t_po where supplier_code='+Quotedstr(EdKd_supp.Text)+' '+
                ' and um_no='+Quotedstr(NoTransUM.Text);
      Open;
  end;
  No_Um:=dm.Qtemp.FieldByName('um_no').AsString;
  if No_Um=NoTransUM.Text then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='update purchase.t_advance_payment set po_no=(select po_no from purchase.t_po where supplier_code='+Quotedstr(EdKd_supp.Text)+' and um_no='+Quotedstr(NoTransUM.Text)+' ) '+
                'where no_trans='+Quotedstr(NoTransUM.Text)+' ';
      execsql;
    end;
  end;

end;

procedure TFNew_PO.Update;
begin
    with dm.Qtemp do
    begin
      sql.Clear;
      sql.Text:='delete from purchase.t_podetail where po_no='+QuotedStr(EdNopo.text);
      ExecSQL;
    end;

    if EdCurr.Text<>'IDR' then
    begin
      MemItempo.First;
      while not MemItempo.Eof do
      begin
         with dm.Qtemp2 do
         begin
            Close;
            sql.Clear;
            sql.Text:=' insert into purchase.t_podetail(po_no,item_stock_code,qty,price,unit,wh_code,conv_currency,'+
                      ' qty_sent,total_payment,remaining_payment,remaining_qty,subtotal,ppn,ppn_rp,pph,pph_rp,'+
                      ' grandtotal,qty_sp,remaining_sp,item_name,pemb_ppn,Pemb_dpp)values(:parnopo,:parkd_materialstok,:parqty,:parharga,:parsatuan,'+
                      ' :pargudang,:parconv_currency,:parqtyterkirim,:partotalbayar,:parsisabayar,'+
                      ' :parsisaqty,:parsubtotal,:parppn,:parppn_rp,:parpph,:parpph_rp,:pargrandtotal,'+
                      ' :parqtysp,:parsisasp,:parnm_mat,:parpemb,:parpemb_dpp)';
                      ParamByName('parnopo').Value:=EdNopo.Text;
                      ParamByName('parkd_materialstok').Value:=MemItempo['Kd_Material_stok'];
                      ParamByName('parqty').Value:=MemItempo['qty'];
                      ParamByName('parharga').Value:=MemItempo['harga'];
                      ParamByName('parsatuan').Value:=MemItempo['satuan'];
                      //ParamByName('pargudang').Value:=MemItempo['gudang'];
                      ParamByName('pargudang').Value:=Ed_kd_wh.Text;
                      ParamByName('parconv_currency').Value:='0';
                      ParamByName('parqtyterkirim').Value:=MemItempo['qtyterkirim'];
                      ParamByName('partotalbayar').Value:=MemItempo['totalbayar'];
                      ParamByName('parsisabayar').Value:=MemItempo['sisabayar'];
                      ParamByName('parsisaqty').Value:=MemItempo['sisaqty'];
                      ParamByName('parsubtotal').Value:=MemItempo['subtotal']+MemItempo['pemb_dpp'];
                      ParamByName('parppn').Value:=MemItempo['ppn'];
                      ParamByName('parppn_rp').Value:=MemItempo['ppn_us'];
                      ParamByName('parpph').Value:=MemItempo['pph'];
                      ParamByName('parpph_rp').Value:=MemItempo['pph_rp'];
                      ParamByName('pargrandtotal').Value:=MemItempo['grandtotal'];
                      ParamByName('parqtysp').Value:='0';
                      ParamByName('parsisasp').Value:=MemItempo['qty'];
                      ParamByName('parnm_mat').Value:=MemItempo['nm_material'];
                      ParamByName('parpemb').Value:=MemItempo['pemb_ppn_us'];
                      ParamByName('parpemb_dpp').Value:=MemItempo['pemb_dpp'];
            ExecSQL;
         end;
         MemItempo.Next;
      end;
    end;

    if EdCurr.Text='IDR' then
    begin
      MemItempo.First;
      while not MemItempo.Eof do
      begin
        with dm.Qtemp2 do
        begin
          Close;
          sql.Clear;
          sql.Text:=' insert into purchase.t_podetail(po_no,item_stock_code,qty,price,unit,wh_code,conv_currency,'+
                    ' qty_sent,total_payment,remaining_payment,remaining_qty,subtotal,ppn,ppn_rp,pph,pph_rp,'+
                    ' grandtotal,qty_sp,remaining_sp,item_name,pemb_ppn,Pemb_dpp)values(:parnopo,:parkd_materialstok,:parqty,:parharga,:parsatuan,'+
                    ' :pargudang,:parconv_currency,:parqtyterkirim,:partotalbayar,:parsisabayar,'+
                    ' :parsisaqty,:parsubtotal,:parppn,:parppn_rp,:parpph,:parpph_rp,:pargrandtotal,'+
                    ' :parqtysp,:parsisasp,:parnm_mat,:parpemb,:parpemb_dpp)';
                    ParamByName('parnopo').Value:=EdNopo.Text;
                    ParamByName('parkd_materialstok').Value:=MemItempo['kd_material_stok'];
                    ParamByName('parqty').Value:=MemItempo['qty'];
                    ParamByName('parharga').Value:=MemItempo['harga_rp'];
                    ParamByName('parsatuan').Value:=MemItempo['satuan'];
                    //ParamByName('pargudang').Value:=MemItempo['gudang'];
                    ParamByName('pargudang').Value:=Ed_kd_wh.Text;
                    ParamByName('parconv_currency').Value:='0';
                    ParamByName('parqtyterkirim').Value:=MemItempo['qtyterkirim'];
                    ParamByName('partotalbayar').Value:=MemItempo['totalbayar'];
                    ParamByName('parsisabayar').Value:=MemItempo['sisabayar'];
                    ParamByName('parsisaqty').Value:=MemItempo['sisaqty'];
                    ParamByName('parsubtotal').Value:=MemItempo['subtotal_rp'];
                    ParamByName('parppn').Value:=MemItempo['ppn'];
                    ParamByName('parppn_rp').Value:=MemItempo['ppn_rp'];
                    ParamByName('parpph').Value:=MemItempo['pph'];
                    ParamByName('parpph_rp').Value:=MemItempo['pph_rp'];
                    ParamByName('pargrandtotal').Value:=MemItempo['grandtotalrp'];
                    ParamByName('parqtysp').Value:='0';
                    ParamByName('parsisasp').Value:=MemItempo['qty'];
                    ParamByName('parnm_mat').Value:=MemItempo['nm_material'];
                    ParamByName('parpemb').Value:=MemItempo['pemb_ppn'];
                    ParamByName('parpemb_dpp').Value:=MemItempo['pemb_dpp'];
          ExecSQL;
        end;
        MemItempo.Next;
      end;
    end;

    if Statustr2=1 then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from purchase.t_po ';
        ExecSQL;
      end;
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:=' update purchase.t_po set contract_no=:parno_kontrak,po_date=:partgl_po,supplier_code=:parkd_supplier'+
                  ' ,pph23=:parpph23,ppn=:parppn,po_type=:parjenispo,valas=:parvalas,valas_value=:parnilai_valas'+
                  ' ,order_no=:parno_urut,remarks=:parket,type=:parjenis,division_code=:parkd_divisi'+
                  ' ,transportation_type=:parjenisangkutan,"Subtotal"=:parSubtotal,"Grandtotal"=:parGrandtotal'+
                  ' ,due_date=:parjatuh_tempo,"PPn_Rp"=:parppn_rp,"PPh_Rp"=:parpph_rp,delivery_date=:partgl_delivery'+
                  ' ,delivery2_date=:partgl_delivery2,wh_code=:pargudang,pic=:parpic,um_status=:parstatus_um,'+
                  ' um_value=:parn_um,um_account_code=:parkd_akunum,as_status=:parstatus_as,trans_category=:parkt,correction_status=:parst_kr'+
                  ' ,sbu_code=:parkd_sbu,status=:parstatus,um_no=:parum_no where po_no=:parnopo';
                  ParamByName('parst_kr').AsString:='0';
                  ParamByName('parno_kontrak').Value:=Edno_kontrak.Text;
                  ParamByName('partgl_po').Value:=FormatDateTime('yyy-mm-dd',DtPO.Date);
                  ParamByName('parkd_supplier').Value:=EdKd_supp.Text;
                  ParamByName('parpph23').Value:=EdPPh23.Text;
                  ParamByName('parppn').Value:=EdPPn.Text;
                  ParamByName('parjenispo').Value:=EdStatus.Text;
                  ParamByName('parvalas').Value:=EdCurr.Text;
                  ParamByName('parnilai_valas').Value:=Ednilai_curr.Text;
                  ParamByName('parno_urut').Value:=EdNo.Text;
                  //ParamByName('parno_urut').Value:=Edurut.text;
                  ParamByName('parket').Value:=edket.text;
                  ParamByName('parjenis').Value:=Edjenispo.Text;
                  ParamByName('parkd_divisi').Value:=Kd_SBU;
                  ParamByName('parjenisangkutan').Value:=EdJenisAngkut.Text;
                  ParamByName('parSubtotal').Value:=FloatToStr(Subtotal);
                  ParamByName('parGrandtotal').Value:=FloatToStr(grandtotal);
                  ParamByName('parjatuh_tempo').Value:=Edjatuh_tempo.Text;
                  ParamByName('parPPn_Rp').value:=FloatToStr(ppn);
                  ParamByName('parPPh_Rp').Value:=FloatToStr(pph);
                  ParamByName('partgl_delivery').value:=FormatDateTime('yyy-mm-dd',DtDelivery.Date);
                  ParamByName('partgl_delivery2').value:=FormatDateTime('yyy-mm-dd',DtDelivery2.Date);
                  ParamByName('pargudang').Value:=Ed_kd_wh.Text;
                  ParamByName('parpic').Value:=Nm;
                  ParamByName('parnopo').Value:=EdNopo.Text;
                  ParamByName('parstatus_um').Value:=status_um;
                  ParamByName('parn_um').Value:=EdUM.Value;
                  ParamByName('parkd_akunum').Value:=Edkd_akun.Text;
                  ParamByName('parstatus_as').Value:=status_as;
                  ParamByName('parkt').Value:=CbKategori.Text;
                  ParamByName('parst_kr').AsString:='0';
                  ParamByName('parkd_sbu').AsString:=Edsbu.Text;
                  ParamByName('parstatus').Value:='0';
                  ParamByName('parum_no').Value:=NoTransUM.Text;
        ExecSQL;
      end;
    end;
    if Statustr2<>1 then
    begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='select * from purchase.t_po ';
          ExecSQL;
        end;
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:=' update purchase.t_po set contract_no=:parno_kontrak,po_date=:partgl_po,supplier_code=:parkd_supplier'+
                    ' ,pph23=:parpph23,ppn=:parppn,po_type=:parjenispo,valas=:parvalas,valas_value=:parnilai_valas'+
                    ' ,order_no=:parno_urut,remarks=:parket,type=:parjenis,division_code=:parkd_divisi'+
                    ' ,transportation_type=:parjenisangkutan,"Subtotal"=:parSubtotal,"Grandtotal"=:parGrandtotal'+
                    ' ,due_date=:parjatuh_tempo,"PPn_Rp"=:parppn_rp,"PPh_Rp"=:parpph_rp,delivery_date=:partgl_delivery'+
                    ' ,delivery2_date=:partgl_delivery2,wh_code=:pargudang,pic=:parpic,um_status=:parstatus_um,'+
                    ' um_value=:parn_um,um_account_code=:parkd_akunum,as_status=:parstatus_as,trans_category=:parkt,correction_status=:parst_kr'+
                    ' ,sbu_code=:parkd_sbu,um_no=:parum_no where po_no=:parnopo';
                    ParamByName('parst_kr').AsString:='0';
                    ParamByName('parno_kontrak').Value:=Edno_kontrak.Text;
                    ParamByName('partgl_po').Value:=FormatDateTime('yyy-mm-dd',DtPO.Date);
                    ParamByName('parkd_supplier').Value:=EdKd_supp.Text;
                    ParamByName('parpph23').Value:=EdPPh23.Text;
                    ParamByName('parppn').Value:=EdPPn.Text;
                    ParamByName('parjenispo').Value:=EdStatus.Text;
                    ParamByName('parvalas').Value:=EdCurr.Text;
                    ParamByName('parnilai_valas').Value:=Ednilai_curr.Text;
                    ParamByName('parno_urut').Value:=EdNo.Text;
                    //ParamByName('parno_urut').Value:=Edurut.text;
                    ParamByName('parket').Value:=edket.text;
                    ParamByName('parjenis').Value:=Edjenispo.Text;
                    ParamByName('parkd_divisi').Value:=Kd_SBU;
                    ParamByName('parjenisangkutan').Value:=EdJenisAngkut.Text;
                    ParamByName('parSubtotal').Value:=FloatToStr(Subtotal);
                    ParamByName('parGrandtotal').Value:=FloatToStr(grandtotal);
                    ParamByName('parjatuh_tempo').Value:=Edjatuh_tempo.Text;
                    ParamByName('parPPn_Rp').value:=FloatToStr(ppn);
                    ParamByName('parPPh_Rp').Value:=FloatToStr(pph);
                    ParamByName('partgl_delivery').value:=FormatDateTime('yyy-mm-dd',DtDelivery.Date);
                    ParamByName('partgl_delivery2').value:=FormatDateTime('yyy-mm-dd',DtDelivery2.Date);
                    ParamByName('pargudang').Value:=Ed_kd_wh.Text;
                    ParamByName('parpic').Value:=Nm;
                    ParamByName('parnopo').Value:=EdNopo.Text;
                    ParamByName('parstatus_um').Value:=status_um;
                    ParamByName('parn_um').Value:=EdUM.Value;
                    ParamByName('parkd_akunum').Value:=Edkd_akun.Text;
                    ParamByName('parstatus_as').Value:=status_as;
                    ParamByName('parkt').Value:=CbKategori.Text;
                    ParamByName('parst_kr').AsString:='0';
                    ParamByName('parkd_sbu').AsString:=Edsbu.Text;
                    ParamByName('parum_no').Value:=NoTransUM.Text;
          ExecSQL;
        end;
    end;
end;

procedure TFNew_PO.Update2;
begin
    with dm.Qtemp do
    begin
        sql.Clear;
        sql.Text:='select * from purchase.t_podetail where po_no='+QuotedStr(EdNopo.text);
        ExecSQL;
    end;
    with dm.Qtemp do
    begin
      sql.Clear;
      sql.Text:='delete from purchase.t_podetail where po_no='+QuotedStr(EdNopo.text);
      ExecSQL;
    end;

    if EdCurr.Text<>'IDR' then
    begin
      MemItempo.First;
      while not MemItempo.Eof do
      begin
         with dm.Qtemp2 do
         begin
            Close;
            sql.Clear;
            sql.Text:='insert into purchase.t_podetail(po_no,item_stock_code,qty,price,unit,wh_code,conv_currency,'+
                      ' qty_sent,total_payment,remaining_payment,remaining_qty,subtotal,ppn,ppn_rp,pph,pph_rp,'+
                      ' grandtotal,qty_sp,remaining_sp,item_name,pemb_ppn,Pemb_dpp)values(:parnopo,:parkd_materialstok,:parqty,:parharga,:parsatuan,'+
                      ' :pargudang,:parconv_currency,:parqtyterkirim,:partotalbayar,:parsisabayar,'+
                      ' :parsisaqty,:parsubtotal,:parppn,:parppn_rp,:parpph,:parpph_rp,:pargrandtotal,'+
                      ' :parqtysp,:parsisasp,:parnm_mat,:parpemb,:parpemb_dpp)';
                      ParamByName('parnopo').Value:=EdNopo.Text;
                      ParamByName('parkd_materialstok').Value:=MemItempo['kd_material_stok'];
                      ParamByName('parqty').Value:=MemItempo['qty'];
                      ParamByName('parharga').Value:=MemItempo['harga'];
                      ParamByName('parsatuan').Value:=MemItempo['satuan'];
                      //ParamByName('pargudang').Value:=MemItempo['gudang'];
                      ParamByName('pargudang').Value:=Ed_kd_wh.Text;
                      ParamByName('parconv_currency').Value:='0';
                      ParamByName('parqtyterkirim').Value:=MemItempo['qtyterkirim'];
                      ParamByName('partotalbayar').Value:=MemItempo['totalbayar'];
                      ParamByName('parsisabayar').Value:=MemItempo['sisabayar'];
                      ParamByName('parsisaqty').Value:=MemItempo['sisaqty'];
                      ParamByName('parsubtotal').Value:=MemItempo['subtotal']+MemItempo['pemb_dpp'];
                      ParamByName('parppn').Value:=MemItempo['ppn'];
                      ParamByName('parppn_rp').Value:=MemItempo['ppn_us'];
                      ParamByName('parpph').Value:=MemItempo['pph'];
                      ParamByName('parpph_rp').Value:=MemItempo['pph_rp'];
                      ParamByName('pargrandtotal').Value:=MemItempo['grandtotal'];
                      ParamByName('parqtysp').Value:='0';
                      ParamByName('parsisasp').Value:=MemItempo['qty'];
                      ParamByName('parnm_mat').Value:=MemItempo['nm_material'];
                      ParamByName('parpemb').Value:=MemItempo['pemb_ppn_us'];
                      ParamByName('parpemb_dpp').Value:=MemItempo['pemb_dpp'];
            ExecSQL;
         end;
         MemItempo.Next;
      end;
    end;

    if EdCurr.Text='IDR' then
    begin
      MemItempo.First;
      while not MemItempo.Eof do
      begin
         with dm.Qtemp2 do
         begin
            Close;
            sql.Clear;
            sql.Text:='insert into purchase.t_podetail(po_no,item_stock_code,qty,price,unit,wh_code,conv_currency,'+
                      ' qty_sent,total_payment,remaining_payment,remaining_qty,subtotal,ppn,ppn_rp,pph,pph_rp,'+
                      ' grandtotal,qty_sp,remaining_sp,item_name,pemb_ppn,pemb_dpp)values(:parnopo,:parkd_materialstok,:parqty,:parharga,:parsatuan,'+
                      ' :pargudang,:parconv_currency,:parqtyterkirim,:partotalbayar,:parsisabayar,'+
                      ' :parsisaqty,:parsubtotal,:parppn,:parppn_rp,:parpph,:parpph_rp,:pargrandtotal,'+
                      ' :parqtysp,:parsisasp,:parnm_mat,:parpemb,:parpemb_dpp)';
                      ParamByName('parnopo').Value:=EdNopo.Text;
                      ParamByName('parkd_materialstok').Value:=MemItempo['kd_material_stok'];
                      ParamByName('parqty').Value:=MemItempo['qty'];
                      ParamByName('parharga').Value:=MemItempo['harga_rp'];
                      ParamByName('parsatuan').Value:=MemItempo['satuan'];
                      //ParamByName('pargudang').Value:=MemItempo['gudang'];
                      ParamByName('pargudang').Value:=Ed_kd_wh.Text;
                      ParamByName('parconv_currency').Value:='0';
                      ParamByName('parqtyterkirim').Value:=MemItempo['qtyterkirim'];
                      ParamByName('partotalbayar').Value:=MemItempo['totalbayar'];
                      ParamByName('parsisabayar').Value:=MemItempo['sisabayar'];
                      ParamByName('parsisaqty').Value:=MemItempo['sisaqty'];
                      ParamByName('parsubtotal').Value:=MemItempo['subtotal_rp']+MemItempo['pemb_dpp'];
                      ParamByName('parppn').Value:=MemItempo['ppn'];
                      ParamByName('parppn_rp').Value:=MemItempo['ppn_rp'];
                      ParamByName('parpph').Value:=MemItempo['pph'];
                      ParamByName('parpph_rp').Value:=MemItempo['pph_rp'];
                      ParamByName('pargrandtotal').Value:=MemItempo['grandtotalrp'];
                      ParamByName('parqtysp').Value:='0';
                      ParamByName('parsisasp').Value:=MemItempo['qty'];
                      ParamByName('parnm_mat').Value:=MemItempo['nm_material'];
                      ParamByName('parpemb').Value:=MemItempo['pemb_ppn'];
                      ParamByName('parpemb_dpp').Value:=MemItempo['pemb_dpp'];
            ExecSQL;
         end;
         MemItempo.Next;
      end;
    end;

    with dm.Qtemp do
    begin
       close;
       sql.Clear;
       sql.Text:='select * from purchase.t_po ';
       ExecSQL;
    end;
    if Statustr2=1 then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:=' update purchase.t_po set contract_no=:parno_kontrak,po_date=:partgl_po,supplier_code=:parkd_supplier'+
                  ' ,pph23=:parpph23,ppn=:parppn,po_type=:parjenispo,valas=:parvalas,valas_value=:parnilai_valas'+
                  ' ,order_no=:parno_urut,remarks=:parket,type=:parjenis,division_code=:parkd_divisi'+
                  ' ,transportation_type=:parjenisangkutan,"Subtotal"=:parSubtotal,"Grandtotal"=:parGrandtotal'+
                  ' ,due_date=:parjatuh_tempo,"PPn_Rp"=:parppn_rp,"PPh_Rp"=:parpph_rp,delivery_date=:partgl_delivery'+
                  ' ,delivery2_date=:partgl_delivery2,wh_code=:pargudang, pic=:parpic,um_status=:parstatus_um,correction_status=:parst_kr,'+
                  ' um_value=:parn_um,um_account_code=:parkd_akunum,as_status=:parstatus_as,trans_category=:parkt, '+
                  ' sbu_code=:parkd_sbu,correction_status=:parsk,status=:parstatus where po_no=:parnopo';
                  ParamByName('parst_kr').AsString:='0';
                  ParamByName('parno_kontrak').Value:=Edno_kontrak.Text;
                  ParamByName('partgl_po').Value:=FormatDateTime('yyy-mm-dd',DtPO.Date);
                  ParamByName('parkd_supplier').Value:=EdKd_supp.Text;
                  ParamByName('parpph23').Value:=EdPPh23.Text;
                  ParamByName('parppn').Value:=EdPPn.Text;
                  ParamByName('parjenispo').Value:=EdStatus.Text;
                  ParamByName('parvalas').Value:=EdCurr.Text;
                  ParamByName('parnilai_valas').Value:=Ednilai_curr.Text;
                  ParamByName('parno_urut').Value:=EdNo.Text;
                  ParamByName('parket').Value:=edket.text;
                  ParamByName('parjenis').Value:=Edjenispo.Text;
                  ParamByName('parkd_divisi').Value:=Kd_SBU;
                  ParamByName('parjenisangkutan').Value:=EdJenisAngkut.Text;
                  ParamByName('parSubtotal').Value:=FloatToStr(Subtotal);
                  ParamByName('parGrandtotal').Value:=FloatToStr(grandtotal);
                  ParamByName('parjatuh_tempo').Value:=Edjatuh_tempo.Text;
                  ParamByName('parPPn_Rp').value:=FloatToStr(ppn);
                  ParamByName('parPPh_Rp').Value:=FloatToStr(pph);
                  ParamByName('partgl_delivery').value:=FormatDateTime('yyy-mm-dd',DtDelivery.Date);
                  ParamByName('partgl_delivery2').value:=FormatDateTime('yyy-mm-dd',DtDelivery2.Date);
                  //ParamByName('pargudang').Value:=cb_gudang.Text;
                  ParamByName('pargudang').Value:=cb_gudang.Text;
                  ParamByName('parpic').Value:=Nm;
                  ParamByName('parnopo').Value:=EdNopo.Text;
                  ParamByName('parstatus_um').Value:=status_um;
                  ParamByName('parn_um').Value:=EdUM.value;
                  ParamByName('parkd_akunum').Value:=Edkd_akun.Text;
                  ParamByName('parstatus_as').Value:=status_as;
                  ParamByName('parkt').Value:=kategori_tr;
                  ParamByName('parkd_sbu').Value:=Edsbu.Text;
                  ParamByName('parsk').Value:='0';
                  ParamByName('parstatus').Value:='0';
        ExecSQL;
      end;
    end;
    if Statustr2<>1 then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:=' update purchase.t_po set contract_no=:parno_kontrak,po_date=:partgl_po,supplier_code=:parkd_supplier'+
                  ' ,pph23=:parpph23,ppn=:parppn,po_type=:parjenispo,valas=:parvalas,valas_value=:parnilai_valas'+
                  ' ,order_no=:parno_urut,remarks=:parket,type=:parjenis,division_code=:parkd_divisi'+
                  ' ,transportation_type=:parjenisangkutan,"Subtotal"=:parSubtotal,"Grandtotal"=:parGrandtotal'+
                  ' ,due_date=:parjatuh_tempo,"PPn_Rp"=:parppn_rp,"PPh_Rp"=:parpph_rp,delivery_date=:partgl_delivery'+
                  ' ,delivery2_date=:partgl_delivery2,wh_code=:pargudang, pic=:parpic,um_status=:parstatus_um,correction_status=:parst_kr,'+
                  ' um_value=:parn_um,um_account_code=:parkd_akunum,as_status=:parstatus_as,trans_category=:parkt, '+
                  ' sbu_code=:parkd_sbu where po_no=:parnopo';
                  ParamByName('parst_kr').AsString:='0';
                  ParamByName('parno_kontrak').Value:=Edno_kontrak.Text;
                  ParamByName('partgl_po').Value:=FormatDateTime('yyy-mm-dd',DtPO.Date);
                  ParamByName('parkd_supplier').Value:=EdKd_supp.Text;
                  ParamByName('parpph23').Value:=EdPPh23.Text;
                  ParamByName('parppn').Value:=EdPPn.Text;
                  ParamByName('parjenispo').Value:=EdStatus.Text;
                  ParamByName('parvalas').Value:=EdCurr.Text;
                  ParamByName('parnilai_valas').Value:=Ednilai_curr.Text;
                  ParamByName('parno_urut').Value:=EdNo.Text;
                  ParamByName('parket').Value:=edket.text;
                  ParamByName('parjenis').Value:=Edjenispo.Text;
                  ParamByName('parkd_divisi').Value:=Kd_SBU;
                  ParamByName('parjenisangkutan').Value:=EdJenisAngkut.Text;
                  ParamByName('parSubtotal').Value:=FloatToStr(Subtotal);
                  ParamByName('parGrandtotal').Value:=FloatToStr(grandtotal);
                  ParamByName('parjatuh_tempo').Value:=Edjatuh_tempo.Text;
                  ParamByName('parPPn_Rp').value:=FloatToStr(ppn);
                  ParamByName('parPPh_Rp').Value:=FloatToStr(pph);
                  ParamByName('partgl_delivery').value:=FormatDateTime('yyy-mm-dd',DtDelivery.Date);
                  ParamByName('partgl_delivery2').value:=FormatDateTime('yyy-mm-dd',DtDelivery2.Date);
                  ParamByName('pargudang').Value:=cb_gudang.Text;
                  ParamByName('parpic').Value:=Nm;
                  ParamByName('parnopo').Value:=EdNopo.Text;
                  ParamByName('parstatus_um').Value:=status_um;
                  ParamByName('parn_um').Value:=EdUM.value;
                  ParamByName('parkd_akunum').Value:=Edkd_akun.Text;
                  ParamByName('parstatus_as').Value:=status_as;
                  ParamByName('parkt').Value:=kategori_tr;
                  ParamByName('parkd_sbu').Value:=Edsbu.Text;
        ExecSQL;
      end;
    end;
end;

procedure TFNew_PO.BBatalClick(Sender: TObject);
begin
   Close;
end;

procedure TFNew_PO.BEditClick(Sender: TObject);
begin
      MemItempo.First;
      while not MemItempo.Eof do
      begin
        DBGridDetailColEnter(sender);
        MemItempo.Next;
      end;
      {with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT * FROM t_detail_bayar where  no_voucher='+QuotedStr(edno.Text);
        ExecSQL;
      end;
      if dm.Qtemp.RecordCount > 0 then
      begin
        MessageDlg('No. PO Sudah di Ajukan Pembayaran',MtWarning,[MbOk],0);
        EdNo.SetFocus;
        Exit;
      end;
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from tbl_det_lunas_hutang a INNER JOIN t_terima_material_det b on a.noinv=b.no_terima WHERE b.nopo='+QuotedStr(edno.Text);
        ExecSQL;
      end;
      if dm.Qtemp.RecordCount > 0 then
      begin
        MessageDlg('No. PO Sudah di Ajukan Pembayaran',MtWarning,[MbOk],0);
        EdNo.SetFocus;
        Exit;
      end;}
      if EdStatus.Text='' then
      begin
        MessageDlg('Status PO Tidak Boleh Kosong ',MtWarning,[MbOk],0);
        EdStatus.SetFocus;
        Exit;
      end;
      if EdNm_supp.Text='' then
      begin
        MessageDlg('Nama Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
        EdNm_supp.SetFocus;
        Exit;
      end;
      if EdCurr.Text='' then
      begin
        MessageDlg('Currency Tidak boleh Kosong ',MtWarning,[MbOk],0);
        EdCurr.SetFocus;
        Exit;
      end;
      if DtPO.Text='' then
      begin
        MessageDlg('Tanggal Po Tidak Boleh Kosong ',MtWarning,[MbOk],0);
        DtPO.SetFocus;
        Exit;
      end;
      if EdJenisAngkut.Text='' then
      begin
        MessageDlg('Jenis Angkutan Tidak Boleh Kosong ',MtWarning,[MbOk],0);
        EdJenisAngkut.SetFocus;
        Exit;
      end;
      if cb_gudang.Text='' then
      begin
        MessageDlg('Gudang Tidak Boleh Kosong ',MtWarning,[MbOk],0);
        cb_gudang.SetFocus;
        Exit;
      end;
      MemItempo.First;
      while not MemItempo.Eof do
      begin
      if DBGridDetail.Fields[0].AsString='' then
      begin
         MemItempo.Delete;
      end;
      MemItempo.Next;
      end;
      if not dm.koneksi.InTransaction then
      dm.koneksi.StartTransaction;
      try
      begin
        if EdStatus.Text='KONTRAK KERJASAMA' then
        begin
          Update;
        end
        else
          Update2;
          // update close po 03-04-2023
            {with dm.Qtemp do
            begin
              close;
              sql.Clear;
              sql.Text:='SELECT * from t_pengajuan_koreksi WHERE no_transaksi='+QuotedStr(EdNopo.Text);
              Open;
            end;
            if dm.Qtemp.RecordCount=1 then
            begin
               with dm.QTemp2 do
               begin
                 close;
                 sql.Clear;
                 sql.Text:='update t_po set status=''0'',status_koreksi=''0'' where nopo='+QuotedStr(EdNopo.Text);
                 ExecSQL;
               end;
            end;}
        dm.koneksi.Commit;
        Messagedlg(' Data Berhasil di Simpan ',MtInformation,[Mbok],0);
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

procedure TFNew_PO.BSimpanClick(Sender: TObject);
begin
    if EdStatus.Text='' then
    begin
      MessageDlg('Status PO Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      EdStatus.SetFocus;
      Exit;
    end;
    if EdNm_supp.Text='' then
    begin
      MessageDlg('Nama Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNm_supp.SetFocus;
      Exit;
    end;
    if DtPO.Text='' then
    begin
      MessageDlg('Tanggal Po Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      DtPO.SetFocus;
      Exit;
    end;
    if EdJenisAngkut.Text='' then
    begin
      MessageDlg('Jenis Angkutan Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      EdJenisAngkut.SetFocus;
      Exit;
    end;
    if cb_gudang.Text='' then
    begin
      MessageDlg('Gudang Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      cb_gudang.SetFocus;
      Exit;
    end;

    MemItempo.First;
    while not MemItempo.Eof do
    begin
    if DBGridDetail.Fields[0].AsString='' then
    begin
       MemItempo.Delete;
    end;
    if DBGridDetail.Fields[24].AsString='' then
    begin
      MessageDlg('Gudang Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DBGridDetail.SetFocus;
      Exit;
    end;
    MemItempo.Next;
    end;

    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
    begin
       Autonumber;
       if EdStatus.Text='KONTRAK KERJASAMA' then
       begin
         Simpan;
       end
       else
         Simpan2;
         dm.koneksi.Commit;
         Messagedlg(' Data Berhasil di Simpan ',MtInformation,[Mbok],0);
         //BBatalClick(sender);
       end
       Except
       on E :Exception do
       begin
         MessageDlg(E.Message,mtError,[MBok],0);
         dm.koneksi.Rollback;
       end;
    end;
    //Fpo.ActBaru.OnExecute(sender);
    Close;


    //Autonumber;
    //simpan;
end;

procedure TFNew_PO.Button1Click(Sender: TObject);
begin
  Autonumber;
end;

procedure TFNew_PO.cb_gudangSelect(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_wh where wh_name='+Quotedstr(cb_gudang.Text);
    open;
  end;
  Ed_kd_wh.Text:=dm.Qtemp.FieldByName('wh_code').AsString;

end;

procedure TFNew_PO.ckAsClick(Sender: TObject);
begin
    if ckAs.Checked=True then
    begin
      status_as:='1';
    end
     else
    if ckAs.Checked=False then
    begin
      status_as:='0';
    end;
end;

procedure TFNew_PO.load_no_kontrak;
begin
   with dm.Qtemp do
   begin
      close;
      sql.Clear;
      sql.Text:='select * from purchase.t_coop_contract where supplier_code='+QuotedStr(Edkd_supp.Text)+'  and approval_status=''1'' and status = ''1'' ';
      Open;
   end;
   Edno_kontrak.Items.Clear;
   dm.Qtemp.First;
   while not dm.Qtemp.Eof do
   begin
     Edno_kontrak.Items.Add(dm.Qtemp['contract_no']);
     dm.Qtemp.Next;
   end;
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

Function Ribuan(Edit : TRzEdit):String;
var
  NilaiRupiah: string;
  AngkaRupiah: Currency;
begin
if Edit.Text='0' then Exit;
  NilaiRupiah := Edit.text;
  NilaiRupiah := StringReplace(NilaiRupiah,',','',[rfReplaceAll,rfIgnoreCase]);
//  NilaiRupiah := StringReplace(NilaiRupiah,',','',[rfReplaceAll,rfIgnoreCase]);
  AngkaRupiah := StrToCurrDef(NilaiRupiah,0);
  Edit.Text := FormatCurr('#,###',AngkaRupiah);
  Edit.SelStart := length(Edit.text);
end;

end.
