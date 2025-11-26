import 'package:flutter/material.dart';
import 'package:login_password/presentation/screens/view_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController loginController = TextEditingController();
TextEditingController passController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: loginController,
            decoration: InputDecoration(
              hintText: 'Usuario',
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: passController,
            decoration: InputDecoration(
              hintText: 'Contraseña',
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
            ),
          ),
          FilledButton.tonal(
            onPressed: () {
              if (loginController.text == passController.text) {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (_) => ViewScreen(userpass:loginController.text)));
              }else{
              showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Error de inicio'),
                    content: Column(
                      children: [
                        Text('usuario o contraseña incorrectos')
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('aceptar'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }
            },
            child: Text('Ir a segunda pantalla'),
          ),
        ],
      ),
    );
  }
}
