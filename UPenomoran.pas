unit UPenomoran;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, RzCmboBx, Vcl.Mask, RzEdit, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxSkinsCore, dxSkinBasic, dxSkinBlack,
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
  cxClasses, dxRibbon, dxBar, MemDS, DBAccess, Uni, MemTableDataEh, DataDriverEh,
  MemTableEh, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan;

type
  TFPenomoran = class(TForm)
    dxBarManager1: TdxBarManager;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    QDetNo: TUniQuery;
    DsDetNo: TDataSource;
    DBGridNo: TDBGridEh;
    DBGridNodet: TDBGridEh;
    QNo: TUniQuery;
    DSDNo: TDataSetDriverEh;
    MemNo: TMemTableEh;
    DSNo: TDataSource;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FPenomoran: TFPenomoran;

implementation

{$R *.dfm}

uses Unew_Penomoran, UDataModule, UEdit_Penomoran;

var
  realFPenomoran: TFPenomoran;
  status_add:bool;

function FPenomoran: TFPenomoran;
begin
  if realFPenomoran <> nil then
    FPenomoran:= realFPenomoran
  else
    Application.CreateForm(TFPenomoran, Result);
end;

procedure TFPenomoran.ActRoExecute(Sender: TObject);
begin
    DBGridNo.StartLoadingStatus();
    DBGridNo.FinishLoadingStatus();
    QNo.Close;
    MemNo.Close;
    QdetNo.Close;
    if QNo.Active=False then QNo.Active:=True;
    if MemNo.Active=False then MemNo.Active:=True;
    if QdetNo.Active=False then QdetNo.Active:=True;

end;

procedure TFPenomoran.ActUpdateExecute(Sender: TObject);
begin
     FEdit_Penomoran.Mem_component.EmptyTable;
     with FEdit_Penomoran do
     begin
         with dm.Qtemp do
         begin
            close;
            sql.Clear;
            sql.Text:='select a.trans_no,a.trans_type,a.numb_type,a.digit_counter,a.component_description,a.reset_type,a.remarks,a.additional_status,a.active_status,b.param_name,b.urutan,b.id_param,d.description,c.description as jenis_reset '+
                      'from t_numb a '+
                      'INNER JOIN  t_numb_det b on a.trans_no=b.trans_no '+
                      'INNER JOIN  t_numb_type c on a.reset_type=c.id '+
                      'INNER JOIN  t_numb_component d on d.id=b.id_param '+
                      'where a.trans_no='+QuotedStr(MemNo['trans_no'])+'  '+
                      'ORDER BY b.urutan ';
            open;
         end;
         show;
         kd.Text:=dm.Qtemp.FieldByName('trans_no').AsString;
         EdNama.Text:=dm.Qtemp.FieldByName('remarks').AsString;
         CbTipe_transaksi.Text:=dm.Qtemp.FieldByName('trans_type').AsString;
         CbTipeNo.Text:=dm.Qtemp.FieldByName('jenis_reset').AsString;
         Kdsubmenu.Text:=dm.Qtemp.FieldByName('numb_type').AsString;
         KdType.Text:=dm.Qtemp.FieldByName('reset_type').AsString;
         eddigit_count.Text:=dm.Qtemp.FieldByName('digit_counter').AsString;
         status_add:=dm.Qtemp.FieldByName('additional_status').Asboolean;
         if status_add=true then
         begin
            FEdit_Penomoran.CheckAdd.Checked:=true;
         end
         else
            FEdit_Penomoran.CheckAdd.Checked:=false;

          DBGridNotemp.Columns[2].PickList.clear;
          dm.Qtemp.First;
          while not dm.Qtemp.Eof do
          begin
            DBGridNotemp.Columns[3].PickList.add(dm.Qtemp.fieldbyname('description').AsString);
            dm.Qtemp.Next;
          end;

          dm.Qtemp.First;
          while not dm.Qtemp.Eof do
          begin
              with dm.Qtemp do
              begin
                Mem_component.Insert;
                Mem_component['urutan']:=dm.Qtemp.FieldByName('urutan').AsString;
                Mem_component['trans_no']:=dm.Qtemp.FieldByName('trans_no').AsString;
                Mem_component['param_name']:=dm.Qtemp.FieldByName('param_name').AsString;
                Mem_component['remarks']:=dm.Qtemp.FieldByName('description').AsString;
                Mem_component['id_param']:=dm.Qtemp.FieldByName('id_param').AsString;
                Mem_component.Post;
              end;
              dm.Qtemp.Next;
          end;

     end;



end;

procedure TFPenomoran.dxBarButton1Click(Sender: TObject);
begin
  FNew_Penomoran.ShowModal;
end;

procedure TFPenomoran.dxBarLargeButton1Click(Sender: TObject);
begin
   with  FNew_Penomoran.qnumb_det_tmp do
   begin
     close;
     sql.clear;
     sql.add('delete from t_numb_det_tmp');
     execute;
   end;
   FNew_Penomoran.ShowModal;
end;

procedure TFPenomoran.FormShow(Sender: TObject);
begin
   if QNo.Active=False then QNo.Active:=True;
   if MemNo.Active=False then MemNo.Active:=True;
   if QdetNo.Active=False then QdetNo.Active:=True;
end;

end.
