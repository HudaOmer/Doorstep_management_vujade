import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'custom_icon.dart';

class LocationItem extends StatelessWidget {
  final String location;
  final Color color;
  const LocationItem(
      {super.key,
      required this.location,
      this.color = const Color.fromARGB(255, 254, 137, 23)});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.location_on_outlined, color: color),
        const SizedBox(width: 4),
        Text(location, style: TextStyle(color: color, fontSize: 12)),
      ],
    );
  }
}

class ApatrmentItem extends StatelessWidget {
  final bool isWide;
  const ApatrmentItem({
    super.key,
    required this.isWide,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
          width: isWide ? 250 : 170,
          height: 240,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15), bottom: Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, -2)),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIcon(
                  height: 120,
                  iconName: isWide
                      ? 'assets/images/buildings.jpeg'
                      : 'assets/images/villa.jpeg'),
              const SizedBox(height: 5),
              const Row(
                children: [
                  SizedBox(width: 5),
                  Text('AL Rayyan', style: TextStyle(fontSize: 12))
                ],
              ),
              const Row(
                children: [
                  Icon(Icons.access_time, size: 20),
                  SizedBox(width: 4),
                  Text('15 Oct, 2024', style: TextStyle(fontSize: 12)),
                ],
              ),
              const LocationItem(location: 'Riyadh')
            ],
          )),
    );
  }
}

class HorizantalApatrmentItem extends StatelessWidget {
  final double? size;
  final Color? color;
  final Color? textColor;

  const HorizantalApatrmentItem(
      {super.key, this.size, this.color, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          width: size ?? 450,
          height: 100,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: color ?? Colors.white,
            borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15), bottom: Radius.circular(15)),
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
                  height: 120, iconName: 'assets/images/buildings.jpeg'),
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('AL Rayyan',
                      style: TextStyle(
                          color: textColor ?? Colors.black, fontSize: 12)),
                  Text('11 AM - 12 AM',
                      style: TextStyle(
                          color: textColor ?? Colors.black, fontSize: 9)),
                  LocationItem(location: 'Sudan', color: textColor ?? mainColor)
                ],
              ),
            ],
          )),
    );
  }
}
