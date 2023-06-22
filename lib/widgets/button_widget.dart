import 'package:flutter/material.dart';

class CustomButon extends StatelessWidget {
  CustomButon(
      {this.onTap,
      required this.text,
      required this.isLoading,
      required this.buttonColor,
      required this.textColor});
  VoidCallback? onTap;
  String text;
  bool isLoading = false;
  Color buttonColor;
  Color textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: MediaQuery.of(context).size.width * 0.4,
        height: 50,
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: textColor),
                ),
        ),
      ),
    );
  }
}
