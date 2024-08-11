import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialogs extends StatelessWidget {
  const ShowDialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Pop-Up",
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
// getx

                  Get.defaultDialog(
                      title: "heading",
                      titleStyle: const TextStyle(
                          color: Color.fromARGB(255, 5, 38, 229)),
                      content: const Text("Sub title"),
                      backgroundColor: const Color.fromARGB(255, 101, 204, 17),
                      textCancel: "cancel",
                      textConfirm: "confirm",
                      confirmTextColor:
                          const Color.fromARGB(255, 255, 254, 254),
                      buttonColor: const Color.fromARGB(255, 1, 16, 101),
                      cancelTextColor: const Color.fromARGB(255, 0, 0, 0),
                      onCancel: () {
                        print("cancel");
                      },
                      onConfirm: () {
                        print("confirm");
                      });

                  // not getx

                  // showDialog(
                  //     context: context,
                  //     builder: (context) => const AlertDialog(
                  //           title: Text("data"),
                  //           content: Text("sub data"),
                  //         ));
                },
                child: const Text("Show Dialog")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Go To Back")),
            Text(Get.arguments),
          ],
        ),
      ),
    );
  }
}
