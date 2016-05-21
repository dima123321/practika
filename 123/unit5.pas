unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form5: TForm5;

implementation
uses Unit1;

{$R *.lfm}

{ TForm5 }

procedure TForm5.Memo1Change(Sender: TObject);
begin

end;

procedure TForm5.FormCreate(Sender: TObject);
begin

end;

procedure TForm5.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
 Form1.SQLQuery1.Close;
 Form1.SQLQuery1.Open;
end;

end.

