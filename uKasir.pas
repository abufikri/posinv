unit uKasir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, ActnList, StdCtrls, ExtCtrls, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, NxEdit,
  Buttons, NxColumnClasses, NxColumns, DB, jpeg;

type
  TfrmKasir = class(TForm)
    panelHelp: TNxExpandPanel;
    NxPanel1: TNxPanel;
    ActionList1: TActionList;
    actCariPLU: TAction;
    actHelp: TAction;
    Panel1: TPanel;
    edtPLU: TEdit;
    NxPanel2: TNxPanel;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    gridTransaksi: TNextGrid;
    NxPanel3: TNxPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtSubTotal: TNxNumberEdit;
    edtDiscSubTotal: TNxNumberEdit;
    edtPPN: TNxNumberEdit;
    edtTotal: TNxNumberEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actQuit: TAction;
    Label5: TLabel;
    panelKonsumen: TNxPanel;
    Label6: TLabel;
    Label7: TLabel;
    edtIDKonsumen: TNxEdit;
    edtNamaKonsumen: TNxEdit;
    lblNamaBrg: TLabel;
    lblHargaTotal: TLabel;
    NxTextColumn2: TNxTextColumn;
    NxIncrementColumn1: TNxIncrementColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    actKonsumen: TAction;
    actBatal: TAction;
    actPembayaran: TAction;
    actHold: TAction;
    BitBtn8: TBitBtn;
    actTrxBaru: TAction;
    actBatalAll: TAction;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    actDiskItem: TAction;
    actPLU: TAction;
    lbl1: TLabel;
    lbl2: TLabel;
    edtNotaPenjualan: TNxEdit;
    lbl3: TLabel;
    edtIDMesin: TNxEdit;
    edtIDKasir: TNxEdit;
    edtShiftKasir: TNxEdit;
    lbl4: TLabel;
    edtTglTrx: TNxEdit;
    edtJamTrx: TNxEdit;
    tmr1: TTimer;
    lblLEDTotal: TLabel;
    edtDiskonAkhir: TNxNumberEdit;
    lbl5: TLabel;
    btnDiskItem: TBitBtn;
    actCalculator: TAction;
    btnRecall: TBitBtn;
    actRecall: TAction;
    Label8: TLabel;
    lbLayar: TLabel;
    procedure actCariPLUExecute(Sender: TObject);
    procedure edtPLUKeyPress(Sender: TObject; var Key: Char);
    procedure actHelpExecute(Sender: TObject);
    procedure actQuitExecute(Sender: TObject);
    procedure actKonsumenExecute(Sender: TObject);
    procedure edtIDKonsumenKeyPress(Sender: TObject; var Key: Char);
    procedure edtIDKonsumenExit(Sender: TObject);
    procedure actPLUExecute(Sender: TObject);
    procedure edtPLUEnter(Sender: TObject);
    procedure edtPLUExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCalculatorExecute(Sender: TObject);
    procedure actPembayaranExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actBatalAllExecute(Sender: TObject);
    procedure actHoldExecute(Sender: TObject);
    procedure actRecallExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
    FDiskKonsumen : Extended;
    FItemBarang : SmallInt;
    FIsAllowDiscountItem : Boolean;
    FIsAllowOpenPrice    : Boolean;
    procedure CariBarangByInput(S : String);
    procedure CariIDKonsumen (S: String);
    procedure CariBarangByNama(S : String);
    procedure HitungGrid;
    procedure HitungTotalPembelian;
    procedure TampilPLU(KodePLU, NamaBarang: string; Qty, HrgSatuan, HrgTotal: Double; isVoid:Boolean=False);
    procedure NewTransaksi;
    procedure GetNewNota;
    procedure LoadTransaksi(No_Nota, Mesin_ID, Status_Nota : string);

  public
    { Public declarations }
  end;

var
  frmKasir: TfrmKasir;

implementation

uses uSearch, modul, strutils, ShellAPI, uBayar, uHold;

{$R *.dfm}

