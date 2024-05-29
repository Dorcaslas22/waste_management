import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste_management/signup_screen/formscreen_controller.dart';
import 'package:waste_management/utils/validators/validation.dart';

import 'add_address_screen.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();

}

class _FormScreenState extends State<FormScreen> {
  bool passToggle = true;
  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FormScreenController());
    return Scaffold(
      appBar: AppBar(
        // title: Text("Set up your account"),
        // centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text("Set up your account",style: TextStyle(
                fontSize: 16,
              ),
              ),
              SizedBox(height: 20),
              Form(
                key: controller.formScreenFormKey,
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
                      controller: controller.firstName,
                      validator: (value) => DValidator.validateEmptyText("First name", value),
                      decoration: InputDecoration(
                        labelText: "Firstname",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: controller.lastName,
                      validator: (value) => DValidator.validateEmptyText("Last name", value),
                      decoration: InputDecoration(
                        labelText: "Lastname",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.email,
                      validator: (value) => DValidator.validateEmail(value),
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: controller.password,
                      validator: (value) => DValidator.validatePassword(value),
                      // obscureText: passToggle,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: InkWell(
                          onTap: (){
                            setState(() {
                              // passToggle = !passToggle;
                            });
                          },
                          // child: Icon(passToggle ? Icons.visibility: Icons.visibility_off),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: controller.confirm,
                      validator: (value) => DValidator.validateConfirmPassword(value),
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
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: controller.referal,
                      validator: (value) => DValidator.validateEmptyText("Referal", value),
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

                      },
                      // onTap: () => controller.formScreen(),
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
            ],
          ),

        ),
      ),
    );
  }
}
