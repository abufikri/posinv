unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,  DB,
  shellAPI, jpeg;

type
  TfrmLogin = class(TForm)
    btn1: TBitBtn;
    btn2: TBitBtn;
    edt1: TEdit;
    edt2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    img1: TImage;
    lbl3: TLabel;
    lbl6: TLabel;
    lbl4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    iUlang : integer;
    isCanClose : boolean;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses modul;

{$R *.dfm}

procedure TfrmLogin.btn1Click(Sender: TObject);
var
  sDataset  : TDataset;
  sPasswd, sIsBlokir : string;
begin
  if uppercase(edt1.Text)='ROOT' then
  begin
    if (edt2.Text=DM.RootPasswd) then
    begin
      DM.AccountLogin.userID := 'root';
      DM.AccountLogin.NameID := 'Super User';
      DM.AccountLogin.groupID:= 'root';
      DM.AccountLogin.timeLogin:=now;
      MessageDlg('Login Sukses !!',mtInformation,[mbOK],0);
      isCanClose := True;
      ModalResult:=mrOK;
      exit;
    end else
    begin
      MessageDlg('Login Salah !!'#13+'Username / Password salah',mtError,[mbOK],0);
      exit;
    end;
  end;
  sDataset:= DM.DBConn.CreateSQLDataSet('select id_pegawai, nama, k_group, passwd,is_blokir from PEGAWAI where upper(id_pegawai)=:id_pegawai',[UpperCase(Edt1.Text)]);
  try
    if sDataset.isEmpty then
    begin
      MessageDlg('Login Salah !!'#13+'Username / Password salah',mtError,[mbOK],0);
      isCanClose := False;
      modalResult:=mrCancel;
      exit;
    end;

    sPasswd := sDataset.FieldbyName('passwd').AsString;
    sIsBlokir:= sDataset.FieldbyName('is_blokir').AsString;
    if (sPasswd<>Edt2.Text) or (sIsBlokir<>'0')  then
    begin
      MessageDlg('Login Salah !!'#13+'Username / Password salah',mtError,[mbOK],0);
      if iUlang<3 then
      begin
         iUlang:=iUlang+1;
         exit;
      end;
      MessageDlg('Login Salah !!'#13+'Username / Password salah .. Kesempatan Habis',mtError,[mbOK],0);
      isCanClose := False;
      modalResult:=mrCancel;
      exit;
    end;
    DM.AccountLogin.userID := sDataset.FieldbyName('ID_PEGAWAI').AsString;
    DM.AccountLogin.NameID := sDataset.FieldbyName('NAMA').AsString;
    DM.AccountLogin.groupID:= sDataset.FieldbyName('K_GROUP').AsString;
    DM.AccountLogin.passwd:= sDataset.FieldbyName('PASSWD').AsString;
    DM.AccountLogin.timeLogin:=now;
    MessageDlg('Login Sukses !!',mtInformation,[mbOK],0);
    isCanClose := True;
    ModalResult:=mrOK;
  finally
    FreeAndNil(sDataset);
  end;

end;

procedure TfrmLogin.btn2Click(Sender: TObject);
begin
  isCanClose := True;
  ModalResult:=mrCancel;
  exit;
end;

procedure TfrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := isCanClose;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  Edt1.Text:='';
  Edt2.Text:='';
  iUlang :=0;
  isCanClose := False;
end;

end.
