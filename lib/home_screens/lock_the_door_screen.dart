import 'package:flutter/material.dart';
import '../apartment_screens/widgets/apartment_inside_field_widget.dart';
import '../global_widgets/colored_button.dart';
import '../utils/colors.dart';
import 'widgets/lock_widget.dart';
import 'widgets/record_widget.dart';

double appbarheight = 80;

class LockTheDoorScreen extends StatelessWidget {
  const LockTheDoorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: appbarheight,
        iconTheme: IconThemeData(color: contrastColor),
        backgroundColor: Colors.white,
        title: Center(child: Text('Lock The Door      ', style: mainTitle)),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LockWidget(isLocked: true),
                SizedBox(width: 30),
                LockWidget(isLocked: false)
              ],
            ),
            const SizedBox(height: 20),
            const Text('Record',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
            const SizedBox(height: 20),
            const RecordWidget(isLocked: false),
            const RecordWidget(isLocked: true),
            const RecordWidget(isLocked: false),
            const RecordWidget(isLocked: false),
            const SizedBox(height: 40),
            const Text('Automatic Shutdown',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
            const Row(
              children: [
                Icon(Icons.access_time),
                ApartmentInsideFieldWidget(title: '12:00 PM', hint: 'X'),
              ],
            ),
            const SizedBox(height: 40),
            const Row(
              children: [
                Icon(Icons.check_circle_outline_rounded),
                Text('Alert if door remains open for a long time',
                    style: TextStyle(fontSize: 12)),
              ],
            ),
            Center(
              child: ColoredButton(
                  text: 'Done', color: contrastColor, onPressed: () {}),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
