import 'package:flutter/material.dart';

class ScheduleWaste extends StatefulWidget {
  const ScheduleWaste({super.key});

  @override
  State<ScheduleWaste> createState() => _ScheduleWasteState();
}

class _ScheduleWasteState extends State<ScheduleWaste> {
  late String valueChoose;
  List listItem = [
    "10kg", "30kg","50kg",
    "100kg", "200kg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Schedule Waste Pick", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(4, 28, 21, 1),
        ),
        ),
      ),
      // body: Center(
      //   child: DropdownButton(
      //       value: valueChoose,
      //       onChanged: (newValue){
      //        setState(() {
      //          valueChoose = newValue!;
      //        });
      //       },
      //   //   items: listItem.map((valueItem){
      //   //       return DropdownMenuItem(
      //   //           value: valueItem,
      //   //         child: Text("valueItem"),
      //   //       )
      //   // }),
      //   ),
      // ),
    );
  }
}