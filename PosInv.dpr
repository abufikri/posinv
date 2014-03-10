program PosInv;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain},
  uKasir in 'uKasir.pas' {frmKasir},
  modul in 'modul.pas' {DM: TDataModule},
  uLogin in 'uLogin.pas' {frmLogin},
  uSearch in 'uSearch.pas' {frmSearch},
  uBayar in 'uBayar.pas' {frmBayar},
  uHold in 'uHold.pas' {frmHold},
  uCashIn in 'uCashIn.pas' {frmCashIn},
  uFormClientMDI in 'uFormClientMDI.pas' {frmClientMDI};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmSearch, frmSearch);
  Application.CreateForm(TfrmBayar, frmBayar);
  Application.CreateForm(TfrmHold, frmHold);
  Application.Run;
end.
