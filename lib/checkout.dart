import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  Checkout({super.key, required this.title});

  final String title;
  // final String tShirtsImages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            color: Colors.pink.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(Icons.arrow_back_ios_new),
        ),
        title: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.pink.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 2, color: Colors.black26),
            ),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset('assets/images/t4.png'),
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
            child: Center(
              child: Text(
                'SIZE',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black12)],
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black12, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text('32'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black12)],
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black12, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text('32'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black12)],
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black12, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text('32'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black12)],
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black12, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text('32'),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 5),
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.redAccent, Colors.red],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'BUY NEW',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
