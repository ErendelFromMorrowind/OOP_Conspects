    Одномерные массивы.
Можно инициализировать с данными, задавать в циклах и строками;

Замечаения:
1. Имя массива — ссылка на начало массива;
2. Ссылку можно в любой момент перенастраивать;

Использование ref  в функции при использовании массива нужно только если вы потом переназначаете ссылку на на массив;

Алгоритмы сортировки:
static void StupidSort(int[] mas)
{
  int temp;
  for(int i = 0; i < mas.Length - 1; i++)
    {
      if(mas[i] > mas[i + 1])
      {
        temp = mas[i];
        mas[i] = mas[i + 1];
        mas[i + 1] = temp;
        i = -1;
      }
    }
}


static void SimpleSort(int[] mas)
{
  int temp;
  int min, kmin = -1;
  for(int i = -; i < mas.Length; i++)
  {
    min = mas[i];
    for(int j = i + 1; j < mas.Length; j++)
    {
      if(mas[j] < min)
      {
        min = mas[j];
        kmin = j;
      }
    }
    temp = mas[i];
    mas[i] = mas[kmin];
    mas[kmin] = temp;
  }
}


      Двумерные массивы
Фактически там нифига нет, строки и таблицы просто для удобства делаются;





    Массивы массивов. Ступенчатые (jagged) массивы
Ступенчатый  массив — внешний массив, состоящий из одномерных внутренних массивов разной длины;
Ступенчатый массив фактически является массивом ссылок;

0 0 0 1 21 4
2 12 4 5 7 12 24 5 6 3 8 9
12 2 4 5 76 8 9
1 2 3
1
1 4 46 6 66

Ступенчатые массивы объявляются с помощию нескольких пар квадратных скобок.
int[][] Array;
Сначала надо инициализировать массив, содержащий другие массивы, а затем внутри него инициализировать внутренние;
int[][] Mas = new int [4][]
{
  new int [4],
  new int [6],
  new int [3],
  new int [4],
};

При такой инициализации не получится запрашивать у пользователя количество требуемых элементов внутренних одномерных массивов;

Замечания:
Length при применении к ступенчатому массиву возвращает количество одномерных массивов;
Чтобы получить длины одномерных массивов нужно применять Length ко внутренним массиву;
masStep[0].Length;


foreach можно использовать;
foreach(int[] i in masStep)
{
  foreach(int j in i)
  {
    Console.WriteLine(j);
  }
}


for(int i = 0; i < masStep.Length; i++)
{
  foreach(int j in masStep[i])
  {  }
}

Ступенчатые массивы можно передавать из функции и являться возвращаемыми данными;

static void PrintStepArr(int [][] masArr)
{
  foreach(int[] i in masStep)
  {
    foreach(int j in i)
    {
      Console.WriteLine(j);
    }
    Console.WriteLine();
  }
}


    Динамическое объявление и воод ступенчатого массива
int[][] MyArr;
Console.Write("Введите количество строк ");
int n = int.Parse(Console.ReadLine());

MyArr = new int[n][];
for(int i = 0; i < MyArr.Length; i++)
{
  Console.Write($"Введите колчиество элементов в {i} строке");
  MyArr[i] = new int [int.Parse(Console.ReadLine())];

  for(int j = 0; j < MyArr[i].Length; j++)
  {
    Console.WriteLine$"a[{i}][{j}]= ");
    MyArr[i][j] = int.Parse(Console.ReadLine());
  }
}
