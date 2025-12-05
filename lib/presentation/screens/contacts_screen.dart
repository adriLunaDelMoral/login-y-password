import 'package:flutter/material.dart';
import 'package:login_password/domain/entities/users.dart';
import 'package:login_password/presentation/providers/user_provider.dart';
import 'package:provider/provider.dart';

const contact = <Map<String,dynamic>>[
  { 'elevation': 0.0, 'label': 'Elevation 0' },
  { 'elevation': 1.0, 'label': 'Elevation 1' },
  { 'elevation': 2.0, 'label': 'Elevation 2' },
  { 'elevation': 3.0, 'label': 'Elevation 3' },
  { 'elevation': 4.0, 'label': 'Elevation 4' },
  { 'elevation': 5.0, 'label': 'Elevation 5' },
];





class ContactsScreen extends StatelessWidget {

  static const String name = 'contacts_screen';

  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Screen'),
      ),
      body: const _ContactView(),
    );
  }
}

class _ContactView extends StatelessWidget {
  const _ContactView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
            
          ...contact.map( 
            (card) => _CardType( elevation: card['elevation'], label: card['label'] ),
          ),
          
          const SizedBox(height: 50 ),
        ],
      ),
    );
  }
}

class _CardType extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType({
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
  final userProvider = context.watch<UserProvider>();

  //  final colors = Theme.of(context).colorScheme;

    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${ elevation.toInt() }/600/350',
            height: 350,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only( bottomLeft: Radius.circular(20) )
              ), 
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text('${userProvider.allUsers.}', style: TextStyle(color: Colors.white),

            ),
          )
        ],
      ),
    );
  }
}




