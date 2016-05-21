unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, FileUtil, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Menus;

type

  { TForm4 }

  TForm4 = class(TForm)
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;

    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form4: TForm4;

implementation
uses Unit1;
{$R *.lfm}

{ TForm4 }

procedure TForm4.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines.Add('ОБЩЕЕ');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Справочник филателиста применяется в сфере людей, увлеченных поиском марок. Из программы можно узнать стоимость той или иной марки, её стоимость, год выпуска, тираж, владельца марки и его контактные данные: номер телефона и адрес. ');
end;

procedure TForm4.Memo1Change(Sender: TObject);
begin

end;

procedure TForm4.MenuItem1Click(Sender: TObject);
begin
Memo1.Clear;
Memo1.Lines.Add('ОБЩЕЕ');
Memo1.Lines.Add('');
Memo1.Lines.Add('Справочник филателиста применяется в сфере людей, увлеченных поиском марок. Из программы можно узнать стоимость той или иной марки, её стоимость, год выпуска, тираж, владельца марки и его контактные данные: номер телефона и адрес. ');
end;

procedure TForm4.MenuItem2Click(Sender: TObject);
begin

end;

procedure TForm4.MenuItem3Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines.Add('СИСТЕМНЫЕ ТРЕБОВАНИЯ');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Операционная система: Windows® Vista/7/ 8/10 64-bit с последним пакетом обновлений ');
  Memo1.Lines.Add('•	Процессор: AMD Semprom 2200');
  Memo1.Lines.Add('•	Видеокарта: Radeon X1950Pro 256MB');
  Memo1.Lines.Add('•	Память: видеопамять — 50 МБ, минимальная ОЗУ системы — 100 MB');
  Memo1.Lines.Add('•	Жесткий диск: 2100 об./мин., с 100 MB свободного места');


end;

procedure TForm4.MenuItem4Click(Sender: TObject);
begin
Memo1.Clear;
Memo1.Lines.Add('РУКОВОДСТВО ПОЛЬЗОВАТЕЛЯ');
Memo1.Lines.Add('');
Memo1.Lines.Add('Добавление записи');
Memo1.Lines.Add('');
Memo1.Lines.Add('При открытии программы выводится полный список марок, находящихся в базе данных. Для добавления новой записи необходимо в меню найти вкладку «Добавить» и там выбрать «Добавить марку». Выводится форма добавления записи, в которой необходимо заполнить все поля. В поле «Страна» можно выбрать страну из готового списка или ввести самому. Также можно поступить с полем «Тематика». В поле «Год выпуска» можно вводить год в диапазоне от 1600 до 2016 включительно. После того, как все поля заполнены нажимаем кнопку «Добавить запись». В случае успешного добавления выведется сообщение «Запись добавлена».');
end;

procedure TForm4.MenuItem5Click(Sender: TObject);
begin
Memo1.Clear;
Memo1.Lines.Add('РУКОВОДСТВО ПОЛЬЗОВАТЕЛЯ');
Memo1.Lines.Add('');
Memo1.Lines.Add('Удаление записи');
Memo1.Lines.Add('');
Memo1.Lines.Add('Для удаления записи необходимо в таблице выбрать нужную запись и нажать на кнопку «Удалить текущую запись».');
end;

procedure TForm4.MenuItem6Click(Sender: TObject);
begin
Memo1.Clear;
Memo1.Lines.Add('РУКОВОДСТВО ПОЛЬЗОВАТЕЛЯ');
Memo1.Lines.Add('');
Memo1.Lines.Add('Поиск записей');
Memo1.Lines.Add('');
Memo1.Lines.Add('Для поиска записей во вкладке «Поиск» выбираем «Выполнить поиск». В открывшемся окне выбираем поля, по которым надо произвести поиск и дальше заполняем активные поля. Зля поиска нажимаем на кнопку «Выполнить поиск». Теперь в таблице только те записи, которые удовлетворяют условию поиска. Для того, чтобы показать все записи необходимо нажать на кнопку «Показать все записи».');
end;

procedure TForm4.MenuItem7Click(Sender: TObject);
begin
Memo1.Clear;
Memo1.Lines.Add('О ПРОГРАММЕ');
Memo1.Lines.Add('');
Memo1.Lines.Add('Разработчик: Чукавин Д.А.');
Memo1.Lines.Add('Язык, использованный для разработки программы: Pascal');
Memo1.Lines.Add('Сайт: ');


end;


end.

