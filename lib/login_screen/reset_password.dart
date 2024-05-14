import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waste_management/login_screen/success_screen.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Reset Password", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(4, 28, 21, 1),
        ),
        ),
      ),
      body:  Padding(padding: EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(10),
                    child: Text("Your new password must be different \nfrom previously used password",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromRGBO(47, 47, 47, 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Password",
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
                          border: Border.all(color: Color.fromRGBO(175, 175, 175, 1),width: 1.0),
                        ),
                        height: 50,
                        child:  TextField(
                          obscureText: passToggle ? true : false,
                          keyboardType: TextInputType.phone,
                          style: TextStyle(
                            color: Color.fromRGBO(106, 106, 106, 1),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                top: 10,bottom: 10,right:16,left: 16 ),
                            hintText: "Create new password",
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(106, 106, 106, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon:InkWell(
                              onTap: (){
                                // if(passToggle == true){
                                //   passToggle = false;
                                // }
                                // else{
                                //   passToggle = true;
                                // }
                                setState(() {
                                  passToggle =!passToggle;
                                });
                              },
                                child: Icon(passToggle? Icons.visibility: Icons.visibility_off,color:Color.fromRGBO(106, 106, 106, 1),)
                              // child: passToggle ?
                              // Icon(CupertinoIcons.eye_slash_fill, color: Color.fromRGBO(106, 106, 106, 1),):
                              // Icon(CupertinoIcons.eye_fill, color: Color.fromRGBO(106, 106, 106, 1),),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Confirm password",
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
                          border: Border.all(color: Color.fromRGBO(175, 175, 175, 1),width: 1.0),
                        ),
                        height: 50,
                        child:  TextField(
                          obscureText: passToggle ? true : false,
                          keyboardType: TextInputType.phone,
                          style: TextStyle(
                            color: Color.fromRGBO(106, 106, 106, 1),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                top: 10,bottom: 10,right:16,left: 16 ),
                            hintText: "Confirm new password",
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(106, 106, 106, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon:InkWell(
                              onTap: (){
                               if(passToggle == true){
                                passToggle = false;
                              }
                                else{
                               passToggle = true;
                                 }
                                setState(() {});
                              },
                              child: passToggle ?
                              Icon(CupertinoIcons.eye_slash_fill, color: Color.fromRGBO(106, 106, 106, 1),):
                              Icon(CupertinoIcons.eye_fill, color: Color.fromRGBO(106, 106, 106, 1),),
                            ),
                            ),
                          ),
                        ),
                     ],
                  ),
                  SizedBox(height: 30),
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
                                  MaterialPageRoute(builder: (context) => const SuccessScreen()));
                            },
                            child: const Padding(padding: EdgeInsets.all(10),
                              child: Text("Set Password",
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
            ],
          ),
          ),
        ),

    );
  }
}