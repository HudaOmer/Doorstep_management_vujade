import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../global_widgets/custom_appbar.dart';
import '../global_widgets/apartment_item.dart';

class ScheduledRequestsScreen extends StatelessWidget {
  const ScheduledRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: contrastColor,
      appBar: CustomAppBar(
          color: contrastColor,
          title: 'Scheduling    ',
          onTap: () => Navigator.pop(context),
          body: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    SizedBox(width: 20),
                    Text('Oct, 2024',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(height: 40),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WeekdayDateWidget(day: 'sun', date: '3', isToday: false),
                    WeekdayDateWidget(day: 'mon', date: '4', isToday: true),
                    WeekdayDateWidget(day: 'tue', date: '5', isToday: false),
                    WeekdayDateWidget(day: 'wed', date: '6', isToday: false),
                    WeekdayDateWidget(day: 'thu', date: '7', isToday: false),
                    WeekdayDateWidget(day: 'fri', date: '8', isToday: false),
                    WeekdayDateWidget(day: 'sat', date: '9', isToday: false),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              ],
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Ongoing',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TimeWidget(time: '9 AM'),
                                TimeWidget(time: '1 AM'),
                                TimeWidget(time: '11 AM'),
                                TimeWidget(time: '12 PM'),
                                TimeWidget(time: '1 PM'),
                                TimeWidget(time: '2 PM'),
                                TimeWidget(time: '3 PM'),
                                TimeWidget(time: '4 PM'),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              HorizantalApatrmentItem(
                                  textColor: Colors.white,
                                  size: 255,
                                  color: mainColor),
                              const BrWidget(),
                              HorizantalApatrmentItem(
                                  textColor: Colors.white,
                                  size: 255,
                                  color: contrastColor),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WeekdayDateWidget extends StatelessWidget {
  final String day;
  final String date;
  final bool isToday;
  const WeekdayDateWidget(
      {super.key,
      required this.day,
      required this.date,
      required this.isToday});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: mainColor.withOpacity(isToday ? 0.2 : 0.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(day,
              style: TextStyle(
                  color: isToday ? mainColor : Colors.white, fontSize: 13)),
          Text(date,
              style: TextStyle(
                  color: isToday ? mainColor : Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 11)),
        ],
      ),
    );
  }
}

class BrWidget extends StatelessWidget {
  const BrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.grey),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 1,
            decoration: const BoxDecoration(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  final String time;
  const TimeWidget({super.key, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, top: 20),
      child: Text(time,
          style: const TextStyle(
              color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400)),
    );
  }
}
