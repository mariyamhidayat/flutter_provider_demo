import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttter_provider_demo/login_provider.dart';
import 'package:provider/provider.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email=TextEditingController();
  TextEditingController _password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    // instance
    final provider=Provider.of<LoginProvider>(context);
    return Scaffold(
      backgroundColor: Colors.grey,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                    labelText: 'Email',

                    prefixIcon: Icon(Icons.email),
                  ),
                ),

            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                controller: _password,
                decoration: InputDecoration(
                  hintText: 'Enter password',
                  labelText: 'Email',

                  prefixIcon: Icon(Icons.lock),
                ),
              ),

            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed:(){
              provider.login(_email.text.toString(), _password.text.toString());

            }, child:provider.loading?CircularProgressIndicator(): Text( 'login',textAlign: TextAlign.center, style: TextStyle(fontSize: 30,color: Colors.red),)),
          ]
        ),
      )

    );
  }
}
