import 'package:flutter/material.dart';
import 'package:login/fstscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs =await SharedPreferences.getInstance();
  var email=prefs.getString("email");
  print(email);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: email==null?sec(email):login(),));
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
