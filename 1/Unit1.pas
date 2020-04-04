unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
x,k:integer;
y:real;
begin
k:=0;
X:=-100;
repeat
case x of
-13,13,24:y:=abs(x);
8,29,43:y:=-intpower(x+1,3);
1:y:=4/(sqr(x)-8)
else y:=sqrt(abs(x+9))
end;
if y>0 then k:=k+1;

memo1.lines.add(floattostr(y));
x:=x+1;
until x>0;
edit1.text:=inttostr(k);
end;

end.
