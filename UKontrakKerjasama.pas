unit UKontrakKerjasama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBasic, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh,
  Data.DB, frxClass, frxDBSet, MemDS, DBAccess, Uni, MemTableEh, DataDriverEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFKontrakkerjasama = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridKontrak: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DsKerjasama: TDataSource;
    DataSetDriverEh1: TDataSetDriverEh;
    Memkerjasama: TMemTableEh;
    QKerjasama: TUniQuery;
    DsKerjasama_det: TDataSource;
    QRptKontrak: TUniQuery;
    Rpt: TfrxReport;
    Dbrpt: TfrxDBDataset;
    DsRptKontrak: TDataSource;
    QKerjasama_det: TUniQuery;
    MemTableEh1: TMemTableEh;
    DataSource1: TDataSource;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure DBGridKontrakCellClick(Column: TColumnEh);
    procedure ActDelExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActCloseExecute(Sender: TObject);
    procedure ActAppExecute(Sender: TObject);
    procedure ActRejectExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure Refresh;
    Procedure Autonumber;
    Procedure Load;
    Procedure Load_category;
  end;

var
  FKontrakkerjasama: TFKontrakkerjasama;
  urut:integer;
  Bln,th,kode:string;

implementation

{$R *.dfm}

uses UNew_KontrakKerjasama, UDataModule;

function terbilang(dNumber: Extended): string;
const
     aNum: array[1..9] of String = ('Satu', 'Dua', 'Tiga', 'Empat', 'Lima', 'Enam', 'Tujuh', 'Delapan', 'Sembilan');
     aUnit: array[1..5] of String = ('trilyun', 'milyar', 'juta', 'ribu', '');
var
     iCount, iDigit1, iDigit2, iDigit3: Integer;
     sNum2Str, s3Digit, sWord: string;
begin

    Result := '';
     if (dNumber=0) then Exit;
     sNum2Str:=Copy(Format('%18.2f', [dNumber]), 1, 15);
     for ICount:=1 to 5 do
     begin
       s3Digit:=Copy(sNum2Str, iCount*3-2, 3);
       if (StrToIntDef(s3Digit, 0)<>0) then
       begin
       sWord:='';
       iDigit1:=StrToIntDef(Copy(s3Digit, 1, 1), 0);
       iDigit2:=StrToIntDef(Copy(s3Digit, 2, 1), 0);
       iDigit3:=StrToIntDef(Copy(s3Digit, 3, 1), 0);
          case iDigit1 of
           2..9: sWord:=sWord+aNum[iDigit1]+' Ratus ';
           1: sWord:=sWord+'Seratus ';
           end; { case }

          case iDigit2 of
           2..9: sWord:=sWord+aNum[iDigit2]+' Puluh ';
           1: case iDigit3 of
           2..9: sWord:=sWord+aNum[iDigit3]+' Belas ';
           1: sWord:=sWord+'Sebelas ';
           0: sWord:=sWord+'Sepuluh ';
           end; { case }
           end; { case }

        if (iDigit2<>1) then
         case iDigit3 of
         2..9: sWord:=sWord + aNum[iDigit3] + ' ';
         1: if (iCount=4) and ((iDigit1+iDigit2)=0) then
         sWord:=sWord+'Se'
         else
         sWord:=sWord+'Satu ';
         end;
         Result:=Result+sWord+aUnit[iCount]+' ';
         end;
    end;
    while Result[Length(Result)]=' ' do
    SetLength(Result, Length(Result)-1);
end;

procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);
var
  memo: TfrxMemoView;
begin
  memo := aReport.FindObject(aMemoName) as TfrxMemoView;
  if memo <> nil then
    memo.Text := aText;
end;


procedure TFKontrakkerjasama.Refresh;
begin

end;

