class Student {
  Student(this.firstName, this.lastName, this.grade);

  @override
  String toString() => "$firstName $lastName's grade is $grade";

  final String firstName;
  final String lastName;
  final int grade;
}
