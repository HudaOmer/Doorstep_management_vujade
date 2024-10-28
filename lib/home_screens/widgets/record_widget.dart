import 'package:doorstep_management_vujade/utils/colors.dart';
import 'package:flutter/material.dart';

class RecordWidget extends StatelessWidget {
  final bool isLocked;
  const RecordWidget({super.key, required this.isLocked});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 15),
        Icon(Icons.check_circle, color: isLocked ? contrastColor : mainColor),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(isLocked ? 'Locked' : 'Opened',
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
            const SizedBox(height: 10),
            const Text('Sun, Jul 28',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.w700)),
            const SizedBox(height: 15),
          ],
        ),
      ],
    );
  }
}
