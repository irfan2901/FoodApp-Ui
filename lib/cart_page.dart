import 'package:flutter/material.dart';
import 'package:food_app/checkout_page.dart';
import 'package:food_app/custom_widgets.dart';

class CartPage extends StatelessWidget {
  final String name;
  final String ratings;
  final String foodType;
  final String itemImage;
  final String address;

  const CartPage({
    Key? key,
    required this.name,
    required this.ratings,
    required this.foodType,
    required this.itemImage,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    width: 100,
                    height: 100,
                    image: NetworkImage(itemImage),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(name),
                          const SizedBox(
                            width: 3,
                          ),
                          Text('| $foodType'),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(ratings),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text('(250 ratings)')
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.pin_drop),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(address)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            ListTile(
              leading: Text(
                name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: const Text(
                '250',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            ListTile(
              leading: Text(
                name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: const Text(
                '250',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add more foods',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.add)
              ],
            ),
            const SizedBox(
              height: 5,
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
                'Delivery Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Add Note',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.add),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            CustomWidgets.customListTile('Sub Total', 'RS 250'),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            CustomWidgets.customListTile('Delivery Cost', 'Free'),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomWidgets.customButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CheckoutPage(),
                ),
              );
            }, 'Checkout')
          ],
        ),
      ),
    );
  }
}
