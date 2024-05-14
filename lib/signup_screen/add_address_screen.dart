import 'package:flutter/material.dart';
import 'package:waste_management/signup_screen/successful_screen.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {

  Widget buildStreet(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("House and Street Number",
          style: TextStyle(
            color: Color.fromRGBO(47, 47, 47, 1),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: Color.fromRGBO(175, 175, 175, 1),width: 1.0),
          ),
          height: 50,
          child: const TextField(
            obscureText: true,
            style: TextStyle(
              color: Color.fromRGBO(106, 106, 106, 1),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                  top: 10,bottom: 10,right:16,left: 16 ),
              hintText: "13, Example street",
              hintStyle: TextStyle(
                color: Color.fromRGBO(106, 106, 106, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildArea(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Area",
          style: TextStyle(
            color: Color.fromRGBO(47, 47, 47, 1),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: Color.fromRGBO(175, 175, 175, 1),width: 1.0),
          ),
          height: 50,
          child: const TextField(
            obscureText: true,
            style: TextStyle(
              color: Color.fromRGBO(106, 106, 106, 1),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                  top: 10,bottom: 10,right:16,left: 16 ),
              hintText: "Agric,Ikorodu",
              hintStyle: TextStyle(
                color: Color.fromRGBO(106, 106, 106, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildState(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("State",
          style: TextStyle(
            color: Color.fromRGBO(47, 47, 47, 1),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: Color.fromRGBO(175, 175, 175, 1),width: 1.0),
          ),
          height: 50,
          child: const TextField(
            obscureText: true,
            style: TextStyle(
              color: Color.fromRGBO(106, 106, 106, 1),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                  top: 10,bottom: 10,right:16,left: 16 ),
              hintText: "State",
              hintStyle: TextStyle(
                color: Color.fromRGBO(106, 106, 106, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildNearestBus(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Nearest Bus Stop",
          style: TextStyle(
            color: Color.fromRGBO(47, 47, 47, 1),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: Color.fromRGBO(175, 175, 175, 1),width: 1.0),
          ),
          height: 50,
          child: const TextField(
            obscureText: true,
            style: TextStyle(
              color: Color.fromRGBO(106, 106, 106, 1),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                  top: 10,bottom: 10,right:16,left: 16 ),
              hintText: "Example bus stop",
              hintStyle: TextStyle(
                color: Color.fromRGBO(106, 106, 106, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSaveBtn(){
    return Container(
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
                    MaterialPageRoute(builder: (context) => const SuccessfulScreen()));
              },
              child: const Padding(padding: EdgeInsets.all(10),
                child: Text("Save",
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
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Add your Address", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(4, 28, 21, 1),
        ),),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              buildStreet(),
              SizedBox(height: 10) ,
              buildArea(),
              SizedBox(height: 10),
              buildState(),
              SizedBox(height: 10),
              buildNearestBus(),
              SizedBox(height: 150),
              buildSaveBtn(),
            ],
          ),
        ),
      ),
    );
  }
}