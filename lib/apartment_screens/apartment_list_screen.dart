import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../utils/colors.dart';
import 'widgets/apartment_tile.dart';

class ApartmentListScreen extends StatefulWidget {
  const ApartmentListScreen({super.key});

  @override
  State<ApartmentListScreen> createState() => _ApartmentListScreenState();
}

class _ApartmentListScreenState extends State<ApartmentListScreen> {
  final List<Map<String, String>> contacts = [
    {'name': 'Alice', 'phone': '123-456-7890'},
    {'name': 'Bob', 'phone': '234-567-8901'},
    {'name': 'Charlie', 'phone': '345-678-9012'},
  ];

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ApartmentTileWidget(),
            const SizedBox(height: 40),
            ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return Slidable(
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content:
                                    Text('Calling ${contacts[index]['name']}')),
                          );
                        },
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        icon: Icons.call,
                        label: 'Call',
                      ),
                      SlidableAction(
                        onPressed: (context) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content:
                                    Text('Deleted ${contacts[index]['name']}')),
                          );
                        },
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text(contacts[index]['name']!),
                    subtitle: Text(contacts[index]['phone']!),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
