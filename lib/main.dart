import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projectjan24/phonelist.dart';
import 'package:projectjan24/productlistwithcustom.dart';

import 'Cities.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>productcustom()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 70, right: 70, top: 70),
                child: Text(
                  "Hello There!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Text(
                  "Automatic identity verification which enable you to verify your identity",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40, right: 40, top: 40),
                child: Image(
                  image: AssetImage("assets/images/projan24women.jpg"),
                  height: 120,
                  width: 120,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(170, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign up'),
                  style: ElevatedButton.styleFrom(minimumSize: Size(170, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


