import 'package:flutter/material.dart';
import 'package:made/src/feature/view/page/Welcomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fan Made',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        primarySwatch: Colors.orange,
      ),
      home: const Welcomepage(),
    );
  }
}

