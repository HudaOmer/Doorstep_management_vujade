import 'package:doorstep_management_vujade/global_widgets/apartment_item.dart';
import 'package:flutter/material.dart';
import '../models/tenant.dart';
import '../utils/colors.dart';

double appbarheight = 80;

class TenantDataScreen extends StatelessWidget {
  const TenantDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: appbarheight,
        iconTheme: IconThemeData(color: contrastColor),
        backgroundColor: Colors.white,
        title: const Center(
            child: Text('Tenant Data     ', style: TextStyle(fontSize: 20))),
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(radius: 30),
                SizedBox(width: 10),
                Column(
                  children: [Text('SomeOne'), LocationItem(location: 'Riyadh')],
                )
              ],
            ),
            DataRecordWidget(
                data: 'Property Name', value: dummyTenantData.propertyName),
            DataRecordWidget(
                data: 'Apartment Number',
                value: dummyTenantData.propertyNumber.toString()),
            DataRecordWidget(
                data: 'Payment System', value: dummyTenantData.paymentSystem),
            DataRecordWidget(
                data: 'Rent Value',
                value: dummyTenantData.rentValue.toString()),
            DataRecordWidget(
                data: 'Begining of lease',
                value: dummyTenantData.contractStartDate),
            DataRecordWidget(
                data: 'End of Contract',
                value: dummyTenantData.contractEndDate),
            DataRecordWidget(
                data: 'Contract Duration',
                value: '${dummyTenantData.contractDuration}Months'),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text('Contact Information', style: TextStyle(color: mainColor)),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 15),
                    const Icon(Icons.email_outlined),
                    const SizedBox(width: 10),
                    Text(dummyTenantData.contactInfo,
                        style: const TextStyle(fontSize: 12)),
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(width: 15),
                    Icon(Icons.call_outlined),
                    SizedBox(width: 10),
                    Text('+249', style: TextStyle(fontSize: 12)),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class DataRecordWidget extends StatelessWidget {
  final String data;
  final String value;
  const DataRecordWidget({super.key, required this.data, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Text(data),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child:
              Text(value, style: const TextStyle(fontWeight: FontWeight.w700)),
        )
      ],
    );
  }
}
