import 'package:doorstep_management_vujade/models/bar_data.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class BarWidget extends StatelessWidget {
  const BarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Statistics',
            style: TextStyle(color: Colors.grey, fontSize: 12)),
        const Text('Customers Review',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
        Bar(data: dummyData[0]),
        Bar(data: dummyData[1]),
        Bar(data: dummyData[2]),
        Bar(data: dummyData[3]),
        const SizedBox(height: 8),
        Row(children: [
          const SizedBox(width: 108),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.55,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('0%'), Text('50%'), Text('100%')],
              ))
        ]),
        const SizedBox(height: 20),
      ],
    );
  }
}

class Bar extends StatelessWidget {
  final BarData data;
  const Bar({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 100, child: Text(data.country)),
          Container(
              height: 10,
              width: MediaQuery.of(context).size.width * 0.55 * data.percentage,
              decoration: BoxDecoration(
                  color: mainColor, borderRadius: BorderRadius.circular(15))),
        ],
      ),
    );
  }
}
