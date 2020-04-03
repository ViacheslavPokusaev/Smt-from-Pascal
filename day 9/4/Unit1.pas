unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, ComCtrls, Buttons;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    RichEdit1: TRichEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    PopupMenu1: TPopupMenu;
    FontDialog1: TFontDialog;
    N1: TMenuItem;
    BitBtn1: TBitBtn;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure ListBox1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ListBox1Click(Sender: TObject);
var
i,t:integer;
begin
randomize;
richedit1.Clear;
i:=listbox1.itemindex;
richedit1.Text:=listbox1.Items[i];
richedit1.Font.Size:=random(30);
richedit1.font.Color:=random(color);
t:=listbox1.ItemIndex;
case t of
0:begin statusbar1.panels[0].text:=listbox1.Items[0] end;
1:begin statusbar1.panels[0].text:=listbox1.Items[1] end;
2:begin statusbar1.panels[0].text:=listbox1.Items[2] end;
3:begin statusbar1.panels[0].text:=listbox1.Items[3] end;
4:begin statusbar1.panels[0].text:=listbox1.Items[4] end;
5:begin statusbar1.panels[0].text:=listbox1.Items[5] end;
6:begin statusbar1.panels[0].text:=listbox1.Items[6] end;
7:begin statusbar1.panels[0].text:=listbox1.Items[7] end;
8:begin statusbar1.panels[0].text:=listbox1.Items[8] end;
end;
end;


procedure TForm1.N1Click(Sender: TObject);
begin
if fontdialog1.Execute then richedit1.SelAttributes.Assign(fontdialog1.font); 
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
f:textfile;
begin
assignfile(f,'C:\Student\Êîòþõ À\9tema.txt');
rewrite(f);
write(f,richedit1.text);
closefile(f);
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=17 then form1.close;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
statusbar1.panels[1].Text:=datetimetostr(now);
end;

end.
