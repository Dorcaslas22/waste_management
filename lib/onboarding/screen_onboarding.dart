import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste_management/onboarding/onboarding_controller.dart';

import '../signup_screen/register.dart';
import '../widgets/onboarding_nextbutton.dart';
import '../widgets/onboarding_skip.dart';
import '../widgets/screens_onboarding.dart';

class ScreenOnboarding extends StatefulWidget {
  const ScreenOnboarding({super.key});

  @override
  State<ScreenOnboarding> createState() => _ScreenOnboardingState();
}

class _ScreenOnboardingState extends State<ScreenOnboarding> {
  final controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
             onPageChanged: controller.currentPageIndex,
            children: [
              ScreensOnboarding(
                image: 'assets/onboarding1.png',
                title: 'Dispose Waste Responsibly',
                subtitle: 'Conveniently locate nearby recycling \npoints and waste collection centers.',
              ),
              ScreensOnboarding(
                image: 'assets/onboarding2.png',
                title: 'Learn About Waste Sorting',
                subtitle: 'Get tips on reducing waste at home \nand making eco-friendly choices.',
              ),
              Column(
                children: [
                  ScreensOnboarding(
                    image: 'assets/onboarding3.png',
                    title: 'Turn Trash into Treasure',
                    subtitle: 'Earn money by selling the recyclable materials and track your earnings.',
                  ),
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
                                  MaterialPageRoute(builder: (context) =>  Register()));
                            },
                            child: const Padding(padding: EdgeInsets.all(10),
                              child: Text("Create Free Account",
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
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(3, 18, 14, 1),
                      ),
                      ),
                      GestureDetector(
                        onTap: (){
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => const Login()));
                        },
                        child: const Text("Login",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(13, 90, 70, 1),
                          ),),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          onboardingSkip(),
            onboardingNextButton(),
         ],
      ),
    );
  }
}





