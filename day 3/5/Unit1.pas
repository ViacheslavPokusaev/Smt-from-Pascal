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
    Button1: TButton;
    Memo2: TMemo;
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
b:array of array of integer;
i,j,n,m:integer;
begin
 n:=strtoint(edit1.Text);
m:=strtoint(edit2.Text);
setlength(a,n,m);
 setlength(b,n,m);
for i:=0 to n-1 do begin
for j:=0 to m-1 do begin
a[i,j]:=strtoint(inputbox(' ',' ',' '));
memo1.lines.add(inttostr(a[i,j]));
if (i<j) and (a[i,j] mod 2=0) and ((i+j) mod 3=0) then b[i,j]:=1 else b[i,j]:=0;
memo2.lines.add(inttostr(b[i,j]));
end;
end;

end;
end.

