unit uCashIn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  NxPageControl, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TfrmCashIn = class(TForm)
    Panel1: TPanel;
    lbHeader: TLabel;
    lbDeskripsi: TLabel;
    Panel3: TPanel;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    NxTabSheet2: TNxTabSheet;
    gridList: TNextGrid;
    Label1: TLabel;
    btnRefresh: TBitBtn;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    dtp2: TDateTimePicker;
    lbl8: TLabel;
    dtp1: TDateTimePicker;
    lbl7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashIn: TfrmCashIn;

implementation

uses modul;

{$R *.dfm}

procedure TfrmCashIn.btnRefreshClick(Sender: TObject);
begin
  dtp1.Time := StrtoTime('00:00:00');
  dtp2.Time := StrtoTime('23:59:59');

//  ShowMessage(FormatDateTime('yyy-mm-dd 00:00:00',dtTanggal.DateTime));
  DM.DoDataGrid('select no_nota, mesin_id, k_transaksi, debet, keterangan, kasir_id, shift_jual from TR_MESIN where mesin_id=:mesin_id and k_transaksi=:k_transaksi and wkt_transaksi between :wkt1 and :wkt2',
                [DM.MesinID, 'TR_JUAL',
                dtp1.DateTime,
                dtp2.DateTime
                //FormatDateTime('yyyy-mm-dd 00:00:00',dtTanggal.DateTime),
                //FormatDateTime('yyyy-mm-dd 23:59:59',dtTanggal.DateTime)
                ], gridList);
end;

procedure TfrmCashIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmCashIn := nil;
  Action    := caFree;
end;

procedure TfrmCashIn.FormShow(Sender: TObject);
begin
  dtp2.DateTime := now;
  dtp1.DateTime := now;
end;

end.
