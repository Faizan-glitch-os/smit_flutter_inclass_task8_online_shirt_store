import 'package:flutter/material.dart';
import 'package:smit_flutter_inclass_task8_online_shirt_store/review_screen.dart';

class Ordered extends StatelessWidget {
  const Ordered({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/star.png',
                height: screenHeight * 0.1,
              ),
              Container(
                height: screenHeight * .1,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(),
                    const Text(
                      'Congratulations My Online\nShop',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red.withOpacity(0.2),
                      ),
                      child: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/coupon.png',
                height: screenHeight * .5,
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Colors.red.withOpacity(0.2),
              //         shape: BoxShape.circle,
              //       ),
              //       child: const Padding(
              //         padding: EdgeInsets.all(10),
              //         child: Icon(
              //           Icons.add,
              //           color: Colors.red,
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 20,
              //     ),
              //     Container(
              //       decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         color: Colors.red.withOpacity(0.2),
              //       ),
              //       child: const Padding(
              //         padding: EdgeInsets.all(10),
              //         child: Icon(
              //           Icons.check,
              //           color: Colors.red,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ReviewScreen()));
                },
                splashColor: Colors.red,
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
                      'Write a review',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
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
            ],
          ),
        ),
      ),
    );
  }
}
