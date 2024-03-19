import 'package:flutter/material.dart';
import 'package:flutter_ruts/states/authen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: Authen(),);
  }
}
