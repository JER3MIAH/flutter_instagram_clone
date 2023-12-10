import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/ui/features/home/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Instagram Clone',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}
