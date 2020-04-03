unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
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
begin
form1.activecontrol:=memo1;
image1.Align:=altop;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key='&' then image1.Visible:=false;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (ssctrl in shift) and (ssshift in shift) then
 image1.Visible:=true;
 if (ssctrl in shift) and (ssshift in shift) and (ssalt in shift) then
 form1.Close;
end;

procedure TForm1.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_menu  then
 form1.WindowState:=wsmaximized;
end;

procedure TForm1.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
if key='¿' then
form1.WindowState:=wsnormal;
end;

end.
