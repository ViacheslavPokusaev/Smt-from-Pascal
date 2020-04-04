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
    Memo1: TMemo;
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
m,c,k,p,n:integer;
begin
c:=0;
k:=strtoint(edit1.Text);
n:=strtoint(edit2.Text);
for p:=1 to n do begin
m:=strtoint(inputbox('¬ведите числа','m=',' '));
if m mod k=0 then c:=c+1;
end;
memo1.Lines.Add(inttostr(c));
end;
end.
