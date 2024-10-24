import 'package:flutter/material.dart';
import '../../global_widgets/apartment_item.dart';
import '../../global_widgets/custom_icon.dart';
import '../../utils/colors.dart';
import '../../chat_screens/chat_screen.dart';

class ReqApatrmentItem extends StatelessWidget {
  final bool isFav;
  const ReqApatrmentItem({super.key, required this.isFav});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 120,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, -2)),
          ],
        ),
        child: Row(
          children: [
            const CustomIcon(
                height: 80, iconName: 'assets/images/buildings.jpeg'),
            const SizedBox(width: 15),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AL Rayyan', style: TextStyle(fontSize: 13)),
                Text('2,000 SAR', style: TextStyle(fontSize: 13)),
                LocationItem(location: 'Sudan')
              ],
            ),
            const SizedBox(width: 15),
            Row(
              children: [
                GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatScreen())),
                    child: Icon(Icons.message_rounded, color: mainColor)),
                const SizedBox(width: 10),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(backgroundColor: contrastColor),
                    child: const Text('Reject',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
