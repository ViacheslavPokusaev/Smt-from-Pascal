unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit2: TEdit;
    Memo2: TMemo;
    Memo3: TMemo;
    StringGrid1: TStringGrid;
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
A:array [1..5,1..5] of integer;
i,j,f,f1:integer;
begin
for i:=1 to 5 do begin
f:=0;f1:=0;
for j:=1 to 5 do begin
a[i,j]:=strtoint(stringgrid1.Cells[i,j]);
if a[i,j]=0 then inc(f);
end;
if f>0 then memo2.lines.add(inttostr(i))
end;
for j:=1 to 5 do begin
f:=0;f1:=0;
for i:=1 to 5 do begin
 if a[i,j]=0 then inc(f1); end;
if f1>0 then memo3.lines.add(inttostr(j));
end;
if (f=0) and (f1=0) then edit2.text:='����� ���';
end;
end.
