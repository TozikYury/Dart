import 'Person.dart';

class Employee extends Person {
  final String works;

  Employee({required super.age, required super.name, required this.works});

  @override
  String toString() {
    return super.toString() + 'is works in $works';
  }
}
