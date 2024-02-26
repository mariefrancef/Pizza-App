import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MenuPizza.dart';

class PizzaDetails extends StatelessWidget {
  const PizzaDetails({Key? key, required this.itemId}) : super(key: key);

  final int itemId;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? selectedPizza;
    for (var pizza in pizzaRedBase) {
      if (pizza['itemId'] == itemId) {
        selectedPizza = pizza;
        break;
      }
    }

    if (selectedPizza == null) {
      return const Center(child: Text('Pizza not found'));
    }

    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.local_pizza),
          title: Text(selectedPizza['name']),
        ),
        const SizedBox(height: 8),
        Image.asset(
          selectedPizza['image'],
          width: 200,
          height: 200,
        ),
      ],
    );
  }
}
