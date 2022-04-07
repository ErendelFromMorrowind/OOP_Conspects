          Наследование
Сложная штука. ААААААААААААААААААААА, все боимся.
Наследование  — один из принципов ООП. Используется для удобства структурирования. Является механизмом языка, позволяющим описать один класс на основе другого существующего(родительского) класса;
Класс-потомок может:
  Пользоваться родительскими полями;
  Наследовать методы и свойства родительского класса;
  Переопределять методы и свойства родительского класса;
  Иметь собственны поля, методы и свойства;
  Конструкторы НЕ наследуются;
  break;
Главным образом работает для классификации;

class child_class_name: base_clasee_name
{
  //body;
}
У класса может быть только один предок, но у него может быть сколько угодно потомков;
class Man
{
  protected int h;  //height
  protected int w;  //weieght
  public Man(int h, int w)
  {
    this.h = h;
    this.w = w;
  }
}
class Worker : Man
{
  int p;  //Зарплата
  public Worker(int h, int w, int p)
    :base(h, w)
    {
      this.p = p;
    }
  public Worker() :base([int h, int w])
  {
    p = 1;
  }
}
Чтобы дать доступ к переменным только потомкам используется слово protected;
В конструкторе нельзя менять переменные родительских объектов. Чтобы получить параметры объектов-предков, используется base, являющийся ВЫЗОВОМ конструктора базового класса, который потом передаст все результаты полей наследнику;
С помощью слова base можно вызвать что угодно: и свойство, и поле, и так далее;




      Скрытие переменных и наследование
Ключевое слово new явно скрывает методы и свойства, унаследованные от базового класса. Производная версия потомка заменяет версию базового класса;
class Device
{
  protected string title;
  protected float weight;
  protected void Show()
  {
    Console.WriteLine(title, weight);
  }
}
class MobilePhone : Device
{
  private string brand;
  private bool faceID;
  public MobilePhone(string brand, float weight, string title, bool faceID)
    :base (title, weight)
  {
      this.brand = brand;
      this.faceID = faceID;
  }
  new public void Show()
  {
    base.Show();
      Console.WriteLine("Some dich");
  }
}
