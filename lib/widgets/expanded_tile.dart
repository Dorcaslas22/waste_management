
import 'package:flutter/material.dart';

class ExpandedTile extends StatefulWidget {
  const ExpandedTile({super.key});

  @override
  State<ExpandedTile> createState() => _ExpandedTileState();
}

class _ExpandedTileState extends State<ExpandedTile> {
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
            color: Color.fromRGBO(13, 92, 18, 1),
            child: ExpansionTile(
              title: Text("Waste Sorting Guidelines",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),),
              trailing: Icon(
                _customIcon ? Icons.arrow_forward_ios_rounded : Icons.arrow_forward_ios,
                size: 24,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              children: [
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  title: Text("1. Separate Trash from Recyclables",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),),
                  subtitle: Text("Ensure that non-recyclable items \nsuch as food waste, soiled paper, hygiene products, and \nnon-recyclable plastics are separated from recyclables \n(Visit our guide to recycling to know more about recyclable materials).",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),),
                ),
                SizedBox(height: 10),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  title: Text("2. Properly Arrange Trash for Disposal",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),),
                  subtitle: Text("Use disposable trash bags or bins designated \nfor regular waste. Tie or seal the disposable bag \nsecurely to prevent leaks or spills during \ntransportation",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),),
                ),
                SizedBox(height: 10),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  title: Text("3. Properly Arrange Trash for Disposal",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),),
                  subtitle: Text("If your area has waste collection services,"
                      " check the schedule for regular waste pick-up days and schedule a pickup."
                      "If there are no waste collection services available, "
                      "find the nearest waste collection center or landfill to drop off your waste.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromRGBO(255, 255, 255, 1),
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