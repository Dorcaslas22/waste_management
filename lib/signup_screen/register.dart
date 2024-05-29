import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:waste_management/signup_screen/otp2.dart';
import 'package:waste_management/signup_screen/formscreen_controller.dart';

import '../login_screen/login.dart';
import '../login_screen/otp_screen.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formfield = GlobalKey<FormState>();
  // final phoneController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  // final passwordController = TextEditingController();
  bool passToggle = true;

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
            MaterialPageRoute(builder: (context)=> Otp2(verificationId: verificationId),
            ));
      },
      codeAutoRetrievalTimeout: (String verificationId){},
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Let Get Started",style: TextStyle(
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
               children: [
               Text("Enter your phone number",
               style: TextStyle(
                 fontWeight: FontWeight.w500,
                 fontSize: 18,
                 color: Color.fromRGBO(47, 47, 47, 1),
               ),
             ),
                 SizedBox(height: 30),
                 TextFormField(
                     keyboardType: TextInputType.name,
                     controller: _phoneNumberController,
                     decoration: InputDecoration(
                       labelText: "Phone Number",
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(4),
                       ),
                     ),
                     // validator: (value){
                     //   if (value!.completeNumber.isNotEmpty){
                     //     return"Digit not complete";
                     //   }
                     //   // else if (passwordController.text.length > 8){
                     //   //   return "Password length should not be more than 8 characters";
                     //   // }
                     // }
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
                 SizedBox(height: 20),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                   child: Row(
                     children: [
                       Expanded(
                           child: Divider(
                             color: Color.fromRGBO(106, 106, 106, 1),
                             thickness: 1,
                           ),
                       ),
                       Padding(
                         padding: EdgeInsets.symmetric(horizontal: 10.0),
                         child: Text("Or continue with", style: TextStyle(
                           fontWeight: FontWeight.w400,
                           fontSize: 14,
                           color:  Color.fromRGBO(47, 47, 47, 1),
                         ),),
                       ),
                       Expanded(child: Divider(
                         color: Color.fromRGBO(106, 106, 106, 1),
                         thickness: 1,
                       ),
                       ),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 15),
                   child: Row(
                     children: [
                       Expanded(
                         child: Container(
                           child: Padding(padding: EdgeInsets.all(10),
                             child: Image.asset("assets/google.png"),
                           ),
                         ),
                       ),
                       SizedBox(width: 5),
                       Expanded(
                         child: Container(
                           child: Padding(padding: EdgeInsets.all(10),
                             child: Image.asset("assets/facebook.png"),
                           ),
                         ),
                       ),
                       SizedBox(width: 5),
                       Expanded(
                         child: Container(
                           child: Padding(padding: EdgeInsets.all(10),
                             child: Image.asset("assets/apple.png"),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 SizedBox(height: 150),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Already have an account?", style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.w600,
                       color: Color.fromRGBO(3, 18, 14, 1),
                     ),
                     ),
                     GestureDetector(
                       onTap: (){
                         Navigator.push(context,
                             MaterialPageRoute(builder: (context) =>  Login()));
                       },
                       child: const Text("Login", style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.w600,
                         color: Color.fromRGBO(13, 90, 70, 1),
                       ),),
                     ),
                   ],
                 ),
             ],
             ),
       ),
      ),
      ),
    );
  }
}
