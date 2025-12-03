import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_password/domain/entities/users.dart';
import 'package:provider/provider.dart';

import '../providers/user_provider.dart';

class LoginScreen extends StatelessWidget {
  static const String name = 'LoginScreen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = context.watch<UserProvider>();
    TextEditingController loginController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextForm(controller: loginController, hintText: 'usuario'),
          SizedBox(height: 20),
          TextForm(controller: passController, hintText: 'contraseña'),
          FilledButton.tonal(
            onPressed: () {
              int bandera = 0;
          
                //Navigator.of(context).push(MaterialPageRoute(builder: (_) => ViewScreen(userpass: loginController.text),),
                  for (Users usuario in userProvider.allUsers)
                  {
                    if (usuario.username == loginController.text && usuario.password == passController.text)
                    {
                      bandera = 1;
                      context.goNamed("ViewScreen", pathParameters: {'userpass': loginController.text});
                    }
                  }
                  if (bandera == 0) dialog(context);
                  //dialog(context);
                  
                  loginController.clear();
                  passController.clear();
              
            },
            child: Text('Ir a segunda pantalla'),
          ),
        ],
      ),
    );
  }

  Future<void> dialog(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return showDialog(
      fullscreenDialog: false,
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(
          child: SizedBox(
            height: (size.height) * 0.3,
            child: AlertDialog(
              title: const Text('Error de inicio'),
              content: Column(children: [Text('usuario o contraseña incorrectos')]),
              actions: [
                TextButton(
                  child: const Text('aceptar'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,
    required this.controller,
    required this.hintText

  });

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
      ),
    );
  }
}
