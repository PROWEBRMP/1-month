// Описание задачи: Напишите функцию, которая поверхностно сравнивает два объекта.
// Ожидаемый результат: True если объекты идентичны, false если объекты разные

void main(List<String> args) {
  var map1 = {2: 23};
  var map2 = {2: 23};
  isEqual(map1: map1, map2: map2);
  map1 = {22: 253761};
  isEqual(map1: map1, map2: map2);
}

bool isEqual({required Map map1, required Map map2}) {
  if (map1.length != map2.length) return false;

  print(map1.toString() == map2.toString());

  return false;
}
