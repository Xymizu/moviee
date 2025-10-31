import 'package:flutter/material.dart';
import 'package:moviee/ui/screens/favorite_screens.dart';
import 'package:moviee/ui/screens/home_screens.dart';
import 'package:moviee/ui/screens/search_screens.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;
  static const List _screens = [
    HomeScreens(),
    SearchScreens(),
    FavoriteScreens(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "favorite",
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: const Color.fromARGB(255, 173, 173, 173),
        selectedItemColor: const Color.fromRGBO(255, 7, 7, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
