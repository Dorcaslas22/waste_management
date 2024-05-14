import 'package:flutter/material.dart';
import 'package:waste_management/onboarding/onboarding_controller.dart';

class onboardingNextButton extends StatelessWidget {
  const onboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).padding.bottom,
      right: MediaQuery.of(context).padding.right,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: Color.fromRGBO(13, 92, 70, 1),
        ),
        child:Icon(Icons.arrow_forward_ios,color: Colors.white,),

      ),
    );
  }
}