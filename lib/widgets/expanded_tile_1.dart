import 'package:flutter/material.dart';

class ExpandedTile1 extends StatefulWidget {
  const ExpandedTile1({super.key});

  @override
  State<ExpandedTile1> createState() => _ExpandedTile1State();
}

class _ExpandedTile1State extends State<ExpandedTile1> {
  final bool  _customIcon =false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            onPressed:(){
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const OtpScreen()));
            },
            color: Color.fromRGBO(225, 193, 69, 1),
            child: ExpansionTile(
              title: Text("Recycling Guidelines",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(13, 92, 70, 1),
                ),),
              trailing: Icon(
                _customIcon ? Icons.arrow_forward_ios_rounded : Icons.arrow_forward_ios,
                size: 24,
                color: Color.fromRGBO(13, 92, 70, 1),
              ),
              children: [
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  title: Text("1. Collect Your Recyclables",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(13, 92, 70, 1),
                    ),),
                  subtitle: Text("Gather your recyclable materials like plastics,"
                      "\n glass, paper, metals, and e-waste).",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromRGBO(13, 92, 70, 1),
                    ),),
                ),
                SizedBox(height: 10),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  title: Text("2. Properly Sort Your  Recyclables",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(13, 92, 70, 1),
                    ),),
                  subtitle: Text("Separate different types of recyclables into designated bins or containers."
                      " (Follow the waste sorting guidelines to ensure proper recycling.)",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromRGBO(13, 92, 70, 1),
                    ),),
                ),
                SizedBox(height: 10),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  title: Text("3.  Schedule Pickup or Drop-Off",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(13, 92, 70, 1),
                    ),),
                  subtitle: Text("Arrange for waste collection and choose a convenient "
                      "date and time for pickup or drop-off at a collection center. "
                      "Your E-wallet is credited as soon as the request is completed.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromRGBO(13, 92, 70, 1),
                    ),),
                ),
              ],
              onExpansionChanged: (bool expanded){},
              // controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
        ),
      ],
    );
  }
}