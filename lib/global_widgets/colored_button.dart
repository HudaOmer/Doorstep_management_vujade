import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
  final Color color;
  final IconData? icon;
  final String? text;
  final void Function() onPressed;
  final double? width;
  final double? height;

  final double? fontSize;
  const ColoredButton(
      {super.key,
      required this.color,
      this.icon,
      this.text,
      required this.onPressed,
      this.width = 0.8,
      this.height = 50,
      this.fontSize = 18});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: MediaQuery.of(context).size.width * width!,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) Icon(icon!, color: Colors.white, size: 30),
            if (icon != null && text != null) const SizedBox(width: 20),
            if (text != null)
              Text(text!,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Saken",
                      fontSize: fontSize,
                      fontWeight: FontWeight.w700)),
          ],
        ),
      ),
    );
  }
}
