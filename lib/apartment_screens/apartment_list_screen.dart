import 'package:flutter/material.dart';
import '../home_screens/navigation_screen.dart';
import '../utils/colors.dart';
import 'widgets/apartment_tile.dart';

class ApartmentListScreen extends StatefulWidget {
  const ApartmentListScreen({super.key});

  @override
  State<ApartmentListScreen> createState() => _ApartmentListScreenState();
}

class _ApartmentListScreenState extends State<ApartmentListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: contrastColor),
        backgroundColor: Colors.white,
        title: const Center(
          child: Text('Apartments List     ', style: TextStyle(fontSize: 20)),
        ),
        leading: GestureDetector(
            onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const NavigationScreen())),
            child: const Icon(Icons.arrow_back_ios)),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ApartmentTileWidget(),
            ApartmentTileWidget(),
            ApartmentTileWidget(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
