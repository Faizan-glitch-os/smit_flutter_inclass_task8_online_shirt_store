import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:smit_flutter_inclass_task8_online_shirt_store/checkout.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<String> tShirtsImages = [
    't4.png',
    't5.png',
    't6.png',
    't7.png',
    't8.png',
    't9.png',
    't10.png',
    't11.png'
  ];

  List<String> prices = [
    '245',
    '175',
    '155',
    '160',
    '190',
    '120',
    '200',
    '310',
  ];

  List<String> tShirtNames = [
    'T-shirt Armani',
    'T-shirt Amazon',
    'T-shirt Sneakers',
    'T-shirt HaathiSr',
    'T-shirt Gucci',
    'T-shirt Clothing',
    'T-shirt Polo',
    'T-shirt Peshu',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            color: Colors.pink.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Center(
          child: Text(
            'T-Shirt Shop',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.pink.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.menu),
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, childAspectRatio: 1 / 1.6),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.black26),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.favorite_border_rounded),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'assets/images/${tShirtsImages[index]}',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              '${tShirtNames[index]}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '\$${prices[index]}',
                              style: const TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(Colors.red),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Checkout(
                        title: tShirtNames[index],
                        tShirtsImages: tShirtsImages[index],
                      ),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
