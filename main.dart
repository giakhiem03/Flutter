import 'package:flutter/material.dart';
import 'example.dart';
import 'Excercite_1.dart';
import 'baitap2.dart';
import 'baitap3.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primaryColor: Colors.blue,
        useMaterial3: true,
      ),
      home: const FormLogin(),
      debugShowCheckedModeBanner: false,
    );
  }
}
