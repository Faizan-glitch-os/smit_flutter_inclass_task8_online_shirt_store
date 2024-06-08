import 'package:flutter/material.dart';

class CircularButton extends StatefulWidget {
  const CircularButton({super.key});

  @override
  State<CircularButton> createState() => _CircularButtonState();
}

class _CircularButtonState extends State<CircularButton> {
  bool onTapSize = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          onTapSize = !onTapSize;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color:
              onTapSize == false ? Colors.white : Colors.red.withOpacity(0.2),
          boxShadow: [
            BoxShadow(
                color: onTapSize == false
                    ? Colors.black12
                    : Colors.redAccent.withOpacity(0.3),
                blurRadius: 2,
                spreadRadius: 5),
          ],
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black12, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            '32',
            style: TextStyle(
                color: onTapSize == false ? Colors.black : Colors.redAccent),
          ),
        ),
      ),
    );
  }
}
