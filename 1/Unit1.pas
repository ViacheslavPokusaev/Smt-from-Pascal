unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,math;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
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
  c:array [1..10] of integer;


implementation

{$R *.dfm}
 procedure Max(n,m:real;var max:real);
  begin
  max:=0;
  if n>m then max:=n else max:=m end;


procedure TForm1.Button1Click(Sender: TObject);
var
max1,max2,max3:real;
i:integer;
begin
for i:=1 to 10 do
c[i]:=strtoint (memo1.Lines[i-1]);
max(3*c[2], intpower(c[5],3),max1);
max(c[1] , (c[6]+c[8]),max2)  ;
max(c[6]/c[1],c[4],max3) ;
Edit1.text:=floattostr((max1+5*max2)/max3);

end;

end.
