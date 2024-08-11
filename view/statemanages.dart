import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Statemanages extends StatelessWidget {
  Statemanages({super.key});
  var count = 0.obs;
  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }

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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("$count")),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    increment();
                  },
                  child: const Text("Increase")),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    decrement();
                  },
                  child: const Text("Decrease"))
            ],
          ),
        ));
  }
}
