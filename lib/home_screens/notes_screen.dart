import 'package:doorstep_management_vujade/home_screens/widgets/bar_widget.dart';
import 'package:flutter/material.dart';
import '../models/review.dart';
import '../utils/colors.dart';
import 'widgets/reviews_widget.dart';

const String title = 'Notes     ';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: contrastColor),
        backgroundColor: Colors.white,
        title: Center(child: Text(title, style: mainTitle)),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BarWidget(),
            const Text('Opinions',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
            ReviewsWidget(review: user1),
            ReviewsWidget(review: user2),
            // const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
