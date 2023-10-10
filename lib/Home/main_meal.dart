import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Routing/router.dart';

class MainMeal extends StatelessWidget {
  const MainMeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: const TextStyle(fontSize: 24.0),
              decoration: InputDecoration(
                labelText: "Search",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // TextButton(
                //     onPressed: () {
                //       GoRouter.of(context).push(RouteNames.mainmeal);
                //     },
                //     child: const Text(
                //       'Main Meal',
                //       style: TextStyle(fontSize: 24, color: Color(0xFFED1B1B)),
                //     )),
                TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(RouteNames.snacks);
                    },
                    child: const Text(
                      'Snacks',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color(0xFFED1B1B)),
                    )),
                TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(RouteNames.drinks);
                    },
                    child: const Text(
                      'Drinks',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color(0xFFED1B1B)),
                    )),
              ],
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 12,
                    left: 10), // Adjust the bottom padding as needed
                child: Column(
                  children: [
                    Image.asset('assets/meal.png'),
                    const Text(
                      'Garnished Jellof Rice & Chicken',
                      style: TextStyle(fontSize: 16, color: Color(0xFFED1B1B)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 12,
                    left: 10), // Adjust the bottom padding as needed
                child: Column(
                  children: [
                    Image.asset('assets/rice and stew .png'),
                    const Text(
                      'Rice and Stew with Tilapia Fish',
                      style: TextStyle(fontSize: 16, color: Color(0xFFED1B1B)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 12,
                    left: 10), // Adjust the bottom padding as needed
                child: Column(
                  children: [
                    Image.asset('assets/soup .png'),
                    const Text(
                      'Rice and Stew with Tilapia Fish',
                      style: TextStyle(fontSize: 16, color: Color(0xFFED1B1B)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 12,
                    left: 10), // Adjust the bottom padding as needed
                child: Column(
                  children: [
                    Image.asset('assets/pepper.jpeg'),
                    const Text(
                      'Chicken Pepper Soup',
                      style: TextStyle(fontSize: 16, color: Color(0xFFED1B1B)),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
