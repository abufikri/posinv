unit uFormClientMDI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, NxPageControl, Buttons;

type
  TfrmClientMDI = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    lbHeader: TLabel;
    lbDeskripsi: TLabel;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    NxTabSheet2: TNxTabSheet;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientMDI: TfrmClientMDI;

implementation

uses modul;

{$R *.dfm}

procedure TfrmClientMDI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmClientMDI := nil;
  Action := caFree;
end;

end.
