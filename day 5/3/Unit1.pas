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
f:textfile;
a:integer;
s,k:integer;
begin
s:=0; k:=0;
assignfile(f,'C:\Student\1.txt');
reset(f);
while not eof(f) do begin
read(f,a);
if a mod 2=0 then s:=s+a;
if a mod 4=0 then k:=k+1;
end;
closefile(f);
edit1.Text:=inttostr(s);
edit2.Text:=inttostr(k);
memo1.lines.LoadFromFile('C:\Student\1.txt');
end;

end.
