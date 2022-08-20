unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  Tperson = packed record
    name:string[12];
    age:byte;
  end;

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  john:Tperson;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);

begin
    john.name:=edit1.Text;
    john.age:=strtoint(edit2.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   edit3.Text:=john.name;
   edit4.Text:=inttostr(john.age);
end;

end.

