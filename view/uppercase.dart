import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Uppercases extends StatelessWidget {
  Uppercases({super.key});
  var student = Student(name: "tom", age: 20).obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Obx",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: const Color.fromARGB(255, 3, 111, 199),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text("the student name ${student.value.name}")),
              const SizedBox(
                height: 10,
              ),
              Text("the student age ${student.value.age}"),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    //student.value.name = student.value.name.toUpperCase();
                    student.update((student) {
                      student?.name = student.name.toString().toUpperCase();
                    });
                  },
                  child: const Text("TO UPPER")),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    student.update((student) {
                      student?.name = student.name.toString().toLowerCase();
                    });
                  },
                  child: const Text("TO LOWER"))
            ],
          ),
        ));
  }
}

class Student {
  var name;

  var age;

  Student({this.name, this.age});
}
