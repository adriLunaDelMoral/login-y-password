import 'package:flutter/material.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key, required this.userpass});
  final String userpass;

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('estoy en la segunda pantalla'),
        Text('$widget.userpass'),
      ],
      
      
    );
  }
}