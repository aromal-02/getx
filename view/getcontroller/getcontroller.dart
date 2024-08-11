import 'package:get/get.dart';

// class uppercontroller extends GetxController {
//   var Student = student().obs;
//   void uppercasess() {
//     Student.value.name = Student.value.name.toUpperCase();
//   }
// }

// class student {
//   var name = "tom";
// }

class UpperController extends GetxController {
  var student = Student().obs;

  void uppercaseName() {
    student.update((val) {
      if (val != null) {
        val.name = val.name.toLowerCase();
      }
    });
  }
}

class Student {
  var name = "tom";
}
