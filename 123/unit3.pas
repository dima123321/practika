unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    CheckBox6: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckGroup1: TCheckGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    Edit8: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Change(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Change(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form3: TForm3;

implementation
  uses Unit1;
  var aa:string;
    k:integer;
{$R *.lfm}

{ TForm3 }





procedure TForm3.Button1Click(Sender: TObject);
 var a:integer;
begin
  k:=0;
 if (Edit1.Text='') and (Edit1.Enabled=true) then begin k:=1; end;
 if (Edit2.Text='') and (Edit2.Enabled=true) then begin k:=1; end;
 if (Edit3.Text='') and (Edit3.Enabled=true) then begin k:=1; end;
 if (Edit4.Text='') and (Edit4.Enabled=true) then begin k:=1; end;
 if (Edit5.Text='') and (Edit5.Enabled=true) then begin k:=1; end;
 if (Edit6.Text='') and (Edit6.Enabled=true) then begin k:=1; end;
 if (Edit7.Text='') and (Edit7.Enabled=true) then begin k:=1; end;
 if (Edit8.Text='') and (Edit8.Enabled=true) then begin k:=1; end;
 aa:='select * from marki where id>=1';

 if CheckBox6.Checked=true then aa:=aa+ ' and many>="' + Edit8.Text+ '" and many <="' + Edit1.Text + '"';
 if CheckBox2.Checked=true then aa:=aa+ ' and country="' + Edit3.Text+'"';
 if CheckBox3.Checked=true then aa:=aa+ ' and year >="' + Edit4.Text+ '" and year <="' + Edit5.Text + '"';
 if CheckBox4.Checked=true then aa:=aa+ ' and tematika="' + Edit6.Text+ '"';
 if CheckBox5.Checked=true then aa:=aa+ ' and tirazh>="' + Edit7.Text+ '" and tirazh <="' + Edit2.Text + '"';

  Form1.SQLQuery1.Close;
  Form1.SQLQuery1.SQL.Clear;
  Form1.SQLQuery1.SQL.Add(aa);
  Form1.SQLQuery1.ExecSQL;
  Form1.SQLTransaction1.Commit;
  Form1.SQLQuery1.Close;
  Form1.SQLQuery1.Active:=True;

  if (Edit1.Enabled=False) and (Edit2.Enabled=False) and (Edit8.Enabled=False) and (Edit3.Enabled=False) and (Edit4.Enabled=False) and (Edit5.Enabled=False) and (Edit6.Enabled=False) then k:=0;
  if k=0 then Close;
  if k=1 then MessageDlg('Ошибка','заполните все поля', mtWarning, [mbOK],0);
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
  Edit7.Text:='';
  Edit8.Text:='';
end;

procedure TForm3.CheckBox1Change(Sender: TObject);
begin

end;



procedure TForm3.CheckBox2Click(Sender: TObject);
begin
   if (CheckBox2.Checked=true) then
                                Edit3.Enabled:=true;

   if (CheckBox2.Checked=False) then
                                Edit3.Enabled:=False;
end;


procedure TForm3.CheckBox3Click(Sender: TObject);
begin
   if (CheckBox3.Checked=true) then
                             begin
                              Edit4.Enabled:=true;
                              Edit5.Enabled:=true;
                             end;
   if (CheckBox3.Checked=False) then
                             begin
                              Edit4.Enabled:=False;
                              Edit5.Enabled:=False;
                             end;
end;


procedure TForm3.CheckBox4Click(Sender: TObject);
begin
   if (CheckBox4.Checked=true) then
                                Edit6.Enabled:=true;

   if (CheckBox4.Checked=False) then
                                Edit6.Enabled:=False;
end;

procedure TForm3.CheckBox5Change(Sender: TObject);
begin

end;

procedure TForm3.CheckBox5Click(Sender: TObject);
begin
    if (CheckBox5.Checked=true) then
                              begin
                                Edit7.Enabled:=true;
                                Edit2.Enabled:=true;
                              end;

   if (CheckBox5.Checked=False) then
                             begin
                                Edit7.Enabled:=False;
                                Edit2.Enabled:=False;
                             end;
end;

procedure TForm3.CheckBox6Change(Sender: TObject);
begin

end;

procedure TForm3.CheckBox6Click(Sender: TObject);
begin
  if (CheckBox6.Checked=true) then
                            begin
                             Edit8.Enabled:=true;
                             Edit1.Enabled:=true;
                            end;
  if (CheckBox6.Checked=False) then
                            begin
                             Edit8.Enabled:=False;
                             Edit1.Enabled:=False;
                            end;
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin

end;

procedure TForm3.Edit2Change(Sender: TObject);
begin

end;


procedure TForm3.Edit4Change(Sender: TObject);
begin

end;

procedure TForm3.Edit5Change(Sender: TObject);
begin

end;

procedure TForm3.Edit6Change(Sender: TObject);
begin

end;

procedure TForm3.Edit7Change(Sender: TObject);
begin

end;

procedure TForm3.Edit8Change(Sender: TObject);
begin

end;


procedure TForm3.FormClick(Sender: TObject);
begin

end;

procedure TForm3.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Form1.Show;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  k:=0;
end;










end.

