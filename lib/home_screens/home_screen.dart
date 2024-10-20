import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../utils/colors.dart';
import '../global_widgets/apartment_item.dart';
import 'widgets/notification_widget.dart';

double appbarheight = 80;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: appbarheight,
        iconTheme: IconThemeData(color: contrastColor),
        backgroundColor: Colors.white,
        leading: Row(
          children: const [
            SizedBox(width: 25),
            Icon(Icons.menu, size: 30),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.05),
            child: Icon(Icons.account_circle, color: mainColor, size: 40),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NotificationHomeItem(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Scheduled Requests',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: mainColor),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    ApatrmentItem(isWide: false),
                    ApatrmentItem(isWide: false)
                  ],
                )),
            const SizedBox(height: 30),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: contrastColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.home, color: Colors.white),
                      const Text('List of Apartments',
                          style: TextStyle(color: Colors.white)),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                      const Icon(Icons.arrow_forward_ios, color: Colors.white)
                    ])),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Performance',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      PerformanceWidget(performance: 'Complete', value: 5),
                      SizedBox(height: 10),
                      PerformanceWidget(performance: 'Patchy', value: 1),
                    ],
                  ),
                  CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 10.0,
                    animation: true,
                    percent: 0.75,
                    progressColor: mainColor,
                    center: Text("75%",
                        style: TextStyle(
                            fontSize: 25,
                            color: mainColor,
                            fontWeight: FontWeight.w700)),
                    circularStrokeCap: CircularStrokeCap.round,
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class PerformanceWidget extends StatelessWidget {
  final String performance;
  final int value;
  const PerformanceWidget({
    super.key,
    required this.performance,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            performance,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w700, color: Colors.grey),
          ),
          Text(
            value.toString(),
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
