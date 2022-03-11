            Ошибки
На официальном языке — исключительные ситуации;

Ошибки в программе. Синтаксические;
Исключительные ситуации. Это когда вводя дичь;
Фатальные. Ошибки, возникающие при работе программы{
Пустая ссылка;
Исчёрпывание памяти;
}

    Структурированная обработка ошибок
Исключение  — объект класса Exception, генерирующийинформацию о баге;
Для исключения ошибок при вводе данных используется метод TryParse();
int x;
string str = Console.ReadLine();
if(Int32.TryParse(str, out x))
{
  x *= x;
  Console.WriteLine("...");
}
else
{
  Console.WriteLine("Некорректный ввод");
}


    Оператор обработки исключений
У оператора есть три блока
try
{
  Код, в котором может появиться ошибка;
}
catch/*(Exception error)*/
{
  Обработка ошибки;
  Console.WriteLine("Error: {0}", error.Message);
  return;   //конец программы
}
finally
{
  Выполняется в любом случае;
}

catch(FormatException)
{
...
}
catch(DivideByZero)
{
...
}


      Генерация собственных исключений
Отлов ситуаций, когда объект может пострадать, но с точки зрения ОС всё нормально;

public int Age  //Совйство для чтения и записи
{
  get
  {
    return a;
  }
  set
  {
    try
    {
      if(value <= 0)
        throw new Exception ("Age can't be less than zero");
      else
        a = value;
    }
    catch(Exception Error)
    {
        Console.WriteLine("Error:" + error.Message);
    }
    catch
    {
      Console.writeLine("Что-то пошло не так");
    }
  }
}

В КОНСТРУКТОРАХ НЕЛЬЗЯ ИСПОЛЬЗОВАТЬ ИСКЛЮЧЕНИЯ;
Если очень надо, работайте со статикой;
