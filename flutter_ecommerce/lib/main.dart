import 'package:flutter/material.dart';
import 'package:grocery_store/pages/HomePage.dart';
import 'package:grocery_store/pages/ItemPage.dart';
import 'package:grocery_store/pages/cartPages.dart';
import 'package:grocery_store/pages/chatPage.dart';
import 'package:grocery_store/pages/loginPage.dart';
import 'package:grocery_store/pages/messageListPage.dart';
import 'package:grocery_store/pages/profilePage.dart';
import 'package:grocery_store/pages/registerPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => Homepage(),
        "cartPage": (context) => CartPage(),
        "ItemPage": (context) => ItemPage(),
        'messageListPage': (context) => MessageListPage(),
        'chatPage': (context) => ChatPage(),
         'ProfilePage': (context) => ProfilePage(),    // Profile page (can only access after logging in)
    '/login': (context) => LoginPage(), // Login page
    '/register': (context) => RegisterPage(), // Register page
      },
    );
  }
}