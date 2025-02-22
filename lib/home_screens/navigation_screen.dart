import 'package:flutter/material.dart';
import '../global_widgets/custom_icon.dart';
import 'lock_the_door_screen.dart';
import 'notifications_screen.dart';
import '../utils/icon.dart';
import 'home_screen.dart';
import 'notes_screen.dart';
import '../apartment_screens/edit_apartment_screen.dart';

double iconSize = 35;

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const NotesScreen(),
    const EditApartmentScreen(),
    const NotificationScreen(),
    const LockTheDoorScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            currentIndex: currentIndex,
            onTap: (int newValue) {
              setState(() {
                currentIndex = newValue;
              });
            },
            items: [
              BottomNavigationBarItem(
                  label: 'Home',
                  tooltip: 'Home',
                  icon: CustomIcon(
                      height: iconSize,
                      iconName: home.mode[currentIndex == 0 ? 0 : 1])),
              BottomNavigationBarItem(
                  label: 'Note',
                  tooltip: 'Note',
                  icon: CustomIcon(
                      height: iconSize,
                      iconName: note.mode[currentIndex == 1 ? 0 : 1])),
              BottomNavigationBarItem(
                  label: 'Add',
                  tooltip: 'Add',
                  icon: CustomIcon(
                      height: iconSize,
                      iconName: add.mode[currentIndex == 2 ? 0 : 1])),
              BottomNavigationBarItem(
                  label: 'Notifications',
                  tooltip: 'Notifications',
                  icon: CustomIcon(
                      height: iconSize,
                      iconName: notifications.mode[currentIndex == 3 ? 0 : 1])),
              BottomNavigationBarItem(
                  label: 'Sort',
                  tooltip: 'Sort',
                  icon: CustomIcon(
                      height: iconSize,
                      iconName: sort.mode[currentIndex == 4 ? 0 : 1])),
            ]),
      ),
    );
  }
}
