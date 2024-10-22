import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class BarWidget extends StatelessWidget {
  final double percentage;
  const BarWidget({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 5,
        width: MediaQuery.of(context).size.width * 0.7 * percentage,
        decoration: BoxDecoration(
            color: mainColor, borderRadius: BorderRadius.circular(15)));
  }
}
