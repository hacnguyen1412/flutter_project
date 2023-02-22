import 'package:flutter/cupertino.dart';
import 'package:flutter_project/features/home/presentation/screens/home/home_screen.dart';
import 'package:flutter_project/features/messenger/presentation/messenger_screen.dart';
import 'package:flutter_project/features/profile/presentation/screens/profile/profile_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      resizeToAvoidBottomInset: false,
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble),
            label: 'Messenger',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return const MessengerScreen();
          case 1:
            return const HomeScreen();
          case 2:
            return const ProfileScreen();
          default:
            throw UnimplementedError();
        }
      },
    );
  }
}
