import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Forgot Password',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Please enter your email to receive a link \n to create a new password via email',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomWidgets.customTextField('Email'),
          const SizedBox(
            height: 20,
          ),
          CustomWidgets.customButton(() {}, 'Send')
        ],
      ),
    );
  }
}
