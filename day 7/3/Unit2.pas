unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm2 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit5;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
Form2.Width:=300;
Form2.Height:=300;
Form2.Color:=clred;
BorderIcons:= BorderIcons-[biMinimize] ;
ShowHint:=True;
Hint:='Это окно №2';
end;

procedure TForm2.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Form2.Cursor:=crCross;
end;

procedure TForm2.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize:=false;
Showmessage('нельзя изменять размер');
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
Form5.Caption:='Неактивно';
end;

end.
