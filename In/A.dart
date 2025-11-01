import 'package:flutter/material.dart';
void main() {
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: 'Student Profile Card',
 home: Scaffold(
 backgroundColor: Colors.lightBlue[50],
 appBar: AppBar(
 title: const Text('Profile Card'),
 backgroundColor: Colors.blueAccent,
 ),
 body: Center(
 child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
 // Profile picture
 const CircleAvatar(
 radius: 60,
 backgroundImage: AssetImage('assets/images/profile.jpg'),
 ),
 const SizedBox(height: 20),
 // Name
 const Text(
 'Amulya',
 style: TextStyle(
 fontSize: 28,
 fontWeight: FontWeight.bold,
 color: Colors.blueAccent,
 ),
 ),
 // Profession
 const Text(
 'Flutter Beginner',
 style: TextStyle(
 fontSize: 20,
 color: Colors.black54,
 ),
 ),
 const SizedBox(height: 20),
 // Contact Card
 Container(
 margin: const EdgeInsets.symmetric(horizontal: 40),
 padding: const EdgeInsets.all(12),
 decoration: BoxDecoration(
 color: Colors.white,
 borderRadius: BorderRadius.circular(12),
 boxShadow: const [
 BoxShadow(color: Colors.grey, blurRadius: 4),
 ],
 ),
 child: Row(
 children: const [
 Icon(Icons.phone, color: Colors.green),
 SizedBox(width: 10),
 Text(
 '+91 9876543210',
 style: TextStyle(fontSize: 18),
 ),
 ],
 ),
 ),
 const SizedBox(height: 12),
 Container(
 margin: const EdgeInsets.symmetric(horizontal: 40),
 padding: const EdgeInsets.all(12),
 decoration: BoxDecoration(
 color: Colors.white,
 borderRadius: BorderRadius.circular(12),
 boxShadow: const [
 BoxShadow(color: Colors.grey, blurRadius: 4),
 ],
 ),
 child: Row(
 children: const [
 Icon(Icons.email, color: Colors.redAccent),
 SizedBox(width: 10),
 Text(
 'amulya@example.com',
 style: TextStyle(fontSize: 18),
 ),
 ],
 ),
 ),
  ],
 ),
 ),
 ),
 );
 }
}
//Steps to setup image in android studio:
1. Right click on the Project Name → New → Directory → type assets.
2. Right click on the assets → New → Directory → type images.
3. Now upload or copy the image into images directory.
4. Go to pubspec.yaml file in the project folder.
5. Edit the code as
flutter:
 uses-material-design: true
 assets:
 - assets/images/profile.jpg
6. Run pubget.//
