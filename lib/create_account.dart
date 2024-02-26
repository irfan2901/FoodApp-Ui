import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets.dart';
import 'package:food_app/login_page.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Create your \n account',
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomWidgets.customTextField('Username'),
            CustomWidgets.customTextField('Email'),
            CustomWidgets.customTextField('Password'),
            CustomWidgets.customTextField('Phone'),
            const SizedBox(
              height: 20,
            ),
            CustomWidgets.customButton(() {}, 'Sign Up'),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'By clicking on Sign up you agree to our \n terms and conditions',
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(fontSize: 20),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        child: const Text(
                          ' Login',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
