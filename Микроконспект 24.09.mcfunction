          Анализ заштрихованной области

Прямоугольная область;
Там всё относительно просто;

Круг;
(x0,y0) — центр круга, r — радиус;
Уравнение окружности:
(y-y0)^2 + (x-x0)^2 = r^2;
Для проверки:
(y-y0)^2 + (x-x0)^2 < r^2;

Функция (В данном случае парабола);
y >= 0,8 *x^2 + 2,5 * x - 1,5; //ветки вверх, внутри
y <= 0,8 *x^2 + 2,5 * x - 1,5; //ветки вниз, внутри

Условия могут комбинироваться между собой, к примеру точка, которая внутри окружности и выше какой-нибудь прямой;

if (x,y принадлежит A)
{
Console.WriteLine("Принадлежит");
}
else if (x,y принадлежит B)
{
Console.WriteLine("принадлежит");
}
else
{
Console.WriteLine("не принадлежит");
}
