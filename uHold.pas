unit uHold;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ActnList, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid;

type
  TfrmHold = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    btnBack: TBitBtn;
    btnBack1: TBitBtn;
    actlst1: TActionList;
    actBack: TAction;
    actHold: TAction;
    actCall: TAction;
    pnl3: TPanel;
    grid1: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    btnCall: TBitBtn;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    edtNo_Nota: TEdit;
    edtID_Konsumen: TEdit;
    edtNm_Konsumen: TEdit;
    edtID_Kasir: TEdit;
    edtWkt_Transaksi: TEdit;
    edtNilai_Transaksi: TEdit;
    edtItem_Brg: TEdit;
    lbl8: TLabel;
    edtMesin_ID: TEdit;
    procedure actBackExecute(Sender: TObject);
    procedure actHoldExecute(Sender: TObject);
    procedure actCallExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHold: TfrmHold;

implementation

uses modul, uKasir;

{$R *.dfm}

procedure TfrmHold.actBackExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmHold.actCallExecute(Sender: TObject);
begin
  frmKasir.edtNotaPenjualan.Text    := grid1.Cells[0,grid1.SelectedRow];
  ModalResult := mrOk;
end;

procedure TfrmHold.actHoldExecute(Sender: TObject);
begin
  DM.DBConn.ExecuteQuery('update PENJUALAN_MESIN set status_nota=:status_nota where no_nota=:no_nota and mesin_id=:mesin_id',
                        ['HOLD',
                          edtNo_Nota.Text,
                          edtMesin_ID.Text]);
  ModalResult := mrOk;
end;

end.
