unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    tbl1: TTable;
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
a:array of Integer;
b:array of Integer;
i,j,n,k:Integer;
begin
n:=StrToInt(Edit1.Text);
SetLength(a,n);
for i:=0 to n-1 do begin
a[i]:=Random(10);
end;

end.
