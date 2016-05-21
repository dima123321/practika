unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, mysql55conn, FileUtil, Forms, Controls,
  Graphics, Dialogs, DBGrids, Menus, StdCtrls, ActnList;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MySQL55Connection1: TMySQL55Connection;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLQuery3: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation
 uses Unit2, Unit3, Unit4, Unit5;
{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
 Form3.ShowModal;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
 Close;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TForm1.Button1Click(Sender: TObject);
 var c,m,y,tem,tir,o,n,a,tel:string;
begin
  Form5.Memo1.Lines.Clear;
  c:=DataSource1.DataSet.FieldByName('country').AsString;
  m:=DataSource1.DataSet.FieldByName('many').AsString;
  y:=DataSource1.DataSet.FieldByName('year').AsString;
  tem:=DataSource1.DataSet.FieldByName('tematika').AsString;
  tir:=DataSource1.DataSet.FieldByName('tirazh').AsString;
  o:=DataSource1.DataSet.FieldByName('osobenosti').AsString;
  n:=DataSource1.DataSet.FieldByName('name_vlad').AsString;
  a:=DataSource1.DataSet.FieldByName('adres_vlad').AsString;
  tel:=DataSource1.DataSet.FieldByName('telefon_vlad').AsString;

  Form5.Memo1.Lines.Add('Страна: '+c);
  Form5.Memo1.Lines.Add('Стоимость: '+m);
  Form5.Memo1.Lines.Add('Год выпуска: '+y);
  Form5.Memo1.Lines.Add('Тематика: '+tem);
  Form5.Memo1.Lines.Add('Тираж: '+tir);
  Form5.Memo1.Lines.Add('Особенности: '+o);
  Form5.Memo1.Lines.Add('Имя владельца: '+n);
  Form5.Memo1.Lines.Add('Адрес владельца: '+a);
  Form5.Memo1.Lines.Add('Телефон владельца: '+tel);
  Form5.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
var a:string;
b:integer;
begin
  b:=DataSource1.DataSet.FieldByName('id').AsInteger;
  a:='delete from marki where id='+IntToStr(b);
  SQLQuery1.Close;
  SQLQuery2.Close;
  SQLQuery2.SQL.Clear;
  SQLQuery2.SQL.Add(a);
  SQLQuery2.ExecSQL;
  SQLTransaction1.Commit;
  SQLQuery1.Active:=True;
  SQLQuery1.Active:=True;

end;

procedure TForm1.Button3Click(Sender: TObject);
var a:string;
begin
  a:='select * from marki';
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add(a);
  SQLQuery1.ExecSQL;
  SQLTransaction1.Commit;
  SQLQuery1.Open;

end;



procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

end.

