
import 'package:flutter/material.dart';
import 'package:login/second.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
 late String email;
 late String password;
  TextEditingController data=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("login",style: TextStyle(fontSize:30,fontWeight:FontWeight.bold,)),
      SizedBox(height: 20),
            TextFormField(
              controller: data,
              keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "enter your email",
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),

                ),),

            SizedBox(height: 20),
             TextFormField(
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
                onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder:(builder)=>sec(data)));
                },
              child: Text("login",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20),),),
            ),

           Row(children: [
             Text("dont have account"),
             TextButton(onPressed: (){

             }, child: Text("sign up"))

      ],)

])


    );
  }
}
