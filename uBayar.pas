unit uBayar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, NxEdit, ComCtrls, NxPageControl, Buttons,
  ActnList;

type
  TPembayaran = record
    No_Nota,
    Mesin_ID,
    K_Transaksi,
    Jns_Bayar,
    No_Kartu_Bayar,
    Nm_Kartu_Bayar,
    Bank_Kartu_Bayar,
    No_Validasi_Bayar,
    Keterangan,
    Kasir_ID,
    Shift_Jual    : String;
    Debet,
    Kredit        : Double;
  end;
  TfrmBayar = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    lbl1: TLabel;
    lblTotalTrx: TLabel;
    lbl2: TLabel;
    actlst1: TActionList;
    actSimpan: TAction;
    actBack: TAction;
    btnBack: TBitBtn;
    btnBack1: TBitBtn;
    rgPembayaran: TRadioGroup;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    NxTabSheet2: TNxTabSheet;
    edtNama_Kartu_Debet: TEdit;
    edtNo_Kartu_Debet: TEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl3: TLabel;
    edtKembalian: TEdit;
    edtBayar: TNxNumberEdit;
    Label1: TLabel;
    edtTunai: TEdit;
    Label2: TLabel;
    cbbBank_Debet: TComboBox;
    procedure rgPembayaranClick(Sender: TObject);
    procedure actSimpanExecute(Sender: TObject);
    procedure actBackExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtBayarChange(Sender: TObject);
    procedure edtBayarExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    ATotalTransaksi : double;
    Pembayaran  : TPembayaran;
  end;

var
  frmBayar: TfrmBayar;

implementation

uses modul;

{$R *.dfm}

procedure TfrmBayar.actBackExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmBayar.actSimpanExecute(Sender: TObject);
begin
  // Validasi Pembayaran - cek nilai nya sesuai ndak ?
  if (edtBayar.Value<ATotalTransaksi) then
  begin
    MessageDlg('GAGAL ! Masukkan nilai pembayaran yang sesuai !',mtError,[mbOK],0);
    edtBayar.SetFocus;
    exit;
  end;

  if (rgPembayaran.ItemIndex>0)  and ((trim(edtNo_Kartu_Debet.Text)='') or (cbbBank_Debet.ItemIndex=-1)) then
  begin
    MessageDlg('GAGAL ! Pembayaran Kartu Debet / Kredit harus memasukkan No Kartu dan Kode Bank !',mtError,[mbOK],0);
    edtNo_Kartu_Debet.SetFocus;
    exit;
  end;

  case rgPembayaran.ItemIndex of
    0 : Pembayaran.Jns_Bayar :=  'TUNAI';
    1 : Pembayaran.Jns_Bayar  := 'DEBET';
    2 : Pembayaran.Jns_Bayar  := 'KREDIT';
  end;

  Pembayaran.Debet := ATotalTransaksi;
  Pembayaran.Kredit:= 0;

  if (rgPembayaran.ItemIndex>0) then
  begin
    Pembayaran.No_Kartu_Bayar := edtNo_Kartu_Debet.Text;
    Pembayaran.Nm_Kartu_Bayar := edtNama_Kartu_Debet.Text;
    Pembayaran.Bank_Kartu_Bayar := cbbBank_Debet.Text;

    // Insert tabel TR_MESIN_NONCASH sebagai detail transaksi non cash
    DM.DBConn.ExecuteQuery('INSERT INTO TR_MESIN_NONCASH (NO_NOTA, MESIN_ID, NO_KARTU_BAYAR, NM_KARTU_BAYAR, BANK_KARTU_BAYAR, NO_VALIDASI_BAYAR) '+
                          ' VALUES (:no_nota, :mesin_id, :no_kartu_bayar, :nm_kartu_bayar, :bank_kartu_bayar, :no_validasi_Bayar) ',
                          [Pembayaran.No_Nota,
                           Pembayaran.Mesin_ID,
                           Pembayaran.No_Kartu_Bayar,
                           Pembayaran.Nm_Kartu_Bayar,
                           Pembayaran.Bank_Kartu_Bayar,
                           Pembayaran.No_Validasi_Bayar
                          ]);
  end;

  // Insert tabel TR_MESIN
    DM.DBConn.ExecuteQuery('INSERT INTO TR_MESIN (NO_NOTA, MESIN_ID, K_TRANSAKSI, WKT_TRANSAKSI, DEBET, KREDIT, JNS_BAYAR, KETERANGAN, KASIR_ID, SHIFT_JUAL) '+
                          ' VALUES (:no_nota, :mesin_id, :k_transaksi, current_timestamp, :debet, :kredit, :jns_bayar,:keterangan, :kasir_id, :shift_jual) ',
                          [Pembayaran.No_Nota,
                           Pembayaran.Mesin_ID,
                           Pembayaran.K_Transaksi,
                           Pembayaran.Debet,
                           Pembayaran.Kredit,
                           Pembayaran.Jns_Bayar,
                           Pembayaran.Keterangan,
                           Pembayaran.Kasir_ID,
                           Pembayaran.Shift_Jual
                          ]);

    ModalResult := mrOk;
end;

procedure TfrmBayar.edtBayarChange(Sender: TObject);
begin
  edtTunai.Text    :=FormatFloat('#,#.00', edtBayar.Value);
  edtKembalian.Text:=FormatFloat('#,#.00', edtBayar.Value - ATotalTransaksi);
  edtKembalian.Color := clYellow;
end;

procedure TfrmBayar.edtBayarExit(Sender: TObject);
begin
  edtKembalian.Color := clWindow;
end;

procedure TfrmBayar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    { check if SHIFT - Key is pressed }
    if GetKeyState(VK_Shift) and $8000 <> 0 then
    PostMessage(Handle, WM_NEXTDLGCTL, 1, 0)
  else
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmBayar.FormShow(Sender: TObject);
begin
  edtBayar.Text:='';
  edtBayar.SetFocus;
  lblTotalTrx.Caption := FormatFloat('#,#.00', ATotalTransaksi);
end;

procedure TfrmBayar.rgPembayaranClick(Sender: TObject);
begin
   if rgPembayaran.ItemIndex=0 then  NxPageControl1.ActivePageIndex:=0
   else  begin
      NxPageControl1.ActivePageIndex := 1;
      edtBayar.Value := ATotalTransaksi;
   end;

end;

end.
