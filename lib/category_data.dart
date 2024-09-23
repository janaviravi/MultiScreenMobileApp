class CategoryData {
  List<String> categories = ['Fruit', 'Veggie', 'Spice'];

  Map<String, List<Map<String, String>>> categoryItems = {
    'Fruit': [
      {'name': 'Apple', 'description': 'A sweet red fruit.', 'image': 'https://via.placeholder.com/150'},
      {'name': 'Banana', 'description': 'A long, yellow fruit.', 'image': 'https://via.placeholder.com/150'},
    ],
    'Veggie': [
      {'name': 'Potato', 'description': 'A starchy tuber.', 'image': 'https://via.placeholder.com/150'},
      {'name': 'Carrot', 'description': 'An orange root vegetable.', 'image': 'https://via.placeholder.com/150'},
    ],
    'Spice': [
      {'name': 'Clove', 'description': 'A fragrant spice used in cooking.', 'image': 'https://via.placeholder.com/150'},
      {'name': 'Cinnamon', 'description': 'A sweet, woody spice.', 'image': 'https://via.placeholder.com/150'},
    ],
  };

  void addItem(String category, String name, String description, String image) {
    //If the field is not empty, it's used as is; otherwise, it defaults to 'NIL'.
    String finalName = name.isNotEmpty ? name : 'NIL';
    String finalDescription = description.isNotEmpty ? description : 'NIL';
    String finalImage = image.isNotEmpty ? image : 'NIL';

    // Create the new item
    Map<String, String> newItem = {
      'name': finalName,
      'description': finalDescription,
      'image': finalImage,
    };

    // Add the item to the selected category
    if (categoryItems.containsKey(category)) { //Checks if the specified category already exists in the categoryItems map.
      categoryItems[category]!.add(newItem);//! after categoryItems[category] is used to assert that the value is not null.
    } else {
      categoryItems[category] = [newItem];
    }
  }
}
