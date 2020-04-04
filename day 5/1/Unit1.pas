unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
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
k,k1,k2,m:integer; a:char; f:textfile;
begin
m:=0;k:=0; k1:=0; k2:=0;
assignfile(f,'C:\Student\k1.txt');
reset(f);
while not eof (f) do begin
read(f,a);
if a='.' then k:=k+1;
if a=',' then k1:=k1+1;
if a=' ' then k2:=k2+1;
end;
m:=k+k1+k2;
edit1.Text:=inttostr(m);
closefile(f);
memo1.lines.LoadFromFile('C:\Student\k1.txt');

end;

end.
