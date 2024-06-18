import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ippodali/routes/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.white,
        home: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'images/willpower.jpg',
                    fit: BoxFit.cover,
                    scale: 3.5,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Hard Work!',
                          textStyle: const TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Times New Roman',
                            fontWeight: FontWeight.w500,
                          ),
                          speed: const Duration(
                            milliseconds: 250,
                          )),
                    ],
                    onTap: () {
                      debugPrint("Welcome back!");
                    },
                    isRepeatingAnimation: true,
                    totalRepeatCount: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 32,
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.email),
                            hintText: 'Enter Your Username/Email',
                            labelText: 'Email or Username',
                          ),
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.lock),
                            hintText: 'Enter Your Password',
                            labelText: 'Password',
                          ),
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, routes.home);
                          },
                          child: const Text(
                            'Forgot Password?',
                          ),
                        ),
                        TextButton.icon(
                          onPressed: (() {
                            Navigator.pushNamed(context, routes.login);
                          }),
                          icon: const Icon(Icons.login),
                          label: Container(
                            alignment: Alignment.center,
                            width: 150,
                            height: 35,
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Text('Don\'t have an account?'),
                            TextButton(
                              onPressed: (() {
                                Navigator.pushNamed(
                                  context,
                                  routes.login,
                                );
                              }),
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
