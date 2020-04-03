unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleServer, Word2000, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    WordApplication1: TWordApplication;
    Edit2: TEdit;
    Edit3: TEdit;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Memo1: TMemo;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    OpenDialog2: TOpenDialog;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);

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
 fil:OleVariant;  x,y:OleVariant; a,b,i,j:integer; Direction:OleVariant;  Con : OleVariant;
begin
randomize;
a:=strtoint(edit6.text);
b:=strtoint(edit7.text);
con:=a+1;
WordApplication1.connect;
if opendialog1.Execute then  begin
fil:=opendialog1.filename;
WordApplication1.Documents.Open(fil,EmptyParam,EmptyParam,EmptyParam,
EmptyParam,EmptyParam,EmptyParam,EmptyParam,
EmptyParam,EmptyParam, EmptyParam,EmptyParam); end
else WordApplication1.Documents.Add(EmptyParam,EmptyParam,EmptyParam,EmptyParam);
WordApplication1.ActiveDocument.PageSetup.TopMargin:=strtoint(edit2.text);
WordApplication1.ActiveDocument.PageSetup.BottomMargin:=strtoint(edit3.text);
WordApplication1.ActiveDocument.PageSetup.LeftMargin:=strtoint(edit4.text);
WordApplication1.ActiveDocument.PageSetup.RightMargin :=strtoint(edit5.text);

WordApplication1.Selection.InsertAfter(memo1.text);
WordApplication1.Selection.Font.bold:=1;
WordApplication1.Selection.Font.Size:=26;
WordApplication1.Selection.ParagraphFormat.Alignment:=wdAlignParagraphcenter;
Direction:=wdCollapseEnd;
WordApplication1.Selection.Collapse(Direction);
x:=wdword9tablebehavior;
y:=wdautofitfixed;
WordApplication1.Selection.Tables.Add(WordApplication1.Selection.Range,a,b,x,y) ;
for i:=1 to a do begin
for j:=1 to b do begin
WordApplication1.Selection.Tables.Item(1).Cell(i, j).Range.Text:=inttostr(0);
end;end;
Direction:=wdCollapseEnd;
WordApplication1.Selection.MoveDown(EmptyParam,Con,EmptyParam);
WordApplication1.Selection.Collapse(Direction);
WordApplication1.Selection.InsertAfter(edit8.text+#13);
WordApplication1.Selection.Font.Size:=random(20);
WordApplication1.Selection.Font.color:=clblack;  WordApplication1.Selection.ParagraphFormat.Alignment:=wdAlignParagraphleft;





    Direction:=wdCollapseEnd;
  WordApplication1.Selection.Collapse(Direction);
  WordApplication1.Selection.InsertAfter(edit9.text+#13);
   WordApplication1.Selection.Font.Size:=random(20);
   WordApplication1.Selection.Font.color:=clred;
   WordApplication1.Selection.ParagraphFormat.Alignment:=wdAlignParagraphcenter;

        Direction:=wdCollapseEnd;
  WordApplication1.Selection.Collapse(Direction);
  WordApplication1.Selection.InsertAfter(edit10.text);
   WordApplication1.Selection.Font.Size:=random(20);
   WordApplication1.Selection.Font.color:=clblack;







     if opendialog2.Execute then  begin
             Direction:=wdCollapseEnd;
  WordApplication1.Selection.Collapse(Direction);
     WordApplication1.Selection.InsertBreak(EmptyParam);
     WordApplication1.Selection.InlineShapes.AddPicture(opendialog2.filename,
EmptyParam,EmptyParam,EmptyParam);end;








end;



procedure TForm1.RadioButton1Click(Sender: TObject);
begin

WordApplication1.ActiveDocument.PageSetup.Orientation:=wdOrientLandscape;
end;





procedure TForm1.RadioButton2Click(Sender: TObject);
begin
 WordApplication1.ActiveDocument.PageSetup.Orientation:=wdOrientPortrait;
end;

end.
