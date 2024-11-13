import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 40), 

            const Text(
              "Settings",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text("Account Settings"),
                    trailing: const Icon(Icons.arrow_forward) ,
                    onTap: () {
                      debugPrint("Account Settings button clicked");
                    },
                  ),

                  const Divider(thickness: 5),

                  ListTile(
                    leading: const Icon(Icons.notifications),
                    title: const Text("Notifications"),
                    trailing: const Icon(Icons.arrow_forward) ,
                    onTap: () {
                      debugPrint("Notifications button clicked");
                    },
                  ),

                  const Divider(thickness: 5),

                  ListTile(
                    leading: const Icon(Icons.lock),
                    title: const Text("Privacy"),
                    trailing: const Icon(Icons.arrow_forward) ,
                    onTap: () {
                      debugPrint("Privacy button clicked");
                    },
                  ),

                  const Divider(thickness: 5),

                  ListTile(
                    leading: const Icon(Icons.help),
                    title: const Text("Help & Support"),
                    trailing: const Icon(Icons.arrow_forward) ,
                    onTap: () {
                      debugPrint("Help & Support button clicked");
                    },
                  ),

                  const Divider(thickness: 5),
                  
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: const Text("About"),
                    trailing: const Icon(Icons.arrow_forward) ,
                    onTap: () {
                      debugPrint("About button clicked");
                    },
                  ),

                  const Divider(thickness: 5),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
