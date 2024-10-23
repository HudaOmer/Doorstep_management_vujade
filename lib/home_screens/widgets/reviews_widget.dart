import 'package:flutter/material.dart';
import '../../models/review.dart';
import '../../utils/colors.dart';

class ReviewsWidget extends StatelessWidget {
  final Review review;
  const ReviewsWidget({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(radius: 25, backgroundColor: Colors.orange[100]),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(" ${review.name}", style: const TextStyle(fontSize: 15)),
                  ReviewItem(value: review.review)
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(review.comment,
              maxLines: 3, style: const TextStyle(fontSize: 12)),
          const SizedBox(height: 10),
          Row(children: [
            Container(
              width: 70,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                  )),
              child: TextButton(
                  onPressed: () {},
                  child: const Text('Reply',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400))),
            ),
            const SizedBox(width: 10),
            const Icon(Icons.delete)
          ]),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class ReviewItem extends StatelessWidget {
  final int value;
  const ReviewItem({super.key, required this.value});
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];

    for (int i = 0; i < value; i++) {
      list.add(Icon(Icons.star_rounded, color: mainColor));
    }
    for (int i = 0; i < 5 - value; i++) {
      list.add(Icon(Icons.star_rounded, color: Colors.orange[100]));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: list,
        )
      ],
    );
  }
}

class RequestWidget extends StatelessWidget {
  const RequestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.check_circle_outline_outlined),
            SizedBox(width: 10),
            Text('Request door lock code',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          ],
        )
      ],
    );
  }
}
