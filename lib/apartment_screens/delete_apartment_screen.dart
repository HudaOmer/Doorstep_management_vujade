import 'package:doorstep_management_vujade/global_widgets/colored_button.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'apartment_list_screen.dart';

class DeleteApartmentScreen extends StatelessWidget {
  const DeleteApartmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.all(40),
            height: MediaQuery.of(context).size.height * 0.26,
            decoration: BoxDecoration(
              color: contrastColor,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Are You Sure You Want To Delete This Property??',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    ColoredButton(
                      width: 0.15,
                      text: 'NO',
                      fontSize: 12,
                      height: 30,
                      color: contrastColor,
                      onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ApartmentListScreen())),
                    ),
                    const SizedBox(width: 10),
                    ColoredButton(
                      width: 0.15,
                      text: 'YES',
                      fontSize: 12,
                      height: 30,
                      color: mainColor,
                      onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ApartmentListScreen())),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
