import 'package:flutter/material.dart';

import 'add_address_screen.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formfield = GlobalKey<FormState>();
  final firstController = TextEditingController();
  final lastController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  final refController = TextEditingController();
  bool passToggle = true;
  bool isRememberMe = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Set up your account"),
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
                Text("Create an account and gain access to  features to help you reduce waste, "
                    "recycle effectively, and earn rewards."
                ),
                SizedBox(height: 30),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: firstController,
                  decoration: InputDecoration(
                    labelText: "Firstname",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                    validator: (value){
                      if (value!.isEmpty){
                        return"Enter Firstname";
                      }
                      // else if (passwordController.text.length > 8){
                      //   return "Password length should not be more than 8 characters";
                      // }
                    }
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: lastController,
                  decoration: InputDecoration(
                    labelText: "Lastname",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                    validator: (value){
                      if (value!.isEmpty){
                        return"Enter lastname";
                       }
                      // else if (lastController.text.characters.isNotEmpty){
                      //   return "";
                      // }
                      // return null;
                    }
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                    validator: (value){
                      bool emailValid = RegExp("^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]+\$")
                          .hasMatch(value!);
                      if (value!.isEmpty){
                        return"Enter Email";
                      }
                      else if (!emailValid) {
                        return "Enter a valid Email";
                      }
                    }
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: InkWell(
                      onTap: (){
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(passToggle ? Icons.visibility: Icons.visibility_off),
                    ),
                  ),
                    validator: (value){
                      if (value!.isEmpty){
                        return"Enter Password";
                      }
                      else if (passwordController.text.length > 8){
                        return "Password length should not be more than 8 characters";
                      }
                    }
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: confirmController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: InkWell(
                      onTap: (){
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(passToggle ? Icons.visibility: Icons.visibility_off),
                    ),
                  ),
                    validator: (value){
                      if (value!.isEmpty){
                        return"Confirm Password";
                      }
                      else if (passwordController.text.length > 8){
                        return "Password must be same as above";
                      }
                      // return null;
                    }
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: refController,
                  decoration: InputDecoration(
                    labelText: "Referral(optional)",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.white),
                    child: Checkbox(
                      value: isRememberMe,
                      checkColor: Colors.green,
                      activeColor: Colors.white,
                      onChanged: (bool? value) {
                        setState(() {
                          isRememberMe = value!;
                        });
                      },
                    ),
                  ),
                      Text("I agree to EClean Terms of Service \nand Privacy Policy",
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                        ),),
              ],
            ),
                SizedBox(height: 30),
                InkWell(
                    onTap: (){
                      if (_formfield.currentState!.validate()){
                        print("successful");
                        firstController.clear();
                        lastController.clear();
                        emailController.clear();
                        passwordController.clear();
                        confirmController.clear();
                        refController.clear();
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddAddressScreen(),
                          ));
                    },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color:Color.fromRGBO(13, 92, 70, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text("Create Account",
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
        ),
      ),
    );
  }
}
