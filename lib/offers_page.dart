import 'package:flutter/material.dart';
import 'package:food_app/data.dart';
import 'package:food_app/product_page.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.35,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Latest Offers',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Find discounts offers \nspecial meals and more',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: const Text(
                            'See Restaurants',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1Xm8a1l8p4xuYuAh2Kiuzr69skkX7T5h2vQ&usqp=CAU',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                itemCount: hotelNames.length,
                itemBuilder: (context, index) {
                  String name = hotelNames[index]['name'].toString();
                  String ratings = hotelNames[index]['rating'].toString();
                  String foodType = hotelNames[index]['foodType'].toString();
                  String itemImage = hotelNames[index]['itemImage'].toString();
                  String address = hotelNames[index]['address'].toString();
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductPage(
                              name: name,
                              ratings: ratings,
                              foodType: foodType,
                              itemImage: itemImage,
                              address: address),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: NetworkImage(
                                  hotelNames[index]['itemImage'].toString(),
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              hotelNames[index]['name'].toString(),
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Text(hotelNames[index]['rating'].toString()),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Text('(183 ratings)'),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(hotelNames[index]['foodType'].toString())
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
