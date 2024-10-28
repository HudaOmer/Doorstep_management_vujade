import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

import '../../utils/colors.dart';

class IncreaseDecreaseWidget extends StatelessWidget {
  final String data;
  const IncreaseDecreaseWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: 75, child: Text(data, style: const TextStyle(fontSize: 12))),
        SizedBox(
          width: 100,
          child: SpinBox(
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              cursorColor: mainColor,
              spacing: 3,
              textStyle: const TextStyle(color: Colors.grey),
              incrementIcon:
                  Icon(Icons.add_circle, color: contrastColor, size: 30),
              decrementIcon:
                  Icon(Icons.remove_circle, color: contrastColor, size: 30)),
        ),
      ],
    );
  }
}
