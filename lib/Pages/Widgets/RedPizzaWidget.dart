import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pizzapp/Pages/Widgets/PizzaPage.dart';
import 'MenuPizza.dart';

class RedPizzaWidget extends StatelessWidget {
  const RedPizzaWidget({super.key});

  void handleBasketIconClick(BuildContext context, int itemId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PizzaPage(
          itemId: pizzaRedBase[itemId]['itemId'],
          name: pizzaRedBase[itemId]['name'],
          ingredients: pizzaRedBase[itemId]['ingredients'],
          price: pizzaRedBase[itemId]['price'],
          image: pizzaRedBase[itemId]['image'],
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
                          "images/pizza_rouge.png",
                          height: 130,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "If You Want Red Base Pizza",
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
                          "images/pizza_jambonSerrano.png",
                          height: 115,
                        ),
                      ),
                      const Text(
                        "Serrano Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Serrano",
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
                              fontSize: 20,
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
                                  name: 'Serrano',
                                  ingredients: 'Tomatoes, Cheese, Serrano Ham',
                                  price: '\$15',
                                  image: 'images/pizza_jambonSerrano.png',
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
                          "images/NEWpizza_veggie.png",
                          height: 115,
                        ),
                      ),
                      const Text(
                        "Pepper Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      const Text(
                        "Taste Our Pepper",
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
                              fontSize: 20,
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
                                  name: 'Pepper Pizza',
                                  ingredients:
                                      'Tomatoes, Cheese, Peppers, Olive',
                                  price: '\$15',
                                  image: 'images/NEWpizza_veggie.png',
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
                          "images/NEWpizza_veggie2.png",
                          height: 115,
                        ),
                      ),
                      const Text(
                        "Veggie Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Veggie",
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
                              fontSize: 20,
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
                                  name: 'Veggie Pizza',
                                  ingredients: 'Tomatoes, Cheese, Vegetables',
                                  price: '\$15',
                                  image: 'images/NEWpizza_veggie2.png',
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
                          "images/pizza_jambon_ananas.png",
                          height: 115,
                        ),
                      ),
                      const Text(
                        "Pinneaple Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Pinneaple",
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
                              fontSize: 20,
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
                                  name: 'Pinneaple Pizza',
                                  ingredients:
                                      'Tomatoes, Cheese, Pinneaple, Ham',
                                  price: '\$15',
                                  image: 'images/pizza_jambon_ananas.png',
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
                          "images/NEWpizza_basilic.png",
                          height: 115,
                        ),
                      ),
                      const Text(
                        "Basilic Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Basilic",
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
                              fontSize: 20,
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
                                  name: 'Basilic Pizza',
                                  ingredients:
                                      'Tomatoes, Cheese, Olive, Basilic',
                                  price: '\$15',
                                  image: 'images/NEWpizza_basilic.png',
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
                          "images/pizza_curry.png",
                          height: 115,
                        ),
                      ),
                      const Text(
                        "Curry Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Curry",
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
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              int itemId = 5;
                              handleBasketIconClick(context, itemId);

                              MaterialPageRoute(
                                builder: (context) => const PizzaPage(
                                  itemId: 5,
                                  name: 'Curry Pizza',
                                  ingredients:
                                      'Tomatoes, Cheese, Chicken, Pepper, Curry',
                                  price: '\$15',
                                  image: 'images/pizza_curry.png',
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
                          "images/pizza_reine.png",
                          height: 115,
                        ),
                      ),
                      const Text(
                        "Regina Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Regina",
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
                            "\$10",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              int itemId = 6;
                              handleBasketIconClick(context, itemId);

                              MaterialPageRoute(
                                builder: (context) => const PizzaPage(
                                  itemId: 6,
                                  name: 'Regina Pizza',
                                  ingredients:
                                      'Tomatoes, Cheese, Ham, Mushrooms',
                                  price: '\$10',
                                  image: 'images/pizza_reine.png',
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
          ],
        ),
      ),
    );
  }
}
