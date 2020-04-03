unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, Menus;

type
  TForm1 = class(TForm)
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StatusBar1: TStatusBar;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    ColorDialog1: TColorDialog;
    CheckBox1: TCheckBox;
    StaticText4: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f:boolean;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
StaticText4.visible:=false;
statusbar1.Panels[0].text:=maskedit1.Hint;
statusbar1.Panels[0].text:=maskedit2.Hint;
statusbar1.Panels[0].text:=maskedit3.Hint;
end;


procedure TForm1.N1Click(Sender: TObject);
var
k1:integer;
begin
if colordialog1.Execute then form1.Color:=colordialog1.color;
if form1.Color=clblack then
form2.visible:=true;
end;


procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked=true then begin
maskedit1.Enabled:=false;
maskedit2.Enabled:=false;
maskedit3.Enabled:=false; end
else begin
maskedit1.Enabled:=true;
maskedit2.Enabled:=true;
maskedit3.Enabled:=true;
end;
end;
end.
