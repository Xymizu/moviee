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

  static const List<Widget> _screens = [
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
      backgroundColor: Colors.black,
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black, // warna dasar navbar
        selectedItemColor: const Color.fromRGBO(255, 7, 7, 1),
        unselectedItemColor: const Color.fromARGB(255, 173, 173, 173),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.black, // biar item nempel ke bg
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
