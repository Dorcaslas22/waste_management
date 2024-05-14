import 'package:flutter/material.dart';
import 'package:waste_management/screens/inputfield.dart';

class InputField2 extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;


  const InputField2({Key?key,
    required this.title,
    required this.hint,
    this.controller,
    this.widget,
  }): super(key:key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color.fromRGBO(47, 47, 7, 1),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            padding: EdgeInsets.only(left: 15),
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(
                    color:Color.fromRGBO(175, 175, 175, 1),
                    width: 1.0
                ),
                borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              children: [
                Expanded(
                  child:TextFormField(
                    readOnly: widget==null?false:true,
                    autofocus: false,
                    cursorColor:Color.fromRGBO(175, 175, 175, 1),
                    controller: controller,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      hintText: hint,
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(175, 175, 175, 1),
                          width: 0,
                        ),
                      ),
                      enabledBorder:UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(175, 175, 175, 1),
                          width: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                widget==null?Container():Container(child: widget,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



