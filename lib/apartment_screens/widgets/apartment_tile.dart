import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../global_widgets/apartment_item.dart';
import '../../global_widgets/custom_icon.dart';
import '../../utils/colors.dart';
import '../delete_apartment_screen.dart';
import '../edit_apartment_screen.dart';

class ApartmentTileWidget extends StatefulWidget {
  const ApartmentTileWidget({super.key});

  @override
  State<ApartmentTileWidget> createState() => _ApartmentTileWidgetState();
}

class _ApartmentTileWidgetState extends State<ApartmentTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
                onPressed: (context) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditApartmentScreen()));
                },
                backgroundColor: mainColor,
                foregroundColor: Colors.white,
                icon: Icons.edit),
            SlidableAction(
                onPressed: (context) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DeleteApartmentScreen()));
                },
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    topRight: Radius.circular(15)),
                backgroundColor: contrastColor,
                foregroundColor: Colors.white,
                icon: Icons.delete),
          ],
        ),
        child: Container(
          width: 450,
          height: 120,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(15), right: Radius.circular(1)),
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
              SizedBox(width: 15),
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
      ),
    );
  }
}
