import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'widgets/notification_widget.dart';

String title = 'Notifications      ';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Center(
            child: Text(title,
                style: mainTitle),
          ),
          leading: const Icon(Icons.arrow_back_ios, color: Colors.black)),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            SizedBox(height: 10),
            NotificationItem(isRead: true),
            NotificationItem(isRead: false),
            NotificationItem(isRead: false),
          ],
        ),
      ),
    );
  }
}
