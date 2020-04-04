unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Edit5: TEdit;
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
k,n,p,m,c,a:Integer;
s:Real;

begin
k:=StrToInt(Edit1.Text);
n:=StrToInt(Edit2.Text);
s:=0;a:=0;


for p:=1 to k do begin
s:=0;
for c:=1 to n do begin
m:=strtoint(inputbox('¬ведите числа','m=',' '));
if (m<=0) then begin a:=a+1 ;
s:=s+m ;
end;
end;
if a>0 then  memo1.lines.add(floattostr(s));
end;
if s>=0 then edit4.Text:='0';
end;
end.

