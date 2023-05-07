import 'package:made/src/feature/view/page/Homepage.dart';
import 'package:made/src/feature/view/page/Loginpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Welcomepage extends StatefulWidget{
  const  Welcomepage ({Key? key}) : super(key: key);

  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {

  @override
  void initState() {
    super.initState();
    is_user_logged_in().then((logged){
      if(logged){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()),);
      }else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()),);
      }
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Bem vindo ao Fanmade"),
        ), 
    );
  }
  
  Future<bool> is_user_logged_in() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token =prefs.getString('token');
    if(token != null){
      return true;
    }else{
      return false;
    }

  }
}