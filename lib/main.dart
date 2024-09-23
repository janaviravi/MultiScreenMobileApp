import 'package:flutter/material.dart';
import 'package:task2/add_new_item_screen.dart';
import 'package:task2/category_data.dart';
import 'package:task2/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final CategoryData categoryData = CategoryData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(categoryData: categoryData),
      routes: {
        '/addNewItem': (context) => AddNewItemScreen(categoryData: categoryData),
      },
    );
  }
}