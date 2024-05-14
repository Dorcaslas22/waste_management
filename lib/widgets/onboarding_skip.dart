import 'package:flutter/material.dart';
import 'package:waste_management/onboarding/onboarding_controller.dart';

class onboardingSkip extends StatelessWidget {
  const onboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: MediaQuery.of(context).padding.bottom,
        left: MediaQuery.of(context).padding.left,
        child: TextButton(
          onPressed: (){
            OnboardingController.instance.skipPage();
          },
          child: Text("Skip",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(106, 106, 106, 1)
            ),
          ),));
  }
}