import 'package:flutter/material.dart';

import 'login.dart';
void main(){
  runApp(login());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );


  }

}
