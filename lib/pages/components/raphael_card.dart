import 'package:flutter/material.dart';

class raphaelCard extends StatelessWidget {

  final String leftText;
  final String rightText;

  raphaelCard({required this.leftText, required this.rightText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 9.7, right: 9.7),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color.fromARGB(255, 39, 107, 255), width: 0.2),
        ),
        child: Row(
          children: [
            Text(leftText),
            Spacer(),
            Text(rightText),
          ],
        ),
      ),
    );
  }
}
