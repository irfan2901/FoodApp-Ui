import 'package:flutter/material.dart';
import 'package:food_app/create_account.dart';
import 'package:food_app/custom_widgets.dart';
import 'package:food_app/login_page.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            child: const Text(
              'Login',
              style: TextStyle(
                  fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            child: const Image(
              image: AssetImage('assets/image2.jpg'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Find foods you love',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Discover the best foods from \n over 1,000 restaurants',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomWidgets.customButton(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreateAccount(),
                      ),
                    );
                  }, 'Create Account'),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomWidgets.customButton(() {}, 'Signin with Facebook')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
