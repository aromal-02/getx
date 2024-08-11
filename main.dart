import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp/view/getcontroller/gethome.dart';
import 'package:otp/view/uppercase.dart';
// import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      title: 'GetX Snackbar Demo',

      home: Gethome(),
      //Uppercases(),

      //Statemanages(),

      //const Navigations(),
      //const Bottomsheetui(),
      // const ShowDialogs(),

      //const Snackbars(),
    );
  }
}
