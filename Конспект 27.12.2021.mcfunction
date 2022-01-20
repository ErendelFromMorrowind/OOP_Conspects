            Многомерные массивы. Двумерные массивы
Визуально представляются как таблицы;
Объявление ссылки: int [,] arrayName; int[,] myArr = new int[4,5];  //создаёт табличку 4:5. Четыре строки, пять столбцов;
Объявление с иницицализацией: int[,] a1 = new int[,] { {0, 1}, {2,3}, {4, 5}};  int[,] a2 = {{0, 1, 2}, {3, 4, 5}};
Выбор элемента: a[0, 0]; a[1, 0]; a[2, 0];

arr.Length. Возвращает общее количество элемнетов в массиве;
Получение количества строк думерного массива: arr.GetLength(0);
Получение количества столбцов двумерного массива: arr.GetLength(1);

foreach перебирает все элементы массива;

Для обработки многомерных массивов нужно столько циклов, сколько есть измерений в этом массиве;
i, j — перебираем по строкам. Наоборот — по столбцам;

class Program

{

static void PrintArray(string a, int[,] mas)

{
Console.WriteLine(a);
foreach (int x in mas) Console.Write("{O}", x);
Console.WriteLine();

}

static void Change( int[,] mas )

{

for (int i= 0; i< mas.GetLength(0) ; i++)
for (int j = 0; j < mas.GetLength(1); j++)
if (mas{i, j] % 2 == 0) mas{i, j] = 0;
static void Main()

{ — int[,] MyArray ={{ 1, 2,3},{4,5,6},{7,8,9}};
PrintArray("исходный массив:", MyArray);
Change(MyArray);

PrintArray("итоговый массив", MyArray);

Console.ReadKey();

}
}



Чтобы не путаться в коде полезно вместе с элементом выволить его индекс;
