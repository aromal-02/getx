import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Snackbars extends StatelessWidget {
  const Snackbars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Snackbar",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 111, 199),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("click");
                  //getx

                  Get.snackbar("Title", "Subtitle",
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.blue,
                      colorText: Colors.white,
                      borderRadius: 10,
                      margin: const EdgeInsets.all(10),
                      backgroundGradient: const LinearGradient(colors: [
                        Colors.black,
                        Color.fromARGB(255, 19, 19, 19),
                        Color.fromARGB(221, 0, 0, 133),
                      ]),
                      animationDuration: const Duration(milliseconds: 3000));

                  //not getx
                  // final snackBar = SnackBar(
                  //   content: const Text('This is a Snackbar!'),
                  //   action: SnackBarAction(
                  //     label: 'Undo',
                  //     onPressed: () {
                  //       // Some code to undo the change.
                  //     },
                  //   ),
                  // );
                  // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text("Show Snackbar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
