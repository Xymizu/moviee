import 'package:flutter/material.dart';
import 'package:moviee/ui/screens/main_screens.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreens(),
    );
  }
}