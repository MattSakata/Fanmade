import 'package:flutter/material.dart';
import 'package:made/src/feature/view/page/Registerpage.dart';

class LoginPage extends StatefulWidget{
  const  LoginPage ({Key? key}) : super(key: key);
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final  _formKey = GlobalKey<FormState> ();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _is_password_hide = true;
  static const _baseUrl = 'https://fanmade-c7dd9-default-rtdb.firebaseio.com/';

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                label: Text( 'E-mail'),
                hintText: 'Digite seu e-mail'

              ),
              validator: (email){
                if(email == null || email.isEmpty){
                  return "Email inválido";

                }else{
                  return null;
                }
              } ,
            ),
            TextFormField(
              controller: _passwordController,
              obscureText:  _is_password_hide,
              decoration: InputDecoration(
                label: Text( 'Password'),
                hintText: 'Digite sua senha',
                suffixIcon: IconButton(icon: Icon(_is_password_hide ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                onPressed: (){
                  setState(() {
                    if(_is_password_hide){
                       _is_password_hide = false;
                    }else{
                      _is_password_hide = true;
                    }
                   
                  });
                },)
               
            
              ),
              validator: (password){
                if(password == null || password.isEmpty){
                  return "Senha inválida";

                }else if (password.length < 6){
                  return "Senha inválida";
                }else{
                  return null;
                }
              },  
            ),
            SizedBox(height: 12,),
            ElevatedButton(
              onPressed: (){
                if(_formKey.currentState!.validate()){
                  login();

                }
              }, 
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                   if (states.contains(MaterialState.pressed))
                      return Colors.redAccent; 
                      return null; 
                },
              ),
            ),
            child: Text('ENTRAR', style: TextStyle(fontSize: 15),
            ),
            ),
             ElevatedButton(
              onPressed: (){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const RegsterPage()),);
              }, 
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                   if (states.contains(MaterialState.pressed))
                      return Colors.redAccent; 
                      return null; 
                },
              ),
            ),
            child: Text('CADASTRE-SE', style: TextStyle(fontSize: 15),
            ),
            )
        ]
        ),
        ),
        )
      ),
    );
  }
  login() async{
    print("Logando no fanmade");
  }

}