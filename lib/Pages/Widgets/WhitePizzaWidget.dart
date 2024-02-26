import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'PizzaPage.dart';
import 'MenuPizza.dart';

class WhitePizzaWidget extends StatelessWidget {
  const WhitePizzaWidget({super.key});

  void handleBasketIconClick(BuildContext context, int itemId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PizzaPage(
          itemId: itemId,
          name: pizzaWhiteBase[itemId]['name'],
          ingredients: pizzaWhiteBase[itemId]['ingredients'],
          price: pizzaWhiteBase[itemId]['price'],
          image: pizzaWhiteBase[itemId]['image'],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            // Single Item
            // for (int i = 0; i < 10; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 230,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images/pizza_blanche.png",
                          height: 130,
                        ),
                      ),
                      const Text(
                        "If You Want White Base Pizza",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 230,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images/pizza_kebab.png",
                          height: 115,
                        ),
                      ),
                      const Text(
                        "Kebab Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Kebab",
                        style: TextStyle(
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$15",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              int itemId = 0;
                              handleBasketIconClick(context, itemId);

                              MaterialPageRoute(
                                builder: (context) => const PizzaPage(
                                  itemId: 0,
                                  name: 'Kebab Pizza',
                                  ingredients: 'Cream, Cheese, Kebab',
                                  price: '\$15',
                                  image: 'images/pizza_kebab.png',
                                ),
                              );
                            },
                            icon: const Icon(
                              CupertinoIcons.cart,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 230,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images/pizza_savoyarde.png",
                          height: 115,
                        ),
                      ),
                      const Text(
                        "Savoyard Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Savoyard",
                        style: TextStyle(
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$20",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              int itemId = 1;
                              handleBasketIconClick(context, itemId);

                              MaterialPageRoute(
                                builder: (context) => const PizzaPage(
                                  itemId: 1,
                                  name: 'Savoyard Pizza',
                                  ingredients:
                                      'Cream, Cheese, Reblochon, Potatoes',
                                  price: '\$20',
                                  image: 'images/pizza_savoyarde.png',
                                ),
                              );
                            },
                            icon: const Icon(
                              CupertinoIcons.cart,
                              color: Colors.red,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 230,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images/pizza_tartiflette.png",
                          height: 115,
                        ),
                      ),
                      const Text(
                        "Tarfilette Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Tartiflette",
                        style: TextStyle(
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$20",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              int itemId = 2;
                              handleBasketIconClick(context, itemId);

                              MaterialPageRoute(
                                builder: (context) => const PizzaPage(
                                  itemId: 2,
                                  name: 'Tartiflette Pizza',
                                  ingredients:
                                      'Cream, Cheese, Tartiflette, Ham',
                                  price: '\$20',
                                  image: 'images/pizza_tartiflette.png',
                                ),
                              );
                            },
                            icon: const Icon(
                              CupertinoIcons.cart,
                              color: Colors.red,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 230,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images/pizza_chevre.png",
                          height: 115,
                        ),
                      ),
                      const Text(
                        "Goat Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Goat",
                        style: TextStyle(
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$15",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              int itemId = 3;
                              handleBasketIconClick(context, itemId);
                              MaterialPageRoute(
                                builder: (context) => const PizzaPage(
                                  itemId: 3,
                                  name: 'Goat Pizza',
                                  ingredients: 'Cream, Cheese, Goat, Arugula',
                                  price: '\$15',
                                  image: 'images/pizza_chevre.png',
                                ),
                              );
                            },
                            icon: const Icon(
                              CupertinoIcons.cart,
                              color: Colors.red,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 230,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images/pizza_moules.png",
                          height: 115,
                        ),
                      ),
                      const Text(
                        "Mussels Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Mussels",
                        style: TextStyle(
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$20",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              int itemId = 4;
                              handleBasketIconClick(context, itemId);

                              MaterialPageRoute(
                                builder: (context) => const PizzaPage(
                                  itemId: 4,
                                  name: 'Mussels Pizza',
                                  ingredients: 'Cream, Cheese, Pepper, Mussels',
                                  price: '\$20',
                                  image: 'images/pizza_moules.png',
                                ),
                              );
                            },
                            icon: const Icon(
                              CupertinoIcons.cart,
                              color: Colors.red,
                              size: 30,
                            ),
                          )
                        ],
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
