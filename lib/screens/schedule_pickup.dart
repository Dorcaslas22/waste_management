import 'package:flutter/material.dart';

import '../widgets/cardwidget.dart';

class SchedulePickup extends StatefulWidget {
  const SchedulePickup({super.key});

  @override
  State<SchedulePickup> createState() => _SchedulePickupState();
}

class _SchedulePickupState extends State<SchedulePickup> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Trash Weight (Kg))",style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(47, 47, 47, 1),
              ),),
              Text("35",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(47, 47, 47, 1),
              ),),
              SizedBox(height: 10),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Pickup Address",
                      style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(47, 47, 47, 1),
                    ),),
                    Text("11, Example street, Lagos",
                      style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(47, 47, 47, 1),
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Date  and Time",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(47, 47, 47, 1),
                      ),),
                    Text("6 Feb 2024, 3:30 pm",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(47, 47, 47, 1),
                      ),),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 1,
                color:Color.fromRGBO(192, 192, 192, 1),
              ),
              SizedBox(height: 20),
              Text("Payment",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color.fromRGBO(4, 28, 21, 1),
              ),),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal:15),
                          height: 64,
                            width: 152,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              border: Border.all(color: Color.fromRGBO(192, 192, 192, 1),width: 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Monthly Subscription",style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(47, 47, 47, 1),
                              ),),
                              Text("1500",style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(47, 47, 47, 1),
                              ),),
                            ],
                          ),
                          ),
                      ),
                      ),
                  SizedBox(width: 5),
                  Expanded(
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal:15),
                        height: 64,
                        width: 152,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(color: Color.fromRGBO(192, 192, 192, 1),width: 1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("One time payment",style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(47, 47, 47, 1),
                            ),),
                            Text("500",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(47, 47, 47, 1),
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Choose payment method",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color.fromRGBO(4, 28, 21, 1),
              ),),
              SizedBox(height: 10),
              CardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
