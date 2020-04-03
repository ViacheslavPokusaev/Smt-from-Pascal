unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, OleServer, Excel2000;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ExcelApplication1: TExcelApplication;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
n,m,i,j:integer;
begin
randomize;
n:=strtoint(edit1.Text);
m:=strtoint(edit2.Text);
excelApplication1.Connect;
ExcelApplication1.Visible[0]:=true;
ExcelApplication1.Workbooks. Add(EmptyParam,0);
for i:=0 to n-1 do begin
for j:=0 to m-1 do begin
ExcelApplication1.Cells.Item[ i+1, j+1 ].value:=stringgrid1.Cells[i,j];
ExcelApplication1.cells.item[i+1,j+1].font.Size:=11;
ExcelApplication1.cells.item[i+1,j+1].font.color:=clblack;
ExcelApplication1.cells.item[n,m].font.color:=claqua;
ExcelApplication1.cells.item[n,m].font.size:=70;
ExcelApplication1.cells.item[1,1].font.color:=clred;
ExcelApplication1.cells.item[1,1].font.size:=80;
end;end;end;

procedure TForm1.Button2Click(Sender: TObject);
var
n,m:integer;
begin
n:=strtoint(edit1.Text);
m:=strtoint(edit2.Text);
stringgrid1.rowcount:=n;
stringgrid1.colcount:=m;
end;

end.
