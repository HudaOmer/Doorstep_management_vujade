import 'package:flutter/material.dart';
import '../utils/colors.dart';

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
        title: const Center(
            child: Text('Search Results     ', style: TextStyle(fontSize: 20))),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                color: mediumGreyColor,
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Text('4 Results Found',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w700)),
                )),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
