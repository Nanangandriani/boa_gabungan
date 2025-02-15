unit URekapSisa_PO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni, frxClass,
  frxDBSet, Vcl.StdCtrls, Vcl.Samples.Spin, RzCmboBx, RzButton, Vcl.ExtCtrls,
  Vcl.Mask, RzEdit, Vcl.Buttons, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, DataDriverEh, MemTableEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, cxCalendar, cxDropDownEdit, dxBar, cxBarEditItem,
  cxClasses, dxRibbon;

type
  TFRekapSisa_PO = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    DtMulai1: TRzDateTimeEdit;
    DtSelesai1: TRzDateTimeEdit;
    Label7: TLabel;
    Rpt: TfrxReport;
    QRekapSisaPO: TUniQuery;
    DbRekapSisaPO: TfrxDBDataset;
    Label8: TLabel;
    EdJenis: TRzComboBox;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    BProduksi: TdxBarButton;
    BNonProduksi: TdxBarButton;
    BClosed: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    CbKategori: TcxBarEditItem;
    DBGridKontrak: TDBGridEh;
    DsRekapSisa_PO: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NamaBulan : array [1..12] of string;
    bulan:string;
  Procedure NmBulan;
  Procedure load;
  
  end;

Function  FRekapSisa_PO: TFRekapSisa_PO;
var  Tgl,Bln,Thn:string;

implementation

{$R *.dfm}

uses UDataModule, UMainmenu, UMy_Function;
var
  realFRekapSisa_PO: TFRekapSisa_PO;
// implementasi function
function FRekapSisa_PO: TFRekapSisa_PO;
begin
  if realFRekapSisa_PO <> nil then
    FRekapSisa_PO:= realFRekapSisa_PO
  else
    Application.CreateForm(TFRekapSisa_PO, Result);
end;

procedure TFRekapSisa_PO.Load;
var
  comboProps: TcxComboBoxProperties;
begin
  if not (CbKategori.Properties is TcxComboBoxProperties) then
    raise Exception.Create('Properties harus bertipe TcxComboBoxProperties!');
  comboProps := TcxComboBoxProperties(CbKategori.Properties);
  comboProps.Items.Clear;
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:=' select * from t_item_type';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    Comboprops.Items.Add(Dm.Qtemp['type']);
    Dm.Qtemp.Next;
  end;
end;

procedure TFRekapSisa_PO.BBatalClick(Sender: TObject);
begin
close;
end;

procedure TFRekapSisa_PO.BPrintClick(Sender: TObject);
var fmt:TFormatSettings;
  subquery,subquery2,tgl1,tgl2:string;
