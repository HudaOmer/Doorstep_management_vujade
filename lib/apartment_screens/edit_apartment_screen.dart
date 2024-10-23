import 'package:flutter/material.dart';
import '../utils/colors.dart';

class EditApartmentScreen extends StatelessWidget {
  const EditApartmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: contrastColor),
          backgroundColor: Colors.white,
          title: const Center(
              child:
                  Text('Apartments List     ', style: TextStyle(fontSize: 20))),
          leading: const Icon(Icons.arrow_back_ios)),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
