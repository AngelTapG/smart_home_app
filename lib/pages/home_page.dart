import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // padding constants
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  // list of smart devices
 List mySmartDevices = [
      // [ smartDeviceName, iconPath , powerStatus ]
    ["Smart Light", "lib/icons/light-bulb.png", true],
    ["Smart AC", "lib/icons/air-conditioner.png", false],
    ["Smart TV", "lib/icons/smart-tv.png", false],
    ["Smart Fan", "lib/icons/fan.png", false],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          //custom app bar
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //menu icon
            Image.asset(
              'lib/icons/menu.png',
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
      ),

      const SizedBox(height: 20),

      //welcome home Angel Tapia
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [ 
            Text("Welcome home,"),
            Text(
              "Angel Tapia",
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),

      const SizedBox(height: 20),

        //smart devices + grid
        Padding(
          padding: EdgeInsets.symmetric(horizontal:horizontalPadding),
          child: Text("Smart Devices"),
        ),
         
        Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                ),
                itemBuilder: (context, index){
                  return Container();
                },
              ),
              )
          ],
        ),
      ),
    );
  }
}
