import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets.dart';
import 'package:food_app/home_page.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track your order'),
      ),
      body: Column(
        children: [
          const Text(
            'Estimated delivery time',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '30 min',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          const SizedBox(
            height: 20,
          ),
          const ListTile(
            leading: Image(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmhtIDaMD4yH_crArBVbJ0hR8jqK8z8eizIw&usqp=CAU'),
            ),
            title: Text(
              'Thar',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Your Driver'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('4.5'),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(
              image: NetworkImage(
                  'https://www.thestatesman.com/wp-content/uploads/2020/04/googl_ED.jpg'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomWidgets.customButton(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          }, 'Go to Home Page'),
        ],
      ),
    );
  }
}
