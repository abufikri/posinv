unit uCashIn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfrmCashIn = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashIn: TfrmCashIn;

implementation

{$R *.dfm}

procedure TfrmCashIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmCashIn := nil;
  Action    := caFree;
end;

end.
