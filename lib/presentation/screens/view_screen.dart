import 'package:flutter/material.dart';
//import 'package:login_password/presentation/screens/login_screen.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key, required this.userpass});
  final String userpass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Welcome ${loginController.text}') ),
      appBar: AppBar(title: Text('Welcome $userpass') ),
      body: FilledButton.tonal(onPressed: (){
        Navigator.of(context).pop();
      },
      child: Text('close session'))
    );
  }
}