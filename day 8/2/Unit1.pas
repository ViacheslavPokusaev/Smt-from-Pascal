unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Label1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
begin
if (edit1.Text='') and (edit2.text='') then form1.Close;
end;

procedure TForm1.Label1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var
d,d1:integer;
begin
d:=length(edit1.Text);
d1:=length(edit2.Text);
if (ssalt in shift) and (button=mbleft) and (d>d1) then form1.WindowState:=wsminimized;

end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
var
d,d1:integer;
begin
d:=length(edit1.Text);
d1:=length(edit2.Text);
if (d1>d) and (button=mbright) and (ssshift in shift) and (ssctrl in shift)  then begin
form1.Color:=clgreen;form1.Caption:=edit1.Text+edit2.Text;
end;

end;
procedure TForm1.Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
button1.Caption:=inttostr(x)+';'+inttostr(y);
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
var
f:textfile;
begin
assignfile(f,'C:\Student\s.txt');
if (key='Ф') and (form1.ActiveControl=edit1) then begin
rewrite(f);
write(f,'Нажата буква Ф');
closefile(f);

end;    end;

procedure TForm1.Button1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if ssalt in shift then begin
label1.Font.Color:=clyellow;
label2.Font.Color:=clblue;
end;
end;

end.
