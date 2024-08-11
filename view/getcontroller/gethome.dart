import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp/view/getcontroller/getcontroller.dart';

class Gethome extends StatelessWidget {
  Gethome({super.key});
  var uppercasecontroller = Get.put(UpperController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("controller"),
        backgroundColor: const Color.fromARGB(255, 56, 82, 230),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Obx(() => Text("name is ${uppercasecontroller.student.value.name}")),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              uppercasecontroller.uppercaseName();
            },
            child: const Text("upper"))
      ])),
    );
  }
}
