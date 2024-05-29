import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:waste_management/signup_screen/formscreen.dart';
import 'package:waste_management/signup_screen/register.dart';

import '../widgets/home_screen.dart';
import 'forgot.dart';
import 'otp_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formfield = GlobalKey<FormState>();
  // final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  bool passToggle = true;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final TextEditingController _phoneNumberController = TextEditingController();


  // Future<void> _submitPhoneNumber(BuildContext context) async{
  //   String phoneNumber = _phoneNumberController.text.trim();
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //
  //   await auth.verifyPhoneNumber(
  //     phoneNumber: phoneNumber,
  //     verificationCompleted: (PhoneAuthCredential credential) async{},
  //     verificationFailed: (FirebaseAuthException e) {
  //       print(e.message.toString());
  //     },
  //     codeSent: (String verificationId, int? resendToken){
  //       Navigator.push(context,
  //           MaterialPageRoute(builder: (context)=> OtpScreen(verificationId: verificationId),
  //           ));
  //     },
  //     codeAutoRetrievalTimeout: (String verificationId){},
  //   );
  // }


  Future<void> _signInWithGoogle()async{
    try{
      final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      if(googleSignInAccount != null){
        final GoogleSignInAuthentication googleSignInAuthentication = await
        googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );
        await _auth.signInWithCredential(credential);
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
      }
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Back!",style: TextStyle(
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
                          Text("Login to your account",
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
                                  borderSide: BorderSide(color: Color.fromRGBO(175, 175, 175, 1))
                   ),
                               ),

                   //       validator: (value){
                   //          if (value!.completeNumber.isNotEmpty){
                   //            return"Digit not complete";
                   //  }
                   //  // else if (passwordController.text.length > 8){
                   //  //   return "Password length should not be more than 8 characters";
                   // // }
                   // }
                  ),
                           SizedBox(height: 30),
                            TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                                controller: passwordController,
                                obscureText: passToggle,
                                decoration: InputDecoration(
                                   labelText: "Password",
                                    border: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Color.fromRGBO(175, 175, 175, 1))
                                      ),
                                       suffixIcon: InkWell(
                                           onTap: (){
                                              setState(() {
                                         passToggle = !passToggle;
                                               });
                                              },
                                           child: Icon(passToggle ?
                                           Icons.visibility: Icons.visibility_off),
                                      ),
                                 ),
                                   validator: (value){
                                    if (value!.isEmpty){
                                       return"Enter Password";
                                    }
                           else if (passwordController.text.length < 8){
                                  return "Password length should not be more than 8 characters";
                              }
                               }
                         ),
                            SizedBox(height: 30),
                            InkWell(
                               onTap: () {
                                   if (_formfield.currentState!.validate()){
                                     print("successful");
                                     _phoneNumberController.clear();
                                     passwordController.clear();
                                 }
                                   Navigator.push(context,
                                       MaterialPageRoute(builder: (context) =>  HomeScreen()));
                               },

                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color:Color.fromRGBO(13, 92, 70, 1),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text("Login",
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
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                             onTap: (){
                               Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => const Forgot()));
                                },
                                child: const Text("Forgot Password",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(13, 92, 70, 1),
                                 ),),
                                 ),
                                ),
                            SizedBox(height: 20),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
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
                            SizedBox(height: 20),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                     child: InkWell(
                                        onTap: () => _signInWithGoogle,
                                       child: Padding(padding: EdgeInsets.all(10),
                                         child: Image.asset("assets/google.png"),
                                       ),
                                    ),

                                   // child: SignInButton(
                                   //
                                   // Buttons.Google,
                                   // onPressed: _signInWithGoogle,
                                   //
                                   // // child: Padding(padding: EdgeInsets.all(10),
                                   // //   child: Image.asset("assets/google.png"),
                                   // // ),
                                     ),
                                     SizedBox(width: 5),
                                      Container(
                                       child: Padding(padding: EdgeInsets.all(10),
                                          child: Image.asset("assets/facebook.png"),
                                       ),
                                      ),
                                        SizedBox(width: 5),
                                          Container(
                                              child: Padding(padding: EdgeInsets.all(10),
                                                    child: Image.asset("assets/apple.png"),
                                            ),
                                           ),
                                        ],
                                      ),
                                  ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            const Text("Don't have an account?",
                                              style: TextStyle(
                                             fontSize: 16,
                                           fontWeight: FontWeight.w600,
                                         color: Color.fromRGBO(3, 18, 14, 1),
                                       ),
                                      ),
                                             GestureDetector(
                                              onTap: (){
                                                Navigator.push(context,
                                                    MaterialPageRoute(builder:
                                                        (context) =>  Register(),
                                                    )
                                                );
                                                   },
                                                    child: const Text("Sign up",
                                                      style: TextStyle(
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
