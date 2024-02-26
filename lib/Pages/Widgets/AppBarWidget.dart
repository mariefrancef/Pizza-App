import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pizzapp/Pages/Widgets/BasketPage.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 15,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "images/logo.png",
              height: 60,
              width: 60,
            ),
          ),
        ),
        Title(
          color: Colors.red,
          child: const Text(
            "FLAVOURITE PIZZA  ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
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
                      builder: (context) => const BasketPage(cartItems: []),
                    ));
              },
              icon: const Icon(
                CupertinoIcons.cart,
                color: Colors.red,
                size: 30,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
