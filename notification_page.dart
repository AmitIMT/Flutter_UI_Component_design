import 'package:flutter/material.dart';
import '../theme.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardDark,
      body: Container(
        child:Center(child: Text('NotificationPage' , style: TextStyle(color: textLigth),)),
      ),
    );
  }
}