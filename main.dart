import 'Person.dart';

void main(List<String> args) {
  final person = <Person>[
    Person(age: 22, name: 'Tozik'),
    Person(age: 34, name: 'Kate')
  ];
  person.forEach((element) {
    print(element);
  });
}
