import 'package:chat_app/pages/Calls_page.dart';
import 'package:chat_app/pages/Contacts_page.dart';
import 'package:chat_app/pages/messages_page.dart';
import 'package:chat_app/pages/notification_page.dart';
// import 'package:chat_app/responsive/responsive_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:chat_app/theme.dart';



  class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final Pages = const[
    MessagesPage(),
    NotificationPage(),
    CallsPage(),
    ContactsPage(),
  ];

  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[index],
      bottomNavigationBar: _BottomNavigationBar(
        onItemSelected: (i) {
          print(index);
          setState(() {
            index = i;
          });
        },
      ),
    );
  }
}



  

  




class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({super.key, required this.onItemSelected,});

  final ValueChanged<int> onItemSelected;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      top: false,
      bottom: true,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        _NavigationBarIcon(
          index: 0,
          lable: 'Messaging',
          icon: CupertinoIcons.bubble_left_bubble_right_fill,
          onTap: onItemSelected,
        ),

        _NavigationBarIcon(
          index: 1,
          lable: 'Notifications',
          icon: CupertinoIcons.bell_solid,
          onTap: onItemSelected ,
        ),

        _NavigationBarIcon(
          index: 2,
          lable: 'Calls',
          icon: CupertinoIcons.phone_fill,
          onTap: onItemSelected,
        ),

        _NavigationBarIcon(
          index: 3,
          lable: 'Contacts',
          icon: CupertinoIcons.person_2_fill,
          onTap: onItemSelected,
        ),
        

      ],
      ),
      );
  }
}


class _NavigationBarIcon extends StatelessWidget {
  const _NavigationBarIcon({super.key , 
  required this.lable, 
  required this.icon, 
  required this.index,
  required this.onTap,
  });

  final ValueChanged<int> onTap;

  final int index;
  final String lable;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        height: 50,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 20, color: Color.fromARGB(255, 133, 134, 135),),
            Text(lable, style: const TextStyle(fontSize: 11, color: Color.fromARGB(255, 69, 78, 84)),),
          ],
        ),
      ),
    );
  }
}






















// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ResponsiveLayout(
//         mobileBody: myMobileBody(), 
//         desktopBody: myDesktopBody()
//         ),
//     );
//   }
// }