import 'package:flutter/material.dart';

class ApartmentInsideFieldWidget extends StatelessWidget {
  final String title;
  final String hint;
  const ApartmentInsideFieldWidget(
      {super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      width: MediaQuery.of(context).size.width * 0.36,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 12)),
          Text(hint, style: const TextStyle(color: Colors.grey, fontSize: 10))
        ],
      ),
    );
  }
}
