import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Routing/router.dart';


class LoginScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'assets/log-image.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
                    ),
                    alignLabelWithHint: false,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(12, 16, 12, 8), // Adjust the values as needed
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
                    ),
                    alignLabelWithHint: false,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(12, 16, 12, 8), // Adjust the values as needed
                  ),
                ),
              ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      GoRouter.of(context).push(RouteNames.homepage);
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
                      'Login',
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