begin
{    if DtMulai.EditValue= null then
    begin
      MessageDlg('Tanggal Mulai Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtMulai.SetFocus;
      Exit;
    end;  }
 {   if DtSelesai.EditValue= null then
    begin
      MessageDlg('Tanggal Selesai Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtSelesai.SetFocus;
      Exit;
    end;
    DM.refreshperusahaan;     
   // tgl1:=FormatDateTime('yyyy-mm-dd',DtMulai.EditValue);
    tgl2:=FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue);
    //NmBulan;
    subquery:='select a.po_date,a.po_no,a.delivery_date,a.delivery2_date,c.supplier_name,d.faktur_no,b.item_name, to_char(d.trans_date, ''dd mon yy'')as tglterima,'+
            ' d.qty,b.remaining_qty,b.price,b.item_stock_code,a.sbu_code, a.trans_category,e.wh_name,'+
            ' concat(a.delivery_date,'' - '',a.delivery2_date)delivery from t_po a INNER JOIN t_podetail b on a.po_no=b.po_no inner join t_supplier c on  a.supplier_code=c.supplier_code Left JOIN ( '+
            ' SELECT a.trans_date,b.qty,b.price,b.po_no,a.faktur_no from t_purchase_invoice a INNER JOIN '+
            ' t_purchase_invoice_det b on a.trans_no=b.trans_no where '+// a.trans_date>='+quotedstr(tgl1)+' and
            ' a.trans_date='+quotedstr(tgl2)+''+
            ' )as d on d.po_no=a.po_no INNER JOIN t_wh e on b.wh_code=e.wh_code where b.remaining_qty<>0 and a.status=''1'' '+
            ' and a.as_status=''1'' and a. trans_category='+QuotedStr(CbKategori.EditValue);
    subquery2:='select a.po_date,a.po_no,a.delivery_date,a.delivery2_date,c.supplier_name,d.faktur_no,b.item_name,'+
            ' to_char(d.trans_date, ''dd mon yy'')as tglterima,d.qty,b.remaining_qty,b.price,b.item_stock_code,'+
            ' a.sbu_code, a.trans_category,e.wh_name,concat(a.delivery_date,'' - '',a.delivery2_date)delivery from t_po a INNER JOIN t_podetail b on a.po_no=b.po_no'+
            ' inner join t_supplier c on a.supplier_code=c.supplier_code inner JOIN (SELECT a.trans_date,b.qty,b.price,b.po_no,a.faktur_no,b.item_stock_code'+
            ' from t_purchase_invoice a INNER JOIN t_purchase_invoice_det b on a.trans_no=b.trans_no where  '+
            //' a.trans_date>='+quotedstr(tgl1)+' and
            ' a.trans_date='+quotedstr(tgl2)+') as d on d.po_no=a.po_no '+
            ' and b.item_stock_code=d.item_stock_code INNER JOIN t_wh e on b.wh_code=e.wh_code where /*b.sisaqty=0 and*/ '+
            ' a.as_status=''1'' and a.trans_category='+QuotedStr(CbKategori.EditValue); 

      if loksbu='' then
      begin
        with QRekapSisaPO do
        begin
           close;
           sql.Clear;
           sql.Text:=subquery +' union '+subquery2+' order by po_date,po_date asc';
           ExecSQL;
        end;
        if status_akses<>'True' then
        begin
          Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_RekapSisaPO.Fr3');
        //  Tfrxmemoview(Rpt.FindObject('MSBU')).Memo.Text:=dm.QPerusahaan['kode_perusahaan'];
          ///Tfrxmemoview(Rpt.FindObject('MGudang')).Memo.Text:=CbGudang.Text;
          Tfrxmemoview(Rpt.FindObject('MPeriode')).Memo.Text:=' Tanggal :'+FormatDateTime('dd mmm yyy',DtSelesai.editvalue);
          //frxReport1.Script.Variables['varPathGambar']:='Report\PMA.PNG';
          //TfrxPictureView(Rpt.FindObject('Picture2')).Picture.loadfromfile('Report\Logo.jpg');
          Rpt.ShowReport();
        end;
        if status_akses='True' then
        begin
          Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_RekapSisaPO_Dr.Fr3');
         // Tfrxmemoview(Rpt.FindObject('MSBU')).Memo.Text:=dm.QPerusahaan['kode_perusahaan'];
          ///Tfrxmemoview(Rpt.FindObject('MGudang')).Memo.Text:=CbGudang.Text;
          Tfrxmemoview(Rpt.FindObject('MPeriode')).Memo.Text:=' Tanggal :'+FormatDateTime('dd mmm yyy',DtSelesai.editvalue);
          //frxReport1.Script.Variables['varPathGambar']:='Report\PMA.PNG';
          //TfrxPictureView(Rpt.FindObject('Picture2')).Picture.loadfromfile('Report\Logo.jpg');
          Rpt.ShowReport();
        end;
      end;

      if loksbu<>'' then
      begin
        with QRekapSisaPO do
        begin
           close;
           sql.Clear;
           sql.Text:=subquery +' and sbu_code='+QuotedStr(loksbu)+''+
                      ' union'+subquery2+' and sbu_code='+QuotedStr(loksbu)+''+
                      ' order by po_date,po_no asc';
           ExecSQL;
        end;                        }
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_RekapSisaPO.Fr3');
      //Tfrxmemoview(Rpt.FindObject('MSBU')).Memo.Text:=dm.QPerusahaan['kode_perusahaan'];
      ///Tfrxmemoview(Rpt.FindObject('MGudang')).Memo.Text:=CbGudang.Text;
      //Tfrxmemoview(Rpt.FindObject('MPeriode')).Memo.Text:=FormatDateTime('dd MMMM',DtMulai.editvalue)+'-'+FormatDateTime('dd MMMM yyy',DtSelesai.Date);
      //frxReport1.Script.Variables['varPathGambar']:='Report\PMA.PNG';
      //TfrxPictureView(Rpt.FindObject('Picture2')).Picture.loadfromfile('Report\Logo.jpg');
      Tfrxmemoview(Rpt.FindObject('MPeriode')).Memo.Text:=' Tanggal :'+FormatDateTime('dd mmm yyy',Dtselesai.editvalue);
      Rpt.ShowReport();
end;

procedure TFRekapSisa_PO.DxRefreshClick(Sender: TObject);
var tgl1,tgl2,subquery,subquery2:string;
begin
 {   if DtMulai.EditValue= null then
    begin
      MessageDlg('Tanggal Mulai Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtMulai.SetFocus;
      Exit;
    end; }
    if DtSelesai.EditValue= null then
    begin
      MessageDlg('Tanggal  Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtSelesai.SetFocus;
      Exit;
    end;
 //tgl1:=FormatDateTime('yyyy-mm-dd',DtMulai.EditValue);
  tgl2:=FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue);
  subquery:='select a.po_date,a.po_no,a.delivery_date,a.delivery2_date,c.supplier_name,d.faktur_no,b.item_name, to_char(d.trans_date, ''dd mon yy'')as tglterima,'+
    ' d.qty,b.remaining_qty,b.price,b.item_stock_code,a.sbu_code, a.trans_category,e.wh_name,'+
    ' concat(a.delivery_date,'' - '',a.delivery2_date)delivery from t_po a INNER JOIN t_podetail b on a.po_no=b.po_no inner join t_supplier c on  a.supplier_code=c.supplier_code Left JOIN ( '+
    ' SELECT a.trans_date,b.qty,b.price,c.po_no,a.faktur_no from t_purchase_invoice a INNER JOIN  '+
    ' t_purchase_invoice_det b on a.trans_no=b.trans_no INNER JOIN t_item_receive_det c ON A.ref_no=c.receive_no where  a.trans_date='+quotedstr(tgl2)+' and a.ref_code=''PB'''+
    ' UNION '+
    ' SELECT a.trans_date,b.qty,b.price,a.ref_no,a.faktur_no from t_purchase_invoice a INNER JOIN  '+
    ' t_purchase_invoice_det b on a.trans_no=b.trans_no where  a.trans_date='+quotedstr(tgl2)+' and a.ref_code<>''PB'' '+
    ' )as d on d.po_no=a.po_no INNER JOIN t_wh e on a.wh_code=e.wh_code where b.remaining_qty<>0 and a.status=''1'' '+
    ' and a.as_status=''1'' and a. trans_category='+QuotedStr(CbKategori.EditValue);
  subquery2:=' select a.po_date,a.po_no,a.delivery_date,a.delivery2_date,c.supplier_name,d.faktur_no,b.item_name,'+
    ' to_char(d.trans_date, ''dd mon yy'')as tglterima,d.qty,b.remaining_qty,b.price,b.item_stock_code,'+
    ' a.sbu_code, a.trans_category,e.wh_name,concat(a.delivery_date,'' - '',a.delivery2_date)delivery from t_po a INNER JOIN t_podetail b on a.po_no=b.po_no'+
    ' inner join t_supplier c on a.supplier_code=c.supplier_code inner JOIN (SELECT a.trans_date,b.qty,b.price,b.po_no,a.faktur_no,b.item_stock_code'+
    ' from t_purchase_invoice a INNER JOIN t_purchase_invoice_det b on a.trans_no=b.trans_no where  '+
    //' a.trans_date>='+quotedstr(tgl1)+' and
    ' a.trans_date='+quotedstr(tgl2)+') as d on d.po_no=a.po_no '+
    ' and b.item_stock_code=d.item_stock_code INNER JOIN t_wh e on b.wh_code=e.wh_code where /*b.sisaqty=0 and*/ '+
    ' a.as_status=''1'' and   a.trans_category='+QuotedStr(CbKategori.EditValue);
    if loksbu<>'' then
      begin
        with QRekapSisaPO do
        begin
           close;
           sql.Clear;
           sql.Text:=subquery +' and a.sbu_code='+QuotedStr(loksbu)+''+
                      ' union'+subquery2+' and a.sbu_code='+QuotedStr(loksbu)+''+
                      ' order by po_date,po_no asc';
           ExecSQL;
        end;
      end;
      if loksbu='' then
      begin
        with QRekapSisaPO do
        begin
           close;
           sql.Clear;
           sql.Text:=subquery +' union'+subquery2+' order by po_date,po_no asc';
           ExecSQL;
        end;
      end;
  QRekapSisaPO.Open;
end;

procedure TFRekapSisa_PO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFRekapSisa_PO.FormCreate(Sender: TObject);
begin
  realfRekapSisa_PO:=self;
end;

procedure TFRekapSisa_PO.FormDestroy(Sender: TObject);
begin
    realfRekapSisa_PO:=nil;
end;

procedure TFRekapSisa_PO.FormShow(Sender: TObject);
begin
//NmBulan;
 Load;
 DtMulai.EditValue:=date;
 DtSelesai.EditValue:=date;
end;

procedure TFRekapSisa_PO.NmBulan;
begin
  {Tag := 0;
  Tag := Tag + 1; NamaBulan[Tag] := 'January';
  Tag := Tag + 1; NamaBulan[Tag] := 'February';
  Tag := Tag + 1; NamaBulan[Tag] := 'Maret';
  Tag := Tag + 1; NamaBulan[Tag] := 'April';
  Tag := Tag + 1; NamaBulan[Tag] := 'Mey';
  Tag := Tag + 1; NamaBulan[Tag] := 'Juni';
  Tag := Tag + 1; NamaBulan[Tag] := 'July';
  Tag := Tag + 1; NamaBulan[Tag] := 'Agustus';
  Tag := Tag + 1; NamaBulan[Tag] := 'September';
  Tag := Tag + 1; NamaBulan[Tag] := 'Oktober';
  Tag := Tag + 1; NamaBulan[Tag] := 'November';
  Tag := Tag + 1; NamaBulan[Tag] := 'Desember';     }
  bln:=FormatDateTime('mm',DtSelesai.editvalue);
  if bln='1' then bulan:= 'January';
  if bln='2' then bulan:= 'February';
  if bln='3' then bulan:= 'Maret';
  if bln='4' then bulan:= 'April';
  if bln='5' then bulan:= 'Mey';
  if bln='6' then bulan:= 'Juni';
  if bln='7' then bulan:= 'July';
  if bln='8' then bulan:= 'Agustus';
  if bln='9' then bulan:= 'September';
  if bln='10' then bulan:= 'Oktober';
  if bln='11' then bulan:= 'November';
  if bln='12' then bulan:= 'Desember';
end;

procedure TFRekapSisa_PO.Panel1Click(Sender: TObject);
begin
with QRekapSisaPO do
begin
   close;
   sql.Clear;
   sql.Text:='select a.tgl_po,a.nopo,a.tgl_delivery,a.tgl_delivery2, c.nm_supplier,'+
              ' d.nofaktur, b.nm_material,to_char(d.tgl_terima, ''dd mon yy'')as tglterima,'+
              ' d.qty,b.sisaqty,b.harga from t_po a INNER JOIN t_podetail b on '+
              ' a.nopo=b.nopo inner join t_supplier c on a.kd_supplier=c.kd_supplier '+
              ' Left JOIN (SELECT a.tgl_terima,b.qty,b.harga,b.nopo,a.nofaktur from '+
              ' t_terima_material a INNER JOIN t_terima_material_det b on a.no_terima=b.no_terima where '+
              ' a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',Dtselesai.editvalue))+')as d'+
              ' on d.nopo=a.nopo where b.sisaqty<>0  and a.status=''1'' and a.status_as=''1'' order by a.tgl_po asc';
   ExecSQL;
end;
Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_RekapSisaPO.Fr3');
//Tfrxmemoview(Rpt.FindObject('MSBU')).Memo.Text:=SBU;
///Tfrxmemoview(Rpt.FindObject('MGudang')).Memo.Text:=CbGudang.Text;
Tfrxmemoview(Rpt.FindObject('MPeriode')).Memo.Text:=' Tanggal :'+FormatDateTime('dd MMMM yyy',DtMulai.editvalue);
//frxReport1.Script.Variables['varPathGambar']:='Report\PMA.PNG';
//TfrxPictureView(Rpt.FindObject('Picture2')).Picture.loadfromfile('Report\Logo.jpg');
Rpt.DesignReport();
end;

initialization
RegisterClass(TFRekapSisa_PO);

end.
