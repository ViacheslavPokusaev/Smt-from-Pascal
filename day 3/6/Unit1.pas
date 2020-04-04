unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
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
a:array of array of integer;
i,j,m,n,d:integer;
begin
d:=1;
n:=strtoint(edit1.Text);
m:=strtoint(edit2.Text);
setlength(a,n,m);
for i:=0 to n-1 do begin
for j:=0 to m-1 do begin
a[i,j]:=strtoint(inputbox(' ',' ',' '));
memo1.lines.add(inttostr(a[i,j]));
if (i=j) and (a[i,j]>a[i-1,j]) then d:=d*a[i,j];
end;
end;
edit3.Text:=inttostr(d);
end;

end.
