import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'otp_screen.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _NewLoginState();
}

class _NewLoginState extends State<Forgot> {
  final _formfield = GlobalKey<FormState>();
  final TextEditingController _phoneNumberController = TextEditingController();

  Future<void> _submitPhoneNumber(BuildContext context) async{
    String phoneNumber = _phoneNumberController.text.trim();
    FirebaseAuth auth = FirebaseAuth.instance;

    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async{},
      verificationFailed: (FirebaseAuthException e) {
        print(e.message.toString());
      },
      codeSent: (String verificationId, int? resendToken){
        Navigator.push(context,
            MaterialPageRoute(builder: (context)=> OtpScreen(verificationId: verificationId),
            ));
      },
      codeAutoRetrievalTimeout: (String verificationId){},
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Forgot Password?",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(4, 28, 21, 1),
          ),
          ),
          centerTitle: true,
        ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
         child: Form(
          key: _formfield,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text("Enter your Registered phone number",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color.fromRGBO(47, 47, 47, 1),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.name,
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () => _submitPhoneNumber(context),
                // if (_formfield.currentState!.validate()){
                //   print("successful");
                //   phoneController.clear();
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) =>  VerifyAccountScreen(verificationId: 'verificationId',)));
                // }

                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color:Color.fromRGBO(13, 92, 70, 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text("Proceed",
                      style: TextStyle(
                        color:Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ]
      ),
    ),
        ),
      ),
    );
  }
}
