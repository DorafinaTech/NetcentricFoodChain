import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../Routing/router.dart';

class LogInScreen2 extends StatelessWidget {
  const LogInScreen2({super.key});

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
                      const SizedBox(height: 20),
                      const Center(
                        child: Text(
                          'Thank You!',
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
                            SizedBox(
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
                                  backgroundColor: const Color(0xFFED1B1B),
                                  side: const BorderSide(
                                    color: Color(0xFFED1B1B),
                                  ),
                                ),
                                child: const Text(
                                  'LogIn',
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
                    ]
                ),
              ),
            ),
          ]
      ),
    );
  }
}
