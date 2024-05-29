import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:waste_management/screens/inputfield.dart';
import 'package:waste_management/screens/recycle_screen/schedule_pickup_screen.dart';
import 'package:waste_management/screens/waste_screen/schedule_pickup.dart';
import 'package:waste_management/widgets/step_Indicator.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key,});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  DateTime _selectedDate = DateTime.now();
  String _startTime = DateFormat("hh:mm a").format(DateTime.now()).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule Waste Pickup",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(4, 28, 21, 1),
          ),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              StepIndicator(),
              SizedBox(height: 10),
              // InputField(
              //     title: "Weight(kg)", hint: "Enter approximate weight in kg",
              //   controller: TextEditingController(),
              // ),
              InputField(
                title: "Pickup Address", hint: "11, Example street, Lagos",
                controller: TextEditingController(),
                widget: TextButton(
                    onPressed: () {},
                    child: Text("change address",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(13, 92, 70, 1),
                      ),)),
              ),
              Row(
                children: [
                  Expanded(
                      child: InputField(
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
                    child: InputField(
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
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Additional Information(Optional)",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(47, 47, 47, 1),
                  ),),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:15),
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(8),
                    ),
                        child: TextFormField(
                          minLines: 3,
                          maxLines: 6,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText: "Add any additional information",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromRGBO(106, 106, 106, 1),
                            ),
                          ),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  SchedulePickupScreen(),
                              ));
                        },


                        child: const Padding(padding: EdgeInsets.all(10),
                          child: Text("Proceed ",
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




