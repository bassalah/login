
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'fstscreen.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
 late String email;
 late String password;
  TextEditingController ema =TextEditingController();
 TextEditingController pass=TextEditingController();


 void initState() {
   super.initState();

   isLogin();
 }

 void isLogin()async {
   SharedPreferences sp = await SharedPreferences.getInstance();
   bool? isLogin = sp.getBool('isLogin') ?? false;

   if(isLogin){
     Timer(const Duration(seconds: 5), () {
       Navigator.push(
           context, MaterialPageRoute(builder: (context) => fstScreen(ema,pass)));
     });

   }else{
     Timer(const Duration(seconds: 5), () {
       Navigator.push(
           context, MaterialPageRoute(builder: (context) => login()));
     });

   }
 }


 @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("login",style: TextStyle(fontSize:30,fontWeight:FontWeight.bold,)),
      SizedBox(height: 20),
            TextFormField(
              controller: ema,
              keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "enter your email",
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),

                ),),

            SizedBox(height: 20),
             TextFormField(
               controller: pass,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "enter your password",
                  labelText: "password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(),
                ),
              ),
            SizedBox(height: 20),
            Container(  
              child: MaterialButton(
                color: Colors.white,
                onPressed: () async {


               SharedPreferences pref = await SharedPreferences.getInstance();
                pref.remove("email");
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                   return fstScreen(ema, pass);
                }));
    },
                // Navigator.push(context, MaterialPageRoute(builder:(builder)=>sec(data)));
             //   },
              child: Text("login",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20),),),
            ),

           Row(children: [
             Text("dont have account"),
             TextButton(onPressed: (){

             }, child: Text("sign up"))

      ],),

          ElevatedButton(

           onPressed: () async {
          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.remove("email");
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
            return login();
          }));
        },
        child: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
])


    );
  }
}
