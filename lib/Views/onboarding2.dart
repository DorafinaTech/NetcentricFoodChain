import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../Routing/router.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

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
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back,size: 40,),
                  onPressed: () {
                    GoRouter.of(context).push(RouteNames.onboarding);
                  },
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/fast-delivery.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 9,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Fast Delivery',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Our words in terms of time and consciousness is our integrity',
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Container(
                width: 50,
                height: 50,
                child: ElevatedButton(
                  onPressed: () async {
                    GoRouter.of(context).push(RouteNames.welcomescreen);
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
                    side: const BorderSide(color:  Color(0xFFED1B1B)),
                  ),
                  child: const Text(
                    ' Next',
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
    );
  }
}
