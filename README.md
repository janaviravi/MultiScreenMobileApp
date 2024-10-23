Flutter Multi-Screen UI Application

This is a multi-screen mobile application built using Flutter. It demonstrates essential Flutter concepts like navigation, event handling, and state management, along with the usage of basic widgets like ListView.builder and GridView.builder. The app consists of four screens, including a Home screen, Category Details screen, Add New Item screen, and Profile screen.

Features
1. Multi-screen navigation using Navigator.push and named routes.
2. ListView.builder to display a scrollable list of categories on the Home screen.
3. GridView.builder for displaying a grid of items related to a selected category on the Category Details screen.
4. Event-based functions for handling taps and clicks, like showing detailed views in a modal and adding new items dynamically.
5. State management to dynamically update screens when new data is added.
6. Bottom navigation for switching between screens like Home, Profile, and Settings.

Screens
Home Screen
Displays a list of categories using ListView.builder.
Each category is clickable and navigates to a corresponding Category Details screen.
Floating Action Button (FAB) for adding new items.
Category Details Screen

Shows a grid of items using GridView.builder, related to the selected category.
Each item shows an image and description.
Tapping an item opens a detailed view in a modal.
Add New Item Screen

A form with dropdowns, text fields (for item name, description, and image URL), and a save button.
On saving, the new item is added to the Category Details screen.
Profile Screen

Displays user information like name and email.
Includes navigation options to Home and other screens.
Requirements
Flutter SDK (>= 2.x.x)
Dart SDK (>= 2.x.x)

How to Run
Clone the Repository:
git clone https://github.com/yourusername/flutter-multi-screen-app.git
cd flutter-multi-screen-app

Install Dependencies:
flutter pub get

Run the App:
flutter run

Folder Structure
lib/
│
├── main.dart                  # App entry point
├── screens/                   # Contains all the app screens
│   ├── home_screen.dart        # Home Screen
│   ├── category_details.dart   # Category Details Screen
│   ├── add_new_item.dart       # Add New Item Screen
│   ├── profile_screen.dart     # Profile Screen
│
├── widgets/                   # Reusable widgets (if any)
└── models/                    # Data models for categories, items, etc.

Key Concepts
Navigation:
Implemented using Navigator.push for screen transitions and Navigator.pop for back navigation.

State Management:
Used for updating the Category Details screen when new items are added via the Add New Item screen.

UI Components:
The app demonstrates the use of ListView.builder for lists and GridView.builder for grids, with custom layout designs for each screen.

Event Handling:
Tap events are used to navigate between screens and interact with items, such as showing item details in a modal.

Validation Checklist
 UI Elements: Home screen uses ListView.builder, Category Details screen uses GridView.builder.
 Navigation: Implemented using Navigator.push and Navigator.pop.
 Event Handling: Tapping categories navigates to Category Details screen, and grid items show modals with details.
 State Management: New items added via Add New Item screen are reflected on the Category Details screen.

Future Improvements
Add persistent storage (using SQLite or Firebase) to save items between sessions.
Implement user authentication for the Profile screen.
Enhance UI/UX with custom animations and transitions.
