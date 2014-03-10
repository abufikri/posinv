unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ActnList, ActnMan, ComCtrls, ToolWin, ActnCtrls, Ribbon,
  RibbonLunaStyleActnCtrls, ExtCtrls, dsTaskBar, StdCtrls, Buttons ;

type
  TfrmMain = class(TForm)
    Ribbon1: TRibbon;
    RibbonPage1: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonPage2: TRibbonPage;
    RibbonGroup2: TRibbonGroup;
    RibbonGroup3: TRibbonGroup;
    RibbonPage3: TRibbonPage;
    RibbonGroup4: TRibbonGroup;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    Action10: TAction;
    dsTaskBar1: TdsTaskBar;
    ImageList1: TImageList;
    tmr1: TTimer;
    StatusBar1: TStatusBar;
    procedure Action10Execute(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses uKasir, uLogin, modul, uCashIn;

{$R *.dfm}

procedure TfrmMain.Action10Execute(Sender: TObject);
begin
  // Transaksi Kasir
  if not Assigned(frmKasir) then
    frmKasir := TfrmKasir.Create(self);
  frmKasir.ShowModal;
end;

procedure TfrmMain.Action8Execute(Sender: TObject);
begin
  // Cash IN
  if not Assigned(frmCashIn) then
    frmCashIn := TfrmCashIn.Create(self);
  frmCashIn.Show;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  //StatusBar1.Panels[1].Text := DM.DirGambar;
  if (DM.AccountLogin.userID='') and not(DM.isDebug) then
  begin
    if not((frmLogin.ShowModal=mrOK) and (DM.AccountLogin.userID<>'')) then
    begin
      Application.Terminate;
    end;
  end;
  if DM.isDebug then  DM.AccountLogin.userID:='root';
  StatusBar1.Panels[0].Text := DM.AccountLogin.userID;
  StatusBar1.Panels[1].Text := DM.AccountLogin.NameID;
  StatusBar1.Panels[2].Text := DM.AccountLogin.groupID;
  StatusBar1.Panels[3].Text := FormatDateTime('dddd dd-mm-yyyy',now);
  tmr1.Enabled := True;
end;

procedure TfrmMain.tmr1Timer(Sender: TObject);
begin
  StatusBar1.Panels[4].Text := FormatDateTime('hh:nn:ss',Now);
end;

end.
