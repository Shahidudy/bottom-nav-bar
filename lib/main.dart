import 'package:bottom_nav_bar/pages/home_page.dart';
import 'package:bottom_nav_bar/pages/order_page.dart';
import 'package:bottom_nav_bar/pages/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NavBarPage(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  List pages = const [
    HomePage(),
    OrderPage(),
    ProfilePage(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ORDER',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'PROFILE',
          ),
        ],
      ),
      body: pages.elementAt(selectedIndex),
    );
  }
}
