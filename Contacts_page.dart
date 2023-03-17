import 'package:flutter/material.dart';

import '../theme.dart';


class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardDark,
      body: Container(
        child:Center(child: Text('ContactsPage' , style: TextStyle(color: textLigth),)),
      ),
    );
  }
}