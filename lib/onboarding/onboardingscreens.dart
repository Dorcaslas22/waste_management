import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:waste_management/signup_screen/register.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  final introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 24,
          color: Color.fromRGBO(4, 28, 21, 1)
      ),
      bodyTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color.fromRGBO(47, 47, 47, 1),
      ),
      bodyPadding: EdgeInsets.fromLTRB(16, 16, 0, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      key: introKey,
      showBackButton: false,
      showSkipButton: true,
      showDoneButton: false,
      showNextButton: true,
      skip: Text("Skip",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
            color: Color.fromRGBO(106, 106, 106, 1)
        ),
      ),
      back: Text("Back",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(106, 106, 106, 1)
        ),
      ),
      next: Text("Next",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(106, 106, 106, 1)
        ),
      ),
      onDone: (){},
      onSkip: (){},
      pages: [
        PageViewModel(
          title: "Dispose Waste Responsibly",
          body: "Conveniently locate nearby recycling \npoints and waste collection centers.",
          image: Image.asset("assets/onboarding1.png",
            width: MediaQuery.of(context).size.width *0.8,
            height:MediaQuery.of(context).size.height* 0.6,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Learn About Waste Sorting",
          body: "Get tips on reducing waste at home \nand making eco-friendly choices.",
          image: Image.asset("assets/onboarding2.png",
            width: MediaQuery.of(context).size.width *0.8,
            height:MediaQuery.of(context).size.height* 0.6,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Turn Trash into Treasure",
          body: "Earn money by selling the recyclable materials and track your earnings.",
          image: Image.asset("assets/onboarding3.png",
            width: MediaQuery.of(context).size.width *0.8,
            height:MediaQuery.of(context).size.height* 0.6,
          ),
          decoration: pageDecoration,
          footer: Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 50),
            child: MaterialButton(
              color:Color.fromRGBO(13, 92, 70, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));
                },
              child: Text("Create Free Account",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color:Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
