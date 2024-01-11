class Person {
  final String name;
  final int age;

  Person({required this.age, required this.name});

  @override
  String toString() => 'Age:$age Name$name';
}
