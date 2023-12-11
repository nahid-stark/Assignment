abstract class Role{
  void displayRole();
}
class Person implements Role{
  String name;
  int age;
  String address;
  Person({
    required this.name,
    required this.age,
    required this.address
  });

  @override
  void displayRole(){
    print("Role: Person");
  }
}

class Student extends Person{
  int studentID;
  String grade;
  List<int> courseScore;

  Student({
    required String name,
    required int age,
    required String address,
    required this.studentID,
    required this.grade,
    required this.courseScore
  }) : super(name: name, age: age, address: address);

  void averageScoreOfCourses(){
    int sum = 0;
    double avg = 0;
    for(int i=0; i<courseScore.length; i++){
      sum = sum+courseScore[i];
    }
    avg = sum/courseScore.length;
    print("Average Score: $avg");
  }
  @override
  void displayRole(){
    print("Role: Student");
  }

  void studentInfo(){
    print("Student Information:");
    displayRole();
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Address: ${this.address}");
    averageScoreOfCourses();
  }
}

class Teacher extends Person{
  int teacherID;
  List<String> coursesTaught;
  Teacher({
    required String name,
    required int age,
    required String address,
    required this.teacherID,
    required this.coursesTaught,
  }) : super(name: name, age: age, address: address);

  void coursesTaughtByTheTeacher(){
    print("Courses Taught: \n");
    for(int i=0; i<coursesTaught.length; i++){
      print("- ${coursesTaught[i]}\n");
    }
  }
  @override
  void displayRole(){
    print("Role: Teacher");
  }

  void TeacherInfo(){
    print("Teacher Information:");
    displayRole();
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Address: ${this.address}");
    coursesTaughtByTheTeacher();
  }
}

void main(){
  Student student1 = Student(name: "John Doe", age: 20, address: "123 Main Street", studentID: 2245, grade: "A+", courseScore: [90, 85, 82]);
  student1.studentInfo();
  Teacher teacher1 = Teacher(name: "Mrs. Smith", age: 35, address: "456 Oak St", teacherID: 6787, coursesTaught: ["Math", "English", "Bangla"]);
  teacher1.TeacherInfo();
}
