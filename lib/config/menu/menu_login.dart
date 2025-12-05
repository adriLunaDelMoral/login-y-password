import 'package:flutter/material.dart';
import 'package:login_password/presentation/screens/contacts_screen.dart';

class MenuLogin {
  final String title;
  final String link;

const MenuLogin({required this.title, required this.link});
  
  
}



const appMenuLogin = <MenuLogin>[
  
  MenuLogin(
    title: 'Contactos',
    link: ContactsScreen.name,
  ), 
    MenuLogin(
    title: 'Menu2',
    link: '',
  ), 
    MenuLogin(
    title: 'Menu3',
    link: '',
  ) 

];