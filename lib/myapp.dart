import 'package:flutter/material.dart';
import 'package:kriptografi_app/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // theme: ThemeData.dark(),
        home: Home());
  }
}
