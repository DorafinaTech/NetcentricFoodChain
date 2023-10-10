import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Routing/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(RouteNames.mainmeal);
                    },
                    child: const Text(
                      'Main Meal',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color(0xFFED1B1B)),
                    )),
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
              Column(
                children: [
                  Image.asset('assets/meal.png'),
                  const Text(
                    'Main Meat',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/snack.png'),
                  const Text('Snacks', style: TextStyle(fontSize: 16, color: Colors.black),),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/drink.png'),
                  const Text('Drinks', style: TextStyle(fontSize: 16, color: Colors.black),),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/yoghurt.png'),
                  const Text('Yoghurt', style: TextStyle(fontSize: 16, color: Colors.black),),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
