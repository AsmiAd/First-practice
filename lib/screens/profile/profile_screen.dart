import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40), 

            const Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/bunny.jpg"),
              ),
            ),
            const SizedBox(height: 20),
            
            const Text("Asmi Adhikari",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "asmi@gmail.com",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 10),

            const Text(
              "Contact: 4564567349",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: (){
              debugPrint("Contact button clicked");
              }, 
              icon: const Icon(
                Icons.call, 
                color: Colors.grey,
              ),
              label: const Text("Contact",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),

            const Spacer(), 

            ElevatedButton(
              onPressed: () {
                debugPrint("Log out button clicked");
              },
              child: const Text("Log Out"),
            ),
            const SizedBox(height: 20), 
          ],
        ),
      ),
    );
  }
}
