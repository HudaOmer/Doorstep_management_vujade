import 'package:flutter/material.dart';
import '../global_widgets/colored_button.dart';
import '../utils/colors.dart';
import 'verification_screen.dart';
import 'widgets/otp_widget.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: contrastColor),
        backgroundColor: Colors.white,
        leading: GestureDetector(
            child: const Icon(Icons.arrow_back_ios),
            onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const VerificationScreen()))),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            const Center(
                child:
                    Text('OTP Verification', style: TextStyle(fontSize: 26))),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            const Text('Enter The Verification Code',
                style: TextStyle(fontSize: 20, color: Colors.grey)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            const OTPWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            ColoredButton(color: mainColor, text: 'Done', onPressed: () {}),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
