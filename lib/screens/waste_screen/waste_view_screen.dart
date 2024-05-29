

import 'package:flutter/material.dart';
import 'package:waste_management/screens/recycle_screen/schedule_screen.dart';
import 'package:waste_management/screens/waste_screen/waste_dropoff.dart';
import 'package:waste_management/screens/waste_screen/waste_schedule.dart';

import '../../widgets/expanded_tile.dart';

class WasteViewScreen extends StatefulWidget {
  const WasteViewScreen({super.key});

  @override
  State<WasteViewScreen> createState() => _WasteViewScreenState();
}

class _WasteViewScreenState extends State<WasteViewScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text("Waste", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(4, 28, 21, 1),
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 390,
              height: 80,
              // padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 244, 222, 1),
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: const EdgeInsets.all( 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.info_outline_rounded,color: Color.fromRGBO(225, 193, 69, 1),),
                        SizedBox(width: 15),
                        Text("Tomorrow is your area's waste collection day. \nMake sure to have your bins ready!",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(47, 47, 47, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const WasteSchedule()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 100,
                  width: 342,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.green,width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Schedule pickup",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color.fromRGBO(47, 47, 47, 1),
                              ),
                            ),
                            Image.asset("assets/car.png"),
                          ],
                        ),
                        Text("Easily schedule pickup of your waste and \nkeep your environment pollution-free",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            InkWell(
              onTap: (){
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const WasteSchedule()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 100,
                  width: 342,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.green,width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Schedule Drop-off",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color.fromRGBO(47, 47, 47, 1),
                              ),
                            ),
                            Image.asset("assets/man.png"),
                          ],
                        ),
                        Text("Drop off your waste at any waste collection \npoint near you",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 100,
                width: 342,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.green,width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Find Waste Collection Centers",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color.fromRGBO(47, 47, 47, 1),
                            ),
                          ),
                          Image.asset("assets/home1.png"),
                        ],
                      ),
                      Text("Browse through a list of all waste collection \ncenters",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ExpandedTile()
          ],
        ),
      ),
    );
  }
}