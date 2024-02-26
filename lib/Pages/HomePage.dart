import 'package:flutter/material.dart';
import 'package:flutter_pizzapp/Pages/Widgets/RedPizzaWidget.dart';
import 'package:flutter_pizzapp/Pages/Widgets/WhitePizzaWidget.dart';
import 'Widgets/AppBarWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Custom App Bar Widget
          const AppBarWidget(),

          // Search
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  
                  color: const Color.fromARGB(44, 248, 110, 100),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            hintText: "What would you like to have ?",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.search,
                      color: Colors.red,
                      size: 35,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Popular Item
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Red Base Pizza",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),

          // Popular Items Widget
          const RedPizzaWidget(),

          // Newest Items
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "White Base Pizza",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),

          // Newest Item Widget

          const WhitePizzaWidget(),
        ],
      ),
    );
  }
}
