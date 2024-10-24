import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class ApartmentInsideFieldWidget extends StatelessWidget {
  final String title;
  final String hint;
  const ApartmentInsideFieldWidget(
      {super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: contrastColor),
          borderRadius: BorderRadius.circular(15)),
      width: MediaQuery.of(context).size.width * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(hint, style: const TextStyle(color: Colors.grey))
        ],
      ),
    );
  }
}
