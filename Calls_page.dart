import 'package:flutter/material.dart';
import '../theme.dart';


class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardDark,
      body: Container(
        child:Center(child: Text('CallsPage' , style: TextStyle(color: textLigth),)),
      ),
    );
  }
}









































// class myDesktopBody extends StatefulWidget {
//   const myDesktopBody({super.key});

//   @override
//   State<myDesktopBody> createState() => _myDesktopBodyState();
// }

// class _myDesktopBodyState extends State<myDesktopBody> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue.shade200,
//     );
//   }
// }