import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
          //custom app bar
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 25,
            ),
            child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //menu icon
            Image.asset(
              'lib/icons/menu.jpeg',
              height:45,
              color: Colors.grey[800],
              ),

              //account icon
              Icon(
                Icons.person,
              size: 45,
              color: Colors.grey[800],
              ),
          ],
        ),
      )

        //welcome home

        //smart devices + grid
          ],
        ),
      ),
    );
  }
}
