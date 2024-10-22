import 'package:flutter/material.dart';
import '../../global_widgets/apartment_item.dart';
import '../../global_widgets/custom_icon.dart';

class ApartmentTileWidget extends StatelessWidget {
  const ApartmentTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: 450,
        height: 120,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(
              top: Radius.circular(30), bottom: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: const Row(
          children: [
            CustomIcon(height: 130, iconName: 'assets/images/buildings.jpeg'),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AL Rayyan', style: TextStyle(fontSize: 13)),
                Text('2,000 SAR', style: TextStyle(fontSize: 13)),
                LocationItem(location: 'Sudan')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
