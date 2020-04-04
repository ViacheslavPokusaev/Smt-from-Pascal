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
    Edit4: TEdit;
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
x,y,z,s:integer;
begin
x:=strtoint(edit1.Text);
y:=strtoint(edit2.Text);
z:=strtoint(edit3.Text);
if (x>z) and (x>y) and (z>y) then s:=x+z else
if (x>z) and (x>y) and (y>z) then s:=x+y else
if (z>y) and (z>x) and (x>y) then s:=z+x else
if (z>y) and (z>x) and (y>x) then s:=z+y else
if (y>x) and (y>z) and (z>x) then s:=y+z else s:=y+x;
edit4.text:=inttostr(s);

end;

end.
