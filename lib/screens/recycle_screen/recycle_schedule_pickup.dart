import 'package:flutter/material.dart';




class RecycleSchedulePickup extends StatefulWidget {
  const RecycleSchedulePickup({super.key});

  @override
  State<RecycleSchedulePickup> createState() => _RecycleSchedulePickupState();
}


class _RecycleSchedulePickupState extends State<RecycleSchedulePickup> {
  List title = ['Trash \ndetails', 'Pickup \nschedule', 'Pickup \nconfirmation',];
  // int step = 2;
  int _activeStepIndex = 0;

  stepState(int step) {
    if (_activeStepIndex > step) {
      return StepState.complete;
    } else {
      return StepState.indexed;
    }
  }
  bool isStrechedDropDown = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("Schedule Pickup",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(4, 28, 21, 1),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            for (int i = 0; i < title.length - 1; i++)
              Expanded(
                  child: Row(
                    children: [
                      circleStepper(i),
                      Expanded(child: lineStepper(i))
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: circleStepper(title.length),
              )
             ],
             ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < title.length - 1; i++)
                      Expanded(child: stepperTitle(i)),
                    stepperTitle(title.length - 1)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text("Choose the material you want to recycle",
                style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color.fromRGBO(47, 47, 47, 1),
              ),
              ),
            ),
            SizedBox(height: 10),
        //     Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        //     child: SafeArea(
        //       child: Column(
        //         children: [
        //           Row(
        //             children: [
        //               Expanded(
        //                 child: Container(
        //                   height: 48,
        //                   decoration: BoxDecoration(
        //                     border: Border.all(color: Color.fromRGBO(192, 192, 192, 1),width: 1,
        //                     ),
        //                     borderRadius: BorderRadius.circular(4),
        //                   ),
        //                   child: Column(
        //                     children: [
        //                       Container(
        //                         width: double.infinity,
        //                         decoration: BoxDecoration(
        //                           border: Border.all(color: Color.fromRGBO(192, 192, 192, 1),width: 1,
        //                           ),
        //                           borderRadius: BorderRadius.circular(4),
        //                         ),
        //                         constraints: BoxConstraints(
        //                           minHeight: 45,
        //                           minWidth: double.infinity,
        //                         ),
        //                         padding: EdgeInsets.only(left: 10),
        //                         child: Row(
        //                           children: [
        //                             Image.asset("assets/plastic.png"),
        //                             SizedBox(width: 10),
        //                             Padding(
        //                               padding: const EdgeInsets.all(8.0),
        //                               child: Text("Plastics",style: TextStyle(
        //                                   fontWeight: FontWeight.w500,
        //                                   fontSize: 14,
        //                                   color: Color.fromRGBO(47, 47, 47, 1)
        //                               ),
        //                               ),
        //                             ),
        //                             SizedBox(width: 200),
        //                             GestureDetector(
        //                               onTap: (){
        //                                 setState(() {
        //                                   isStrechedDropDown =
        //                                   !isStrechedDropDown;
        //                                 });
        //                               },
        //                               child: Padding(
        //                                 padding: const EdgeInsets.only(right:4),
        //                                 child: Icon(isStrechedDropDown
        //                                     ? Icons.arrow_drop_up
        //                                     : Icons.arrow_drop_down,
        //                                   size: 32,),
        //                               ),
        //                             ),
        //                           ],
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           )
        //         ],
        //       ),
        //     )
        // ),
        ],
      )
    ),
    );
  }

  Widget stepperTitle(int index) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Text(
          //   'STEP ${index + 1}',
          //   style: TextStyle(
          //       color: Color.fromRGBO(47, 47, 47, 1).withOpacity(.3),
          //       fontSize: 12,
          //       fontWeight: FontWeight.bold),
          // ),
          Text(
            title.elementAt(index),
            textAlign: TextAlign.center,
            style: TextStyle(
                color:
                index <= _activeStepIndex ? Color.fromRGBO(47, 47, 47, 1) : Color.fromRGBO(47, 47, 47, 1).withOpacity(.5),
                fontSize: 14,
                fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }


  Widget lineStepper(int index) {
    return Container(
      width: double.infinity,
      height: 5,
      color: index < _activeStepIndex? Color.fromRGBO(192, 192, 192, 1) : Color.fromRGBO(192, 192, 192, 1).withOpacity(.2),
    );
  }

  Widget circleStepper(int index) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.5),
          border: Border.all(
              color: index >_activeStepIndex ? Color.fromRGBO(255, 193, 69, 1).withOpacity(.1) : Color.fromRGBO(255, 193, 69, 1),
              width: 2,
              style: BorderStyle.solid)),
      child: Container(
        margin: EdgeInsets.all(index == _activeStepIndex ? 2 : 0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: index >_activeStepIndex ? Color.fromRGBO(255, 193, 69, 1).withOpacity(.1) : Color.fromRGBO(255, 193, 69, 1)),
        child: _activeStepIndex > index
            ? const Icon(
          Icons.check,
          color: Colors.white,
          size: 20,
        )
            : _activeStepIndex < index
            ? Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 193, 69, 1),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Color.fromRGBO(255, 193, 69, 1), width: 1)),
        )
            : Text('${index + 1}',
            style: const TextStyle(fontSize: 16, color: Color.fromRGBO(13, 92, 70, 1))),
      ),
    );
  }
}
