import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../Routing/router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/background-image.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 40,
                    ),
                    onPressed: () {
                      GoRouter.of(context).push(RouteNames.onboarding2);
                    },
                  ),
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () async {
                              GoRouter.of(context).push(RouteNames.loginscreen);
                            },
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    50,
                                  ),
                                ),
                              ),
                              maximumSize: const Size(double.infinity, 100),
                              backgroundColor: const Color(0xFFFFFFFF),
                              side: const BorderSide(
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Color(0xFFED1B1B),
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () async {
                        GoRouter.of(context).push(RouteNames.signupscreen);
                      },
                      style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50,
                            ),
                          ),
                        ),
                        maximumSize: const Size(double.infinity, 100),
                        backgroundColor: const Color(0xFFED1B1B),
                        side: const BorderSide(
                          color: Color(0xFFED1B1B),
                        ),
                      ),
                      child: const Text(
                        'SignUp',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
