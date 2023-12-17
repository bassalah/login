

import 'package:flutter/material.dart';

class fstScreen extends StatelessWidget {
  const fstScreen (TextEditingController ema,TextEditingController pass, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("welcome to splash food app"),
            Text("any receipe you want"),
          ],
        ),

      )
    );


  }

}
