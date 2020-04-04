unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Edit4: TEdit;
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
x,y,z:integer;
begin
x:=strtoint(edit1.Text);
y:=strtoint(edit2.Text);
z:=strtoint(edit3.Text);
if x mod 2=0 then edit4.Text:='Х-кратне число';
if y mod 2=0 then edit4.Text:='У-кратне число';
if z mod 2=0 then edit4.Text:='Z-кратне число';
if (z mod 2=0) and (y mod 2=0) then edit4.Text:='Z-кратне число і У-кратне число';
if (z mod 2=0) and (x mod 2=0) then edit4.Text:='Z-кратне число і X-кратне число';
if (x mod 2=0) and (y mod 2=0) then edit4.Text:='X-кратне число і У-кратне число';
if (x mod 2=0) and (y mod 2=0) and (z mod 2=0) then edit4.Text:='X-кратне число, У-кратне число та Z-кратне число';
if not (x mod 2=0) and not (x mod 2=0) and not (z mod 2=0) then edit4.Text:='Всі числа не кратні';
end;

end.
