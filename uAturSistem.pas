unit uAturSistem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, NxPageControl;

type
  TfrmAturSistem = class(TForm)
    Panel1: TPanel;
    lbHeader: TLabel;
    lbDeskripsi: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtHost: TEdit;
    edtName: TEdit;
    edtUsername: TEdit;
    edtPasswd: TEdit;
    edtPort: TEdit;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAturSistem: TfrmAturSistem;

implementation

uses modul, iniFiles;

{$R *.dfm}

procedure TfrmAturSistem.BitBtn2Click(Sender: TObject);
var configFile : TInifile;
    fileName : string;

begin
  fileName := ChangeFileExt(Application.ExeName,'.ini');
  if not FileExists(fileName) then exit;

  configFile := TInifile.Create(Filename);

  try
    configFile.WriteString('DATABASE','DBHost ',edtHost.Text);

    configFile.WriteString('DATABASE','DBPort',edtPort.Text);
    configFile.WriteString('DATABASE','DBName',edtName.Text);
    configFile.WriteString('DATABASE','DBUsername',edtUsername.Text);
    configFile.WriteString('DATABASE','DBPassword',edtPasswd.Text);

    DM.LoadSettings;
  finally
    configFile.Free;
  end;

  ModalResult := mrOK;

end;

procedure TfrmAturSistem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmAturSistem := nil;
  Action := caFree;
end;

procedure TfrmAturSistem.FormShow(Sender: TObject);
var configFile : TInifile;
    fileName : string;
begin
  fileName := ChangeFileExt(Application.ExeName,'.ini');
  if not FileExists(fileName) then
  begin
    MessageDlg('ERROR !!'#13#10+'Setting Aplikasi tidak ditemukan !',mtError,[mbOK],0);
    close;
  end;

  configFile := TInifile.Create(Filename);
  try
    edtHost.Text    := configFile.ReadString('DATABASE','DBHost','localhost');
    edtPort.Text    := inttostr(configFile.ReadInteger('DATABASE','DBPort',3050));
    edtName.Text    := configFile.ReadString('DATABASE','DBName','D:\DATABASES\INVENTORYDB.FDB');
    edtUsername.Text:= configFile.ReadString('DATABASE','DBUsername','SYSDBA');
    edtPasswd.Text  := configFile.ReadString('DATABASE','DBPassword','masterkey');

    NxPageControl1.ActivePageIndex := 0;

  finally
    configFile.Free;
  end;


end;

procedure TfrmAturSistem.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    edtName.Text  := OpenDialog1.FileName;
  end;
end;

end.
