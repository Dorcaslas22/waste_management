import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../screens/home_view.dart';
import 'formscreen.dart';

// import '../login_screen/otp_screen.dart';

class Otp2 extends StatefulWidget {
  final String verificationId;

  Otp2({required this.verificationId});

  @override
  State<Otp2> createState() => _Otp2State();
}

class _Otp2State extends State<Otp2> {

  // final VerifyAccountScreenController = TextEditingController();

  final TextEditingController _otpFieldController = TextEditingController();
  Future<void> _otp2(BuildContext context) async {
    String verify = _otpFieldController.text.trim();
    FirebaseAuth auth = FirebaseAuth.instance;

    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationId,
        smsCode: verify,
      );
      await auth.signInWithCredential(credential);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeView(),
      ));
    } catch (e) {
      print(e.toString());
    }
  }


  @override
  Widget build(BuildContext context) {
    // final otpController = TextEditingController();
    // String otp ="";
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                child: const Text("Verify your number",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color.fromRGBO(4, 28, 21, 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text("We have sent an OTP code to your phone \nnumber. Kindly check your messages and \ninput the otp",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromRGBO(47, 47, 47, 1),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: OTPTextField(
                controller: OtpFieldController(),
                fieldWidth: 45,
                length: 6,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 5,
                keyboardType: TextInputType.number,
                width: MediaQuery.of(context).size.width,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(47, 47, 47, 1),
                ),
                textFieldAlignment: MainAxisAlignment.spaceBetween,
                // onChanged: (pin){
                //   // otp2 = pin;
                // },
              ),
            ),
            SizedBox(height: 15),
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
                      onPressed: ()  {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FormScreen(),
                            ));
                      },


                      child: const Padding(padding: EdgeInsets.all(10),
                        child: Text("Verify ",
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
            SizedBox(height: 15),
            Container(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  Otp2(verificationId: 'verificationId',)));
                },
                child: const Text("Resend OTP in 60s",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(47, 47, 47, 1),
                  ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}