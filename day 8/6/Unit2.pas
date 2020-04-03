unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm2 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
var
rgn:HRGN;
begin
rgn:=createellipticrgn(0,0,width,height);
setwindowrgn(handle,rgn,true);
form2.Visible:=true;
form2.Color:=random(color);
end;

end.
