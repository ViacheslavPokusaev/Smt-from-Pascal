unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
var
i:array[0..5] of integer;
rgn:HRGN;
begin
i[0]:=width div 2;
i[1]:=0;
i[2]:=0;
i[3]:=height;
i[4]:=width;
i[5]:=height;
rgn:=createpolygonrgn(i,3,1);
setwindowrgn(handle,rgn,true);
form3.Visible:=true;
form3.Color:=random(color);
end;

end.
