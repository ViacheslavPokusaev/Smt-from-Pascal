unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Shellapi,filectrl;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    OpenDialog1: TOpenDialog;
    Button7: TButton;
    OpenDialog2: TOpenDialog;
    Button8: TButton;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
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
winexec(pchar('calc.exe'),SW_shownormal);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
winexec(pchar('notepad.exe'),sw_shownormal);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
shellexecute(handle,nil,'iexplore.exe',nil,nil,sw_shownormal);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
shellexecute(handle,nil,'winword.exe',nil,nil,sw_shownormal);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
shellexecute(handle,nil,'excel.exe',nil,nil,sw_shownormal);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
if opendialog1.execute=true then shellexecute(handle,nil,pchar(opendialog1.FileName),nil,nil,sw_shownormal);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
if opendialog2.execute=true then shellexecute(handle,nil,pchar(opendialog2.FileName),nil,nil,sw_shownormal);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
shellexecute(handle,nil,'C:\Student',nil,nil,sw_shownormal);
shellexecute(handle,nil,'C:\Windows',nil,nil,sw_shownormal);
shellexecute(handle,nil,'C:\Program Files',nil,nil,sw_shownormal);
end;

procedure TForm1.Button9Click(Sender: TObject);
var
s:string;
begin
selectdirectory('Caption','C:\',s);
shellexecute(handle,nil,pchar(s),nil,nil,sw_shownormal);
end;

end.
