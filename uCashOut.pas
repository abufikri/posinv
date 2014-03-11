unit uCashOut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, DB,
  NxPageControl, StdCtrls, Buttons, ExtCtrls, ComCtrls, ActnList, NxEdit;

type
  TfrmCashOut = class(TForm)
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
    ActionList1: TActionList;
    actTambah: TAction;
    actQuit: TAction;
    Panel4: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    actSave: TAction;
    actCancel: TAction;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtKasirID: TEdit;
    edtMesinID: TEdit;
    edtShift: TEdit;
    edtNominal: TNxNumberEdit;
    rgJenisTransaksi: TRadioGroup;
    edtKeterangan: TEdit;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actTambahExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    { Private declarations }
    procedure TogglePageControl(ActivePageIndex : integer);
  public
    { Public declarations }
  end;

var
  frmCashOut: TfrmCashOut;
  KTransaksi : String;

implementation

uses modul;

{$R *.dfm}

procedure TfrmCashOut.actCancelExecute(Sender: TObject);
begin
  // Check Active Page
  if NxPageControl1.ActivePageIndex=1 then
  begin
    if MessageDlg('Apakah Anda yakin akan membatalkan isian ini ?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
    begin
      exit;
    end;


  end;

  TogglePageControl(0);

end;

procedure TfrmCashOut.actSaveExecute(Sender: TObject);
var sDataset : TDataset;
    SNotaTransaksi    : String;
begin
  // Check Active Page
  if NxPageControl1.ActivePageIndex=1 then
  begin
      if rgJenisTransaksi.ItemIndex=0 then KTransaksi :='TR_SETORAN' else KTransaksi:= 'TR_CASHOUT';

      // Ambil Nota Transaksi
      SDataset  := DM.DBConn.CreateSQLDataSet('select no_urut from GET_SEQUENCE_ID(:tipe)',['JUAL']);
      try
        if SDataset.IsEmpty then Exit;
        SNotaTransaksi := SDataset.FieldByName('No_Urut').AsString+'-'+edtMesinID.Text;
      finally
        FreeAndNil(sDataset);
      end;

      DM.DBConn.ExecuteQuery('INSERT INTO TR_MESIN (NO_NOTA, MESIN_ID, K_TRANSAKSI, WKT_TRANSAKSI, DEBET, KREDIT, JNS_BAYAR, KASIR_ID, SHIFT_JUAL, KETERANGAN) VALUES '+
                              '(:NO_NOTA, :MESIN_ID, :K_TRANSAKSI, current_timestamp, :DEBET, :KREDIT, :JNS_BAYAR, :KASIR_ID, :SHIFT_JUAL, :KETERANGAN)',
      [SNotaTransaksi,
       DM.MesinID,
       KTransaksi,
       0,
       edtNominal.Value,
       'TUNAI',
       DM.AccountLogin.userID,
       DM.AccountLogin.ShiftID,
       edtKeterangan.Text
      ]);
  end;

  TogglePageControl(0);
  btnRefreshClick(self);
end;

procedure TfrmCashOut.actTambahExecute(Sender: TObject);
begin
  //NxTabSheet1.Visible := False;
  //NxTabSheet2.Visible := True;
  //NxPageControl1.ActivePageIndex := 1;
  TogglePageControl(1);

end;

procedure TfrmCashOut.btnRefreshClick(Sender: TObject);
begin
  dtp1.Time := StrtoTime('00:00:00');
  dtp2.Time := StrtoTime('23:59:59');

//  ShowMessage(FormatDateTime('yyy-mm-dd 00:00:00',dtTanggal.DateTime));
  DM.DoDataGrid('select no_nota, mesin_id, k_transaksi, kredit, keterangan, kasir_id, shift_jual from TR_MESIN where mesin_id=:mesin_id and (k_transaksi=:k_transaksi1 or k_transaksi=:k_transaksi2 ) and wkt_transaksi between :wkt1 and :wkt2',
                [DM.MesinID, 'TR_SETORAN','TR_CASHOUT',
                dtp1.DateTime,
                dtp2.DateTime
                //FormatDateTime('yyyy-mm-dd 00:00:00',dtTanggal.DateTime),
                //FormatDateTime('yyyy-mm-dd 23:59:59',dtTanggal.DateTime)
                ], gridList);
end;

procedure TfrmCashOut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmCashOut := nil;
  Action    := caFree;
end;

procedure TfrmCashOut.FormShow(Sender: TObject);
begin
  dtp2.DateTime := now;
  dtp1.DateTime := now;
  edtMesinID.Text := DM.MesinID;
  edtKasirID.Text := DM.AccountLogin.userID;
  edtShift.Text   := DM.AccountLogin.shiftID;
  edtKeterangan.Text  := '';
  edtNominal.Value    := 0;
  rgJenisTransaksi.ItemIndex := 0;

  //NxTabSheet2.Visible := False;
  //NxTabSheet1.Visible := True;
  //NxPageControl1.ActivePageIndex := 0;
  TogglePageControl(0);

end;

procedure TfrmCashOut.TogglePageControl(ActivePageIndex: integer);
var i : integer;
begin
  for i := 0 to NxPageControl1.PageCount-1 do
  begin
    if (i=ActivePageIndex) then
      NxPageControl1.Pages[i].PageVisible := True
    else   NxPageControl1.Pages[i].PageVisible := False;
  end;
  NxPageControl1.ActivePageIndex := ActivePageIndex;




end;

end.
