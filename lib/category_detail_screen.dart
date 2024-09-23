import 'package:flutter/material.dart';

class CategoryDetailScreen extends StatelessWidget {
  final String category;
  final List<Map<String, String>> items;

  const CategoryDetailScreen({super.key, required this.category, required this.items});

  // Function to show the modal bottom sheet
  void _showItemDetails(BuildContext context, Map<String, String> item) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Image.network(
                  item['image']!,
                  fit: BoxFit.cover,
                  height: 150, // Adjust the height as needed
                  width: double.infinity, // Make image width full
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                item['name']!,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8.0),
              Text(
                item['description']!,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) { //build Method: Defines the UI layout for this screen.
    return Scaffold(
      appBar: AppBar(
        title: Text('$category Items'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 8.0, // Horizontal spacing between items
          mainAxisSpacing: 8.0,  // Vertical spacing between items
        ),
        padding: const EdgeInsets.all(8.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () => _showItemDetails(context, item),
            child: Card(
              elevation: 4.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    item['image']!,
                    fit: BoxFit.cover,
                    height: 100, // Adjust the height as needed
                    width: 100,  // Adjust the width as needed
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    item['name']!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    item['description']!,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
