unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TForm1 = class(TForm)
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
s,d,x,k:integer;
begin
x:=strtoint(edit1.Text);
s:=0;
d:=(x div 100)*(x div 10 mod 10)*(x mod 10);
while x>0 do begin
k:=x mod 10;
s:=s+k;
x:=x div 10;
end;

edit2.Text:=inttostr(s);
edit3.Text:=inttostr(d);

end;

end.
