import 'package:flutter/material.dart';
import 'package:goodbye_world_flutter/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goodbye World',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
