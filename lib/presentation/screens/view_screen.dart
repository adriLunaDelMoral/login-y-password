import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_password/config/menu/menu_login.dart';
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
      body: const _MenuView(),
    );
  }
}
class _MenuView extends StatelessWidget {
  const _MenuView();

  @override
  Widget build(BuildContext context) {


    return ListView.builder(
      itemCount: appMenuLogin.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuLogin[index];

        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuLogin menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    
    return ListTile(
      trailing: Icon( Icons.arrow_forward_ios_rounded, color:colors.primary ),
      title: Text(menuItem.title),
      onTap: () {
        
        context.pushNamed( menuItem.link );
      },
    );
  }
}

//FilledButton.tonal(onPressed: (){
//Navigator.of(context).pop();
//title: Text('Welcome $userpass')