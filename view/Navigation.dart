import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp/view/showdialouge.dart';

class Navigations extends StatelessWidget {
  const Navigations({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // ElevatedButton(
        //     onPressed: () {
        //       Navigator.of(context)
        //           .push(MaterialPageRoute(builder: (context) => ShowDialogs()));
        //     },
        //     child: Text("data"));
        Scaffold(
      backgroundColor: const Color.fromARGB(255, 105, 104, 104),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Navigation",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 111, 199),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(const ShowDialogs(),
                      arguments: "argemnts",
                      duration: const Duration(milliseconds: 3000));
                },
                child: const Text("GO TO NEXT PAGE")),
          ],
        ),
      ),
    );
  }
}
