import 'Employee.dart';
import 'Person.dart';

void main(List<String> args) {
  final people = <Person>[
    Person(name: 'Kate', age: 22),
    Employee(age: 26, name: 'Dasha', works: 'Undex'),
    Person(age: 25, name: 'Dima'),
    Person(age: 34, name: 'Viktor'),
    Employee(age: 45, name: 'Masha', works: 'Google'),
  ];

  print('Работающая группа');
  people.forEach((element) {
    if (element is Employee) {
      print(element);
    }
  });
}
