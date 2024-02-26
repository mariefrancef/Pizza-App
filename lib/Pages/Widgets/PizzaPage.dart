import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'BasketPage.dart';

class PizzaPage extends StatefulWidget {
  final String name;
  final String ingredients;
  final String price;
  final String image;
  final int itemId;

  const PizzaPage({
    Key? key,
    required this.itemId,
    required this.name,
    required this.ingredients,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  State<PizzaPage> createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {
  List<String> selectedIngredients = [];
  List<Map<String, dynamic>> cartItems = [];

  void addToCart() {
    // Créez un objet représentant la pizza avec les informations nécessaires
    Map<String, dynamic> pizzaToAdd = {
      'name': widget.name,
      'price': widget.price,
      'image': widget.image,
      'ingredients': selectedIngredients,
    };

    setState(() {
      cartItems.add(pizzaToAdd);
    });
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
                    addToCart();
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                widget.image,
                width: 400,
                height: 300,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Ingredients: ${widget.ingredients}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Price: ${widget.price}',
                    style: const TextStyle(fontSize: 30, color: Colors.red),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Ingredients:',
                      style: TextStyle(fontSize: 25),
                    ),
                    for (var ingredient in [
                      'Cheese add \$1',
                      'Origan add \$1',
                      'Olive add \$1',
                      'Mozzarella add \$1',
                    ])
                      CheckboxListTile(
                        title: Text(ingredient),
                        value: selectedIngredients.contains(ingredient),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value != null) {
                              if (value) {
                                selectedIngredients.add(ingredient);
                              } else {
                                selectedIngredients.remove(ingredient);
                              }
                            }
                          });
                        },
                      ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 150.0),
                padding: const EdgeInsets.all(15),
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
                    addToCart();
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
                    size: 40,
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