procedure TFKontrakkerjasama.Clear;
begin
  with FNewKontrak_ks do
  begin
    //MemMaterial['harga']:=0;
    EdNo.Text:='';
    EdKd_supp.Text:='';
    EdNm_supp.Text:='';
    Edtempo.Text:='';
    DtKontrak.Date:=now;
    DtSelesai.Date:=now;
    DtPengiriman.Date:=now;
    DtBln.Date:=now;
    DtTahun.Date:=now;
    EdKet.Text:='';
    EdCurr.Text:='';
    CbJenis.Text:='';
    CbKategori.Text:='';
    EdNo_kontrak.Clear;
    CB_kirim.text:='';
    EdnilaiCurr.Value:=1;
    MemMaterial.EmptyTable;
  end;
end;

procedure TFKontrakkerjasama.DBGridKontrakCellClick(Column: TColumnEh);
begin
   { if DBGridKontrak.Fields[8].AsString='PRODUKSI' then
    begin
    BProduksi.Enabled:=True;
    BNonProduksi.Enabled:=False;
    end;
    if DBGridKontrak.Fields[8].AsString='NON PRODUKSI' then
    begin
      BNonProduksi.Enabled:=TRUE;
      BProduksi.Enabled:=FALSE;
    end;
    if ((DBGridKontrak.Fields[9].AsString='APPROVE') and (DBGridKontrak.Fields[10].AsString='SELESAI'))
    // or ((DBGridKontrak.Fields[9].AsString='APPROVE') or (DBGridKontrak.Fields[10].AsString='SELESAI'))
    then
    begin
      ActApp.Enabled:=False;
      ActReject.Enabled:=False;
    end;
    if (DBGridKontrak.Fields[9].AsString='REJECT') and (DBGridKontrak.Fields[10].AsString='SELESAI') then
    begin
      ActApp.Enabled:=False;
      ActReject.Enabled:=False;
    end;
    if (DBGridKontrak.Fields[9].AsString='PENGAJUAN') and (DBGridKontrak.Fields[10].AsString='AKTIF') then
    begin
      ActUpdate.Enabled:=True;
      ActClose.Enabled:=True;
      ActApp.Enabled:=True;
      ActReject.Enabled:=True;
    end;
    if DBGridKontrak.Fields[10].AsString='SELESAI' Then
    begin
      ActApp.Enabled:=False;
      ActReject.Enabled:=False;
      ActClose.Enabled:=False;
      ActUpdate.Enabled:=False;
    end;
    if DBGridKontrak.Fields[10].AsString<>'SELESAI' then
    begin
      ActUpdate.Enabled:=True;
      ActClose.Enabled:=True;
    end;
    if (DBGridKontrak.Fields[9].AsString='APPROVE') OR (DBGridKontrak.Fields[9].AsString='REJECT') then
    begin
      ActApp.Enabled:=False;
      ActReject.Enabled:=False;
    end;

    if DBGridKontrak.Fields[9].AsString='APPROVE' then
    begin
      BPrint.Enabled:=True;
      ActUpdate.Enabled:=False;
    end;
    if DBGridKontrak.Fields[9].AsString<>'APPROVE' then
    begin
      ActUpdate.Enabled:=True;
      BPrint.Enabled:=False;
    end;}
end;

procedure TFKontrakkerjasama.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Dm.Koneksi.Close;
end;

