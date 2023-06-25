import 'package:flutter/material.dart';
import 'package:services_app/screens/contract_screen/contract_screen.dart';
import 'package:services_app/screens/profile_screen/profile_screen.dart';
import 'package:services_app/screens/services_screen/services_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 2;
  List<Widget> screens = [
    ProfileScreen(),
    ContractScreen(),
    ServicesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.yellowAccent,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(currentIndex != 0
                  ? Icons.person_2_outlined
                  : Icons.person_2_rounded),
              label: 'حسابي'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.edit_document), label: 'العقود'),
          BottomNavigationBarItem(
              icon: Icon(currentIndex != 2 ? Icons.home_outlined : Icons.home),
              label: 'الرئيسية'),
        ],
      ),
    );
  }
}