procedure TfrmKasir.actBatalAllExecute(Sender: TObject);
begin
  if MessageDlg('Yakin akan membatalkan transaksi ini ??',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    DM.DBConn.ExecuteQuery('delete from PENJUALAN_MESIN where No_Nota=:no_Nota and Mesin_ID=:mesin_id',
        [edtNotaPenjualan.Text, edtIDMesin.Text]);
    NewTransaksi;
  end;

end;

procedure TfrmKasir.actCalculatorExecute(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'calc.exe',nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmKasir.actCariPLUExecute(Sender: TObject);
begin
  CariBarangByNama(edtPLU.Text);
end;

procedure TfrmKasir.actHelpExecute(Sender: TObject);
begin
  panelHelp.Expanded := not panelHelp.Expanded;
end;

procedure TfrmKasir.actHoldExecute(Sender: TObject);
begin
  with frmHold do begin
    edtNo_Nota.Text       := edtNotaPenjualan.Text;
    edtID_Konsumen.Text   := edtIDKonsumen.Text;
    edtNm_Konsumen.Text   := edtNamaKonsumen.Text;
    edtMesin_ID.Text      := edtIDMesin.Text;
    edtID_Kasir.Text      := edtIDKasir.Text;

    edtNilai_Transaksi.Text :=  FormatFloat('#,#.00', edtTotal.Value);
    edtItem_Brg.Text      := IntToStr(FItemBarang);

    actCall.Enabled       := False;
    actHold.Enabled       := True;
    if frmHold.ShowModal=mrOk then
    begin
      NewTransaksi;
    end;
  end;
end;

procedure TfrmKasir.actKonsumenExecute(Sender: TObject);
begin
  panelKonsumen.Enabled := True;
  edtIDKonsumen.Color :=clYellow;
  edtIDKonsumen.SetFocus;
end;

procedure TfrmKasir.actPembayaranExecute(Sender: TObject);
begin
  frmBayar.lblTotalTrx.Caption := FormatFloat('#,#.00', edtTotal.Value);
  frmBayar.Pembayaran.No_Nota  := edtNotaPenjualan.Text;
  frmBayar.Pembayaran.Mesin_ID := edtIDMesin.Text;
  frmBayar.Pembayaran.K_Transaksi := 'TR_JUAL';
  frmBayar.Pembayaran.Kasir_ID  := edtIDKasir.Text;
  frmBayar.Pembayaran.Shift_Jual:= edtShiftKasir.Text;
  frmBayar.ATotalTransaksi := edtTotal.Value;

  if frmBayar.ShowModal=mrOk then
  begin
    NewTransaksi;
  end;
end;

procedure TfrmKasir.actPLUExecute(Sender: TObject);
begin
  edtPLU.SetFocus;
end;

procedure TfrmKasir.actQuitExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmKasir.actRecallExecute(Sender: TObject);
begin
  with frmHold do begin
    edtNo_Nota.Text       := edtNotaPenjualan.Text;
    edtID_Konsumen.Text   := edtIDKonsumen.Text;
    edtNm_Konsumen.Text   := edtNamaKonsumen.Text;
    edtMesin_ID.Text      := edtIDMesin.Text;
    edtID_Kasir.Text      := edtIDKasir.Text;

    edtNilai_Transaksi.Text :=  FormatFloat('#,#.00', edtTotal.Value);
    edtItem_Brg.Text      := IntToStr(FItemBarang);

    actHold.Enabled       := False;
    actCall.Enabled       := True;

    DM.DoDataGrid('select A.no_nota, (select first 1 aa.id_konsumen from penjualan_mesin aa where aa.no_nota=A.no_nota) as konsumen, max(A.tgl_nota),  sum(A.hrg_total), sum(A.qty_jual), '+
                  '(select first 1 bb.kasir_id from penjualan_mesin bb where bb.no_nota=A.no_nota) as kasir from penjualan_mesin A where A.status_nota=:status_nota group by A.no_nota order by A.no_nota',
    //'select no_nota, id_konsumen, max(tgl_nota), sum(hrg_total), sum(qty_jual) from penjualan_mesin where status_nota=:status_nota group by no_nota, id_konsumen order by no_nota ',
                  ['HOLD'],grid1);

    if frmHold.ShowModal=mrOk then
    begin
      LoadTransaksi(edtNotaPenjualan.Text, edtIDMesin.Text, 'HOLD' );
      if MessageDlg('Anda Yakin akan melanjutkan transaksi ini ?',mtConfirmation,[mbYes,mbNo],0 )=mrYes then
      begin
        // Hilangkan status HOLD - Ganti dengan RECALL
        DM.DBConn.ExecuteQuery('Update Penjualan_Mesin set status_nota=:status_nota where no_nota=:no_nota and mesin_id=:mesin_id',
        ['RECALL',edtNotaPenjualan.Text, edtIDMesin.Text]);
      end else NewTransaksi;
    end;
  end;
  if gridTransaksi.RowCount>0 then
  begin
    // Status Function Button HOLD / RECALL
    actHold.Enabled       := True;
    actRecall.Enabled     := False;
  end else
  begin
    // Status Function Button HOLD / RECALL
    actHold.Enabled       := False;
    actRecall.Enabled     := True;

  end;
end;

procedure TfrmKasir.CariBarangByInput(S: String);
var SDataset : TDataset;
begin
  // Cari berdasarkan PLU
  sDataset := DM.DBConn.CreateSQLDataSet('select * from CariPLU(:searchPLU)',[S]);
  try
    if (SDataset.IsEmpty) or (SDataset.FieldbyName('K_Barang').asString='') then
    begin
      MessageDlg('Data PLU / Kode Barang tidak ditemukan !',mtInformation,[mbOK],0);
      edtPLU.SetFocus;
      exit;
    end;

    // Status Function Button HOLD / RECALL
    actHold.Enabled       := True;
    actRecall.Enabled     := False;

    if (edtNotaPenjualan.Text='') then GetNewNota;

    // Insert ke Tabel Sementara
    DM.DBConn.ExecuteQuery('execute procedure insert_penjualan_mesin(:nota_jual, :mesin_id, :k_barang, :nama_barang, :qty_jual, :hrg_satuan, :disk_item, '+
                              ' :hrg_total, :hemat, :kasir_id, :shift_jual, :id_konsumen, :status_nota, :hrg_beli)',
                              [ edtNotaPenjualan.Text, edtIDMesin.Text,
                                SDataset.FieldbyName('K_Barang').asString,
                                SDataset.FieldbyName('Nama_Barang').asString,
                                SDataset.FieldbyName('Qty').AsFloat,
                                SDataset.FieldbyName('Hrg_Jual_Satuan').AsFloat,
                                SDataset.FieldbyName('Disk_Item').AsFloat,
                                SDataset.FieldbyName('Hrg_Jual_Total').AsFloat,
                                SDataset.FieldbyName('Hemat').AsFloat,
                               // FormatDateTime('dd-mm-',now),
                                edtIDKasir.Text,
                                '1',    // shift_jual
                                ' ',    // id_konsumen
                                '',      // Status Nota
                                SDataset.FieldbyName('Hrg_Beli_Satuan').AsFloat
                              ]);

    DM.DoDataGrid('select urut, k_barang, nama_barang, qty_jual, hrg_satuan, disk_item, hrg_total, hemat from penjualan_mesin where '+
                  ' no_nota=:no_nota and mesin_id=:mesin_id ',[edtNotaPenjualan.Text, edtIDMesin.Text], gridTransaksi);
  
    HitungGrid;
    TampilPLU(SDataset.FieldbyName('K_Barang').asString,
              SDataset.FieldbyName('Nama_Barang').asString,
              SDataset.FieldbyName('Qty').Value,
              SDataset.FieldbyName('Hrg_Jual_Satuan').Value,
              SDataset.FieldbyName('Hrg_Jual_Total').Value
              );


  finally
    FreeAndNil(sDataset);
  end;
end;



procedure TfrmKasir.CariBarangByNama(S: String);
begin
  frmSearch.Grid1.ClearRows;
  frmSearch.SQL := 'select K_BARANG, NAMA, K_SATUAN, HRG_JUAL_STD from BARANG where 1=1 ';
  frmSearch.SFilter2 := ' and K_Barang=';
  frmSearch.edFilter.Text := trim(S);
 // frmSearch.Button1Click(nil);
  if frmSearch.ShowModal=mrOK then
  begin
        edtPLU.Text := frmSearch.grid1.Cells[0,frmSearch.grid1.SelectedRow];
     // lbledt1.Text        := frmSearch.grid1.Cells[0,frmSearch.grid1.SelectedRow];
     // lbledtNamaBrg.Text  := frmSearch.grid1.Cells[1,frmSearch.grid1.SelectedRow]+' ['+frmSearch.grid1.Cells[2,frmSearch.grid1.SelectedRow]+']';
     // edtHrg_Beli.Text    := frmSearch.grid1.Cells[3,frmSearch.grid1.SelectedRow];
     // cbbSatuan.ItemIndex :=cbbSatuan.Items.IndexOfName(frmSearch.grid1.Cells[2,frmSearch.grid1.SelectedRow]);
  end;
end;

procedure TfrmKasir.CariIDKonsumen(S: String);
begin
   ShowMessage(S);
end;

procedure TfrmKasir.edtIDKonsumenExit(Sender: TObject);
begin
  edtIDKonsumen.Color := clWindow;
  panelKonsumen.Enabled := False;
end;

procedure TfrmKasir.edtIDKonsumenKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then CariIDKonsumen(edtIDKonsumen.Text);

end;

procedure TfrmKasir.edtPLUEnter(Sender: TObject);
begin
  edtPLU.Color := clYellow;
end;

procedure TfrmKasir.edtPLUExit(Sender: TObject);
begin
  edtPLU.Color := clWindow;
end;

procedure TfrmKasir.edtPLUKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    if leftstr(edtPLU.Text,1)=' ' then
    begin
      CariBarangByNama(edtPLU.Text);
      exit;
    end;

    // Cek Otoritas untuk Open Discount per Item
   if (PosEx('-',edtPLU.Text)>0) and not (FIsAllowDiscountItem) then
   begin
     MessageDlg('Maaf ! Discount per Item tidak diijinkan !',mtInformation,[mbOK],0);
     exit;
   end;

    // Cek Otoritas untuk Open Price
   if (PosEx('@',edtPLU.Text)>0) and not (FIsAllowOpenPrice) then
   begin
     MessageDlg('Maaf ! Open Price tidak diijinkan !',mtInformation,[mbOK],0);
     exit;
   end;

    CariBarangByInput(edtPLU.Text);
    edtPLU.Text := '';
    edtPLU.SetFocus;
  end;

end;

procedure TfrmKasir.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if gridTransaksi.RowCount>0 then
  begin
    MessageDlg('Silakan Selesaikan dulu transaksi, atau lakukan HOLD atau lakukan pembatalan transaksi !', mtInformation, [mbOK],0);
    CanClose := False;
  end;

end;

procedure TfrmKasir.FormCreate(Sender: TObject);
begin
  Height := DM.ScreenHeight;
  Width  := DM.ScreenWidth;
end;

procedure TfrmKasir.FormPaint(Sender: TObject);
begin
  lbLayar.Caption   := 'Ukuran Layar : '+inttostr(frmKasir.Width)+' x '+inttostr(frmKasir.Height);
end;

procedure TfrmKasir.FormResize(Sender: TObject);
begin
//  lbLayar.Caption   := 'Ukuran Layar : '+inttostr(frmKasir.Width)+' x '+inttostr(frmKasir.Height);
end;

procedure TfrmKasir.FormShow(Sender: TObject);
begin
  // Cek Otoritas Kasir untuk OpenPrice dan Diskon Item
  // Sementara disetting boleh / True
  FIsAllowDiscountItem := True;
  FIsAllowOpenPrice    := True;

  // Tampilan Nama Barang dan Harga Total dikosongkan
  lblNamaBrg.Caption    := '';
  lblHargaTotal.Caption := '';

  // SetFocus pada Scan PLU atau F2
  actPLU.Execute;
  // Tampilan Panel HELP ditutup / Collapse F1
  panelHelp.Expanded := False;

  //grid Penjualan di kosongkan
  gridTransaksi.ClearRows;
  edtIDMesin.Text   := DM.MesinID;
  edtIDKasir.Text   := DM.AccountLogin.userID;
  edtTglTrx.Text    := FormatDateTime('dd/mm/yyy',now);
  lblLEDTotal.Caption := '';
  lbLayar.Caption   := 'Ukuran Layar : '+inttostr(frmKasir.Width)+' x '+inttostr(frmKasir.Height);

  // NewTransaksi
  NewTransaksi;

end;

procedure TfrmKasir.GetNewNota;
var SDataset : TDataset;
    SNotaTransaksi : string;
begin
  SDataset  := DM.DBConn.CreateSQLDataSet('select no_urut from GET_SEQUENCE_ID(:tipe)',['JUAL']);
  try
    if SDataset.IsEmpty then Exit;
    SNotaTransaksi := SDataset.FieldByName('No_Urut').AsString+'-'+edtIDMesin.Text;
    edtNotaPenjualan.Text := SNotaTransaksi;
  finally
    FreeAndNil(sDataset);
  end;
end;

procedure TfrmKasir.HitungGrid;
var i : integer;
    SubTot : currency;
begin
  SubTot :=0;
  FItemBarang := 0;
  for i := 0 to gridTransaksi.RowCount-1 do
  begin
    SubTot := SubTot + StrToCurr(gridTransaksi.Cells[6,i]);
    FItemBarang := FItemBarang + StrToInt(gridTransaksi.Cells[3,i]);
  end;
  edtSubTotal.Value := SubTot;
  HitungTotalPembelian;

end;

procedure TfrmKasir.HitungTotalPembelian;
begin
  edtDiscSubTotal.Value := (FDiskKonsumen/100)*edtSubTotal.Value;
  edtPPN.Value          := DM.TaxPPN * (edtSubTotal.Value - edtDiscSubTotal.Value);
  edtTotal.Value        := edtSubTotal.Value + edtPPN.Value;
  lblLEDTotal.Caption   := FormatFloat('#,#.00', edtTotal.Value);

end;

procedure TfrmKasir.LoadTransaksi(No_Nota, Mesin_ID, Status_Nota: string);
var sDataset : TDataSet;
begin
    // Kosongkan data grid
    NewTransaksi;
    // Cari data transaksi sesuai No_Nota, Mesin_ID dan Status_Nota
    sDataset := DM.DBConn.CreateSQLDataSet('select A.* from PENJUALAN_MESIN A where A.no_nota=:no_nota and A.mesin_id=:mesin_id and A.status_nota=:status_nota',
                                [No_Nota, Mesin_ID, Status_Nota]);
    try
      if sDataset.IsEmpty then
      begin
        MessageDlg('Maaf ! '#13#10+'Terjadi Kesalahan ..Data transaksi tidak ditemukan',mtError,[mbOK],0);
        Exit;
      end;

      edtNotaPenjualan.Text       := sDataset.FieldByName('No_Nota').AsString;
      edtIDMesin.Text             := sDataset.FieldByName('Mesin_ID').AsString;
      edtIDKasir.Text             := sDataset.FieldByName('Kasir_ID').AsString;
      edtShiftKasir.Text          := sDataset.FieldByName('Shift_Jual').AsString;
      edtIDKonsumen.Text          := sDataset.FieldByName('ID_Konsumen').AsString;
    finally
      FreeAndNil(sDataset);
    end;



    DM.DoDataGrid('select urut, k_barang, nama_barang, qty_jual, hrg_satuan, disk_item, hrg_total, hemat from penjualan_mesin where '+
                  ' no_nota=:no_nota and mesin_id=:mesin_id ',[edtNotaPenjualan.Text, edtIDMesin.Text], gridTransaksi);
    HitungGrid;
end;

procedure TfrmKasir.NewTransaksi;
begin

  // Tampilan Nama Barang dan Harga Total dikosongkan
  FItemBarang := 0;
  edtNotaPenjualan.Text := '';
  lblNamaBrg.Caption    := '';
  lblHargaTotal.Caption := '';
  actHold.Enabled       := False;
  actRecall.Enabled     := True;
  gridTransaksi.ClearRows;
  HitungGrid;

end;

procedure TfrmKasir.TampilPLU(KodePLU, NamaBarang: string; Qty, HrgSatuan, HrgTotal: Double; isVoid:Boolean=False);
begin
  if isVoid then
  begin
    lblNamaBrg.Color    := clRed;
    lblHargaTotal.Color := clRed;
  end else
  begin
    lblNamaBrg.Color    := clBlack;
    lblHargaTotal.Color := clBlack;
  end;
  lblNamaBrg.Caption := '['+KodePLU+'] '+NamaBarang+' x '+FloatToStr(Qty)+' @ '+FloatToStr(HrgSatuan);
  lblHargaTotal.Caption := FormatFloat('#,#.00', HrgTotal);
end;

procedure TfrmKasir.tmr1Timer(Sender: TObject);
begin
    edtJamTrx.Text    := FormatDateTime('hh:nn:ss',now);
end;

end.
