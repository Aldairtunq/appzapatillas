import 'package:appzapatillas/pages/home.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' FLUTTER SHOES',
      theme: ThemeData.dark(),
      home: const HomePageShoes(),
      debugShowCheckedModeBanner: false,
    );
  }
}