procedure TFKontrakkerjasama.ActAppExecute(Sender: TObject);
begin
    {if messageDlg ('Yakin Approve No.'+DBGridKontrak.Fields[0].AsString+' ini '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
    then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Update t_kontrak_kerjasama set "Status_Approval"=''1'', tgl_kontrak=now(), approval='+QuotedStr(Nm)+' where no_kontrak='+QuotedStr(DBGridKontrak.Fields[0].AsString);
      Execute;
    end;
    ActROExecute(sender);
    ShowMessage('Data Berhasil di Approve');
    end; }
end;

procedure TFKontrakkerjasama.ActBaruExecute(Sender: TObject);
begin
    Try
    with FNewKontrak_ks do
    begin
      Show;
      Self.Clear;
      //EdnilaiCurr.Value:=1;
      Bln:=FNewKontrak_ks.DtBln.Text;
      th:=FNewKontrak_ks.DtTahun.Text;
      //Autonumber;
      Self.Load;
      BSimpan.Visible:=true;
      BEdit.Visible:=false;
      Caption:='New Kontrak Kerjasama';
    end;
    Except;
    End;

end;

procedure TFKontrakkerjasama.ActCloseExecute(Sender: TObject);
begin
    if messageDlg ('Yakin Close Kontrak No. '+DBGridKontrak.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
    then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Update t_kontrak_kerjasama set status=''0'' where no_kontrak='+QuotedStr(DBGridKontrak.Fields[0].AsString);
      Execute;
    end;
    ActROExecute(sender);
    ShowMessage('Kontrak Berhasil di Close');
    end;
end;

procedure TFKontrakkerjasama.ActDelExecute(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridKontrak.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
    then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Delete From t_kontrak_kerjasama where no_kontrak='+QuotedStr(DBGridKontrak.Fields[0].AsString);
      Execute;
    end;
    ActROExecute(sender);
    ShowMessage('Data Berhasil di Hapus');
    end;
end;

procedure TFKontrakkerjasama.ActRejectExecute(Sender: TObject);
begin
    {if messageDlg ('Yakin Reject No.'+DBGridKontrak.Fields[0].AsString+' ini '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
    then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Update t_kontrak_kerjasama set "Status_Approval"=''2'',tgl_kontrak=now(), approval='+QuotedStr(Nm)+' where no_kontrak='+QuotedStr(DBGridKontrak.Fields[0].AsString);
      Execute;
    end;
    ActROExecute(sender);
    ShowMessage('Data Berhasil di Reject');
    end;}
end;


Procedure TFKontrakkerjasama.Autonumber;
begin
Bln:=FNewKontrak_ks.DtBln.Text;
th:=FNewKontrak_ks.DtTahun.Text;
with dm.Qtemp do
begin
  Close;
  SQL.clear;
  sql.Text:=' SELECT * FROM t_kontrak_kerjasama ';
  ExecSQL;
end;
if dm.Qtemp.RecordCount =0 then urut:=1 else
if dm.Qtemp.RecordCount >0 then
begin
with dm.Qtemp do
  begin
  close;
  sql.Clear;
  sql.Text:=' SELECT max(order_no)AS urut FROM t_coop_contract';
  execsql;
  end;
    urut:=Dm.Qtemp.FieldByName('urut').AsInteger+1;
end;
   kode:=FloatToStr(urut);
   kode:=Copy('000'+kode,length('000'+kode)-2,3);
   FNewKontrak_ks.Edno.Text:=kode;
   FNewKontrak_ks.EdNo_kontrak.Text:=kode+'/'+bln+'/'+th+'/'+'HKJ';
end;


Procedure TFKontrakkerjasama.Load;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.Text:='select * from t_supplier';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
//  FNewKontrak_ks.EdNm_supp.Items.Add(Dm.Qtemp.FieldByName('nm_supplier').AsString);
    Dm.Qtemp.Next;
  end;
end;

procedure TFKontrakkerjasama.ActROExecute(Sender: TObject);
begin
    DBGridKontrak.StartLoadingStatus();
    DBGridKontrak.FinishLoadingStatus();
    QKerjasama.close;
    Memkerjasama.Close;
    QKerjasama_det.Close;
    if Qkerjasama.Active=False then QKerjasama.Active:=True;
    if Memkerjasama.Active=false then Memkerjasama.Active:=True;
    if QKerjasama_det.Active=False then QKerjasama_det.Active:=True;
end;

procedure TFKontrakkerjasama.ActUpdateExecute(Sender: TObject);
begin
    if Memkerjasama['no_kontrak']='' then
    begin
      ShowMessage('Data Tidak Ada');
    end else
    with FNewKontrak_ks do
    begin
      Show;
      Self.Clear;
      BEdit.Visible:=true;
      BSimpan.Visible:=false;
      Caption:='Update Kontrak Kerjasama';

      QKerjasama_det.First;
      while not QKerjasama_det.Eof do
      begin
        with QKerjasama_det do
        begin
          FNewKontrak_ks.MemMaterial.Insert;
          FNewKontrak_ks.MemMaterial['kd_material']:=QKerjasama_det.FieldByName('kd_material_stok').AsString;
          FNewKontrak_ks.MemMaterial['nm_material']:=QKerjasama_det.FieldByName('nm_material').AsString;
          FNewKontrak_ks.MemMaterial['qty']:=QKerjasama_det.FieldByName('qty').AsString;
          FNewKontrak_ks.MemMaterial['harga']:=QKerjasama_det.FieldByName('harga').AsString;
          FNewKontrak_ks.MemMaterial['satuan']:=QKerjasama_det.FieldByName('satuan').AsString;
          FNewKontrak_ks.MemMaterial['total_harga']:=QKerjasama_det.FieldByName('total_harga').AsString;
          FNewKontrak_ks.MemMaterial['totalpo']:=QKerjasama_det.FieldByName('totalpo').AsString;
          FNewKontrak_ks.MemMaterial['sisaqty']:=QKerjasama_det.FieldByName('sisaqty').AsString;
          FNewKontrak_ks.MemMaterial['ppn']:=QKerjasama_det.FieldByName('ppn').AsString;
          FNewKontrak_ks.MemMaterial['ppn_rp']:=QKerjasama_det.FieldByName('ppn_rp').AsString;
         // FNewKontrak_ks.MemMaterial['grandtotal']:=QKerjasama_det.FieldByName('grandtotal').AsString;
          FNewKontrak_ks.MemMaterial['Spesifikasi']:=QKerjasama_det.FieldByName('spesifikasi').AsString;
          MemMaterial['subtotal_rp']:=QKerjasama_det.FieldByName('subtotal_rp').AsString;
          MemMaterial['grandtotal']:=QKerjasama_det.FieldByName('grandtotal').AsString;
          FNewKontrak_ks.MemMaterial.Post;
          end;
          QKerjasama_det.Next;
        end;
      //EdnilaiCurr.Text:='1';
        with Memkerjasama do
        begin
          Edno.Text:=Memkerjasama.FieldByName('no_urut').AsString;
          EdNo_kontrak.Text:=Memkerjasama.FieldByName('no_kontrak').AsString;
          EdKd_supp.Text:=Memkerjasama.FieldByName('kd_supplier').AsString;
          EdNm_supp.Text:=Memkerjasama.FieldByName('nm_supplier').AsString;
          DtKontrak.Text:=Memkerjasama.FieldByName('tgl_kontrak').AsString;
          DtSelesai.Text:=Memkerjasama.FieldByName('tgl_selesai').AsString;
          Edtempo.Text:=Memkerjasama.FieldByName('jatuh_tempo').AsString;
          DtTahun.Text:=Memkerjasama.FieldByName('tahun').AsString;
          EdKet.Text:=Memkerjasama.FieldByName('Keterangan').AsString;
        //  Status2:=Memkerjasama.FieldByName('status').AsString;
          EdCurr.Text:=Memkerjasama.FieldByName('currency').AsString;
          EdnilaiCurr.Text:=Memkerjasama.FieldByName('nilaicurrency').AsString;
          cb_kirim.Text:=Memkerjasama.FieldByName('bln_kirim').AsString;
          EdTh_kirim.Text:=Memkerjasama.FieldByName('th_kirim').AsString;
          CbJenis.Text:=Memkerjasama.FieldByName('jenis').AsString;
          //status_App:=Memkerjasama.FieldByName('status_approval').Value;
          CbKategori.Text:=Memkerjasama.FieldByName('kategori').AsString;
        end;
          DBGridEh2ColEnter(sender);
          EdCurrSelect(sender);
    end;
end;
procedure TFKontrakkerjasama.Load_category;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='SELECT * FROM t_item_category';
        ExecSQL;
      end;
      Dm.Qtemp.First;
      while not dm.Qtemp.Eof do
      begin
         FNewKontrak_ks.CbKategori.Items.Add(Dm.Qtemp.FieldByName('category').AsString);
      Dm.Qtemp.Next;
      end;
end;

end.
