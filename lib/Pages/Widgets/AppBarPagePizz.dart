import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pizzapp/Pages/Widgets/BasketPage.dart';

class AppBarPagePizz extends StatelessWidget {
  const AppBarPagePizz({super.key});
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
          ],
        ),
        centerTitle: true,
      ),
    );
  }
}
