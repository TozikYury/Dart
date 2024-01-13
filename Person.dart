class Person<T extends String,K extends int> {
  //extends для Ограничение параметризованного типа
  final T name;
  final K age;

  Person({required this.age, required this.name});

  @override
  String toString() => 'Age:$age Name$name';
}
