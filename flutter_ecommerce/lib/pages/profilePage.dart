import 'package:flutter/material.dart';
import 'package:grocery_store/pages/loginPage.dart';
import 'package:grocery_store/pages/registerPage.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF4C53A5),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 8),
        child: Column(
          children: [
            // Profile header with image and name
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFF4C53A5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('images/profiel.png'), // Dummy profile image
                  ),
                  SizedBox(height: 20),
                  Text(
                    "IKIWI SURYA",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "ikiw@example.com",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Profile action buttons like Edit Profile, Settings, etc.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  _buildProfileOption(
                    icon: Icons.edit,
                    label: "Edit Profile",
                    onTap: () {
                      // Edit profile action
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.lock,
                    label: "Change Password",
                    onTap: () {
                      // Change password action
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.settings,
                    label: "Settings",
                    onTap: () {
                      // Settings action
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.notifications,
                    label: "Notifications",
                    onTap: () {
                      // Notifications action
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.help_outline,
                    label: "Help & Support",
                    onTap: () {
                      // Help and support action
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.logout,
                    label: "Logout",
                    onTap: () {
                      // Use pushNamedAndRemoveUntil to remove all previous routes
                      Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build profile options
  Widget _buildProfileOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Color(0xFF4C53A5),
        ),
        title: Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 18),
        onTap: onTap,
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/login', // Ensure login is the initial route
  routes: {
    '/': (context) => ProfilePage(),    // Profile page (can only access after logging in)
    '/login': (context) => LoginPage(), // Login page
    '/register': (context) => RegisterPage(), // Register page
  },
));