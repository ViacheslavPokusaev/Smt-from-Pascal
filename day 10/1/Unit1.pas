unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleServer, Word2000,Clipbrd;

type
  TForm1 = class(TForm)
    WordApplication1: TWordApplication;
    Memo1: TMemo;
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
Direction:OleVariant;
i,j:integer;
Con : OleVariant; x,y:OleVariant;
begin
randomize;
con:=5;
WordApplication1.connect;
WordApplication1.Documents.Add(EmptyParam,EmptyParam,EmptyParam,EmptyParam);
WordApplication1.visible:=true;
WordApplication1.Selection.InsertAfter(memo1.text+  #13);
WordApplication1.Selection.Font.Name:='Times New Roman';
WordApplication1.Selection.Font.Italic:=1;
WordApplication1.Selection.Font.Size:=24;
WordApplication1.Selection.ParagraphFormat.Alignment:=wdAlignParagraphRight;
Direction:=wdCollapseEnd;
WordApplication1.Selection.Collapse(Direction);
WordApplication1.Selection.InlineShapes.AddPicture('C:\1.jpg',EmptyParam,EmptyParam,EmptyParam);
WordApplication1.Selection.ParagraphFormat.Alignment:=wdAlignParagraphcenter;
x:=wdword9tablebehavior;
y:=wdautofitfixed;
WordApplication1.Selection.Tables.Add(WordApplication1.Selection.Range,4,5,x,y) ;
for i:=1 to 4 do begin
for j:=1 to 5 do begin
WordApplication1.Selection.Tables.Item(1).Cell(i, j).Range.Text:=inttostr(random(50));
end;end;
WordApplication1.Selection.MoveDown(EmptyParam,Con,EmptyParam);
WordApplication1.Selection.Collapse(Direction);
WordApplication1.Selection.InsertAfter('Конец документа');
WordApplication1.Selection.Font.Name:='Arial';
WordApplication1.Selection.Font.bold:=3;
WordApplication1.Selection.Font.Size:=45;
WordApplication1.Selection.ParagraphFormat.Alignment:=wdAlignParagraphleft;


end;



end.
