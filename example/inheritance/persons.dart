class Person {
  Person(this.name);

  final String name;

  List marshal() => ['P', name];

  factory Person.unmarshal(List data) {
    switch (data[0]) {
      case 'P':
        return Person(data[1]);
      case 'E':
        return Employee(data[1], data[2]);
      case 'C':
        return Customer(data[1], data[2]);
      case 'Pr':
        return Prospect(data[1], data[2], data[3]);
      default:
        throw 'Invalid person data';
    }
  }
}

class Employee extends Person {
  Employee(super.name, this.salary);

  final double salary;

  @override
  List marshal() => ['E', name, salary];
}

class Customer extends Person {
  Customer(super.name, this.revenue);

  final double revenue;

  @override
  List marshal() => ['C', name, revenue];
}

class Prospect extends Person {
  Prospect(super.name, this.revenue, this.status);

  final double revenue;
  final String status;

  @override
  List marshal() => ['Pr', name, status];
}
