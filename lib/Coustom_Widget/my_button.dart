import 'package:flutter/material.dart';

class MyAppRoundedButton extends StatelessWidget {
  String title;
  double mWidth;
  double mHeight;
  Color mColor;
  double cornerRadius;
  IconData? icon;
  VoidCallback onTap;

  MyAppRoundedButton({
    required this.title,
    this.mWidth = 300,
    this.mHeight = 50,
    this.mColor = Colors.blue,
    this.cornerRadius = 21,
    this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        onPressed: onTap,
        child: icon == null
            ? Text(title)
            : Row(
          children: [
            Icon(icon),
            Text('Login'),
          ],
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: mColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21))),
      ),
    );
  }
}
