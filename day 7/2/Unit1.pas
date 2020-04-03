unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
form1.ActiveControl:=edit1;
form1.borderstyle:=bsdialog;


end;

procedure TForm1.FormDblClick(Sender: TObject);
begin
if edit1.text='123' then form1.BorderStyle:=bssizeable;
end;

procedure TForm1.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
form1.Caption:=inttostr(width)+';'+inttostr(height);

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
form3.visible:=true;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if form1.WindowState=wsmaximized then action:=cahide else begin
action:=canone;showmessage('nelsya');
end;
end;
procedure TForm1.FormActivate(Sender: TObject);
begin
form1.Color:=clred;
end;

end.
