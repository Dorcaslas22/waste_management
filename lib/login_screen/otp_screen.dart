import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:waste_management/login_screen/reset_password.dart';

import '../screens/home_view.dart';
import '../widgets/home_screen.dart';

class OtpScreen extends StatefulWidget {
  final String verificationId;

  OtpScreen({required this.verificationId});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  // final OtpController = TextEditingController();

  final TextEditingController _otpFieldController = TextEditingController();
  Future<void> _submitOtp(BuildContext context) async{
    String otp = _otpFieldController.text.trim();
    FirebaseAuth auth = FirebaseAuth.instance;

    try{
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationId,
        smsCode: otp,
      );
      await auth.signInWithCredential(credential);
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),
      ));
    }catch(e){
      print(e.toString());
    }

    // await auth.verifyPhoneNumber(
    //   phoneNumber: phoneNumber,
    //   verificationCompleted: (PhoneAuthCredential credential) async{},
    //   verificationFailed: (FirebaseAuthException e) {
    //     print(e.message.toString());
    //   },
    //   codeSent: (String verificationId, int? resendToken){
    //     Navigator.push(context,
    //         MaterialPageRoute(builder: (context)=> OtpScreen(),
    //         ));
    //   },
    //   codeAutoRetrievalTimeout: (String verificationId){},
    // );
  }

  // String otp ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text("Recovery Code", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(4, 28, 21, 1),
        ),
        ),
      ),
      body:  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.all(15),
              child: Text("",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromRGBO(47, 47, 47, 1),
                ),
              ),
            ),
            SizedBox(height: 20),
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
                //   otp = pin;
                // },
              ),
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
                      onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const ResetPassword()));
                      },
                      child: const Padding(padding: EdgeInsets.all(10),
                        child: Text("Verify Code",
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
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  OtpScreen(verificationId: 'verificationId',)));
                },
                child: const Text("Resend code",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(13, 92, 70, 1),
                  ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}