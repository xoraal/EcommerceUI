import 'package:flutter/material.dart';


class CategoriesWidget extends StatelessWidget {
 const CategoriesWidget({super.key});


@override
  Widget build(BuildContext context) {
    // List of categories with image paths and names
    final List<Map<String, String>> categories = [
      {'image': 'images/5.png', 'name': 'Fashion'},
      {'image': 'images/6.png', 'name': 'Electronic'},
      {'image': 'images/7.png', 'name': 'Beverages'},
      {'image': 'images/8.png', 'name': 'furniture'},
      // Add more categories as needed
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // Loop through the list of categories to create multiple category widgets
          for (var category in categories)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF7F7F7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  // Check if the image path is valid
                  Image.asset(
                    category['image']!,
                    width: 30,
                    height: 30,
                    // Add an error builder in case the image doesn't load
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.error, color: Colors.red);
                    },
                  ),
                  const SizedBox(width: 10), // Add space between the image and text
                  Text(
                    category['name']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}