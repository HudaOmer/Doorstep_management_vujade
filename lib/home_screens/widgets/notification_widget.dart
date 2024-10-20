import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class NotificationItem extends StatelessWidget {
  final bool isRead;
  const NotificationItem({super.key, required this.isRead});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 90,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: isRead ? contrastColor : Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, -2)),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 10.0),
                Text('Alert',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: isRead ? Colors.white : Colors.black)),
                const SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                          'You have new weather update for the day yay You have new weather update for the day',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 11,
                              color: isRead ? Colors.white : Colors.black)),
                    ),
                    Text('10m ago',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(fontSize: 11, color: mainColor)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NotificationHomeItem extends StatelessWidget {
  const NotificationHomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 90,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, -2)),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 10.0),
                Row(
                  children: const [
                    Icon(Icons.notifications, size: 20),
                    Text('Notifications',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Expanded(
                      child: Text(
                          'You have new weather update for the day yay You have new weather update for the day',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(fontSize: 11, color: Colors.black)),
                    ),
                    Text('more',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(fontSize: 11, color: contrastColor)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
