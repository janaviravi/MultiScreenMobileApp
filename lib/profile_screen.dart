import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          // User Information Section
          const Card(
            elevation: 4,
            child: const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              ),
              title: Text('John Doe', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text('johndoe@example.com'),
            ),
          ),
          const SizedBox(height: 10),
          
          // List of Options
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Edit Profile'),
            onTap: () {
              
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('View Orders'),
            onTap: () {
              
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log Out'),
            onTap: () {
              
            },
          ),
        ],
      ),
    );
  }
}
