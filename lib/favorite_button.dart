import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool onTapFavorite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          onTapFavorite = !onTapFavorite;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: onTapFavorite == false
              ? Colors.black12
              : Colors.redAccent.withOpacity(0.3),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.favorite,
          color: onTapFavorite == false ? Colors.grey : Colors.redAccent,
        ),
      ),
    );
  }
}
