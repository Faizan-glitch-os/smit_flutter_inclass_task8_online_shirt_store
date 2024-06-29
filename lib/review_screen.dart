import 'package:flutter/material.dart';

import 'package:animated_rating_stars/animated_rating_stars.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Write a review'),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: screenHeight * 0.1,
              child: Image.asset(
                'assets/images/R.png',
              ),
            ),
            Text('How are you satisfied from', style: TextStyle(fontSize: 30)),
            RichText(
              text: TextSpan(
                  text: 'Mr. Puss in Boots',
                  style: TextStyle(color: Colors.blue, fontSize: 20)),
            ),
            AnimatedRatingStars(
                onChanged: (double ratings) => print(ratings),
                customFilledIcon: Icons.star_rounded,
                customHalfFilledIcon: Icons.star_half_rounded,
                customEmptyIcon: Icons.star_outline_rounded),
            TextField(
              maxLines: 5,
              keyboardType: TextInputType.text,
            )
          ],
        ),
      ),
    );
  }
}
