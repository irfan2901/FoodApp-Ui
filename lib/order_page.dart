import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets.dart';
import 'package:food_app/home_page.dart';
import 'package:food_app/track_order.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: NetworkImage(
                  'https://www.shutterstock.com/image-vector/happy-woman-rejoices-shopping-paper-260nw-2022505622.jpg'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Your order is placed successfully',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'You can track your order from \n track your order button',
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomWidgets.customButton(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TrackOrder(),
                        ),
                      );
                    }, 'Track your order'),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomWidgets.customButton(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    }, 'Cancel order'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
