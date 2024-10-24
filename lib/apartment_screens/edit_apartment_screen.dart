import 'package:flutter/material.dart';
import '../global_widgets/colored_button.dart';
import 'apartment_list_screen.dart';
import '../utils/colors.dart';
import '../global_widgets/custom_appbar.dart';
import 'widgets/apartment_field_widget.dart';
import 'widgets/apartment_inside_field_widget.dart';
import 'widgets/increase_decrease_widget.dart';

class EditApartmentScreen extends StatelessWidget {
  const EditApartmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: contrastColor,
      appBar: CustomAppBar(
        color: Colors.black26,
        image: 'assets/images/buildings.jpeg',
        arrowColor: mainColor,
        onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const ApartmentListScreen())),
        actions: [
          Icon(Icons.camera_alt_outlined, color: mainColor),
          const SizedBox(width: 5),
        ],
        body: [
          const Center(
            child: Text('',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700)),
          ),
          const SizedBox(height: 80),
          Container(height: 20)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ApartmentFieldWidget(
                          size: 0.35,
                          label: 'Estate Name',
                          isObsecure: false,
                          hint: 'Name'),
                      SizedBox(width: 20),
                      ApartmentFieldWidget(
                          size: 0.3,
                          label: 'Price',
                          isObsecure: false,
                          hint: '0.000 SAR'),
                    ],
                  ),
                  const ApartmentFieldWidget(
                      size: 0.35,
                      label: 'Location',
                      isObsecure: false,
                      hint: 'location'),
                  const ApartmentFieldWidget(
                      size: 0.8,
                      minLines: 3,
                      maxLines: 5,
                      isObsecure: false,
                      label: 'Description',
                      hint: 'Add your description'),
                  const SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IncreaseDecreaseWidget(data: 'Bedrooms'),
                          IncreaseDecreaseWidget(data: 'Loungs'),
                          IncreaseDecreaseWidget(data: 'Toilts'),
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ApartmentInsideFieldWidget(
                                title: 'Category', hint: 'Families'),
                            ApartmentInsideFieldWidget(
                                title: 'Space', hint: '120 m2'),
                            ApartmentInsideFieldWidget(
                                title: 'Coverage', hint: '5G'),
                          ])
                    ],
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: ColoredButton(
                        text: 'Add', color: contrastColor, onPressed: () {}),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
