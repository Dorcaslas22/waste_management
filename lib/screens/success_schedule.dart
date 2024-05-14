import 'package:flutter/material.dart';
import 'package:waste_management/screens/home_view.dart';

import '../widgets/home_screen.dart';

class SuccessSchedule extends StatefulWidget {
  const SuccessSchedule({super.key});

  @override
  State<SuccessSchedule> createState() => _SuccessScheduleState();
}

class _SuccessScheduleState extends State<SuccessSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule waste"),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  HomeScreen(),
                  ));
            },
                icon: Icon(Icons.close)),
            Container(
              width: 390,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Image.asset("assets/Success.png"),
                  SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("You have successfully scheduled \na pickup for 6 Feb 2024",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(4, 28, 21, 1),
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
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
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) =>  HomeScreen()));
                      },
                      child: const Padding(padding: EdgeInsets.all(10),
                        child: Text("Track progress ",
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
            Container(
              padding: EdgeInsets.all(15,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color:Color.fromRGBO(255, 255, 255, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>  HomeScreen()));
                      },
                      child: const Padding(padding: EdgeInsets.all(10),
                        child: Text("Go to Homepage",
                          style: TextStyle(
                            color:Color.fromRGBO(13, 92, 70, 1),
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
    );
  }
}