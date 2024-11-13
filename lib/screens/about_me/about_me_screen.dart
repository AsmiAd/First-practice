import 'package:flutter/material.dart';

class AboutMeScreen extends StatefulWidget {
  AboutMeScreen({this.age = 23, super.key});
  int? age;

  @override
  State<AboutMeScreen> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  List<Color> colorChoose = [
    Colors.teal,  
    Colors.grey, 
    Colors.pink, 
    Colors.blue,
    Colors.green, 
    Colors.orange, 
    Colors.yellow, 
    Colors.brown, 
    Colors.white];

  Color? selectedColor;
  int? selectedNumber;
  int? currentIndex;

  List<Widget> data = [
    const Text("Home"),
    const Text("About"),
    const Text("Setting"),
    const Text("Profile")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: selectedColor?? Colors.white, 
      appBar: AppBar(
        title: const Text('About Me'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 166, 207, 244),
        titleTextStyle: const TextStyle(color: Color.fromARGB(255, 14, 1, 1)),
      ) ,

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.green,
        currentIndex: currentIndex?? 0,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
      ]),

      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //       Center(child: Text("I am $age years old")),
      //     const SizedBox(height: 20),   
      //   ],
      // ),  

      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container( 
      //         padding: const EdgeInsets.all(8),
      //         width: double.infinity,
      //         //width: MediaQuery(data: data, child: child) 
      //         decoration: BoxDecoration(
      //           color: const Color.fromARGB(255, 241, 244, 246),
      //           border: Border.all(
      //             color: Colors.grey,
      //             //width: 2
      //           ),
      //           borderRadius: BorderRadius.circular(10)              
      //         ),
      //         child: Row(
      //           children: [
      //             ClipRRect(
      //               borderRadius: BorderRadius.circular(10),
      //               child: Image.asset("assets/images/bunny1.png", 
      //               width: 180),
      //             ),
      //             const SizedBox(width: 15),
      //             Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 const Text("Asmi Adhikari",
      //                 style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold),
      //                 ),
      //                 const SizedBox(height: 5),
      //                 const Text("App Developer",
      //                 style: TextStyle(
      //                   fontSize: 15,
      //                   color: Colors.grey
      //                   ),
      //                 ),
      //                 const SizedBox(height: 8),
      //                 const Row(
      //                   children: [
      //                     Icon(
      //                       Icons.star,
      //                       color: Colors.orange,
      //                       size: 25,
      //                     ),
      //                     SizedBox(width: 5),
      //                     Text("4.7",
      //                     style: TextStyle(
      //                       color: Colors.orange,
      //                     ),
      //                     ),
      //                   ],
      //                 ),
      //                 const SizedBox(height: 8),
      //                 const Row(
      //                   children: [
      //                     Icon(
      //                       Icons.location_on_outlined,
      //                       color: Colors.grey,
      //                       size: 25,
      //                     ),
      //                     SizedBox(width: 5),
      //                     Text("Pokhara, Nepal",
      //                     style: TextStyle(
      //                       color: Colors.grey,
      //                     ),
      //                     ),
      //                   ],
      //                 ),
      //                 const SizedBox(height: 8),
      //                 ElevatedButton.icon(onPressed: (){
      //                   debugPrint("Contact button clicked");
      //                   }, 
      //                   icon: const Icon(
      //                     Icons.call, 
      //                     color: Colors.grey,
      //                     ),
      //                   label: const Text("Contact",
      //                   style: TextStyle(
      //                     color: Colors.grey,
      //                   ),
      //                   ),
      //                   )
      //               ],
      //             )
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // )


      // body: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Column(
      //     children: [
      //       Container(
      //         decoration: BoxDecoration(
      //           color: const Color.fromARGB(255, 241, 244, 246),
      //           borderRadius: BorderRadius.circular(10),
      //           border: Border.all(
      //             color: Colors.grey,
      //           )
      //         ),
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Column(
      //             children: [
      //               const Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Row(
      //                     children: [
      //                       Icon(
      //                         Icons.star,
      //                         color: Colors.orange,
      //                         size: 25,
      //                       ),
      //                       SizedBox(height: 5),
      //                       Text(
      //                         "4.7",
      //                         style: TextStyle(
      //                           color: Colors.orange,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ],
      //               ),
      //               const SizedBox(height: 10),
      //               const CircleAvatar(
      //                 radius: 70,
      //                 backgroundImage: AssetImage("assets/images/bunny1.png"),
      //               ),
      //               const SizedBox(height: 10),
      //               const Text(
      //                 "Asmi Adhikari",
      //                 style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //               const SizedBox(height: 10),
      //               const Text(
      //                 "App Developer",
      //                 style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.grey,
      //                 ),
      //               ),
      //               const SizedBox(height: 10),
      //               const Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(
      //                     Icons.location_on_outlined,
      //                     color: Colors.grey,
      //                     size: 25,
      //                   ),
      //                   SizedBox(width: 5),
      //                   Text(
      //                     "Pokhara, Nepal",
      //                     style: TextStyle(
      //                     color: Colors.grey,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               const SizedBox(height: 10),
      //               ElevatedButton.icon(
      //                 onPressed: () {
      //                   debugPrint("Contact button clicked");
      //                 },
      //                 icon: const Icon(Icons.call, color: Colors.grey),
      //                 label: const Text(
      //                   "Contact",
      //                   style: TextStyle(
      //                     color: Colors.grey,
      //                   ),
      //                 ),
      //               ),
      //               const SizedBox(height: 10),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // )  ,

      // body: const SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Row(
      //     children: [
      //       CircleAvatar(
      //         backgroundColor: Colors.amber,
      //         radius: 30,
      //       ),
      //       SizedBox(width: 8),
      //       CircleAvatar(
      //         backgroundColor: Colors.black,
      //         radius: 30,
      //       ),
      //       SizedBox(width: 8),
      //       CircleAvatar(
      //         backgroundColor: Colors.blue,
      //         radius: 30,
      //       ),
      //       SizedBox(width: 8),
      //       CircleAvatar(
      //         backgroundColor: Colors.orange,
      //         radius: 30,
      //       ),
      //       SizedBox(width: 8),
      //       CircleAvatar(
      //         backgroundColor: Colors.red,
      //         radius: 30,
      //       ),
      //       SizedBox(width: 8),
      //       CircleAvatar(
      //         backgroundColor: Colors.yellow,
      //         radius: 30,
      //       ),
      //       SizedBox(width: 8),
      //       CircleAvatar(
      //         backgroundColor: Colors.green,
      //         radius: 30,
      //       ),
      //       SizedBox(width: 8),
      //       CircleAvatar(
      //         backgroundColor: Colors.grey,
      //         radius: 30,
      //       ),
      //       SizedBox(width: 8),
      //       CircleAvatar(
      //         backgroundColor: Colors.pink,
      //         radius: 30,
      //       ),
      //     ],
      //   ),
      // ),

      // body: Column(
      //   children: [
      //     SingleChildScrollView(
      //       scrollDirection: Axis.horizontal,
      //       child: Row(
      //         children: List.generate(colorChoose.length,(index){
      //           return Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: GestureDetector(
      //               onTap: () {
      //                 print("$index");
      //                 setState(() {
      //                   selectedColor = colorChoose[index];
      //                   selectedNumber = index;
      //                 });
      //                 print(selectedColor.toString());
      //               } ,
      //               child: CircleAvatar(
      //                 backgroundColor: colorChoose[index],
      //                 child: 
      //                 Text("$index"),
      //               ),
      //             ),
      //           );
      //         })
      //       ),
      //     ),
      //     Expanded(
      //       child: Center(
      //         child: Text(
      //           "${selectedNumber?? "Please press a number"}",
      //             style: const TextStyle(
      //               fontSize: 60,
      //               fontWeight: FontWeight.bold,
      //             ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

      body: Center(child: data[currentIndex?? 0]),

    );
  } 
}