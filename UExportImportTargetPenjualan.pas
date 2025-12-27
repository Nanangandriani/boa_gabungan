unit UExportImportTargetPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzSpnEdt, RzCmboBx, RzBtnEdt, RzButton, Vcl.ExtCtrls, RzPanel,
  Data.DB, MemDS, DBAccess, Uni, scExcelExport, ComObj;

type
  TFExportImportTargetPenjualan = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Label11: TLabel;
    edKaresidenan: TRzButtonEdit;
    cbKategori: TRzComboBox;
    cbKelompokBarang: TRzComboBox;
    cbBulan: TRzComboBox;
    edTahun: TRzSpinEdit;
    edKenaikanTarget: TRzSpinEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    scExcelExport1: TscExcelExport;
    QExportImport: TUniQuery;
    SaveDialog1: TSaveDialog;
    RzBitBtn1: TRzBitBtn;
    Bimport: TRzBitBtn;
    LabelSBU: TLabel;
    LabelSBU2: TLabel;
    cbSBU: TRzComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cbBulanSumberPenjualan: TRzComboBox;
    edTahunSumberPenjualan: TRzSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    cbJenisUsaha: TRzComboBox;
    procedure BExportClick(Sender: TObject);
    procedure edKaresidenanButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbKategoriChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BimportClick(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshKategori;
    procedure RefreshKelompok;
    procedure ExportGridToExcelOLE(DataSet: TDataSet);
    procedure MigrasiExcelToTemp;
  public
    { Public declarations }
    strKodeKaresidenan,strSBU: String;
    procedure Clear;
    procedure RefreshJenisUsaha;
  end;

  function FExportImportTargetPenjualan: TFExportImportTargetPenjualan;

//var
//  FExportImportTargetPenjualan: TFExportImportTargetPenjualan;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UMainMenu, UHomeLogin, UMy_Function;

var
  exportimporttargetpenjualan : TFExportImportTargetPenjualan;

function FExportImportTargetPenjualan: TFExportImportTargetPenjualan;
begin
  if exportimporttargetpenjualan <> nil then
    FExportImportTargetPenjualan:= exportimporttargetpenjualan
  else
    Application.CreateForm(TFExportImportTargetPenjualan, Result);
end;

procedure TFExportImportTargetPenjualan.RefreshJenisUsaha;
begin
  with dm.Qtemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT code AS kd_master, name AS nm_master,  description AS keterangan  from t_customer_type_business  WHERE	deleted_at IS NULL';
    // Use Open() for SELECT statement
    Open;
  end;
  cbJenisUsaha.Clear;
  cbJenisUsaha.Items.Add('SEMUA');
  if not Dm.Qtemp.IsEmpty then
  begin
    Dm.Qtemp.First;
    while not Dm.Qtemp.Eof do
    begin
      cbJenisUsaha.Items.Add(Dm.Qtemp['nm_master']);
      Dm.Qtemp.Next;
    end;
  end;
  cbJenisUsaha.ItemIndex:=0;


end;

procedure TFExportImportTargetPenjualan.MigrasiExcelToTemp;
var
  OpenDialog: TOpenDialog;
  ExcelApp, WorkBook, WorkSheet: OLEVariant;
  Row, Col, LastRow, LastCol,LastRowWithData: Integer;
  CellValue: Variant;
  FileName: string;
  // 💡 TAMBAH INI:
  CellValue_Qty, CellValue_Value: Variant;
  Qty_Str, Value_Str, Item_Code2,Item_Code: string;
const
  xlUp = -4162;
  xlToLeft = -4159;
begin
  OpenDialog := TOpenDialog.Create(nil);
  try
    OpenDialog.Filter := 'Excel Files|*.xls;*.xlsx';
    OpenDialog.Title := 'Pilih File Excel untuk Diimpor';

    if OpenDialog.Execute then
    begin
      FileName := OpenDialog.FileName;

      Bimport.Enabled:=False;
      ExcelApp := CreateOleObject('Excel.Application');
      try


        WorkBook := ExcelApp.Workbooks.Open(FileName);
        WorkSheet := WorkBook.Worksheets[1];



        LastRowWithData := 8;
        LastRow := WorkSheet.Cells[WorkSheet.Rows.Count, 1].End[xlUp].Row;
//        LastCol := WorkSheet.UsedRange.Columns.Count;
        LastCol := WorkSheet.Cells[LastRowWithData, WorkSheet.Columns.Count].End[xlToLeft].Column;

        FMainMenu.Load.Percent:=0;

        for Row := 9 to LastRow do
        begin
          FMainMenu.Load.Percent:=FMainMenu.Load.Percent+5;

          with dm.Qtemp1 do
          begin
            close;
            sql.clear;
            sql.Text:='UPDATE t_customer_sales_target SET status=False,deleted_at=NOW(), deleted_by='+QuotedStr(Nm)+' '+
                      'WHERE '+
                    ' customer_code='+QuotedStr(WorkSheet.Cells[Row, 1].Value)+' AND'+
                    ' year='+QuotedStr(WorkSheet.Cells[2, 2].Value)+' AND'+
                    ' month='+QuotedStr(WorkSheet.Cells[3, 2].Value)+' AND'+
                    ' status=True';
            ExecSQL;
          end;

          if FHomeLogin.vStatOffice=0 then
          begin
            strSBU:=cbSBU.Text;
          end else begin
            strSBU:=FHomeLogin.vKodePRSH;
          end;

          with dm.Qtemp1 do
          begin
            close;
            sql.clear;
            sql.Text:='INSERT INTO t_customer_sales_target (customer_code,year,month,'+
                      'created_at,created_by,status,sbu_code) '+
                      'VALUES('+
                    ' '+QuotedStr(WorkSheet.Cells[Row, 1].Value)+' ,'+
                    ' '+QuotedStr(WorkSheet.Cells[2, 2].Value)+' ,'+
                    ' '+QuotedStr(WorkSheet.Cells[3, 2].Value)+' ,'+
                    'NOW(),'+QuotedStr(Nm)+',True,'+QuotedStr(strSBU)+')';
            ExecSQL;
          end;

          with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:='SELECT id_customer_sales_target FROM t_customer_sales_target ORDER BY created_at desc limit 1  ';
            open;
          end;

          for Col := 4 to LastCol do
          begin
              if (Col >= 4) AND ((Col-4) mod 2 = 0) then
              begin
                  Item_Code2 := WorkSheet.Cells[7, Col].Value;

                  if (Item_Code2 <> '') then
                  begin
                      CellValue_Qty := WorkSheet.Cells[Row, Col].Value2;
                      CellValue_Value := WorkSheet.Cells[Row, Col + 1].Value2;
                      try
                          Qty_Str := FloatToStr(CellValue_Qty);
                      except
                          Qty_Str := '0';
                      end;

                      try
                          Value_Str := FloatToStr(CellValue_Value);
                      except
                          Value_Str := '0';
                      end;

                      if (Qty_Str <> '0') OR (Value_Str <> '0') then
                      begin

                          Item_Code:=SelectRow('SELECT item_code from t_item where item_code2='+QuotedStr(Item_Code2)+' AND deleted_at IS NULL; ');

                          with dm.Qtemp1 do
                          begin
                              sql.Text:='INSERT INTO t_customer_sales_target_det (id_customer_sales_target,'+
                                          'item_code,qty,value,status) '+
                                          'VALUES('+
                                          ' '+QuotedStr(dm.Qtemp.FieldValues['id_customer_sales_target'])+', '+
                                          ' '+QuotedStr(Item_Code)+' ,'+
                                          ' '+Qty_Str+' ,'+
                                          ' '+Value_Str+' ,'+
                                          'True)';
                              ExecSQL;
                          end;
                      end;
                  end;
              end;
          end;


//          for Col := 4 to LastCol do // Mulai dari baris kedua untuk data
//          begin
//            if (WorkSheet.Cells[7, Col].Value<>'') AND (WorkSheet.Cells[Row, Col].Value<>'') then
//            begin
//              with dm.Qtemp1 do
//              begin
//                close;
//                sql.clear;
//                sql.Text:='INSERT INTO t_customer_sales_target_det_temp (id_customer_sales_target,'+
//                          'item_code,qty,value,status) '+
//                          'VALUES('+
//                        ' '+QuotedStr(dm.Qtemp.FieldValues['id_customer_sales_target'])+', '+
//                        ' '+QuotedStr(WorkSheet.Cells[7, Col].Value)+' ,'+
//                        ' '+QuotedStr(WorkSheet.Cells[Row, Col].Value)+' ,'+
//                        ' '+QuotedStr(WorkSheet.Cells[Row, Col+1].Value)+' ,'+
//                        'True)';
//                ExecSQL;
//              end;
//            end;
//          end;


        end;
        with dm.Qtemp2 do
        begin
          Close;
          Sql.Clear;
          Sql.Text:='DELETE FROM t_customer_sales_target WHERE id_customer_sales_target IN '+
                    '(SELECT a.id_customer_sales_target FROM t_customer_sales_target a '+
                    'left join t_customer_sales_target_det b on b.id_customer_sales_target=a.id_customer_sales_target '+
                    'WHERE a.year='+QuotedStr(WorkSheet.Cells[2, 2].Value)+' AND a.month='+QuotedStr(WorkSheet.Cells[3, 2].Value)+' and'+
                    ' b.id_customer_sales_target IS null) ';
          ExecSQL;
        end;


        FMainMenu.Load.Percent:=100;


        // 7. Menutup workbook dan Excel
        WorkBook.Close(False);
      finally
        ExcelApp.Quit;
      end;

      ShowMessage('Data berhasil diimpor dari: ' + FileName);
      FMainMenu.Load.Percent:=0;
      Bimport.Enabled:=True;
    end
		else
		begin
		  ShowMessage('Proses impor Gagal.');
      Bimport.Enabled:=True;
		end;
	finally
    OpenDialog.Free;
  end;
end;


procedure TFExportImportTargetPenjualan.ExportGridToExcelOLE(DataSet: TDataSet);
var
  ExcelApp: OleVariant;
  I, J: Integer;
  R, C: Integer;
begin
  // Coba buat objek Excel
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Visible := True;
  ExcelApp.Workbooks.Add;
  ExcelApp.ActiveWorkBook.WorkSheets[1].Activate;

  // Header (Ambil dari Field Names)
  C := 1;
  for I := 0 to DataSet.FieldCount - 1 do
  begin
    ExcelApp.Cells[1, C].Value := DataSet.Fields[I].FieldName;
    Inc(C);
  end;

  // Data (Loop melalui DataSet)
  R := 2; // Mulai dari baris ke-2
  DataSet.DisableControls; // Agar lebih cepat saat loop
  try
    DataSet.First;
    while not DataSet.EOF do // <-- Loop ini melalui data, bukan Grid baris
    begin
      // ... Tulis sel ke Excel
      DataSet.Next;
    end;
  finally
    DataSet.EnableControls;
  end;

  // Bersihkan dan tampilkan
  ExcelApp.Range['A:A'].Select;
  ExcelApp.ActiveWindow.FreezePanes := True;
end;

procedure TFExportImportTargetPenjualan.FormCreate(Sender: TObject);
begin
  exportimporttargetpenjualan:=Self;
end;

procedure TFExportImportTargetPenjualan.FormDestroy(Sender: TObject);
begin
  exportimporttargetpenjualan:=nil;
end;

procedure TFExportImportTargetPenjualan.FormShow(Sender: TObject);
begin
  Clear;
  RefreshJenisUsaha;
  FillSBUBarCombo2(cbSBU,LabelSBU,LabelSBU2);
end;

{procedure TFExportImportTargetPenjualan.BExportClick(Sender: TObject);
var
  cell:array[1..100]of string;
  i,j,k,m : Integer;
  strJenisUsaha,strJenisUsaha2: String;
begin

  if edKaresidenan.Text='' then
  begin
    MessageDlg('TP Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else if cbKategori.Text='' then
  begin
    MessageDlg('Kategori Barang Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else if cbKelompokBarang.Text='' then
  begin
    MessageDlg('Kelompok Barang Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else
  begin

    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT DISTINCT  a.code_cust customer_code,b.customer_name,b.address FROM t_selling a '+
                      'LEFT JOIN get_customer() b on b.customer_code=a.code_cust '+
                      'WHERE   ( '+
                      '( '+
                      'EXTRACT(YEAR FROM a.trans_date) = '+edTahunSumberPenjualan.Text+' '+
                      'AND EXTRACT(MONTH FROM a.trans_date) >= '+IntToStr(cbBulanSumberPenjualan.ItemIndex+1)+' '+
                      ') '+
                      'OR '+
                      '( '+
                      'EXTRACT(YEAR FROM a.trans_date) = '+edTahun.Text+'  '+
                      'AND EXTRACT(MONTH FROM a.trans_date) <= '+IntToStr(cbBulan.ItemIndex+1)+' '+
                      ') '+
                      ') '+strJenisUsaha+' ORDER BY b.customer_name ASC';
      Open;
    end;

    if dm.Qtemp.RecordCount>0 then
    begin

      if cbJenisUsaha.Text<>'SEMUA' then
      begin
        strJenisUsaha:='AND b.code_type_business='+QuotedStr(SelectRow('SELECT code  from t_customer_type_business  WHERE name='+QuotedStr(cbJenisUsaha.Text)+' AND	deleted_at IS NULL'));
        strJenisUsaha2:='AND e.code_type_business='+QuotedStr(SelectRow('SELECT code  from t_customer_type_business  WHERE name='+QuotedStr(cbJenisUsaha.Text)+' AND	deleted_at IS NULL'));
      end else begin
        strJenisUsaha:='';
        strJenisUsaha2:='';
      end;

      cell[1]:='D';cell[11]:='N'; cell[21]:='X';cell[31]:='AH';
      cell[2]:='E';cell[12]:='O';cell[22]:='Y';cell[32]:='AI';
      cell[3]:='F';cell[13]:='P';cell[23]:='Z'; cell[33]:='AJ';
      cell[4]:='G';cell[14]:='Q';cell[24]:='AA';cell[34]:='AK';
      cell[5]:='H';cell[15]:='R';cell[25]:='AB';cell[35]:='AL';
      cell[6]:='I';cell[16]:='S';cell[26]:='AC';cell[36]:='AM';
      cell[7]:='J';cell[17]:='T';cell[27]:='AD';cell[37]:='AN';
      cell[8]:='K';cell[18]:='U';cell[28]:='AE';cell[38]:='AO';
      cell[9]:='L';cell[19]:='V';cell[29]:='AF';cell[39]:='AP';
      cell[10]:='M';cell[20]:='W';cell[30]:='AG';cell[40]:='AQ';
      cell[41]:='AR';
      cell[42]:='AS';cell[43]:='AT';cell[44]:='AU';cell[45]:='AV';
      cell[46]:='AW';cell[47]:='AX';cell[48]:='AY';cell[49]:='AZ';cell[50]:='BA';
      cell[51]:='BB';cell[52]:='BC';cell[53]:='BD';cell[54]:='BE';
      cell[55]:='BF';cell[56]:='BG';cell[57]:='BH';cell[58]:='BI';
      cell[59]:='BJ';cell[60]:='BK';cell[61]:='BL';cell[62]:='BM';
      cell[63]:='BN';cell[64]:='BO';cell[65]:='BP';cell[66]:='BQ';
      cell[67]:='BR';cell[68]:='BS';cell[69]:='BT';cell[70]:='BU';
      cell[71]:='BV';cell[72]:='BW';cell[73]:='BX';cell[74]:='BY';
      cell[75]:='BZ';

      cell[76]:='CA';cell[77]:='CB';cell[78]:='CC';cell[79]:='CD';
      cell[80]:='CE';cell[81]:='CF';cell[82]:='CG';cell[83]:='CH';
      cell[84]:='CI';cell[85]:='CJ';cell[86]:='CK';cell[87]:='CL';
      cell[88]:='CM';cell[89]:='CN';cell[90]:='CO';cell[91]:='CP';
      cell[92]:='CQ';cell[93]:='CR';cell[94]:='CS';cell[95]:='CT';
      cell[96]:='CU';cell[97]:='CV';cell[98]:='CW';cell[99]:='CX';
    //  cell[100]:='CY';cell[101]:='CZ';cell[102]:='DA';cell[103]:='DB';
    //  cell[104]:='DC';cell[105]:='DD';cell[106]:='DE';cell[107]:='DF';
    //  cell[108]:='DG';cell[109]:='DH';cell[110]:='DI';cell[111]:='DJ';
    //  cell[112]:='DK';cell[113]:='DL';cell[114]:='DM';cell[115]:='DN';
    //  cell[116]:='DO';cell[117]:='DP';cell[118]:='DQ';cell[119]:='DR';
    //  cell[120]:='DS';cell[121]:='DT';cell[122]:='DU';cell[123]:='DV';
    //  cell[124]:='DW';cell[125]:='DX';cell[126]:='DY';cell[127]:='DZ';
      with scExcelExport1 do
      begin



    //    Dataset:=QExportImport;

        scExcelExport1.WorksheetName := 'Export Target Penjualan';

        ExcelVisible:=false;
        try


          scExcelExport1.ExportDataset;

          scExcelExport1.ExcelWorkSheet.Range['A1','A1'].Value2:='Export Target Penjualan';
          scExcelExport1.ExcelWorkSheet.Range['A2','A2'].value2:='Tahun';
          scExcelExport1.ExcelWorkSheet.Range['B2','B2'].value2:=edTahun.Text;
          scExcelExport1.ExcelWorkSheet.Range['A3','A3'].value2:='Bulan';
          scExcelExport1.ExcelWorkSheet.Range['B3','B3'].value2:=cbBulan.ItemIndex+1;
          scExcelExport1.ExcelWorkSheet.Range['A4','A4'].value2:='Kategori Barang';
          scExcelExport1.ExcelWorkSheet.Range['B4','B4'].value2:=cbKategori.Text;
          scExcelExport1.ExcelWorkSheet.Range['A5','A5'].value2:='Kelompok Barang';
          scExcelExport1.ExcelWorkSheet.Range['B5','B5'].value2:=cbKelompokBarang.Text;
          scExcelExport1.ExcelWorkSheet.Cells.Range['A1','B5'].Borders.LineStyle:=blLine;

          //scExcelExport1.ExcelWorkSheet.Cells.Range['A2','S2'].Merge(true);

          scExcelExport1.ExcelWorkSheet.Range['A7','A7'].value2:='Pelanggan';
          scExcelExport1.ExcelWorkSheet.Cells.Range['A7','C7'].Merge(true);
          scExcelExport1.ExcelWorkSheet.Cells.Range['A7','C8'].HorizontalAlignment:=haCenter;
          scExcelExport1.ExcelWorkSheet.Range['A8','A8'].value2:='Kode';
          scExcelExport1.ExcelWorkSheet.Range['B8','B8'].value2:='Nama';
          scExcelExport1.ExcelWorkSheet.Range['C8','C8'].value2:='Alamat';

          scExcelExport1.ExcelWorkSheet.Range['A7','C8'].Font.Bold:=true;


          with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:='SELECT DISTINCT  a.code_cust customer_code,b.customer_name,b.address FROM t_selling a '+
                      'LEFT JOIN get_customer() b on b.customer_code=a.code_cust '+
                      'WHERE   ( '+
                      '( '+
                      'EXTRACT(YEAR FROM a.trans_date) = '+edTahunSumberPenjualan.Text+' '+
                      'AND EXTRACT(MONTH FROM a.trans_date) >= '+IntToStr(cbBulanSumberPenjualan.ItemIndex+1)+' '+
                      ') '+
                      'OR '+
                      '( '+
                      'EXTRACT(YEAR FROM a.trans_date) = '+edTahun.Text+'  '+
                      'AND EXTRACT(MONTH FROM a.trans_date) <= '+IntToStr(cbBulan.ItemIndex+1)+' '+
                      ') '+
                      ') '+strJenisUsaha+' ORDER BY b.customer_name ASC';
            Open;
          end;

          k:=9;
          dm.Qtemp.First;
          while not dm.Qtemp.Eof do
          begin
            scExcelExport1.ExcelWorkSheet.Range['A'+inttostr(k),'A'+inttostr(k)].value2:=dm.Qtemp.FieldValues['customer_code'];
            scExcelExport1.ExcelWorkSheet.Range['B'+inttostr(k),'B'+inttostr(k)].value2:=dm.Qtemp.FieldValues['customer_name'];
            scExcelExport1.ExcelWorkSheet.Range['C'+inttostr(k),'C'+inttostr(k)].value2:=dm.Qtemp.FieldValues['address'];
            k:=k+1;
            dm.Qtemp.Next;
          end;



          with dm.Qtemp do
          begin
            close;
            sql.Clear;
//            sql.Text:='SELECT DISTINCT a.item_code FROM t_customer_sales_target_det a '+
//                      'LEFT JOIN t_customer_sales_target b ON b.id_customer_sales_target = '+
//                      'a.id_customer_sales_target WHERE b."year" = 2025 AND b.month = 10 AND b.deleted_at is NULL AND a.status=True ORDER BY 1';
            sql.Text:='SELECT DISTINCT item_code2 item_code FROM t_selling_det a '+
                      'LEFT JOIN t_item b on b.item_code=a.code_item '+
                      'LEFT JOIN t_selling c on c.trans_no=a.trans_no '+
                      'LEFT JOIN t_item_group d on d.group_id=b.group_id '+
                      'LEFT JOIN get_customer() e on e.customer_code=c.code_cust '+
                      'WHERE   ( '+
                      '( '+
                      'EXTRACT(YEAR FROM c.trans_date) = '+edTahunSumberPenjualan.Text+' '+
                      'AND EXTRACT(MONTH FROM c.trans_date) >= '+IntToStr(cbBulanSumberPenjualan.ItemIndex+1)+' '+
                      ') '+
                      'OR '+
                      '( '+
                      'EXTRACT(YEAR FROM c.trans_date) = '+edTahun.Text+'  '+
                      'AND EXTRACT(MONTH FROM c.trans_date) <= '+IntToStr(cbBulan.ItemIndex+1)+' '+
                      ') '+
                      ') AND d.istarget=True '+strJenisUsaha2+';';
            Open;
          end;


          i:=1;
          while not dm.Qtemp.Eof do
          begin
             scExcelExport1.ExcelWorkSheet.Range[cell[i]+'7',cell[i]+'7'].value2:=dm.Qtemp.FieldByName('item_code').AsString  ;
             scExcelExport1.ExcelWorkSheet.Range[cell[i]+'7',cell[i+1]+'7'].Merge(true);
             scExcelExport1.ExcelWorkSheet.Range[cell[i]+'7',cell[i]+'7'].Font.Bold:=True;
             scExcelExport1.ExcelWorkSheet.Range[cell[i]+'7',cell[i]+'7'].HorizontalAlignment := haCenter;
             scExcelExport1.ExcelWorkSheet.Range[cell[i]+'8',cell[i]+'8'].value2:='Qty';
             scExcelExport1.ExcelWorkSheet.Range[cell[i]+'8',cell[i]+'8'].HorizontalAlignment := haCenter;
             scExcelExport1.ExcelWorkSheet.Range[cell[i]+'8',cell[i]+'8'].Font.Bold:=True;
             scExcelExport1.ExcelWorkSheet.Range[cell[i+1]+'8',cell[i+1]+'8'].value2:='Value';
             scExcelExport1.ExcelWorkSheet.Range[cell[i+1]+'8',cell[i+1]+'8'].HorizontalAlignment := haCenter;
             scExcelExport1.ExcelWorkSheet.Range[cell[i+1]+'8',cell[i+1]+'8'].Font.Bold:=True;

//             for m:=9 to k-1 do
//             begin
//               with dm.Qtemp2 do
//               begin
//                 close;
//                 sql.Clear;
//                 sql.Text:='SELECT a.qty,a.value FROM t_customer_sales_target_det a '+
//                           'left join t_customer_sales_target b on b.id_customer_sales_target=a.id_customer_sales_target '+
//                           'WHERE b.year = 2025 AND b.month = 10  AND b.deleted_at is NULL '+
//                           'AND b.customer_code= '+QuotedStr(scExcelExport1.ExcelWorkSheet.Range['A'+inttostr(m),'A'+inttostr(m)].value2) +' '+
//                           'AND item_code='+QuotedStr(dm.Qtemp.FieldByName('item_code').AsString )+' AND a.status=True';
//                 open;
//                 first;
//               end;
//               j:=9;
//
//               scExcelExport1.ExcelWorkSheet.Range[cell[i]+inttostr(m),cell[i]+inttostr(m)].value2:=dm.Qtemp2.FieldValues['qty'];
//               scExcelExport1.ExcelWorkSheet.Range[cell[i+1]+inttostr(m),cell[i+1]+inttostr(m)].value2:=dm.Qtemp2.FieldValues['value'];
//
//             end;

             i:=i+2;
             dm.Qtemp.next;
          end;

          scExcelExport1.ExcelWorkSheet.Cells.Range['A7',cell[i-1]+inttostr(k-1)].Borders.LineStyle:=blLine;

          scExcelExport1.ExcelWorkSheet.Range['A1','BZ500'].Font.Name := 'Arial';


        finally
        scExcelExport1.ExcelWorkSheet.Columns.AutoFit;
        if SaveDialog1.Execute then
        begin
          scExcelExport1.SaveAs(savedialog1.FileName,ffXLSX);
        end;

        scExcelExport1.Disconnect;
        showmessage('Export data ke excel berhasil !');
       end;
     end;
    end else
    begin
       MessageDlg('Data Target Penjualan Tidak Ada..!!',mtInformation,[mbRetry],0);
    end;
  end;


end; }

procedure TFExportImportTargetPenjualan.BExportClick(Sender: TObject);
var
  i, j, k: Integer;
  strJenisUsaha, strJenisUsaha2: String;
  LastCol: Integer;
begin

  if edKaresidenan.Text = '' then
  begin
    MessageDlg('TP Wajib Diisi..!!', mtInformation, [mbRetry], 0);
    Exit;
  end;

  if (cbKategori.Text = '') or (cbKelompokBarang.Text = '') then
  begin
    MessageDlg('Kategori & Kelompok Barang Wajib Diisi..!!', mtInformation, [mbRetry], 0);
    Exit;
  end;

  if cbJenisUsaha.Text <> 'SEMUA' then
  begin
    strJenisUsaha := 'AND b.code_type_business=' + QuotedStr(SelectRow('SELECT code from t_customer_type_business WHERE name=' + QuotedStr(cbJenisUsaha.Text) + ' AND deleted_at IS NULL'));
    strJenisUsaha2 := 'AND e.code_type_business=' + QuotedStr(SelectRow('SELECT code from t_customer_type_business WHERE name=' + QuotedStr(cbJenisUsaha.Text) + ' AND deleted_at IS NULL'));
  end
  else
  begin
    strJenisUsaha := '';
    strJenisUsaha2 := '';
  end;

  with dm.Qtemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT DISTINCT a.code_cust FROM t_selling a ' +
                'LEFT JOIN get_customer() b on b.customer_code=a.code_cust ' +
                'WHERE ((EXTRACT(YEAR FROM a.trans_date) = ' + edTahunSumberPenjualan.Text + ' ' +
                'AND EXTRACT(MONTH FROM a.trans_date) >= ' + IntToStr(cbBulanSumberPenjualan.ItemIndex + 1) + ') ' +
                'OR (EXTRACT(YEAR FROM a.trans_date) = ' + edTahun.Text + ' ' +
                'AND EXTRACT(MONTH FROM a.trans_date) <= ' + IntToStr(cbBulan.ItemIndex + 1) + ')) ' +
                strJenisUsaha;
    Open;
  end;

  if dm.Qtemp.RecordCount = 0 then
  begin
    MessageDlg('Data Target Penjualan Tidak Ada..!!', mtInformation, [mbRetry], 0);
    Exit;
  end;

//  SaveDialog1.Filter := 'Excel Workbook (*.xlsx)|*.xlsx';
  SaveDialog1.Filter := 'Excel 2007+ (*.xlsx)|*.xlsx|Excel 97-2003 (*.xls)|*.xls';
  SaveDialog1.DefaultExt := 'xlsx';
  SaveDialog1.FileName := 'Target_Penjualan_' + edTahun.Text;

  if SaveDialog1.Execute then
  begin
    scExcelExport1.WorksheetName := 'Export Target Penjualan';
    scExcelExport1.ExcelVisible := False;

    try
      scExcelExport1.Connect;

      scExcelExport1.ExcelWorkSheet.Range['A1','A1'].Value2:='Export Target Penjualan';
      scExcelExport1.ExcelWorkSheet.Range['A2','A2'].value2:='Tahun';
      scExcelExport1.ExcelWorkSheet.Range['B2','B2'].value2:=edTahun.Text;
      scExcelExport1.ExcelWorkSheet.Range['A3','A3'].value2:='Bulan';
      scExcelExport1.ExcelWorkSheet.Range['B3','B3'].value2:=cbBulan.ItemIndex+1;
      scExcelExport1.ExcelWorkSheet.Range['A4','A4'].value2:='Kategori Barang';
      scExcelExport1.ExcelWorkSheet.Range['B4','B4'].value2:=cbKategori.Text;
      scExcelExport1.ExcelWorkSheet.Range['A5','A5'].value2:='Kelompok Barang';
      scExcelExport1.ExcelWorkSheet.Range['B5','B5'].value2:=cbKelompokBarang.Text;
      scExcelExport1.ExcelWorkSheet.Cells.Range['A1','B5'].Borders.LineStyle:=blLine;

      scExcelExport1.ExcelWorkSheet.Range['A7','A7'].value2:='Pelanggan';
      scExcelExport1.ExcelWorkSheet.Cells.Range['A7','C7'].Merge(true);
      scExcelExport1.ExcelWorkSheet.Cells.Range['A7','C8'].HorizontalAlignment:=haCenter;
      scExcelExport1.ExcelWorkSheet.Range['A8','A8'].value2:='Kode';
      scExcelExport1.ExcelWorkSheet.Range['B8','B8'].value2:='Nama';
      scExcelExport1.ExcelWorkSheet.Range['C8','C8'].value2:='Alamat';

      scExcelExport1.ExcelWorkSheet.Range['A7','C8'].Font.Bold:=true;

      dm.Qtemp.Close;
      dm.Qtemp.SQL.Text := 'SELECT DISTINCT a.code_cust customer_code, b.customer_name, b.address FROM t_selling a ' +
                           'LEFT JOIN get_customer() b on b.customer_code=a.code_cust ' +
                           'WHERE ((EXTRACT(YEAR FROM a.trans_date) = ' + edTahunSumberPenjualan.Text + ' ' +
                           'AND EXTRACT(MONTH FROM a.trans_date) >= ' + IntToStr(cbBulanSumberPenjualan.ItemIndex + 1) + ') ' +
                           'OR (EXTRACT(YEAR FROM a.trans_date) = ' + edTahun.Text + ' ' +
                           'AND EXTRACT(MONTH FROM a.trans_date) <= ' + IntToStr(cbBulan.ItemIndex + 1) + ')) ' +
                           strJenisUsaha + ' ORDER BY b.customer_name ASC';
      dm.Qtemp.Open;

      k := 9;
      while not dm.Qtemp.Eof do
      begin
        scExcelExport1.ExcelWorkSheet.Range['A' + IntToStr(k), 'A' + IntToStr(k)].Value2 := dm.Qtemp.FieldByName('customer_code').AsString;
        scExcelExport1.ExcelWorkSheet.Range['B' + IntToStr(k), 'B' + IntToStr(k)].Value2 := dm.Qtemp.FieldByName('customer_name').AsString;
        scExcelExport1.ExcelWorkSheet.Range['C' + IntToStr(k), 'C' + IntToStr(k)].Value2 := dm.Qtemp.FieldByName('address').AsString;
        Inc(k);
        dm.Qtemp.Next;
      end;

      with dm.Qtemp do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT DISTINCT item_code2 item_code FROM t_selling_det a ' +
                    'LEFT JOIN t_item b on b.item_code=a.code_item ' +
                    'LEFT JOIN t_selling c on c.trans_no=a.trans_no ' +
                    'LEFT JOIN t_item_group d on d.group_id=b.group_id ' +
                    'LEFT JOIN get_customer() e on e.customer_code=c.code_cust ' +
                    'WHERE ((EXTRACT(YEAR FROM c.trans_date) = ' + edTahunSumberPenjualan.Text + ' ' +
                    'AND EXTRACT(MONTH FROM c.trans_date) >= ' + IntToStr(cbBulanSumberPenjualan.ItemIndex + 1) + ') ' +
                    'OR (EXTRACT(YEAR FROM c.trans_date) = ' + edTahun.Text + ' ' +
                    'AND EXTRACT(MONTH FROM c.trans_date) <= ' + IntToStr(cbBulan.ItemIndex + 1) + ')) ' +
                    'AND d.istarget=True ' + strJenisUsaha2;
        Open;
      end;

      i := 4;
      while not dm.Qtemp.Eof do
      begin

        scExcelExport1.ExcelWorkSheet.Cells.Item[7, i].Value2 := dm.Qtemp.FieldByName('item_code').AsString;
        scExcelExport1.ExcelWorkSheet.Range[scExcelExport1.ExcelWorkSheet.Cells.Item[7, i], scExcelExport1.ExcelWorkSheet.Cells.Item[7, i + 1]].Merge(True);

        scExcelExport1.ExcelWorkSheet.Cells.Item[8, i].Value2 := 'Qty';
        scExcelExport1.ExcelWorkSheet.Cells.Item[8, i + 1].Value2 := 'Value';

        i := i + 2;
        dm.Qtemp.Next;
      end;

      scExcelExport1.ExcelWorkSheet.Range['A7', 'C8'].Font.Bold := True;
      scExcelExport1.ExcelWorkSheet.Range['A1', 'A1'].Font.Size := 14;
      scExcelExport1.ExcelWorkSheet.Columns.AutoFit;


      scExcelExport1.SaveAs(SaveDialog1.FileName, ffXLSX);

      ShowMessage('Export data ke Excel berhasil!');
    finally
      scExcelExport1.Disconnect;
    end;
  end;
end;

procedure TFExportImportTargetPenjualan.cbKategoriChange(Sender: TObject);
begin
  RefreshKelompok;
end;

procedure TFExportImportTargetPenjualan.Clear;
var month,year: String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edKaresidenan.Text:='';
  cbKategori.Clear;
  cbKelompokBarang.Clear;
  edTahun.Value:=StrToInt(year);
  RefreshKategori;
  cbBulan.ItemIndex:=StrToInt(month)-1;
  cbBulanSumberPenjualan.ItemIndex:=StrToInt(month)-1;
  edTahunSumberPenjualan.Value:=StrToInt(year);
end;

procedure TFExportImportTargetPenjualan.edKaresidenanButtonClick(
  Sender: TObject);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='exportimporttargetpenjualankares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal
end;

procedure TFExportImportTargetPenjualan.RefreshKategori;
begin
  cbKategori.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.category_id,a.category from t_item_category a '+
              'left join t_item_type b on '+
              'b.type_id=a.type_id where b.type=''DAGANG'' order by a.category asc';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbKategori.Items.Add(Dm.Qtemp['category']);
    Dm.Qtemp.Next;
  end;
end;

procedure TFExportImportTargetPenjualan.RefreshKelompok;
begin
  cbKelompokBarang.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.group_id,a.group_name from t_item_group a '+
              'LEFT JOIN t_item_category b on b.category_id=a.category_id '+
              'where a.istarget=True AND b.category='+QuotedStr(cbKategori.Text)+' order by a.group_name asc';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbKelompokBarang.Items.Add(Dm.Qtemp['group_name']);
    Dm.Qtemp.Next;
  end;
end;

procedure TFExportImportTargetPenjualan.BimportClick(Sender: TObject);
begin
  MigrasiExcelToTemp;
end;

initialization
  RegisterClass(TFExportImportTargetPenjualan);



end.
