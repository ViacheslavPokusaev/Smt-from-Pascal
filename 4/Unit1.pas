unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
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
a:integer;
f:real;
begin
a:=-100;
repeat;
if a<-8 then f:=abs(sqr(a)-7*intpower(a,5)) else f:=6+cos(4*a);
memo1.Lines.Add(floattostr(f));
if frac(f/2)=0 then memo2.Lines.Add(floattostr(f));
a:=a+10;
until a>300;
end;

end.
