import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import 'package:login_password/presentation/screens/login_screen.dart';

class ViewScreen extends StatelessWidget {
  static const String name = 'ViewScreen';

  const ViewScreen({super.key, required this.userpass});
  final String userpass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Welcome ${loginController.text}') ),
      appBar: AppBar(title: Text('Welcome $userpass'),
        actions: [
          FilledButton.tonal(
            child: Text('close session'),
            onPressed: (){
              //Navigator.of(context).pop();
              //context.pop();
              context.goNamed("LoginScreen");

            }
          ),
        ]
      ), 
    );
  }
}

//FilledButton.tonal(onPressed: (){
//Navigator.of(context).pop();
//title: Text('Welcome $userpass')