class Person {
  final String name;
  final int age;

  Person(this.age, this.name);

  @override
  String toString() => 'Age:$age Name$name';
}
