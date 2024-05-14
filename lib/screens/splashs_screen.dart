import 'dart:async';

import 'package:flutter/material.dart';
import 'package:waste_management/onboarding/onboardingscreens.dart';
import 'package:waste_management/onboarding/screen_onboarding.dart';
import 'package:waste_management/onboarding/welcome.dart';


class SplashsScreen extends StatefulWidget {
  const SplashsScreen({super.key});

  @override
  State<SplashsScreen> createState() => _SplashsScreenState();

  static void remove() {}
}

class _SplashsScreenState extends State<SplashsScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),
            () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => Welcome(),
            ))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(13, 92, 72, 1),
                Color.fromRGBO(59, 122, 71, 1),
                Color.fromRGBO(144, 151, 65, 1),
                Color.fromRGBO(179, 175, 59, 1),
                Color.fromRGBO(255, 193, 69, 1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo3.png"),
              SizedBox(height: 5),
              Text("EClean", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              ),
              // SizedBox(height: 150),
              // Text("Get Rid, Get Green, Go Clean!",
              //   style: TextStyle(
              //     fontWeight: FontWeight.w400,
              //     fontSize: 16,
              //     color: Color.fromRGBO(3, 18, 14, 1),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );

  }
}