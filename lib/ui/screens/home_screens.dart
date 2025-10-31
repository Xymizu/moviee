import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 350,
            color: Colors.blueAccent,
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                height: 50,
                color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Trending", style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold,
                    )), 
                    Text("More")
                    ],
                ),
              ),
              Container(
                height: 150,
                color: const Color.fromRGBO(64, 255, 172, 1),
              )
            ],
          )
        ],
      ),
    );
  }
}