import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets.dart';
import 'package:food_app/order_page.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Delivery Address',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.location_on, size: 40, color: Colors.blue),
                title: Text(
                  '234 Eastern Lane, Orientville, State',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  'Change',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              const SizedBox(
                height: 5,
              ),
              const ListTile(
                leading: Text(
                  'Payment Method',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  'Add new',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomWidgets.listTileWithImage(
                  'https://w7.pngwing.com/pngs/305/719/png-transparent-paytm-ecommerce-shopping-social-icons-circular-color-icon-thumbnail.png',
                  'PayTm',
                  'Select'),
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomWidgets.listTileWithImage(
                  'https://pixlok.com/wp-content/uploads/2021/02/Phonepe-SVG-Icon.jpg',
                  'PhonePe',
                  'Select'),
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomWidgets.listTileWithImage(
                  'https://crushlogo.com/public/uploads/thumbnail/upi-logo-11682658603ysmvuogm9f.png',
                  'UPI',
                  'Select'),
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              const ListTile(
                leading: Text(
                  'Enter coupon',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  'HUNGRY10',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Summary',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CustomWidgets.customListTile('Item Total', 'RS 250'),
              CustomWidgets.customListTile('Delivery Fees', 'Free'),
              CustomWidgets.customListTile('Coupon Discount', 'RS 50'),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: CustomWidgets.customButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderPage(),
                    ),
                  );
                }, 'Send order'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
