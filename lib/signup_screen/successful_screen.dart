import 'package:flutter/material.dart';

import '../widgets/home_screen.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add your Address"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(onPressed: (){},
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
                Image.asset("assets/successful.png"),
                SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("You are all set!",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(4, 28, 21, 1),
                  ),),
                ),
                SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: Text("Click the button below to go to your dashboard",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(47, 47, 47, 1),
                    height: 1.5,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
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
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                    child: const Padding(padding: EdgeInsets.all(10),
                      child: Text("Proceed to Dashboard",
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
        ],
      ),
    );
  }
}