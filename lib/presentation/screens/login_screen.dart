import 'package:flutter/material.dart';
import 'package:login_password/presentation/screens/view_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController loginController = TextEditingController();
    TextEditingController passController = TextEditingController();
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
              if (loginController.text != passController.text || loginController.text.isEmpty) {
                dialog(context);
              } else {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ViewScreen(userpass: loginController.text),
                  ),
                );
              }
            },
            child: Text('Ir a segunda pantalla'),
          ),
        ],
      ),
    );
  }

  Future<dynamic> dialog(BuildContext context) {
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
