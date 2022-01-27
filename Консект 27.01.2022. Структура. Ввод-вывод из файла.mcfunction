            Сложные типы данных: структура
Структура — набор независимых друг от друга переменных, которые могут быть разных типов и должны иметь разные имена. Такие переменные — элементы\поля структуры;

Создание:                             //задаётся в классе или в неймспейсе;
struct StructureTypeName
{
    public int x;
    public strung s;
}

Объявить переменные структурного типа:  //объявляется в функции;
  StructureTypeName structure;
Обращение к переменной:
structure.x = int.Parse(Console.ReadLine());
structure.s = Console.ReadLine();

static void Main()
{
  UserInfo user1;
  user1.Name = "Alexandr";
  user1.Age = 243;
  WriteUserInfo(user1);
  UserInfo user2 = InputUserInfo();
  WriteUserInfo(user2);
}

static int UserInfo InputUserInfo()
{
  UserInfo user;
  //тело функции
  return user;
}
      Действия со структурами
1. Передавать как параметры и возвращать как результат работы;
2. Поля стурктуры передаются в\их функций как обычные переменные, но обращаются к ним через составное имя stuct.x;
3. При передаче происходит передача значения, а не адрес;
4. Можно создавать массивы структур;      //UserInfo[] peopleIn93 = new UserInfo [27];


    Отличия значимых типов от ссылочных
Когда одна структура присваивается другой, создаётся копия её элементов и передаётся в другую. Поля структур независимы;
Когда одна ссылка на один массив присваивается ссылке на другой массив, обе ссылки указывают на первый массив, а второй массив исчезает;



      Ввод и вывод в файны
static void Main()
{
  StreamWriter f = new SteramWriter("C:\\Аннна\\name\\output.txt");
  int i = 3;
  double y = 412e-2;
  decimal d = 600m;
  string s = "Вася";
  f.WriteLine("i = " + i);
  f.WriteLine("y = {0} \nd = {1}", y, d);
  f.WriteLine("s = " + s);
  f.Close;
}


static void Main()
{
  StreamReader f = new StreamReader("C:\\Lit\\C#\\input.txt");
  string s = f.ReadLine();

  char c = (char)f.Read();
  f.ReadLine();

  string buf;
  buf = f.ReadLine();

  int i = Convert.ToInt32(buf);

  buf = f.ReadLine();
  double y = double.Parse(buf);

}
