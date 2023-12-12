

import 'package:flutter/material.dart';

class sec extends StatelessWidget {
  const sec (TextEditingController data, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("welcome to  food app"),
            Text("any receipe you want"),
          ],
        ),

      )
    );


  }

}
