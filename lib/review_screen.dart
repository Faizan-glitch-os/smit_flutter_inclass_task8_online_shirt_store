import 'package:flutter/material.dart';

import 'package:animated_rating_stars/animated_rating_stars.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.orange,
        ),
        title: const Text(
          'Write a review',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: screenHeight * 0.1,
                backgroundImage: const AssetImage(
                  'assets/images/puss.jpg',
                ),
              ),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                      text: 'How are you satified with ',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  TextSpan(
                    text: 'Mr. Puss in Boots',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              AnimatedRatingStars(
                onChanged: (double ratings) => print(ratings),
                customFilledIcon: Icons.star_rounded,
                customHalfFilledIcon: Icons.star_half_rounded,
                customEmptyIcon: Icons.star_outline_rounded,
                starSize: 50,
                filledColor: Colors.orange,
              ),
              SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Text('Write a comment'),
                        Spacer(),
                        Text('Max 250 words')
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder()),
                      maxLines: 5,
                      keyboardType: TextInputType.text,
                      autocorrect: true,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ReviewScreen()));
                },
                splashColor: Colors.red,
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white),
                    ),
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
