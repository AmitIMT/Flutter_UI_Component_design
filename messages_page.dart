import 'package:flutter/material.dart';
import '../theme.dart';


class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardDark,
      body: Container(
        child:Center(child: Text('MessagesPage' , style: TextStyle(color: textLigth),)),
      ),
    );
  }
}







































// class myMobileBody extends StatefulWidget {
//   const myMobileBody({super.key});
  

//   @override
//   State<myMobileBody> createState() => _myMobileBodyState();
// }

// class _myMobileBodyState extends State<myMobileBody> {

//   var items = 25;



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green.shade200,
//       appBar: AppBar(
        
//         title: Text('C H A T'),
//       ),

//       body: Expanded(
//         child: ListView.builder(
//           itemCount: items,
//           itemBuilder: ((context, items) {
              
//           })
//           ),
//           ),



        
//       );


    
//   }
// }