import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../Routing/router.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(RouteNames.onboarding2);
                    },
                    child: const Text('SKIP',
                        style:
                            TextStyle(color: Color(0xFF000000), fontSize: 35)),
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/onboard.png',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 20,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Good Service',
                  style: TextStyle(fontSize: 30, color: Color(0xFF000000),fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'With our streamline delivery service, your desires is just a few steps away ', // Replace with your subtitle text
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Container(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      GoRouter.of(context).push(RouteNames.onboarding2);
                    },
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            50,
                          ),
                        ),
                      ),
                      maximumSize: const Size(double.infinity, 50),
                      backgroundColor: const Color(0xFFED1B1B),
                      side: const BorderSide(color: Color(0xFFED1B1B),),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
