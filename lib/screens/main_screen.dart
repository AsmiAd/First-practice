import 'package:cv_mobile_app/screens/settings/setting_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('CV App'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 166, 207, 244),
        titleTextStyle: const TextStyle(color: Color.fromARGB(255, 14, 1, 1)),
        actions: [
          IconButton(onPressed: () {
            debugPrint("Share Clicked");
          }, 
          icon: const Icon(Icons.share)),
        ],
      ),

      // body: Container(
      //   margin: const EdgeInsets.all(10.0),
      //   width: double.infinity,
      //   height: 200,
      //   decoration: BoxDecoration(
      //   color: Colors.blue,
      //   borderRadius: BorderRadius.circular(20),
      //   border: Border.all(color: Colors.black, width: 5),
      //   ),
      //   child: Center(child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       const Text("This is my app"),
      //         const SizedBox(height: 20),
      //       ElevatedButton(onPressed: () {
      //         debugPrint("Button Clicked");
      //       }, 
      //       child: const Text("Click Here"))
      //     ],
      //   ),
      //   ),
      // ),

    body: Center(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          ElevatedButton(onPressed: (){
              debugPrint("Go to second screen button Clicked");
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => SettingScreen(
                    name: "Asmi Adhikari",
                    color: const Color.fromARGB(255, 245, 186, 252),
                  ),
              ),
              );
            },
            child: const Text("Go to second screen")
          ),


          //const Center(child: Text("My Photo")),
          //Image.asset("assets/images/bunny.jpg", width: 400, height: 400),
          // Container(
          //   width: 200,
          //   height: 200,
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.black, width: 2),
          //     shape: BoxShape.circle,
          //     image: const DecorationImage(
          //       image: AssetImage("assets/images/bunny.jpg"),
          //       fit: BoxFit.cover
          //     )
          //   ),
          // )
      
        const SizedBox(height: 20),
      
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black, 
              width: 2,),
              ),
      
            child: const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/bunny.jpg"),
            ),
            
          ),
          const SizedBox(height: 20),
          const Text("Asmi Adhikari",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, ),),
          const Text("App Developer",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),),
      
      
        ],
      ),
    ),
    );
  }
}