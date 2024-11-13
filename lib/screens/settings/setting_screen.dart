import 'package:cv_mobile_app/screens/about_me/about_me_screen.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({this.name = "Friend",this.color = Colors.white, super.key});
  String? name;
  Color? color;

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 166, 207, 244),
        titleTextStyle: const TextStyle(color: Color.fromARGB(255, 14, 1, 1)),
      ) ,

      backgroundColor: color,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Center(child: Text("Welcome $name")),

          const SizedBox(height: 20),   

          ElevatedButton(onPressed: () {
            debugPrint("About Me Clicked");
            Navigator.push(context, 
            MaterialPageRoute(
              builder:  (context) => AboutMeScreen(
                age: 20,
              ),
              ),);
            }, 

            child: const Text("About Me") 
          )

        ],
      ),
    );
  }
}