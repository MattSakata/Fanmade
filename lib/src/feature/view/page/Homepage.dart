import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  const  HomePage ({Key? key}) : super(key: key);
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bem vindo ao Fanmade /n Em breve voce poderá cadastrar sua lista de filmes'),
      ),
    );

  }
}