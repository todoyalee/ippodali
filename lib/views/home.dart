import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              centerTitle: true,
              title: Text("VOLG",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times')),
            ),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      "images/willpower.jpg",
                      fit: BoxFit.cover,
                      scale: 2,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    /*
                    Image.asset("images/preseverance.jpg",
                        fit: BoxFit.cover, scale: 10),
                        */
                    AnimatedTextKit(animatedTexts: [
                      WavyAnimatedText("Hard work always pays off  ",
                          textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red))
                    ])
                  ],
                ),
              ),
            )));
  }
}
