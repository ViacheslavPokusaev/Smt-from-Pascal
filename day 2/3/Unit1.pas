unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Edit1: TEdit;
    Memo2: TMemo;
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
A:array [1..10] of integer;
k,i,j,c:integer;
begin
randomize;
k:=strtoint(edit1.Text);
for i:=1 to 10 do begin
A[i]:=strtoint(inputbox('','',''));
memo1.Lines.Add(inttostr(A[i]));

end;
for i:=1 to k do begin
for J:=1 to 10 do begin
if (j=1) then c:=a[j] else a[j-1]:=a[j];

end;
a[10]:=c;
end;
for i:=1 to 10 do begin
memo2.Lines.add(floattostr(a[i]));
end;
end;
end.
