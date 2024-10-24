import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class LockWidget extends StatelessWidget {
  final bool isLocked;
  const LockWidget({super.key, required this.isLocked});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: isLocked ? Colors.white : contrastColor,
        border: Border.all(color: isLocked ? mainColor : contrastColor),
      ),
      child: Icon(isLocked ? Icons.lock_outline_rounded : Icons.lock_open,
          color: isLocked ? mainColor : Colors.white, size: 60),
    );
  }
}
