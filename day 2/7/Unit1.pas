unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
k,l,i:integer;
a:array [1..16] of integer;
begin
k:=strtoint(edit1.Text);
randomize;
l:=strtoint(edit2.Text);
if k>1 then showmessage('k<=');
if l>16 then showmessage('l<=16');
if k>=l then showmessage('l<k');
for i:=1 to 16 do begin
a[i]:=random(10);
memo1.lines.add(inttostr(a[i]));
end;
for i:=1 to k do begin Memo2.Lines.Add(IntToStr(a[i]));
end;
for i:=l-1 downto k+1 do begin

memo2.lines.Add(inttostr(a[i]));
end;

for i:=l to 16 do begin
 Memo2.Lines.Add(IntToStr(a[i]));
end;


end;
end.

