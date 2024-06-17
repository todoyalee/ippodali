import 'package:flutter/material.dart';

class ippo extends StatefulWidget {
  const ippo({super.key});

  @override
  State<ippo> createState() => _ippoState();
}

class _ippoState extends State<ippo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(),
          body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: 30,
            ),
            CircleAvatar(
              radius: 160,
              backgroundImage: AssetImage('images/i.png'),
            ),
          ])),
    );
  }
}
