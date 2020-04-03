unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if form2.edit1.Text='77777' then begin
form2.visible:=false;
form1.WindowState:=wsmaximized;
form1.statictext4.visible:=true;
form1.statictext4.Caption:=form1.maskedit1.Text+';'+form1.maskedit2.Text+';'+form1.MaskEdit3.Text;
end;
if form2.edit1.Text<>'77777' then form1.Close;
end;

end.
