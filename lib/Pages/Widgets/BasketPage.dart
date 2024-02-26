import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasketPage extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;

  const BasketPage({Key? key, required this.cartItems}) : super(key: key);

  double getIngredientCost(String ingredient) {
    switch (ingredient) {
      case 'Cheese':
      case 'Origan':
      case 'Olive':
      case 'Mozzarella':
        return 1;
      default:
        return 0;
    }
  }

  double calculateTotal() {
    double total = 0;
    for (var item in cartItems) {
      total += double.parse(item['price'].replaceAll('\$', ''));

      if (item['ingredients'] != null) {
        for (var ingredient in item['ingredients']) {
          total += getIngredientCost(ingredient);
        }
      }
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "images/logo.png",
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            const Text(
              ' FLAVOURITE PIZZA  ',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BasketPage(cartItems: cartItems),
                      ),
                    );
                  },
                  icon: const Icon(
                    CupertinoIcons.cart,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Contenu du panier"),
          ),
          for (var item in cartItems)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(
                    item['image'],
                    width: 50,
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    item['name'],
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    item['price'],
                    style: const TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ],
              ),
            ),
          // Montant total
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Montant total: \$${calculateTotal().toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
