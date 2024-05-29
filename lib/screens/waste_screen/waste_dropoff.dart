import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:waste_management/screens/inputfield2.dart';
import 'package:waste_management/screens/waste_screen/schedule_pickup.dart';
import 'package:waste_management/widgets/custom_dialog_widget.dart';

class WasteDropOff extends StatefulWidget {
  const WasteDropOff({super.key,});

  @override
  State<WasteDropOff> createState() => _WasteDropOffState();
}

class _WasteDropOffState extends State<WasteDropOff> {

  DateTime _selectedDate = DateTime.now();
  String _startTime = DateFormat("hh:mm a").format(DateTime.now()).toString();

  int _type = 1;
  void _handleRadio(Object ? e) => setState(() {
    _type = e as int;
  });

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule Waste Drop-off",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(4, 28, 21, 1),
          ),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InputField2(
                title: "Add Address", hint: "11, Example street, Lagos",
                widget: TextButton(
                    onPressed: () {},
                    child: Text("change address",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(13, 92, 70, 1),
                      ),)),
              ),
              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Preferred collection center",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(47, 47, 47, 1),
                  ),),
                  SizedBox(height: 5),
                  Text("Choose the waste collection center where you would like \nto drop off your materials.",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(47, 47, 47, 1),
                  ),)
                ],
              ),
               SizedBox(height: 10),
               Column(
                 // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                       Stack(
                         children: [
                          Radio(
                            value: 1,
                            groupValue: _type,
                            onChanged: _handleRadio,
                              activeColor: Color.fromRGBO(13, 92, 70, 1),
                              ),
                         ],
                       ),
                       Row(
                         children: [
                           Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 // crossAxisAlignment: CrossAxisAlignment.start,
                                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text("Clean City Waste Management",
                                     style: _type == 1? TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 14,
                                       color: Color.fromRGBO(47, 47, 47, 1),)
                                         :TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 14,
                                       color: Color.fromRGBO(106, 106, 106, 1),
                                     ),
                                   ),
                                 ],
                               ),
                               Row(
                                 // crossAxisAlignment: CrossAxisAlignment.start,
                                 // mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Text("25 Oak Road, Lagos",
                                     style: _type == 1? TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 12,
                                       color: Color.fromRGBO(47, 47, 47, 1),)
                                         :TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 12,
                                       color: Color.fromRGBO(106, 106, 106, 1),
                                     ),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ],
                       ),
                     ],
                   ),
                   SizedBox(height: 10),
                   Row(
                     children: [
                       Stack(
                         children: [
                           Radio(
                             value: 2,
                             groupValue: _type,
                             onChanged: _handleRadio,
                             activeColor: Color.fromRGBO(13, 92, 70, 1),
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 // crossAxisAlignment: CrossAxisAlignment.start,
                                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text("Nature's Best Compost Facility",
                                     style: _type == 2? TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 14,
                                       color: Color.fromRGBO(47, 47, 47, 1),)
                                         :TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 14,
                                       color: Color.fromRGBO(106, 106, 106, 1),
                                     ),
                                   ),
                                 ],
                               ),
                               Row(
                                 // crossAxisAlignment: CrossAxisAlignment.start,
                                 // mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Text("78 Elm Avenue, Lagos",
                                     style: _type == 2? TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 12,
                                       color: Color.fromRGBO(47, 47, 47, 1),)
                                         :TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 12,
                                       color: Color.fromRGBO(106, 106, 106, 1),
                                     ),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ],
                       ),
                     ],
                   ),
                   SizedBox(height: 10),
                   Row(
                     children: [
                       Stack(
                         children: [
                           Radio(
                             value: 3,
                             groupValue: _type,
                             onChanged: _handleRadio,
                             activeColor: Color.fromRGBO(13, 92, 70, 1),
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   Text("Clean Sweep Waste Disposal",
                                     style: _type == 3? TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 14,
                                       color: Color.fromRGBO(47, 47, 47, 1),)
                                         :TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 14,
                                       color: Color.fromRGBO(106, 106, 106, 1),
                                     ),
                                   ),
                                 ],
                               ),
                               Row(
                                 // crossAxisAlignment: CrossAxisAlignment.start,
                                 // mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Text("36 Pine street, Lagos",
                                     style: _type == 3? TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 12,
                                       color: Color.fromRGBO(47, 47, 47, 1),)
                                         :TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 12,
                                       color: Color.fromRGBO(106, 106, 106, 1),
                                     ),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ],
                       ),
                     ],
                   ),
                   SizedBox(height: 10),
                   Row(
                     children: [
                       Stack(
                         children: [
                           Radio(
                             value: 4,
                             groupValue: _type,
                             onChanged: _handleRadio,
                             activeColor: Color.fromRGBO(13, 92, 70, 1),
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   Text("Green Solutions Waste Center",
                                     style: _type == 4? TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 14,
                                       color: Color.fromRGBO(47, 47, 47, 1),)
                                         :TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 14,
                                       color: Color.fromRGBO(106, 106, 106, 1),
                                     ),
                                   ),
                                 ],
                               ),
                               Row(
                                 // crossAxisAlignment: CrossAxisAlignment.start,
                                 // mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Text("25 Oak Road, Lagos",
                                     style: _type == 4? TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 12,
                                       color: Color.fromRGBO(47, 47, 47, 1),)
                                         :TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 12,
                                       color: Color.fromRGBO(106, 106, 106, 1),
                                     ),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ],
                       ),
                     ],
                   ),
                   SizedBox(height: 10),
                   Row(
                     children: [
                       Stack(
                         children: [
                           Radio(
                             value: 5,
                             groupValue: _type,
                             onChanged: _handleRadio,
                             activeColor: Color.fromRGBO(13, 92, 70, 1),
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   Text("Sustainable Solutions Drop-Off",
                                     style: _type == 5? TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 14,
                                       color: Color.fromRGBO(47, 47, 47, 1),)
                                         :TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 14,
                                       color: Color.fromRGBO(106, 106, 106, 1),
                                     ),
                                   ),
                                 ],
                               ),
                               Row(
                                 // crossAxisAlignment: CrossAxisAlignment.start,
                                 // mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Text("24 Pine Avenue, Lagos",
                                     style: _type == 5? TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 12,
                                       color: Color.fromRGBO(47, 47, 47, 1),)
                                         :TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 12,
                                       color: Color.fromRGBO(106, 106, 106, 1),
                                     ),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ],
                       ),
                     ],
                   ),
                 ],
               ),
              Row(
                children: [
                  Expanded(
                    child: InputField2(
                      title: "Date",
                      hint: DateFormat.yMd().format(_selectedDate),
                      widget: IconButton(
                          onPressed: () {
                            _getDateFromUser();
                          },
                          icon: Icon(Icons.calendar_today_outlined,
                            size: 16,
                            color: Color.fromRGBO(106, 106, 106, 1),)),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: InputField2(
                      title: "Time",
                      hint:  _startTime,
                      widget: IconButton(
                          onPressed: () {
                            _getTimeFromUser(isStartTime: true);
                          },
                          icon: Icon(Icons.access_time_rounded,
                            size: 16,
                            color: Color.fromRGBO(106, 106, 106, 1),)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
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
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const CustomDialogWidget(),
                          //     ));
                        },


                        child: const Padding(padding: EdgeInsets.all(10),
                          child: Text("Schedule DropOff ",
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
  _getDateFromUser() async {
    DateTime? _pickerDate = await showDatePicker(
        context: context,
        firstDate: DateTime(2023),
        lastDate: DateTime(2030)
    );
    if (_pickerDate != null) {
      setState(() {
        _selectedDate = _pickerDate;
        print(_selectedDate);
      });
    } else {
      print("it's null or something is wrong");
    }
  }

  _getTimeFromUser({required bool isStartTime}) async {
    var pickedTime =await _showTimePicker();
    String _formatedTime = pickedTime.format(context);
    if(pickedTime==null){
      print("Time cancelled");
    }
    else{
      if(_startTime==true){
        setState(() {
          _startTime =_formatedTime;
        });
      }
    }
  }
  _showTimePicker(){
    return showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: TimeOfDay(
          hour: int.parse(_startTime.split(":")[0]),
          minute: int.parse(_startTime.split(":")[1].split(" ")[0]),
        )
    );
  }

}

