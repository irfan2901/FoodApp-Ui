import 'package:flutter/material.dart';
import 'package:food_app/cart_page.dart';
import 'package:food_app/data.dart';

class ProductPage extends StatelessWidget {
  final String name;
  final String ratings;
  final String foodType;
  final String itemImage;
  final String address;

  const ProductPage({
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
      appBar: AppBar(
        title: Text(name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                itemImage,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              // Display details
              Text(
                name,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
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
                  const Text('(180 ratings)'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(foodType)
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.pin_drop,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(address)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Popular Choices',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotelNames.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                image: NetworkImage(
                                  hotelNames[index]['itemImage'].toString(),
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(hotelNames[index]['name'].toString()),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Full Menu',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(name),
                trailing: const Text('250'),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(name),
                trailing: const Text('180'),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                child: Center(
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartPage(
                                name: name,
                                ratings: ratings,
                                foodType: foodType,
                                itemImage: itemImage,
                                address: address),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
