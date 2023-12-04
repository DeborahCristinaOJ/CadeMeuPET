import 'package:cademeupet/Principal/Login%20e%20Cadastro/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cadê Meu PET',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Login(),
    );
  }
}
