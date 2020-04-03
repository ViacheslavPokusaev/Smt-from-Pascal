unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
i:array[0..9] of integer;
rgn:HRGN;
begin
i[0]:=width div 2;
i[1]:=0;
i[2]:=0+width div 6;
i[3]:=height;
i[4]:=width;
i[5]:=height div 3;
i[6]:=0;
i[7]:=height div 3;
i[8]:=width-width div 6;
i[9]:=height;
rgn:=createpolygonrgn(i,5,1);
setwindowrgn(handle,rgn,true);
form1.Color:=random(color);
end;

end.
