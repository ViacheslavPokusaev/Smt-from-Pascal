unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
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
p,x,min,m,f:integer;
begin
x:=strtoint(edit1.Text);
f:=0;
for p:=1 to x do begin
m:=strtoint(inputbox('Ââåäèòå ÷èñëà','m=',' '));

if (m>3) and (f=0) then f:=1;
if f=1 then begin min:=m;
f:=2;
end;
if (m>3) and (m<min) then min:=m;
end;
edit2.Text:=inttostr(min);
end;

end.
