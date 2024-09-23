import 'package:flutter/material.dart';
import 'package:task2/category_data.dart'; // Category data model
import 'package:task2/category_detail_screen.dart'; // Category detail screen
import 'package:task2/profile_screen.dart'; // Profile screen

class HomeScreen extends StatefulWidget {
  final CategoryData categoryData;

  const HomeScreen({super.key, required this.categoryData});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomePage(categoryData: widget.categoryData), // Home Page
      ProfileScreen(), // Profile Page
    ];

    return Scaffold(
      body: pages[_selectedIndex], // Display selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Highlight selected item
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update selected index on tap
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton: _selectedIndex == 0 // FAB only on Home page
          ? FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/addNewItem'); // Navigate to AddNewItem screen
              },
              child: const Icon(Icons.add),
            )
          : null, // No FAB on Profile page
    );
  }
}

class HomePage extends StatelessWidget {
  final CategoryData categoryData;

  const HomePage({super.key, required this.categoryData});
  
@override
Widget build(BuildContext context) {
  return ListView.builder(
    itemCount: categoryData.categories.length, // Number of categories
    itemBuilder: (context, index) {
      final category = categoryData.categories[index]; // Get the category (string)
      return ListTile(
        title: Text(category), // Display category name as it's a string
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryDetailScreen(
                category: category, // Pass the category name (string)
                items: categoryData.categoryItems[category]!, // Pass items for the category
              ),
            ),
          );
        },
      );
    },
  );
}
}
