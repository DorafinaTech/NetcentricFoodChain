import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Routing/router.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: Text(
                  'Create New Account',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
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
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
                    ),
                    alignLabelWithHint: false,
                    filled: true,
                    contentPadding: const EdgeInsets.fromLTRB(12, 16, 12, 8), // Adjust the values as needed
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 100,
                height: 50,
                child: ElevatedButton(
                  onPressed: () async {
                    GoRouter.of(context).push(RouteNames.loginscreen);
                  },
                  style: OutlinedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          30,
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
              const SizedBox(height: 20),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 16),
              //   child: TextButton(
              //
              //     onPressed: (){
              //       GoRouter.of(context).push(RouteNames.loginscreen);
              //     },
              //     child: RichText(
              //       text: const TextSpan(
              //           text: 'Already Have An Account? ',
              //           style: TextStyle(
              //             color: Colors.black,
              //             fontFamily: 'DM Sans',
              //             fontSize: 16,
              //           ),
              //           children: [
              //             TextSpan(
              //               text: 'Log in ',
              //               style: TextStyle(
              //                   color: Color(0xFFED1B1B),
              //             ),
              //             )
              //           ]),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
