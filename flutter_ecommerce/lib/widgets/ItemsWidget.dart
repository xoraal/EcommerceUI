import 'package:flutter/material.dart';

class Itemswidget extends StatelessWidget {
Itemswidget({super.key});

 final List<String> myProductName = [
    'Macbook Pro M3 8/256',
    'Soviet kid uniform',
    'Meja Kerja',
    'Celana Gunung',
    
    
  ];

  // Product descriptions
  final List<String> myProductDesc = [
    'Macbook pro M3.',
    ' anak anak pasti suka',
    'untuk kualitas kerja anda',
    'terbukti ampuh',
   
  ];

  // Product prices
  final List<String> myProductPrice = [
    '\$4500',
    '\$50',
    '\$45',
    '\$35',
    '\$55',
    '\$30',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: List.generate(myProductName.length, (i) {
        return Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: newMethod(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Color(0xFF4C53A5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      '-50%',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Icon(Icons.favorite_border, color: Colors.red),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'ItemPage');
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'images/${i + 1}.png',
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 0),
                alignment: Alignment.centerLeft,
                child: Text(
                  myProductName[i],
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xFF4C53A5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  myProductDesc[i],
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      myProductPrice[i],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Icon(
                      Icons.shopping_cart_checkout,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  BoxDecoration newMethod() {
    return BoxDecoration(
          color: const Color(0xFFF7F7F7),
          borderRadius: BorderRadius.circular(20),
        );
  }
}