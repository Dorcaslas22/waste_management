import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Initiatives extends StatefulWidget {
  @override
  State<Initiatives> createState() => _InitiativesState();
}

class _InitiativesState extends State<Initiatives> {
  List<String> CardText = [
    "Composting and organic waste management workshop",
    "Community clean-up initiative for locals",
    "Waste Management Community Event",
    "Empowering Local Communities for Sustainable Living",
    "Fostering Sustainable Growth in Our Community",
    "Cultivating Sustainable \nPractices in Our \nCommunity"

  ];

  List<String> CardImg = [
    "assets/mask5.png",
    "assets/mask7.png",
    "assets/mask6.png",
    "assets/mask8.png",
    "assets/mask8.png",
    "assets/mask5.png",
  ];

  DateTime _selectedDate = DateTime.now();

  String _startTime = DateFormat("hh:mm a").format(DateTime.now()).toString();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
        shrinkWrap: true,
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          ),
          itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            height: 197,
            width: 163,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Color.fromRGBO(192, 192, 192, 1),width: 1.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 200,
                      child: InkWell(
                        onTap: (){},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(1),
                          child: Image.asset(CardImg[index]),
                      ),
                    )
                    ),
                  ],
                ),
                Text(CardText[index],
                  style:TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    color: Color.fromRGBO(47, 47, 47, 1),
                  ) ,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.calendar_month,size:14,color: Colors.yellow,),
                    Text("5th April",style: TextStyle(
                      fontSize:10,
                    ),),
                    SizedBox(width: 20),
                    Icon(Icons.alarm,size:14,color: Colors.yellow,),
                    Text("12 noon",style: TextStyle(
                      fontSize:10,
                    ),),
                  ],
                ),
              ],
            ),
          );
          }
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