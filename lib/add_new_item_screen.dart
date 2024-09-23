import 'package:flutter/material.dart';
import 'category_data.dart'; // Import the file containing the CategoryData class

class AddNewItemScreen extends StatefulWidget {
  final CategoryData categoryData;
  
  //It accepts a CategoryData instance as a required parameter and calls super.key for widget identification.
  const AddNewItemScreen({super.key, required this.categoryData}); 

  @override
  AddNewItemScreenState createState() => AddNewItemScreenState();
}

class AddNewItemScreenState extends State<AddNewItemScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Item')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              hint: const Text('Select Category'),
              value: selectedCategory,
              onChanged: (String? newValue) { //This is the onChanged callback function that gets triggered whenever the user selects a different item from the dropdown.
                setState(() { //method that triggers a rebuild of the widget tree with the updated state.
                  selectedCategory = newValue;
                });
              },
              items: widget.categoryData.categories.map((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Item Name'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: imageController,
              decoration: const InputDecoration(labelText: 'Image URL'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                //Checks if a category is selected and the name field is not empty before proceeding.
                if (selectedCategory != null && nameController.text.isNotEmpty) {
                  widget.categoryData.addItem(
                    selectedCategory!,
                    nameController.text,
                    descriptionController.text,
                    imageController.text,
                  );
                  Navigator.pop(context); // Go back to the previous screen
                } else {
                  // Handle case where no category is selected or name is empty
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please select a category and enter a name')),
                  );
                }
              },
              child: const Text('Save Item'),
            ),
          ],
        ),
      ),
    );
  }
}
