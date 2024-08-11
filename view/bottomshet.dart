import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bottomsheetui extends StatelessWidget {
  const Bottomsheetui({super.key});

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
        child: ElevatedButton(
            onPressed: () {
              Get.bottomSheet(
                
                  Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_outlined),
                          title: const Text("Light theame"),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_sharp),
                          title: const Text("dark theame"),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                  barrierColor: Colors.transparent,
                  backgroundColor: const Color.fromARGB(255, 13, 111, 223));
            },
            child: const Text("Bottomsheet")),
      ),
    );
  }
}
