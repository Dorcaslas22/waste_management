import 'package:flutter/material.dart';
import 'package:waste_management/onboarding/screen_onboarding.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Positioned(
              child: Column(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(13, 92, 72, 1),
                          gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(13, 92, 72, 0.6),
                                Color.fromRGBO(59, 122, 71, 0.6),
                                Color.fromRGBO(144, 151, 65, 0.6),
                                Color.fromRGBO(179, 175, 59, 0.6),
                                Color.fromRGBO(255, 193, 69, 0.6),
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomCenter
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/woman1.png"),
                            fit: BoxFit.cover,
                            opacity: 0.4,
                          )
                      ),
                  ),
                ],
              ),
          ),
          Positioned(
            top: 431,
            left: 0,
            child: Container(
              height: 413,
              width: 390,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(48),
                  ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(image: AssetImage("assets/green2.png"),
                    ),
                    SizedBox(height: 10),
                    Text("Welcome to EClean!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(4, 28, 21, 1),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Your eco-friendly companion for \nresponsible waste management.",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(13, 18, 14, 1),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(15,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              color:Color.fromRGBO(13, 92, 70, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => ScreenOnboarding()));
                              },
                              child: const Padding(padding: EdgeInsets.all(10),
                                child: Text("Get Started",
                                  style: TextStyle(
                                    color:Color.fromRGBO(255, 255, 255, 1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
