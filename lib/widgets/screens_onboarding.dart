import 'package:flutter/material.dart';

class ScreensOnboarding extends StatelessWidget {
  const ScreensOnboarding({
    super.key, required this.image, required this.title, required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image(image: AssetImage(image),
            width: MediaQuery.of(context).size.width *0.8,
            height:MediaQuery.of(context).size.height* 0.6,
          ),
          Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Color.fromRGBO(4, 28, 21, 1),
            ),
          ),
          SizedBox(height: 10),
          Text(subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color.fromRGBO(47, 47, 47, 1),
            ),
          ),
        ],
      ),
    );
  }
}