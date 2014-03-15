unit uAturHeaderFooter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxPageControl, StdCtrls, Buttons, ExtCtrls, Spin;

type
  TfrmAturHeaderFooter = class(TForm)
    Panel1: TPanel;
    lbHeader: TLabel;
    lbDeskripsi: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    NxTabSheet2: TNxTabSheet;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtHeader1: TEdit;
    edtHeader2: TEdit;
    edtHeader3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtFooter1: TEdit;
    edtFooter2: TEdit;
    edtFooter3: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtLebar: TSpinEdit;
    edtTinggi: TSpinEdit;
    Label10: TLabel;
    cbJenisPrinter: TComboBox;
    rgStatusPrinter: TRadioGroup;
    rgStatusDrawer: TRadioGroup;
    rgStatusPole: TRadioGroup;
    Label11: TLabel;
    edtMesinID: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure CreateDefaultSetting;
  public
    { Public declarations }
  end;

var
  frmAturHeaderFooter: TfrmAturHeaderFooter;

implementation

uses modul, IniFiles;

{$R *.dfm}

procedure TfrmAturHeaderFooter.BitBtn2Click(Sender: TObject);
var configFile : TInifile;
    fileName : string;

begin
  fileName := ChangeFileExt(Application.ExeName,'.ini');
  if not FileExists(fileName) then CreateDefaultSetting;
  configFile := TInifile.Create(Filename);

  try
    configFile.WriteString('MESIN','MesinID',edtMesinID.Text);

    configFile.WriteString('HEADER','Header1',edtHeader1.Text);
    configFile.WriteString('HEADER','Header2',edtHeader2.Text);
    configFile.WriteString('HEADER','Header3',edtHeader3.Text);

    configFile.WriteString('FOOTER','Footer1',edtFooter1.Text);
    configFile.WriteString('FOOTER','Footer2',edtFooter2.Text);
    configFile.WriteString('FOOTER','Footer3',edtFooter3.Text);

    configFile.WriteInteger('LAYAR','Height',edtTinggi.Value);
    configFile.WriteInteger('LAYAR','Width',edtLebar.Value);

    configFile.WriteInteger('MESIN','PrinterStatus',rgStatusPrinter.ItemIndex);
    configFile.WriteInteger('MESIN','DrawerStatus',rgStatusDrawer.ItemIndex);
    configFile.WriteInteger('MESIN','PoleDisplayStatus',rgStatusPole.ItemIndex);

    configFile.WriteString('MESIN','PrinterID',cbJenisPrinter.Text);

    DM.LoadSettings;

  finally
    configFile.Free;
  end;

  ModalResult := mrOK;
end;

procedure TfrmAturHeaderFooter.CreateDefaultSetting;
var TS : TStrings;
    DefaultDB : String;
begin
  DefaultDB := ExtractFilePath(Application.ExeName)+'Databases\PosInventoryDB.FDB';
  TS := TStringList.Create;
  try
    TS.Clear;
    TS.Add(';--------------------------------------------------------');
    TS.Add('; Default Settings ');
    TS.Add('');
    TS.Add('[DATABASE]');
    TS.Add('DBHost = localhost');
    TS.Add('DBName = '+DefaultDB);
    TS.Add('DBUsername = SYSDBA');
    TS.Add('DBPassword = masterkey');
    TS.Add('');
    TS.Add('[SKIN_INFO]');
    TS.Add('SkinName = Office2007 Black');
    TS.Add('');
    TS.Add('[HEADER]');
    TS.Add('Header1 = KFC Fried Chicken ');
    TS.Add('Header2 = Mall Olimpic Garden Lt 5 - 14');
    TS.Add('Header3 = M A L A N G');
    TS.Add('');
    TS.Add('[FOOTER]');
    TS.Add('Footer1 = Barang yang sudah dibeli tidak dapat ditukarkan ');
    TS.Add('Footer2 = TERIMA KASIH ATAS KUNJUNGAN ANDA');
    TS.Add('Footer3 = M A L A N G');
    TS.Add('');
    TS.Add('[MESIN]');
    TS.Add('MesinID = 01');
    TS.Add('DrawerStatus = OFF');
    TS.Add('PoleDisplayStatus = OFF');
    TS.Add('PrinterID = EPSON TMU200');
    TS.Add('PrinterStatus = 0');
    TS.Add('');
    TS.Add('[LAYAR]');
    TS.Add('Height = 768');
    TS.Add('Width = 1024');


    TS.SaveToFile(ChangeFileExt(Application.ExeName, '.ini'));
  finally
    TS.Free;
  end;

end;

procedure TfrmAturHeaderFooter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    frmAturHeaderFooter := nil;
    Action := caFree;
end;

procedure TfrmAturHeaderFooter.FormShow(Sender: TObject);
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
    edtMesinID.Text := configFile.ReadString('MESIN','MesinID','01');
    edtHeader1.Text := configFile.ReadString('HEADER','Header1','KFC Fried Chicken');
    edtHeader2.Text := configFile.ReadString('HEADER','Header2','Mall Olimpic Garden Lt 5-14');
    edtHeader3.Text := configFile.ReadString('HEADER','Header3','M a l a n g');
    edtFooter1.Text := configFile.ReadString('FOOTER','Footer1','');
    edtFooter2.Text := configFile.ReadString('FOOTER','Footer2','');
    edtFooter3.Text := configFile.ReadString('FOOTER','Footer3','');
    edtLebar.Value  := configFile.ReadInteger('LAYAR','Width',1024);
    edtTinggi.Value  := configFile.ReadInteger('LAYAR','Height',768);

    rgStatusPrinter.ItemIndex := configFile.ReadInteger('MESIN','PrinterStatus',0);
    rgStatusDrawer.ItemIndex  := configFile.ReadInteger('MESIN','DrawerStatus',0);
    rgStatusPole.ItemIndex    := configFile.ReadInteger('MESIN','PoleDisplayStatus',0);

    cbJenisPrinter.ItemIndex := cbJenisPrinter.Items.IndexOf(configFile.ReadString('MESIN','PrinterID',''));

    NxPageControl1.ActivePageIndex := 0;

  finally
    configFile.Free;
  end;

end;

end.
