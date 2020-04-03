unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm5 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
begin
Form5.Width:=300;
Form5.Height:=300;
Form5.Color:=clred;
ShowHint:=True;
Hint:='Это окно №5';
end;

procedure TForm5.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Form1.Memo1.clear;
Form1.Memo1.lines.add(inttostr(Form5.Width));
Form1.Memo1.lines.add(inttostr(Form5.Height));
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
Form5.Caption:='Активно';
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caNone;
Showmessage('Запрещено закрывать');
end;

procedure TForm5.FormClick(Sender: TObject);
begin
form1.BorderIcons:= BorderIcons-[biMaximize];
end;

end.
