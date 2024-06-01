import 'package:flutter/material.dart';
import 'package:smit_flutter_inclass_task8_online_shirt_store/CircularSizeButton.dart';
import 'package:smit_flutter_inclass_task8_online_shirt_store/ordered.dart';

class Checkout extends StatelessWidget {
  Checkout({super.key, required this.title, required this.tShirtsImages});

  final String title;
  final String tShirtsImages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              color: Colors.pink.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        title: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.black),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 2, color: Colors.black26),
            ),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('assets/images/$tShirtsImages'),
              ],
            ),
          ),
          Container(
            width: 100,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 1,
                color: Colors.red.withOpacity(0.5),
              ),
            ),
            child: const Center(
              child: Text(
                'SIZE',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularSizeButton(),
              const SizedBox(width: 10),
              CircularSizeButton(),
              const SizedBox(width: 10),
              CircularSizeButton(),
              const SizedBox(width: 10),
              CircularSizeButton(),
              const SizedBox(width: 10),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Ordered(),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.redAccent, Colors.red],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'BUY NEW',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
