import 'package:chat_app/pages/Calls_page.dart';
import 'package:chat_app/pages/Contacts_page.dart';
import 'package:chat_app/pages/messages_page.dart';
import 'package:chat_app/pages/notification_page.dart';
// import 'package:chat_app/responsive/responsive_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/theme.dart';



class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ValueNotifier<int> PageIndex = ValueNotifier(0);

  final Pages = const[
    MessagesPage(),
    NotificationPage(),
    CallsPage(),
    ContactsPage(),
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardDark,
      body: ValueListenableBuilder(
        valueListenable: PageIndex,
        builder: (BuildContext context, int value, _) {
          return Pages[value];
        },
        ),
      bottomNavigationBar: _BottomNavigationBar(
        onItemSelected: (index) {
          PageIndex.value=index;
        },
      ),
    );
  }
}


class _BottomNavigationBar extends StatefulWidget {
  const _BottomNavigationBar({super.key, required this.onItemSelected,});

  final ValueChanged<int> onItemSelected;

  @override
  State<_BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<_BottomNavigationBar> {
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
          onTap: widget.onItemSelected,
        ),

        _NavigationBarIcon(
          index: 1,
          lable: 'Notifications',
          icon: CupertinoIcons.bell_solid,
          onTap: widget.onItemSelected ,
        ),

        _NavigationBarIcon(
          index: 2,
          lable: 'Calls',
          icon: CupertinoIcons.phone_fill,
          onTap: widget.onItemSelected,
        ),

        _NavigationBarIcon(
          index: 3,
          lable: 'Contacts',
          icon: CupertinoIcons.person_2_fill,
          onTap: widget.onItemSelected,
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
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        height: 50,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 20, color: iconLight,),
            SizedBox(height: 8.3,),
            Text(lable, style: const TextStyle(fontSize: 11, color: textLigth),),
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