class Student {
  String name;
  int roll;

  Student(this.name, this.roll);

  void displayInfo() {
    print("Student Name: $name");
    print("Roll Number: $roll");
  }
}

class Person {
  String name;

  Person(this.name);
}

class Teacher extends Person {
  String subject;

  Teacher(String name, this.subject) : super(name);

  void displayInfo() {
    print("Teacher Name: $name");
    print("Subject: $subject");
  }
}

abstract class Shape {
  double? _area;

  void calculateArea();

  set area(double value) {
    _area = value;
  }

  double get area {
    return _area ?? 0;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void calculateArea() {
    double result = 3.1416 * radius * radius;
    area = result;
  }
}

void main() {
  print("Student:");
  Student student1 = Student("Gourob Rahman", 101);
  student1.displayInfo();

  print("Teacher:");
  Teacher teacher1 = Teacher("Mr. Hasan", "Mathematics");
  teacher1.displayInfo();

  print("Circle Area:");
  Circle circle1 = Circle(5);
  circle1.calculateArea();
  print("Radius: ${circle1.radius}");
  print("Area of Circle: ${circle1.area}");
}
