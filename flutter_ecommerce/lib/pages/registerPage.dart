// Register Page
import 'package:flutter/material.dart';
import 'package:grocery_store/pages/profilePage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? successMessage;
  
  get users => null;

  void register() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (!users.containsKey(email)) {
      setState(() {
        users[email] = password;
        successMessage = "Account created successfully!";
      });
    } else {
      setState(() {
        successMessage = "Email already exists!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        centerTitle: true,
        backgroundColor: Color(0xFF4C53A5),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: register,
              child: Text("Register"),
            ),
            if (successMessage != null) ...[
              SizedBox(height: 20),
              Text(
                successMessage!,
                style: TextStyle(color: Colors.green),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
