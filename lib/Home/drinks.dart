import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Routing/router.dart';

class Drinks extends StatelessWidget {
  const Drinks({super.key});

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
                // TextButton(
                //     onPressed: () {
                //       GoRouter.of(context).push(RouteNames.snacks);
                //     },
                //     child: const Text(
                //       'Snacks',
                //       style: TextStyle(fontSize: 24, color: Color(0xFFED1B1B)),
                //     )),
                TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(RouteNames.logout);
                    },
                    child: const Text(
                      'LogOut',
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
                    Image.asset('assets/soft drinks.png'),
                    const Text(
                      'Soft Drinks',
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
                    Image.asset('assets/yoghurt.png'),
                    const Text(
                      'Sweet Yoghurt',
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
                    Image.asset('assets/wine.png'),
                    const Text(
                      'Wine',
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
                    Image.asset('assets/beer.png'),
                    const Text(
                      'Beer',
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
