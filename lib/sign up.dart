
import 'package:flutter/material.dart';
import 'package:login/login.dart';


class signUp extends StatefulWidget {
   signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
 late  String email;

late  String password;

  TextEditingController signEmail=TextEditingController();
 TextEditingController signPassword=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(

                decoration: InputDecoration(
                  hintText: "enter first name",
                  labelText: "name",
                  prefixIcon: Icon(Icons.person_rounded,),

                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(

                decoration: InputDecoration(
                  hintText: "enter last name",
                  labelText: "last name",

                  border: OutlineInputBorder(),
                ),
              ),
              Text("sign up",style: TextStyle(fontSize:30,fontWeight:FontWeight.bold,)),
              SizedBox(height: 20),
              TextFormField(
                controller: signEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "enter your email",
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),

                ),),

              SizedBox(height: 20),
              TextFormField(
                controller: signPassword,
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
                    Navigator.push(context, MaterialPageRoute(builder:(builder)=>login()));
                  },
                  child: Text("sign up",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20),),),
              ),

              Row(children: [
                Text("already have account"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(builder)=>login()));
                }, child: Text("login"))

              ],)

            ])


    );
  }
}
