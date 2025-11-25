import 'package:flutter/material.dart';
import 'package:login_password/presentation/screens/view_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton.tonal(onPressed: (){
             Navigator.of(context).push( MaterialPageRoute(  builder: (_) => ViewScreen()));
        },
         child: Text('Ir a segunda pantalla'))
      ],
      
    );
  }
}